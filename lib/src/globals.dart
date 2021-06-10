library diamant.globals;

import 'dart:async';
import 'dart:convert' as convert;
import 'dart:html' as html;
import 'dart:math' as math;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:angular/security.dart';
import 'package:angular_components/angular_components.dart';
import 'package:googleapis/drive/v3.dart' as gd;
import 'package:googleapis_auth/auth_browser.dart' as auth;
import 'package:http/browser_client.dart' as http;
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/messages/messages_all.dart';
import 'package:nightscout_reporter/src/controls/datepicker/datepicker_component.dart';
import 'package:nightscout_reporter/src/forms/base-print.dart';
import 'package:nightscout_reporter/src/json_data.dart';
import 'package:timezone/browser.dart' as tz;

class Informator {
  final List<String> _errors = [];
  final List<String> _warnings = [];
  final List<String> _infos = [];

  bool get hasContent =>
      _errors.isNotEmpty || _warnings.isNotEmpty || _infos.isNotEmpty;

  String _output(var list) => list.join('\n');

  void _addText(var list, var text) {
    if (!list.contains(text)) list.add(text);
  }

  void clear() {
    _errors.clear();
    _warnings.clear();
    _infos.clear();
  }

  void addError(text) => _addText(_errors, text);

  void addWarning(text) => _addText(_warnings, text);

  void addInfo(text) => _addText(_infos, text);

  void addDevError(var ex, String text) {
    if (Globals().isDebug) {
      if (ex is Error) {
        addError('${ex.toString()}\n${ex.stackTrace}');
      } else {
        addError(ex.toString());
      }
    } else {
      addError(text);
    }
  }

  String get errors => _output(_errors);

  String get warnings => _output(_warnings);

  String get infos => _output(_infos);
}

class Msg {
  String okText = Intl.message('Schliessen');
  String text;
  String dbgText;
  String type = 'msg';
  var links = [];

  bool get isEmpty => (text == null || text == '') && links.isEmpty;

  void clear() {
    text = null;
    dbgText = null;
    links = [];
  }

  void dismiss(call) {
    if (call != null) call();
    text = null;
    dbgText = null;
    links = [];
  }
}

class LangData {
  String code;
  String name;
  String img;

  bool get is24HourFormat {
    switch (code) {
      case 'en-US':
      case 'en-GB':
        return false;
      default:
        return true;
    }
  }

  String get dateformat => Intl.message('dd.MM.yyyy',
      desc: 'this is the dateformat, please use dd for days, ' +
          'MM for months and yyyy for year. ' +
          'It has to be the english formatstring.');

  String get imgPath =>
      'packages/nightscout_reporter/assets/img/lang-${img}.png';

  LangData(this.code, this.name, this.img);
}

class PeriodShift {
  String title;
  int months;

  PeriodShift(this.title, {this.months = 0});
}

class Settings {
  String version = '2.0.9';

  // subversion is used nowhere. It is just there to trigger an other signature
  // for the cache.
  String subVersion = '2';

  static String get msgThemeAuto =>
      Intl.message('Automatisch', meaning: 'theme selection - automatic');

  static String get msgThemeStandard =>
      Intl.message('Standard', meaning: 'theme selection - standard');

  static String get msgThemeXmas =>
      Intl.message('Weihnachten', meaning: 'theme selection - christmas');

  static String get msgUnitMGDL => Intl.message('mg/dL');

  static String get msgUnitMMOL => Intl.message('mmol/L');

  static String get msgUnitBoth => Intl.message('Beide');

  String get msgUnlimited => Intl.message('Unbegrenzt');

  String get lblGlucUnits => Intl.message('Einheit der Glukosemessung');

  int timestamp = 0;

  static bool get hastiod => html.window.localStorage['debug'] != 'yes';
  String betaPrefix = '@';
  String lastVersion;

  List<String> listGlucUnits = [msgUnitMGDL, msgUnitMMOL, msgUnitBoth];

  int glucMGDLIdx;

  bool glucMGDLFromStatus = true;

  bool get glucMGDL => [true, false, true][glucMGDLIdx ?? 0];

  bool get showBothUnits => glucMGDLIdx == 2;

  bool hasMGDL = false;

  double get glucFactor => glucMGDL ? 1 : 18.02;

  double get glucPrecision => glucMGDL ? 0 : 2;

  // calculate a value that is saved in a unit depending
  // on the setting in the status
  double glucForSavedUnitValue(double value) {
    if (glucMGDL == glucMGDLFromStatus) return value;
    if (glucMGDL) return value * 18.02;
    return value / 18.02;
  }

//  set glucMGDL(value) {    _glucMGDL = value;  }

  bool isMGDL(StatusData status) {
    var check = status.settings.units?.trim()?.toLowerCase() ?? '';
    return check.startsWith('mg') && check.endsWith('dl');
  }

  void setGlucMGDL(StatusData status) {
    glucMGDLFromStatus = isMGDL(status);
  }

  bool showAllTileParams = false;
  bool showCurrentGluc = false;
  bool showInfo = false;
  bool tileShowImage = true;
  bool isDataSmoothing = true;
  LangData _language;
  String _pdfOrder = '';
  String _viewType = '';
  List<FormConfig> listConfig = <FormConfig>[];
  List<FormConfig> listConfigOrg = <FormConfig>[];
  DateFormat fmtDateForDisplay;
  DatepickerPeriod _period = DatepickerPeriod();

  DatepickerPeriod get period => _period;

  set period(DatepickerPeriod value) {
    _period = value;
    updatePeriod(_period);
  }

  bool canDebug = false;
  bool isDebug = false;
  bool isBeta = html.window.location.href.contains('/beta/');

  bool get runsLocal => html.window.location.href.contains('/localhost:');
  bool _isLocal = html.window.location.href.contains('/localhost:');

  bool get isLocal => _isLocal;

/*
  bool _showBothUnits = false;
  bool get showBothUnits => _showBothUnits;
  set showBothUnits(value) {
    _showBothUnits = value;
  }
// */

  var onAfterLoad;
  Map<String, String> themeList = Map<String, String>.unmodifiable(
      {null: msgThemeAuto, 'standard': msgThemeStandard, 'xmas': msgThemeXmas});

  String _theme;

  String get themeName => themeList[_theme];

  String get themeKey => _theme;

  String get theme {
    if (_theme == null) {
      if (Date.today().month == 12) {
        return 'xmas';
      } else {
        return 'standard';
      }
    }
    return _theme;
  }

  set theme(String value) {
    if (value == null || value == 'standard' || value == 'xmas') _theme = value;
  }

  set isLocal(value) {
    _isLocal = value;
  }

  var doShowDebug;
  List<String> debugCache = <String>[];

  void showDebug(String msg) {
    debugCache.add(msg);
    if (canDebug && doShowDebug != null) doShowDebug();
  }

  set pdfOrder(String value) {
    _pdfOrder = value;
    sortConfigs();
  }

  String get viewType => _viewType == '' ? 'tile' : _viewType;

  set viewType(String value) {
    switch (value) {
      case 'tile':
      case 'list':
        break;
      default:
        value = 'tile';
        break;
    }
    _viewType = value;
  }

  // https://findicons.com/files/icons/2758/flag_icons/32/*.png
  List<LangData> languageList = [
    LangData('de_DE', Intl.message('Deutsch'), 'de'),
    LangData('en_US', Intl.message('English (USA)'), 'us'),
    LangData('en_GB', Intl.message('English (GB)'), 'gb'),
    LangData('es_ES', Intl.message('Español'), 'es'),
    LangData('pl_PL', Intl.message('Polski'), 'pl'),
    LangData('ja_JP', Intl.message('日本の'), 'jp'),
    LangData('sk_SK', Intl.message('Slovenský'), 'sk'),
    LangData('fr_FR', Intl.message('Français'), 'fr'),
    LangData('pt_PT', Intl.message('Português'), 'pt'),
  ];

  LangData get language => _language ?? languageList[0];

  set language(LangData value) {
    _language = value;
  }

  static String get msgToday => Intl.message('Heute');

  static String get msgLast2Days => Intl.message('Letzte 2 Tage');

  static String get msgLast3Days => Intl.message('Letzte 3 Tage');

  static String get msgLastWeek => Intl.message('Letzte Woche');

  static String get msgLast2Weeks => Intl.message('Letzte 2 Wochen');

  static String get msgLast3Weeks => Intl.message('Letzte 3 Wochen');

  static String get msgLastMonth => Intl.message('Letzter Monat');

  static String get msgLast3Months => Intl.message('Letzte 3 Monate');

  static String get msgQuarter1 => Intl.message('Erstes Quartal');

  static String get msgQuarter2 => Intl.message('Zweites Quartal');

  static String get msgQuarter3 => Intl.message('Drittes Quartal');

  static String get msgQuarter4 => Intl.message('Viertes Quartal');

  static void updatePeriod(DatepickerPeriod period) {
    if (period == null) return;
    period.maxDate = Date.today();
    period.list.clear();
    period.list.add(DatepickerEntry('today', msgToday, (DatepickerPeriod data) {
      data.start = Date.today();
      data.end = Date.today();
    }, (Date date) {
      return date;
    }));
    period.list
        .add(DatepickerEntry('2days', msgLast2Days, (DatepickerPeriod data) {
      data.start = period.baseDate.add(days: -1);
      data.end = period.baseDate;
    }, (Date date) {
      return date.add(days: -1);
    }));
    period.list
        .add(DatepickerEntry('3days', msgLast3Days, (DatepickerPeriod data) {
      data.start = period.baseDate.add(days: -2);
      data.end = period.baseDate;
    }, (Date date) {
      return date.add(days: -2);
    }));
    period.list
        .add(DatepickerEntry('1week', msgLastWeek, (DatepickerPeriod data) {
      data.start = period.baseDate.add(days: -6);
      data.end = period.baseDate;
    }, (Date date) {
      return date.add(days: -6);
    }));
    period.list
        .add(DatepickerEntry('2weeks', msgLast2Weeks, (DatepickerPeriod data) {
      data.start = period.baseDate.add(days: -13);
      data.end = period.baseDate;
    }, (Date date) {
      return date.add(days: -13);
    }));
    period.list
        .add(DatepickerEntry('3weeks', msgLast3Weeks, (DatepickerPeriod data) {
      data.start = period.baseDate.add(days: -20);
      data.end = period.baseDate;
    }, (Date date) {
      return date.add(days: -20);
    }));
    period.list
        .add(DatepickerEntry('1month', msgLastMonth, (DatepickerPeriod data) {
      data.start = period.baseDate.add(months: -1);
      data.end = period.baseDate;
    }, (Date date) {
      return date.add(months: -1);
    }));
    period.list.add(
        DatepickerEntry('3months', msgLast3Months, (DatepickerPeriod data) {
      data.start = period.baseDate.add(months: -3);
      data.end = period.baseDate;
    }, (Date date) {
      return date.add(months: -3);
    }));
    // period.list
    //     .add(DatepickerEntry('quarter1', msgQuarter1, (DatepickerPeriod data) {
    //   data.start = new Date(period.baseDate.year, 1, 1);
    //   data.end = new Date(period.baseDate.year, 3, 31);
    // }, (Date date) {
    //   return new Date(period.baseDate.year, 1, 1);
    // }));
    // period.list
    //     .add(DatepickerEntry('quarter2', msgQuarter2, (DatepickerPeriod data) {
    //   data.start = new Date(period.baseDate.year, 4, 1);
    //   data.end = new Date(period.baseDate.year, 6, 30);
    // }, (Date date) {
    //   return new Date(period.baseDate.year, 4, 1);
    // }));
    // period.list
    //     .add(DatepickerEntry('quarter3', msgQuarter3, (DatepickerPeriod data) {
    //   data.start = new Date(period.baseDate.year, 7, 1);
    //   data.end = new Date(period.baseDate.year, 9, 30);
    // }, (Date date) {
    //   return new Date(period.baseDate.year, 7, 1);
    // }));
    // period.list
    //     .add(DatepickerEntry('quarter4', msgQuarter4, (DatepickerPeriod data) {
    //   data.start = new Date(period.baseDate.year, 10, 1);
    //   data.end = new Date(period.baseDate.year, 12, 31);
    // }, (Date date) {
    //   return new Date(period.baseDate.year, 10, 1);
    // }));
  }

  void sortConfigs() {
    if (_pdfOrder == '' || listConfig.isEmpty) return;
    // TODO: 17.7.2020 - can be removed in future versions
    if (_pdfOrder.contains(',')) {
      var idList = _pdfOrder.split(',');
      _pdfOrder = '';
      for (var i = 0; i < idList.length; i++) {
        var cfg = listConfig.firstWhere((cfg) => cfg.id == idList[i],
            orElse: () => null);
        if (cfg != null) {
          _pdfOrder += cfg.idx;
        }
      }
    }
    // 17.7.2020: end
    user.saveParamsToForms();
    var srcList = listConfig.sublist(0);
    listConfig.clear();
    var idxList = <String>[];
    for (var i = 0; i < _pdfOrder.length; i += 2) {
      idxList.add(_pdfOrder.substring(i, i + 2));
    }
//    var idList = _pdfOrder.split(",");
    for (var i = 0; i < idxList.length; i++) {
      var cfg = srcList.firstWhere((cfg) => cfg.idx == idxList[i],
          orElse: () => null);
      if (cfg != null) {
        srcList.remove(cfg);
        listConfig.add(cfg);
      }
    }
    for (var cfg in srcList) {
      listConfig.add(cfg);
    }
    user.loadParamsFromForms();
    savePdfOrder();
  }

  Map<String, dynamic> get currentFormsAsMap {
    var ret = <String, dynamic>{};
    for (var cfg in listConfig) {
      if (cfg.checked) ret[cfg.form.id] = cfg.asJson;
    }
    return ret;
  }

  List<ShortcutData> shortcutList = <ShortcutData>[];
  List<UserData> userList = <UserData>[];
  bool userListLoaded = false;

  String get userDisplay => user.display;
  int _userIdx = 0;

  int get userIdx => _userIdx;

  set userIdx(value) {
    if (value != _userIdx) {
      user.loadParamsFromForms();
    }
    if (value < 0 || value >= userList.length) {
      value = 0;
      if (userList.isEmpty) userList.add(UserData(this));
    }
    userList[value].saveParamsToForms();
    _userIdx = value;
  }

  UserData get user {
    if (_userIdx >= 0 && _userIdx < userList.length) return userList[_userIdx];
    _userIdx = 0;
    if (userList.isNotEmpty) return userList[0];
    return UserData(this);
  }

  void save({bool updateSync = true, bool skipReload = false}) {}

  void savePdfOrder() {
    if (listConfig.isEmpty) return;
    var idList = [];
    for (var cfg in listConfig) {
      idList.add(cfg.idx);
    }
    _pdfOrder = idList.join('');
    save(updateSync: false);
  }

  // save one value to localStorage
  void saveStorage(String key, String value) {
    if (isBeta) key = '${betaPrefix}${key}';
    if (value == null || value.isEmpty) {
      html.window.localStorage.remove(key);
    } else {
      html.window.localStorage[key] = value;
    }
  }

  // load one value from localStorage
  String loadStorage(String key) {
    if (isBeta) key = '${betaPrefix}${key}';
    var ret = html.window.localStorage[key];
    if (ret == 'null' || ret == null) ret = '';
    return ret;
  }

  // retrieve the settings that can be shared as json-encoded-string
  String get asSharedString {
    var users = '';
    for (var i = 0; i < userList.length; i++) {
      users = '${users},${userList[i].asJsonString}';
    }
    if (users.length > 1) users = users.substring(1);
    var shortcuts = '';
    for (var i = 0; i < shortcutList.length; i++) {
      shortcuts = '${shortcuts},${shortcutList[i].asJsonString}';
    }
    if (shortcuts.length > 1) shortcuts = shortcuts.substring(1);
    timestamp = DateTime.now().millisecondsSinceEpoch;
    return '{'
        '"s1":"$version"'
        ',"s4":${userIdx}'
        ',"s5":${glucMGDLIdx}'
        ',"s6":"${language.code ?? 'de_DE'}"'
        ',"s7":"${showCurrentGluc ? 'yes' : 'no'}"'
        ',"s8":"${period?.toString()}"'
        ',"s9":"${_pdfOrder}"'
        ',"s10":"${_viewType}"'
        ',"s11":${timestamp}'
        ',"s12":${tileShowImage}'
        ',"s13":${showAllTileParams}'
        ',"s2":[${users}]'
        ',"s3":[${shortcuts}]'
        '}';
  }

  // loads the shared settings from a json stucture
  void fromSharedJson(dynamic json) {
    try {
      lastVersion = JsonData.toText(json['s1']);
      dynamic users = json['s2'];
      dynamic shortcuts = json['s3'];
      glucMGDLIdx = JsonData.toInt(json['s5']);
      var langId = JsonData.toText(json['s6']);
      var idx = languageList.indexWhere((v) => v.code == langId);
      if (idx >= 0) language = languageList[idx];
      showCurrentGluc = JsonData.toBool(json['s7']);
      period = DatepickerPeriod(src: JsonData.toText(json['s8']));
      pdfOrder = JsonData.toText(json['s9']);
      viewType = JsonData.toText(json['s10']);
      timestamp = JsonData.toInt(json['s11']);
      tileShowImage = JsonData.toBool(json['s12'], ifEmpty: true);
      showAllTileParams = JsonData.toBool(json['s13']);
      period.fmtDate = language.dateformat;
      userListLoaded = false;
      userList.clear();
      if (users != null) {
        try {
          for (var entry in users) {
            userList.add(UserData.fromJson(this, entry));
          }
        } catch (ex) {
          Globals().info.addDevError(ex,
              'Fehler beim laden der User in Settings.fromSharedJson: ${ex.toString()}');
//            saveStorage("mu", null);
        }
      } else {
//          saveStorage("mu", null);
      }
/* With the following code the userlist is reduced to one testuser
      userList.clear();
      UserData u = UserData(this);
      u.name = "Testuser";
      u.birthDate = "13.2.1965";
      u.diaStartDate = "1.1.1996";
      u.insulin = "Novorapid";
      u.listApiUrl = List<UrlData>();
      u.listApiUrl.add(UrlData.fromJson(
          this, {"u": "https://diamant-ns.herokuapp.com", "t": "anditoken-a12e3472efe42759", "sd": null, "ed": null}));
      u.customData = {};
      u.formParams = {};
      userList.add(u);
// */
      userList.sort((a, b) => a.display.compareTo(b.display));
      userListLoaded = true;
      userIdx = JsonData.toInt(json['s4']);
      shortcutList.clear();
      // get shortcuts if available
      if (shortcuts != null) {
        try {
          for (var entry in shortcuts) {
            shortcutList.add(ShortcutData.fromJson(this, entry));
          }
        } catch (ex) {
          var msg = ex.toString();
          showDebug('Fehler bei Settings.fromSharedJson (shortcuts): ${msg}');
        }
      }
      if (onAfterLoad != null) onAfterLoad();
    } catch (ex) {
      var msg = ex.toString();
      showDebug('Fehler bei Settings.fromSharedJson: ${msg}');
    }
  }

  // retrieve the settings for the current device as json-encoded-string
  String get asDeviceString => '';

  // retrieve the current settings as a json-encoded-string
  // String get asJsonString => '{$jsonString}';

  // retrieve the current settings as a string that can be used in json
  String get jsonString {
    var users = '';
    for (var i = 0; i < userList.length; i++) {
      users = '${users},${userList[i].asJsonString}';
    }
    if (users.length > 1) users = users.substring(1);
    var shortcuts = '';
    for (var i = 0; i < shortcutList.length; i++) {
      shortcuts = '${shortcuts},${shortcutList[i].asJsonString}';
    }
    if (shortcuts.length > 1) shortcuts = shortcuts.substring(1);
    return '"version":"$version"'
        ',"mu":"${Settings.doit('[${users}]')}"'
        ',"sc":"${Settings.doit('[${shortcuts}]')}"'
        ',"userIdx":"${userIdx}"'
        ',"glucMGDL":"${glucMGDL}"'
        ',"language":"${language.code ?? 'de_DE'}"'
        ',"showCurrentGluc":"${showCurrentGluc ? 'yes' : 'no'}"'
        ',"period":"${period?.toString()}"'
        ',"pdfOrder":"${_pdfOrder}"'
        ',"viewType":"${_viewType}"'
        ',"timestamp":"${timestamp}"'
        ',"tileShowImage":"${tileShowImage ? 'yes' : 'no'}"'
        ',"showAllTileParams":"${showAllTileParams ? 'yes' : 'no'}"';
  }

  // retrieves the settings from localStorage as partial json-String
  String get storageString => '"version":"${loadStorage('version')}"'
      ',"userIdx":"${loadStorage('userIdx')}"'
      ',"mu":"${loadStorage('mu')}"'
      ',"sc":"${loadStorage('sc')}"'
      ',"glucMGDL":"${loadStorage('glucMGDL')}"'
      ',"language":"${loadStorage('language')}"'
      ',"pdfCreationMaxSize":"${loadStorage('pdfCreationMaxSize')}"'
      ',"showCurrentGluc":"${loadStorage('showCurrentGluc')}"'
      ',"period":"${loadStorage('period')}"'
      ',"pdfOrder":"${loadStorage('pdfOrder')}"'
      ',"viewType":"${loadStorage('viewType')}"'
      ',"timestamp":"${loadStorage('timestamp')}"'
      ',"currCompIdx":"${loadStorage('currCompIdx')}"'
      ',"tileShowImage":"${loadStorage('tileShowImage')}"'
      ',"showAllTileParams":"${loadStorage('showAllTileParams')}"';

  // loads the settings that are not synchronized to google
  void loadLocalOnlySettings() {
    canDebug = loadStorage('debug') == 'yes';
    fmtDateForDisplay = DateFormat(language.dateformat);
  }

  // retrieves the shared settings from a string
  void fromSharedString(String src) {
    try {
      dynamic json = convert.json.decode(src);
      // 6.7.2020: can be deleted in future versions
      if (json['version'] != null)
        fromJson(json); // ignore: curly_braces_in_flow_control_structures
      else
        // 6.7.2020: end
        fromSharedJson(json); // ignore: curly_braces_in_flow_control_structures
    } catch (ex) {
      var msg = ex.toString();
      showDebug('Fehler bei Settings.fromSharedString: ${msg}');
    }
  }

  // loads the settings from json-encoded strings
  void fromStrings(String shared, String device) {
    try {
/*      shared = shared.replaceAll("\"[", "[");
      shared = shared.replaceAll("]\"", "]");
      device = device.replaceAll("{,", "{");

 */
      fromSharedJson(convert.json.decode(shared));
      fromDeviceJson(convert.json.decode(device));
    } catch (ex) {
      var msg = ex.toString();
      showDebug('Fehler bei Settings.fromStrings: ${msg}');
    }
  }

  // loads the device settings from a json stucture
  void fromDeviceJson(dynamic json) {}

  // loads the settings from a json-data-structure
  void fromJson(dynamic json) {
    try {
      lastVersion = JsonData.toText(json['version']);
      glucMGDLIdx = JsonData.toInt(json['glucMGDL']);
      var langId = JsonData.toText(json['language']);
      var idx = languageList.indexWhere((v) => v.code == langId);
      if (idx >= 0) language = languageList[idx];
      showAllTileParams = JsonData.toBool(json['showAllTileParams']);
      showCurrentGluc = JsonData.toBool(json['showCurrentGluc']);
      pdfOrder = JsonData.toText(json['pdfOrder']);
      viewType = JsonData.toText(json['viewType']);
      period = DatepickerPeriod(src: JsonData.toText(json['period']));
      timestamp = JsonData.toInt(json['timestamp']);
      tileShowImage = JsonData.toBool(json['tileShowImage'], ifEmpty: true);
      period.fmtDate = language.dateformat;
      // get user list from mu if available
      String users = json['mu'];
      userListLoaded = false;
      userList.clear();
      if (users != null) {
        var text = tiod(users);
        if (text != null && text.isNotEmpty) {
          try {
            var list = convert.json.decode(text);
            for (var entry in list) {
              userList.add(UserData.fromJson(this, entry));
            }
          } catch (ex) {
//            saveStorage("mu", null);
          }
        } else {
//          saveStorage("mu", null);
        }
      }
/* With the following code the userlist is reduced to one testuser
      userList.clear();
      UserData u = UserData(this);
      u.name = "Testuser";
      u.birthDate = "13.2.1965";
      u.diaStartDate = "1.1.1996";
      u.insulin = "Novorapid";
      u.listApiUrl = List<UrlData>();
      u.listApiUrl.add(UrlData.fromJson(
          this, {"u": "https://diamant-ns.herokuapp.com", "t": "anditoken-a12e3472efe42759", "sd": null, "ed": null}));
      u.customData = {};
      u.formParams = {};
      userList.add(u);
// */
      userList.sort((a, b) => a.display.compareTo(b.display));
      userListLoaded = true;
      userIdx = JsonData.toInt(json['userIdx']);
      String shortcuts = json['sc'];
      shortcutList.clear();
      // get user list from mu if available
      if (shortcuts != null) {
        var text = tiod(shortcuts);
        if (text != null && text.isNotEmpty) {
          try {
            var list = convert.json.decode(text);
            for (var entry in list) {
              shortcutList.add(ShortcutData.fromJson(this, entry));
            }
          } catch (ex) {
            var msg = ex.toString();
            showDebug('Fehler bei Settings.fromJson (shortcuts): ${msg}');
          }
        } else {}
      }
    } catch (ex) {
      var msg = ex.toString();
      showDebug('Fehler bei Settings.fromJson: ${msg}');
    }
  }

  static String tiod(String src) {
    if (src == null || src.isEmpty) return '';
    if (src.startsWith('{')) return src;

    var ret = '';
    var pos = src.length ~/ 2;
    src = '${src.substring(pos + 1)}${src.substring(0, pos - 1)}';
    try {
      convert.base64Decode(src).forEach((value) {
        ret = '${ret}${String.fromCharCode(value)}';
      });
      ret = convert.utf8.decode(ret.codeUnits);
    } catch (ex) {
      ret = '';
    }

    return ret;
  }

  static String doit(String src) {
    if (!hastiod) return src;
    var ret = convert.base64Encode(convert.utf8.encode(src));
    var pos = ret.length ~/ 2;
    var rnd = math.Random();
    String.fromCharCode(rnd.nextInt(26) + 64);
    ret =
        '${ret.substring(pos)}${String.fromCharCode(rnd.nextInt(26) + 64)}${String.fromCharCode(rnd.nextInt(10) + 48)}'
        '${ret.substring(0, pos)}';
    return ret;
  }
}

class Globals extends Settings {
  DomSanitizationService sanitizer;
  int currShortcutIdx = -1;
  ShortcutData currShortcut;

  int ppMaxInsulinEffectInMS = 3 * 60 * 60 * 1000;

  bool _ppStandardLimits = false;

  bool get ppStandardLimits => _ppStandardLimits || ppComparable;

  set ppStandardLimits(bool value) {
    if (!ppComparable) _ppStandardLimits = value;
  }

  bool ppCGPAlwaysStandardLimits = true;

  bool ppComparable = false;
  int ppGlucMaxIdx = 0;

  List<double> get glucMaxValues => [null, 150, 200, 250, 300, 350, 400, 450];

  List<int> get profileMaxCounts => [100000, 2000, 1000, 500, 250, 100];

  double get glucMaxValue =>
      glucValueFromData(glucMaxValues[ppGlucMaxIdx ?? 0]);
  int ppBasalPrecisionIdx = 0;

  List<int> get basalPrecisionValues => [null, 0, 1, 2, 3];
  bool ppLatestFirst = false;
  bool ppPdfSameWindow = true;
  bool ppPdfDownload = false;
  bool ppHideNightscoutInPDF = true;
  bool ppShowUrlInPDF = false;
  bool ppHideLoopData = false;
  bool isCreatingPDF = false;

  bool get hideLoopData => ppHideLoopData && isCreatingPDF;

  static const int PDFUNLIMITED = 4000000;
  static const int PDFDIVIDER = 100000;

  int get pdfControlMaxSize => pdfCreationMaxSize ~/ Globals.PDFDIVIDER;

  set pdfControlMaxSize(int value) {
    pdfCreationMaxSize = value * Globals.PDFDIVIDER;
  }

  int _pdfCreationMaxSize = Globals.PDFUNLIMITED - Globals.PDFDIVIDER;

  int get pdfCreationMaxSize {
    _pdfCreationMaxSize = math.max(_pdfCreationMaxSize, Globals.PDFDIVIDER);
    _pdfCreationMaxSize = math.min(_pdfCreationMaxSize, Globals.PDFUNLIMITED);
    return _pdfCreationMaxSize;
  }

  set pdfCreationMaxSize(int value) {
    value = math.max(value, Globals.PDFDIVIDER);
    value = math.min(value, Globals.PDFUNLIMITED);
    _pdfCreationMaxSize = value;
  }

  Msg msg = Msg();
  Informator info = Informator();

  void show(String text, {bool append = false, String skipStart}) {
    Future.delayed(Duration(milliseconds: 500), () {
      if (msg != null) {
        if (skipStart != null &&
            msg.text != null &&
            msg.text.startsWith(skipStart)) return;
        if (append && msg.text != null && msg.text.length < 20000) {
          msg.text += '<br />${text}';
        } else {
          msg.text = text;
        }
      }
    });
  }

  // retrieve the current settings as a string that can be used in json
  @override
  String get asDeviceString => '{'
      '"d1":"${ppHideNightscoutInPDF ? "true" : "false"}"'
      ',"d2":"${ppShowUrlInPDF ? "true" : "false"}"'
      ',"d3":"${ppHideLoopData ? "true" : "false"}"'
      ',"d4":"${pdfCreationMaxSize}"'
      ',"d5":"${_ppStandardLimits ? "true" : "false"}"'
      ',"d6":"${ppCGPAlwaysStandardLimits ? "true" : "false"}"'
      ',"d7":"${ppComparable ? "true" : "false"}"'
      ',"d8":"${ppLatestFirst ? "true" : "false"}"'
      ',"d9":"${ppGlucMaxIdx?.toString() ?? 0}"'
      ',"d10":"${ppBasalPrecisionIdx?.toString() ?? 0}"'
      '}';

  // loads the device settings from a json-encoded string
  @override
  void fromDeviceJson(dynamic json) {
    try {
      ppHideNightscoutInPDF = JsonData.toBool(json['d1']);
      ppShowUrlInPDF = JsonData.toBool(json['d2']);
      ppHideLoopData = JsonData.toBool(json['d3']);
      pdfCreationMaxSize = JsonData.toInt(json['d4']);
      ppStandardLimits = JsonData.toBool(json['d5']);
      ppCGPAlwaysStandardLimits = JsonData.toBool(json['d6']);
      ppComparable = JsonData.toBool(json['d7']);
      ppLatestFirst = JsonData.toBool(json['d8']);
      ppGlucMaxIdx = JsonData.toInt(json['d9']);
      ppBasalPrecisionIdx = JsonData.toInt(json['d10']);
    } catch (ex) {
      var msg = ex.toString();
      showDebug('Fehler bei Globals.fromDeviceJson: ${msg}');
    }
  }

  void saveWebData() {
    saveStorage(
        'webData',
        '{"w0":"${version}","w1":"${language.code ?? "de_DE"}","w2":"${theme}",'
            '"w3":${(_syncGoogle ?? false) ? "true" : "false"}}');
  }

  // retrieve the current settings as a string that can be used in json
  @override
  String get jsonString =>
      '${super.jsonString},"ppHideNightscoutInPDF":"${ppHideNightscoutInPDF ? "true" : "false"}"'
      ',"ppShowUrlInPDF":"${ppShowUrlInPDF ? "true" : "false"}"'
      ',"ppHideLoopData":"${ppHideLoopData ? "true" : "false"}"'
      ',"pdfCreationMaxSize":"${pdfCreationMaxSize}"'
      ',"ppStandardLimits":"${_ppStandardLimits ? "true" : "false"}"'
      ',"ppCGPAlwaysStandardLimits":"${ppCGPAlwaysStandardLimits ? "true" : "false"}"'
      ',"ppComparable":"${ppComparable ? "true" : "false"}"'
      ',"ppLatestFirst":"${ppLatestFirst ? "true" : "false"}"'
      ',"ppGlucMaxIdx":"${ppGlucMaxIdx?.toString() ?? 0}"'
      ',"ppBasalPrecisionIdx":"${ppBasalPrecisionIdx?.toString() ?? 0}"';

  // retrieves the settings from a json-data-structure
  @override
  void fromJson(dynamic json) {
    super.fromJson(json);
    ppHideNightscoutInPDF = JsonData.toBool(json['ppHideNightscoutInPDF']);
    ppShowUrlInPDF = JsonData.toBool(json['ppShowUrlInPDF']);
    ppHideLoopData = JsonData.toBool(json['ppHideLoopData']);
    pdfCreationMaxSize =
        JsonData.toInt(json['pdfCreationMaxSize'], pdfCreationMaxSize);
    ppStandardLimits = JsonData.toBool(json['ppStandardLimits']);
    ppCGPAlwaysStandardLimits =
        JsonData.toBool(json['ppCGPAlwaysStandardLimits']);
    ppComparable = JsonData.toBool(json['ppComparable']);
    ppLatestFirst = JsonData.toBool(json['ppLatestFirst']);
    ppGlucMaxIdx = JsonData.toInt(json['ppGlucMaxIdx']);
    ppBasalPrecisionIdx = JsonData.toInt(json['ppBasalPrecisionIdx']);
  }

  void restoreLiveStorage() {}

  // retrieves the settings from localStorage as partial json-String
  @override
  String get storageString {
    if (loadStorage('reset') == 'jawoll') restoreLiveStorage();
    if (loadStorage('version') == '') return '';
    return '${super.storageString}'
        ',"ppHideNightscoutInPDF":"${loadStorage('ppHideNightscoutInPDF')}"'
        ',"ppShowUrlInPDF":"${loadStorage('ppShowUrlInPDF')}"'
        ',"ppHideLoopData":"${loadStorage('ppHideLoopData')}"'
        ',"pdfCreationMaxSize":"${loadStorage('pdfCreationMaxSize')}"'
        ',"ppStandardLimits":"${loadStorage('ppStandardLimits')}"'
        ',"ppCGPAlwaysStandardLimits":"${loadStorage('ppCGPAlwaysStandardLimits')}"'
        ',"ppComparable":"${loadStorage('ppComparable')}"'
        ',"ppLatestFirst":"${loadStorage('ppLatestFirst')}"'
        ',"ppGlucMaxIdx":"${loadStorage('ppGlucMaxIdx')}"'
        ',"ppBasalPrecisionIdx":"${loadStorage('ppBasalPrecisionIdx')}"'
        ',"ppProfileMaxCount":"${loadStorage('ppProfileMaxCount')}"';
  }

  // loads the settings that are not synchronized to google
  @override
  void loadLocalOnlySettings() {
    super.loadLocalOnlySettings();
    ppPdfSameWindow = loadStorage('ppPdfSameWindow') == 'true';
    ppPdfDownload = loadStorage('ppPdfDownload') == 'true';
/*
    ppHideNightscoutInPDF = loadStorage('ppHideNightscoutInPDF') == "true";
    ppShowUrlInPDF = loadStorage('ppShowUrlInPDF') == "true";
    ppHideLoopData = loadStorage('ppHideLoopData') == "true";
    pdfCreationMaxSize = JsonData.toInt(loadStorage('pdfCreationMaxSize'));
    ppStandardLimits = loadStorage('ppStandardLimits') == "true";
    ppCGPAlwaysStandardLimits = loadStorage('ppCGPAlwaysStandardLimits') == "true";
    ppComparable = loadStorage('ppComparable') == "true";
    ppLatestFirst = loadStorage('ppLatestFirst') == "true";
    ppGlucMaxIdx = JsonData.toInt(loadStorage('ppGlucMaxIdx'));
    ppBasalPrecisionIdx = JsonData.toInt(loadStorage('ppBasalPrecisionIdx'));
 */
    currPeriodShift = listPeriodShift[0];
  }

  // The timezone is set to Europe/Berlin by mdefault, but it is evaluated in
  // the constructor for the current system.
  static String refTimezone = 'Europe/Berlin';
  static tz.Location refLocation = tz.getLocation('Europe/Berlin');

  static DateTime get now => DateTime.now();

  int basalPrecisionAuto = 1;

  int get basalPrecision => (ppBasalPrecisionIdx ?? 0) > 0
      ? basalPrecisionValues[ppBasalPrecisionIdx]
      : basalPrecisionAuto;

  static int decimalPlaces(num value) {
    var v = value.toString();
    while (v.endsWith('0')) {
      v = v.substring(0, v.length - 1);
    }
    var ret = math.max(v.length - v.lastIndexOf('.') - 1, 0);
    return math.min(ret, 3);
  }

  int timeForCalc(DateTime time) =>
      time.hour * 3600 + time.minute * 60 + time.second;

  static final Globals _globals = Globals._internal();

  final driveParent = 'appDataFolder';

//  final driveParent = null;
  auth.AutoRefreshingAuthClient _client;

  auth.AutoRefreshingAuthClient get client => _client;

  set client(auth.AutoRefreshingAuthClient value) {
    _client = value;
    syncGoogle = value != null;
    _loadFromGoogle();
  }

  gd.DriveApi get drive => client == null ? null : gd.DriveApi(client);

  factory Globals() {
    return _globals;
  }

  Globals._internal() {
    tz.Location found;

    var dt = DateTime.now();
    var offset = dt.timeZoneOffset.inMilliseconds;
    var list = tz.timeZoneDatabase.locations.values;
    for (var l in list) {
      if (l.currentTimeZone.offset == offset) {
        found = l;
        break;
      }
    }
/*
    for (String key in tz.timeZoneDatabase.locations.keys)
    {
      tz.Location l = tz.timeZoneDatabase.locations[key];
      if (l.currentTimeZone.offset == offset)
      {
        found = l;
        break;
      }
    }
*/
    if (found != null) {
      Globals.refTimezone = found.name;
      Globals.refLocation = found;
    }
  }

  List<PeriodShift> get listPeriodShift => [
        PeriodShift(Intl.message('Ausgewählter Zeitraum'), months: 0),
        PeriodShift(Intl.message('Einen Monat vorher'), months: 1),
        PeriodShift(Intl.message('Drei Monate vorher'), months: 3),
        PeriodShift(Intl.message('Sechs Monate vorher'), months: 6),
        PeriodShift(Intl.message('Ein Jahr vorher'), months: 12)
      ];

  PeriodShift currPeriodShift;

  Date date(DateTime src) => Date(src.year, src.month, src.day);

  String get msgBE => _khFactor == 10 ? 'msgBE' : 'msgKE';

  String get msgUrlFailurePrefix => Intl.message(
      'Die angegebene URL ist nicht erreichbar. '
      'Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. ');

  String get msgUrlFailureSuffix => Intl.message(
      '<br><br>Wenn diese URL geschützt ist, '
      'muss ausserdem der Zugriffsschlüssel korrekt definiert sein. Diesen erreicht man '
      'über "Administrator-Werkzeuge" auf der persönlichen Nightscout Seite.');

  String get msgUrlFailureHerokuapp => Intl.message(
      'In der Variable ENABLE muss das Wort "cors" stehen, damit externe Tools '
      'wie dieses hier auf die Daten zugreifen dürfen.');

  String get msgUrlFailure10be => Intl.message(
      'Auf 10be muss beim Server in den Standardeinstellungen der Haken bei '
      '"cors" aktiviert werden, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen. Wenn "cors" '
      'aktiviert wurde, muss auf dem Server eventuell noch ReDeploy gemacht werden, bevor es wirklich verfügbar ist.');

  String get msgUrlNotSafe => Intl.message(
      'Die Url zur Nightscout-API muss mit https beginnen, da Nightscout Reporter '
      'auch auf https läuft. Ein Zugriff auf unsichere http-Resourcen ist nicht möglich.');

  String msgUrlFailure(String url) {
    if (url.startsWith('http:') &&
        html.window.location.protocol.startsWith('https')) return msgUrlNotSafe;
    if (url.contains('ns.10be'))
      return '${msgUrlFailurePrefix}${msgUrlFailure10be}${msgUrlFailureSuffix}';
    return '${msgUrlFailurePrefix}${msgUrlFailureHerokuapp}${msgUrlFailureSuffix}';
  }

  String get msgNoURLDefined =>
      Intl.message('Die URL wurde noch nicht festgelegt.');

  String title = 'Nightscout Reporter';

  String get settingsFilename => 'nr-settings';
  gd.File settingsFile;

  bool _syncGoogle = false;

  bool get syncGoogle => _syncGoogle;

  set syncGoogle(bool value) {
    _syncGoogle = value ?? false;
    saveWebData();
  }

  String urlPdf = 'https://nightscout-reporter.zreptil.de/pdfmake/pdfmake.php';
  String urlPlayground = 'http://pdf.zreptil.de/playground.php';
  String googleClientId = '939975570793-i9kj0rp6kgv470t45j1pf1hg3j9fqmbh';

  String infoClass(String cls) =>
      showInfo ? '$cls infoarea showinfo' : '$cls infoarea';
  bool isConfigured = false;
  int _khFactor = 12;

  int get khFactor => _khFactor;

  set khFactor(int value) {
    if (value == 10 || value == 12) _khFactor = value;
  }

  bool get isKHBE => _khFactor == 12;

  static final int stdLow = 70;
  static final int stdHigh = 180;

  dynamic getGlucInfo() {
    var ret = {'step': 1, 'unit': Settings.msgUnitMGDL};
    if (!glucMGDL) ret = {'step': 0.1, 'unit': Settings.msgUnitMMOL};
    ret['factor'] = glucFactor;
    ret['stdlow'] = glucFromData(Globals.stdLow);
    ret['stdhigh'] = glucFromData(Globals.stdHigh);
    return ret;
  }

  double glucValueFromData(var gluc) {
    if (gluc is String) gluc = double.tryParse(gluc) ?? 0;
    if (!(gluc is num) || gluc == 0) return null;

    if (!glucMGDL) return gluc / 18.02;
    return gluc;
  }

  String glucFromData(var gluc, [double precision]) {
    if (gluc is String) gluc = double.tryParse(gluc) ?? 0;
    if (!(gluc is num) || gluc == 0) return '';

    if (!glucMGDL) return fmtNumber(gluc / 18.02, precision ?? 1);

    return fmtNumber(gluc, precision ?? 0);
  }

  String glucFromStatusMGDL(var gluc, [double precision]) {
    if (gluc is String) gluc = double.tryParse(gluc) ?? 0;
    if (!(gluc is num) || gluc == 0) return '';

    if (!glucMGDLFromStatus && glucMGDL) {
      return fmtNumber(gluc * 18.02, precision ?? 1);
    }
    if (glucMGDLFromStatus && !glucMGDL) {
      return fmtNumber(gluc / 18.02, precision ?? 1);
    }

    return fmtNumber(gluc, precision ?? 0);
  }

//  double glucFromData(double value) => glucMGDL ? value : value / 18.02;

  String get pdfTarget {
    if (!ppPdfSameWindow) return '_blank';
    return '';
  }

  static double calc(double a, double b, double factor) {
    if (a != null && a > 0) {
      if (b != null && b > 0) {
        return a + ((b - a) * factor).toInt();
      } else {
        return a;
      }
    }
    return b;
  }

/*
  String adjustUrl(String url) {
    if (user.token != null && user.token.isNotEmpty) {
      String div = url.indexOf("?") > 0 ? "&" : "?";
      url = "${url}${div}token=${user.token}";
    }
    return url;
  }
*/

  Future<dynamic> requestJson(String url,
      {String method = 'get',
      Map<String, String> headers,
      body,
      bool showError = true}) async {
    dynamic ret = await request(url,
            method: method, headers: headers, body: body, showError: showError)
        .then((String response) {
      if (response == null) {
        return null;
      }
      if (response.startsWith('[') && response.endsWith(']')) {
        return convert.json.decode(response);
      }
      if (response.startsWith('{') && response.endsWith('}')) {
        return convert.json.decode(response);
      }
      return null;
    });
    return ret;
  }

  void donationClick() {
    var url = 'https://www.paypal.com/donate';
    url += '?hosted_button_id=YYMVYB8C3VAVL';
    html.window.open(url, 'PayPal');
  }

  Future<String> request(String url,
      {String method = 'get',
      Map<String, String> headers,
      body,
      bool showError = true,
      bool asJson = false}) async {
    var client = http.BrowserClient();
    switch (method.toLowerCase()) {
      case 'post':
        return client.post(url, headers: headers, body: body).then((response) {
          return response.body;
        }).catchError((error) {
          if (showError) {
            return error.toString();
          }
          return null;
        });
        break;
      default:
        return client.get(url).then((response) {
          return response.body;
        }).catchError((error) {
          if (showError) {
            return error.toString();
          }
          return null;
        });
        break;
    }
  }

  Future<String> checkSetup({UserData checkUser}) async {
    checkUser ??= user;
    if (checkUser.apiUrl(null, '') == null) return msgNoURLDefined;
    String ret;
    var check = checkUser.apiUrl(null, 'status');
    await request(check).then((String response) {
      if (!response.toLowerCase().contains('status ok'))
        ret = msgUrlFailure(check);
    }).catchError((err) {
      ret = msgUrlFailure(check);
    });
    return ret;
  }

  void changeLanguage(LangData value,
      {bool doReload = true, bool checkConfigured = false}) async {
    language = value;
    if (checkConfigured && !isConfigured) clearStorage();
    if (doReload) {
      if (isConfigured) {
        save();
      } else {
        saveWebData();
        reload();
      }
    }
  }

  void setLanguage(LangData value) async {
    language = value;
    saveWebData();
    save();
    Intl.systemLocale = Intl.canonicalizedLocale(language.code);
    await tz.initializeTimeZone();
    await initializeMessages(language.code);
    Intl.defaultLocale = language.code;
    await initializeDateFormatting(language.code, null);
  }

  void reload() {
    var pos = html.window.location.href.indexOf('?');
    if (pos > 0) {
      html.window.location.href =
          html.window.location.href.substring(0, pos - 1);
    } else {
      html.window.location.reload();
    }
  }

  void clearStorage() {
    for (var entry in html.window.localStorage.entries) {
      var doKill = false;
      doKill = entry.key.startsWith(betaPrefix);
      if (!isBeta) doKill = !doKill;
      if (entry.key.endsWith('webData') || entry.key.endsWith('debug'))
        doKill = false;
      if (doKill) html.window.localStorage.remove(entry.key);
    }
  }

  void copyFromOtherStorage() {
    isBeta = !isBeta;

    loadSettings().then((_) {
      isBeta = !isBeta;
      save();
    });
  }

  void _uploadToGoogle(bool doReload) {
    if (!_googleLoaded) return;
    if (drive == null) {
      syncGoogle = false;
      return;
    }

    settingsFile ??= gd.File()
      ..name = settingsFilename
      ..parents = [driveParent]
      ..mimeType = 'text/json'
      ..id = null;

    var controller = StreamController<String>();
    var content = asSharedString;
    controller.add(content);
    var media = commons.Media(
        controller.stream.transform(convert.Utf8Encoder()), content.length,
        contentType: 'text/json');
    if (settingsFile.id == null) {
      drive.files
          .generateIds(count: 1, space: driveParent)
          .then((gd.GeneratedIds ids) {
        settingsFile.id = ids.ids[0];
        drive.files.create(settingsFile, uploadMedia: media).then((_) {});
      });
    } else {
      var file = gd.File();
      file.trashed = false;
      drive.files
          .update(file, settingsFile.id, uploadMedia: media)
          .then((gd.File file) {
        if (doReload) reload();
//        showDebug("Datei ${file.name} gespeichert");
      })?.catchError((error) {
        var msg = error.toString();
        showDebug('Fehler beim Upload zu Google (${settingsFile.name}): $msg');
      }, test: (error) => true);
    }
    controller.close();
  }

  bool _googleLoaded = false;

  void _getFromGoogle() {
    drive.files
        .get(settingsFile.id,
            $fields: '*',
            downloadOptions: commons.DownloadOptions.FullMedia,
            acknowledgeAbuse: false)
        .then((response) {
      var media = response as commons.Media;
      if (media?.contentType?.startsWith('text/') ?? false) {
        var strm =
            media.stream.transform(convert.Utf8Decoder(allowMalformed: true));
        strm.join().then((s) {
          // get settings in temporary structure to compare timestamps
          Settings set = Globals()..fromSharedString(s);
//          DateTime time = DateTime.fromMillisecondsSinceEpoch(set.timestamp);
          if (set.timestamp > timestamp) {
            fromSharedString(s);
            save(updateSync: false);
            _initAfterLoad();
//            showDebug("Daten auf Google vom ${time.day}.${time.month}.
//            ${time.year}, ${time.hour}:${fmtNumber(
//              time.minute, 0, 2)} Uhr - geladen");
          } else {
//            showDebug("Daten auf Google vom ${time.day}.${time.month}.
//            ${time.year}, ${time.hour}:${fmtNumber(
//              time.minute, 0, 2)} Uhr - verworfen");
          }
        });
      } else {
//          showDebug("Eine Datei der Art \"${media?.contentType}\"
//          kann nicht verarbeitet werden. ");
      }
      _googleLoaded = true;
    }).catchError((error) {
//      String msg = error.toString();
      showDebug('Es ist ein Fehler aufgetreten ($error)');
    }, test: (error) => true);
  }

  void _loadFromGoogle() {
    if (_client == null || drive == null) return;

    var query = 'name="${settingsFilename}" and not trashed';
    _searchDocuments(1, query).then((gd.FileList list) {
      if (list?.files?.isNotEmpty ?? false) {
        settingsFile = list.files[0];
      } else {
        settingsFile = gd.File()
          ..name = settingsFilename
          ..parents = [driveParent]
          ..mimeType = 'text/json';
        drive.files
            .generateIds(count: 1, space: driveParent)
            .then((gd.GeneratedIds ids) {
          settingsFile.id = ids.ids[0];
          drive.files.create(settingsFile).then((file) {
            _getFromGoogle();
          }).catchError((error) {
            showDebug('Fehler in _loadFromGoogle: ${error}');
          });
          return;
        });
//        if (driveParent != null)settingsFile.parents = [driveParent];
      }
      _getFromGoogle();
    }).catchError((error) {
      showDebug('Fehler bei _loadFromGoogle: ${error}');
      loadFromStorage();
      _initAfterLoad();
    });
  }

  Future<gd.FileList> _searchDocuments(int max, String query) {
    var docs = gd.FileList();
    docs.files = <gd.File>[];
    Future<gd.FileList> next(String token) {
      // The API call returns only a subset of the results. It is possible
      // to query through the whole result set via "paging".
      return drive?.files
          ?.list(
              q: query,
              pageToken: token,
              pageSize: 100,
              corpus: 'user',
              $fields: '*',
              orderBy: 'name',
              spaces: driveParent)
          ?.then((results) {
        docs.files.addAll(results.files);
        // If we would like to have more documents, we iterate.
        if (docs.files.length < max && results.nextPageToken != null) {
          return next(results.nextPageToken);
        }
        var ret = Future<gd.FileList>.value(docs);
        return (ret);
      })?.catchError((error) {
//        String msg = error.toString();
//        display("Es ist ein Fehler aufgetreten ($error)");
      }, test: (error) => true);
    }

    return next(null);
  }

  Future<void> loadSettings({skipSyncGoogle = false}) async {
    try {
      var src = await request('settings.json', showError: false);
      if (src != null && src.toLowerCase() != 'not found') {
        var data = convert.json.decode(src);
        if (data['urlPDF'] != null) {
          urlPdf = data['urlPDF'];
        }
        if (data['urlPlayground'] != null) {
          urlPlayground = data['urlPlayground'];
        }
        if (data['googleClientId'] != null) {
          googleClientId = data['googleClientId'];
        }
      }
    } catch (ex) {
      var msg = ex.toString();
      showDebug('Fehler bei Globals.loadSettings: ${msg}');
    }

    loadWebData();
    if (syncGoogle && !skipSyncGoogle) await _loadFromGoogle();
    loadFromStorage();
    _initAfterLoad();
  }

  void loadWebData() {
    try {
      dynamic json = convert.json.decode(loadStorage('webData'));
      var code = JsonData.toText(json['w1']);
      language = languageList.firstWhere((lang) => lang.code == code);
      theme = JsonData.toText(json['w2']);
      syncGoogle = JsonData.toBool(json['w3']);
    } catch (ex) {
      var msg = ex.toString();
      showDebug('Fehler bei Globals.loadWebData: ${msg}');
    }
  }

  void refresh() {
    _initAfterLoad();
  }

  void _initAfterLoad() {
    changeLanguage(language, doReload: false);
    Settings.updatePeriod(period);
    isConfigured =
        lastVersion != null && lastVersion.isNotEmpty && userList.isNotEmpty;
  }

  int compareDate(Date date1, Date date2) {
    if (date1 == null) {
      return date2 == null ? 0 : 1;
    }
    if (date2 == null) {
      return -1;
    }
    return date1.compareTo(date2);
  }

  String fmtBasal(num value, {bool dontRound = false}) {
    var precision = basalPrecision;
    if (dontRound)
      precision = math.max(Globals.decimalPlaces(value), precision);
    return fmtNumber(value, precision, 0, 'null', dontRound);
  }

  double limitValue(double value, double min, double max) => value < min
      ? min
      : value > max
          ? max
          : value;

  String fmtNumber(num value,
      [num decimals = 0,
      int fillfront0 = 0,
      String nullText = 'null',
      bool stripTrailingZero = false,
      bool forceSign = false]) {
    if (value == null) return nullText;

    var fmt = '#,##0';
    if (decimals > 0) {
      fmt = '${fmt}.'.padRight(decimals + 6, '0');
      value = (value * (10 ^ decimals).round() / (10 ^ decimals));
    }
    var nf = NumberFormat(fmt, language.code);
    var ret = nf.format(value);
    if (stripTrailingZero) {
      while (ret.endsWith('0')) {
        ret = ret.substring(0, ret.length - 1);
      }
      if (ret.endsWith(nf.symbols.DECIMAL_SEP))
        ret = ret.substring(0, ret.length - 1);
    }

    if (fillfront0 > 0) {
      if (value < 0) ret = ret.substring(1);
      while (fillfront0 > ret.length) {
        ret = '0${ret}';
      }
      if (value < 0) ret = '-${ret}';
    }
    return ret == 'NaN'
        ? nullText
        : (forceSign && value >= 0)
            ? '+${ret}'
            : ret;
  }

  bool isLoading = false;

  // loads all settings from localStorage
  void loadFromStorage() {
    isLoading = true;
    // TODO: 5.7.2020 - can be removed in future versions
    fromSharedString('{$storageString}');
    // 5.7.2020: end
    var shared = Settings.tiod(loadStorage('sharedData'));
    var device = Settings.tiod(loadStorage('deviceData'));
    fromStrings(shared, device);
    loadLocalOnlySettings();
    isLoading = false;
  }

  @override
  void save({bool updateSync = true, bool skipReload = false}) {
    if (isLoading) return;
    String oldLang, oldWebTheme;
    bool oldGoogle;
    try {
      user.loadParamsFromForms();
      dynamic json = convert.json.decode(loadStorage('webData'));
      oldLang = JsonData.toText(json['w1']);
      oldWebTheme = JsonData.toText(json['w2']);
      oldGoogle = JsonData.toBool(json['w3']);
    } catch (ex) {
      var msg = ex.toString();
      showDebug('Fehler bei Globals.save: ${msg}');
    }

//    saveOld(updateSync: updateSync, skipReload: skipReload);
    clearStorage();

    if (canDebug) saveStorage('debug', 'yes');

    syncGoogle = oldGoogle;
    _theme = oldWebTheme;

    saveWebData();
    saveStorage('sharedData', Settings.doit(asSharedString));
    saveStorage('deviceData', Settings.doit(asDeviceString));

    var doReload =
        (language.code != oldLang && language.code != null) && !skipReload;
    if (syncGoogle && updateSync) {
      _uploadToGoogle(doReload);
    } else if (doReload) {
      reload();
    }
  }

  // TODO: 5.7.2020 - can be removed in future versions
  void saveOld({bool updateSync = true, bool skipReload = false}) {
    var oldLang = loadStorage('language');
    var oldGoogle = loadStorage('syncGoogle');
    var oldWebTheme = loadStorage('webtheme');

    clearStorage();

    saveStorage('version', version);
    saveStorage('syncGoogle', oldGoogle);
    saveStorage('webtheme', oldWebTheme);
    if (canDebug) {
      saveStorage('debug', 'yes');
    }
    if (!Settings.hastiod) saveStorage('unsafe', 'zh++;');

    var save = '';
    for (var i = 0; i < userList.length; i++) {
      save = '${save},${userList[i].asJsonString}';
    }
    if (save.length > 1) save = save.substring(1);
    saveStorage('mu', Settings.doit('[${save}]'));
    save = '';
    for (var i = 0; i < shortcutList.length; i++) {
      save = '${save},${shortcutList[i].asJsonString}';
    }
    if (save.length > 1) save = save.substring(1);
    saveStorage('sc', Settings.doit('[$save]'));
    saveStorage('userIdx', '$userIdx');
    var doReload =
        (language.code != oldLang && language.code != null) && !skipReload;
    saveStorage('glucMGDL', glucMGDL.toString());
    saveStorage('language', language.code ?? 'de_DE');
    saveStorage('ppPdfSameWindow', ppPdfSameWindow ? 'true' : 'false');
    saveStorage('ppPdfDownload', ppPdfDownload ? 'true' : 'false');
    saveStorage(
        'ppHideNightscoutInPDF', ppHideNightscoutInPDF ? 'true' : 'false');
    saveStorage('ppShowUrlInPDF', ppShowUrlInPDF ? 'true' : 'false');
    saveStorage('ppHideLoopData', ppHideLoopData ? 'true' : 'false');
    saveStorage('pdfCreationMaxSize', '${pdfCreationMaxSize}');
    saveStorage('ppStandardLimits', _ppStandardLimits ? 'true' : 'false');
    saveStorage('ppCGPAlwaysStandardLimits',
        ppCGPAlwaysStandardLimits ? 'true' : 'false');
    saveStorage('ppComparable', ppComparable ? 'true' : 'false');
    saveStorage('ppLatestFirst', ppLatestFirst ? 'true' : 'false');
    saveStorage('ppGlucMaxIdx', ppGlucMaxIdx?.toString() ?? 0);
    saveStorage('ppBasalPrecisionIdx', ppBasalPrecisionIdx?.toString() ?? 0);
    saveStorage('showAllTileParams', showAllTileParams ? 'true' : 'false');
    saveStorage('showCurrentGluc', showCurrentGluc ? 'true' : 'false');
    saveStorage('period', period?.toString());
    saveStorage('viewType', viewType);
    saveStorage('tileShowImage', tileShowImage ? 'true' : 'false');
    timestamp = DateTime.now().millisecondsSinceEpoch;
    saveStorage('timestamp', '${timestamp}');
    savePdfOrder();
    saveStorage('theme', _theme);
    if (syncGoogle && updateSync) {
      _uploadToGoogle(doReload);
    } else if (doReload) {
      reload();
    }
  }

  // 5.7.2020: end

  static double percentile(List entries, int value) {
    var v = value / 100;
    var temp = [];
// the entries must not be rearranged,
// so we need a copy of this list
    for (var entry in entries) {
      temp.add(entry);
    }
    temp.sort((a, b) => a.gluc.compareTo(b.gluc));
    var N = temp.length;
    var n = (N - 1) * v + 1;
    if (n == 1) {
      return temp[0].gluc;
    } else if (n == N) {
      return temp[N - 1].gluc;
    } else {
      var k = n.toInt();
      var d = n - k;
      if (k > 0 && k < temp.length) {
        return temp[k - 1].gluc + d * (temp[k].gluc - temp[k - 1].gluc);
      } else {
        return 0.0;
      }
    }
  }

  bool checkJSON(dynamic doc) {
    try {
      convert.jsonEncode(doc);
      return true;
    } catch (ex) {
      return false;
    }
  }

  void saveShortcuts() {
    if (currShortcut != null) {
      if (currShortcutIdx == null || currShortcutIdx < 0) {
        shortcutList.add(currShortcut);
      } else {
        shortcutList[currShortcutIdx] = currShortcut.copy;
      }
    }
    currShortcut = null;
    currShortcutIdx = -1;
    save();
  }

  Date parseDate(String value) {
    Date ret;
    if (value != null && value.length == 8) {
      ret = Date(int.parse(value.substring(0, 4)),
          int.parse(value.substring(4, 6)), int.parse(value.substring(6, 8)));
    }
    return ret;
  }

  List<UrlData> findUrlDataFor(Date begDate, Date endDate) {
    var ret = <UrlData>[];

    var d1 = begDate.add(days: -1);
    var d2 = endDate.add(days: 0);
    while (d1.isOnOrBefore(d2)) {
      var url = user.urlDataFor(d1);
      if (ret.firstWhere((entry) => entry == url, orElse: () => null) == null)
        ret.add(url);
      d1 = d1.add(days: 1);
    }

    return ret;
  }

  void fillFormsFromShortcut(ShortcutData data) {
    period = DatepickerPeriod(src: data.periodData);
    for (var cfg in listConfig) {
      cfg.checked = data.forms.keys.contains(cfg.form.id);
      if (cfg.checked) {
        cfg.fillFromJson(data.forms[cfg.form.id]);
      }
    }
    for (var entry in listConfig) {
      user.formParams[entry.id] = entry.asString;
    }
    _pdfOrder = data.pdfOrder;
    glucMGDLIdx = data.glucMGDLIdx;
    sortConfigs();
  }
}

class UrlData {
  Globals g;
  String url;
  String token;
  Date startDate;
  Date endDate;

  UrlData(this.g);

  dynamic get asJson => {
        'u': url,
        't': token,
        'sd': startDate == null
            ? '19700101'
            : startDate.format(DateFormat('yyyyMMdd')),
        'ed': endDate == null ? null : endDate.format(DateFormat('yyyyMMdd'))
      };

  static UrlData fromString(Globals g, String src) {
    try {
      return UrlData.fromJson(g, convert.json.decode(src));
    } catch (ex) {
      return UrlData(g);
    }
  }

  // creates an instance and fills it with data from a json-structure
  static UrlData fromJson(Globals g, dynamic json) {
    var ret = UrlData(g);
    try {
      ret.url = JsonData.toText(json['u']);
      ret.token = JsonData.toText(json['t']);
      var sd = JsonData.toText(json['sd']);
      ret.startDate = sd == null ? Date(1970, 1, 1) : g.parseDate(sd);
      ret.endDate =
          json['ed'] == null ? null : g.parseDate(JsonData.toText(json['ed']));
    } catch (ex) {
      var msg = ex.toString();
      g.showDebug('Fehler bei UrlData.fromSharedJson: ${msg}');
    }
    return ret;
  }

  String get startDateEdit =>
      startDate == null ? null : startDate.format(g.fmtDateForDisplay);

  set startDateEdit(String v) {
    startDate = Date.parse(v, g.fmtDateForDisplay);
  }

  String get endDateEdit =>
      endDate == null ? null : endDate.format(g.fmtDateForDisplay);

  set endDateEdit(String v) {
    endDate = Date.parse(v, g.fmtDateForDisplay);
  }

  String fullUrl(String cmd, {String params = '', bool noApi = false}) {
    var ret = url;
    if (ret == null) return ret;
    if (ret.startsWith('@')) return ret.substring(1);
    if (!ret.endsWith('/')) ret = '$ret/';
    if (!noApi) {
      if (!ret.endsWith('/api/v1/')) ret = '${ret}api/v1/';
    }
    if (cmd == null || cmd.isEmpty) {
      ret = ret.substring(0, ret.length - 1);
    } else {
      ret = '${ret}$cmd';
    }
    if (token != null && token.isNotEmpty) {
      ret = '${ret}?token=${token}&';
    } else {
      ret = '${ret}?';
    }
    if (params == null || params.isEmpty) {
      ret = ret.substring(0, ret.length - 1);
    } else {
      ret = '${ret}$params';
    }
    return ret;
  }
}

// class with data for an user
class UserData {
  Globals g;
  var name = '';
  var birthDate = '';
  var listApiUrl = <UrlData>[];

//  String get storageApiUrl => listApiUrl.length > 0 ? listApiUrl.last.url : "";
//  String get token => listApiUrl.length > 0 ? listApiUrl.last.token : "";
  dynamic customData = <String, String>{};
  dynamic formParams = {};
  String diaStartDate = '';
  String insulin = '';
  StatusData status;
  int profileMaxIdx;
  bool isReachable = true;

  UserData(this.g) {
    listApiUrl.add(UrlData(g));
  }

  void saveParamsToForms() {
    for (var entry in g.listConfig) {
      entry.fillFromString(formParams[entry.id]);
    }
  }

  void loadParamsFromForms() {
    for (var entry in g.listConfig) {
      formParams[entry.id] = entry.asString;
    }
  }

  // retrieves the text for display
  String get display {
    return name.isEmpty ? apiUrl(null, '', noApi: true) : name;
  }

  // retrieve the data as a json-encoded-string
  String get asJsonString {
/*
    Map<String, dynamic> forms = Map<String, dynamic>();
    try {
      for (FormConfig cfg in g.listConfig) forms[cfg.id] = cfg.asJson;
    } catch (ex) {}
*/
    listApiUrl.sort((a, b) => g.compareDate(a.endDate, b.endDate));
    var urls = <dynamic>[];
    for (var url in listApiUrl) {
      urls.add(url.asJson);
    }

    // TODO: 3.7.2020 - token and storageApiUrl can be removed in future versions
    //           still there to keep old localStorages working
    var token = listApiUrl.last.token;
    var storageApiUrl = listApiUrl.last.url;
    // 3.7.2020: end

    return '{"n":"$name",'
        '"bd":"${birthDate ?? ''}",'
        // TODO: 3.7.2020 - ut and u can be removed in future versions
        // still there to keep old localStorages working
        '"ut":"${token ?? ''}",'
        '"u":"${storageApiUrl ?? ''}",'
        // 3.7.2020: end
        '"s":${convert.json.encode(urls)},'
        '"dd":"${diaStartDate ?? ''}",'
        '"i":"${insulin ?? ''}",'
        '"c":${convert.json.encode(customData)},'
        '"f":${convert.json.encode(formParams)},'
        '"r":${isReachable ? 'true' : 'false'},'
        '"pmi":${profileMaxIdx}'
        '}';
  }

  // creates an instance and fills it with data from a json-structure
  static UserData fromJson(Globals g, dynamic json) {
    var ret = UserData(g);
    try {
      ret.name = json['n'];
      ret.birthDate = json['bd'];
      ret.diaStartDate = json['dd'];
      ret.insulin = json['i'];
      // TODO: 3.7.2020 - this code can be removed in future versions
      //                  still there to transfer old structure to new structure
      if (json['s'] == null) {
        String src = json['u']?.trim();
        var url = UrlData(g);
        url.url = src;
        url.token = json['ut'];
        url.startDate = Date(1970, 1, 1);
        url.endDate = null;
        json['s'] = [url.asJson];
      }
      // 3.7.2020: end
      ret.listApiUrl = <UrlData>[];
      for (dynamic s in json['s']) {
        ret.listApiUrl.add(UrlData.fromJson(g, s));
      }
      ret.listApiUrl.sort((a, b) => g.compareDate(a.endDate, b.endDate));
      ret.customData = json['c'];
      ret.isReachable = json['r'] ?? true;
      ret.profileMaxIdx = JsonData.toInt(json['pmi'], null);
      ret.formParams = json['f'];
      if (ret.formParams != null && ret.formParams['analysis'] is bool) {
        ret.formParams = {};
      }
    } catch (ex) {
      var msg = ex.toString();
      g.showDebug('Fehler bei UserData.fromJson: ${msg}');
    }
    return ret;
  }

  // retrieves the url for a date
  UrlData urlDataFor(Date date) {
    UrlData ret;
    if (date != null) {
      for (var url in listApiUrl) {
        if (url.startDate == null || url.startDate.isOnOrBefore(date)) {
          if (url.endDate == null || url.endDate.isOnOrAfter(date)) ret = url;
        }
      }
    }
    ret ??= listApiUrl.last;
    return ret;
  }

  // retrieves the url to the api for a data
  String apiUrl(Date date, String cmd,
      {String params = '', bool noApi = false}) {
    if (listApiUrl.isEmpty) return null;

    var found = urlDataFor(date);
    return found.fullUrl(cmd, params: params, noApi: noApi);
  }

  // retrieves the url to the reports of Nightscout
  String get reportUrl => apiUrl(null, 'report', noApi: true);

  // checks if the current url is valid
  Future<String> get isValid async {
    if (apiUrl(null, '') == null)
      return Intl.message('Die URL wurde noch nicht festgelegt');
    String ret;
    var check = apiUrl(null, 'status');
    await g.request(check).then((String response) {
      if (response != '<h1>STATUS OK</h1>') ret = g.msgUrlFailure(check);
    }).catchError((err) {
      ret = g.msgUrlFailure(check);
    });
    return ret;
  }
}

// class with data for shortcuts
class ShortcutData {
  Globals g;
  String name;
  String pdfOrder;
  String periodData;
  String periodText;
  int glucMGDLIdx;
  String icon = 'attach_file';
  Map<String, dynamic> forms = <String, dynamic>{};

  String get formData => convert.json.encode(forms);

  bool _isSamePeriod(String a, String b) {
    var sa = a.split('|');
    var sb = b.split('|');
    if (sa.length < 5 || sb.length < 5 || sa[4] != sb[4]) return false;
    if (sa[2] == sb[2] && sa[2] != '') return true;
    if (sa[0] == sb[0] && sa[1] == sb[1]) return true;
    return false;
  }

  bool get isActive {
    var check = convert.json.encode(g.currentFormsAsMap);
    if (formData != check) return false;
    if (!_isSamePeriod(periodData, g.period.toString())) return false;
    if ((glucMGDLIdx ?? g.glucMGDLIdx) != g.glucMGDLIdx) return false;
    return true;
  }

  ShortcutData get copy {
    var ret = ShortcutData(g)
      ..name = name
      ..periodData = periodData
      ..periodText = periodText
      ..icon = icon
      ..pdfOrder = pdfOrder
      ..glucMGDLIdx = glucMGDLIdx;

    ret.forms = <String, dynamic>{};
    for (var i = 0; i < forms.keys.length; i++) {
      ret.forms[forms.keys.elementAt(i)] = forms[forms.keys.elementAt(i)];
    }
    return ret;
  }

  // fills member forms with the forms that are currently selected
  void loadCurrentForms() {
    forms = g.currentFormsAsMap;
    pdfOrder = g._pdfOrder;
  }

  ShortcutData(this.g) {
    periodData = g.period.toString();
    periodText = g.period.display;
    glucMGDLIdx = g.glucMGDLIdx;
    loadCurrentForms();
  }

  // retrieve the data as a json-encoded-string
  String get asJsonString {
    return '{'
        '"n":"$name",'
        '"p":"$periodData",'
        '"o":"$pdfOrder",'
        '"f":$formData,'
        '"u":$glucMGDLIdx'
        '}';
  }

  // creates an instance and fills it with data from a json-structure
  static ShortcutData fromJson(Globals g, dynamic json) {
    var ret = ShortcutData(g);
    try {
      ret.name = json['n'];
      if (ret.name == 'null') ret.name = null;
      ret.periodData = json['p'];
      ret.forms = json['f'];
      var period = DatepickerPeriod(src: ret.periodData);
      Settings.updatePeriod(period);
      ret.periodText = period.display;
      ret.pdfOrder = json['o'];
      ret.glucMGDLIdx = JsonData.toInt(json['u'], g.glucMGDLIdx);
    } catch (ex) {
      var msg = ex.toString();
      g.showDebug('Fehler bei ShortcutData.fromJson: ${msg}');
    }
    return ret;
  }
}
