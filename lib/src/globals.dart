library diamant.globals;

import 'dart:async';
import 'dart:convert' as convert;
import 'dart:html' as html;
import 'dart:math' as math;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:angular_components/angular_components.dart';
import 'package:googleapis/drive/v3.dart' as gd;
import 'package:googleapis_auth/auth_browser.dart' as auth;
import 'package:http/browser_client.dart' as http;
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/controls/datepicker/datepicker_component.dart';
import 'package:nightscout_reporter/src/controls/signin/signin_component.dart';
import 'package:nightscout_reporter/src/forms/base-print.dart';
import 'package:nightscout_reporter/src/jsonData.dart';
import 'package:timezone/browser.dart' as tz;

class Msg
{
  String okText = Intl.message("Schliessen");
  String text;
  String type = "msg";
  var links = [];
  bool get isEmpty
  => (text == null || text == "") && links.length == 0;

  void clear()
  {
    text = null;
    links = [];
  }

  void dismiss(call)
  {
    if (call != null)call();
    text = null;
    links = [];
  }
}

class LangData
{
  String code;
  String name;
  String img;
  bool get is24HourFormat
  {
    switch (code)
    {
      case "en-US":
      case "en-GB":
        return false;
      default:
        return true;
    }
  }

  String get dateformat
  => Intl.message("dd.MM.yyyy");
  String get imgPath
  => "https://findicons.com/files/icons/2758/flag_icons/32/${img}.png";

  LangData(this.code, this.name, this.img);
}

class Globals
{
  // The timezone is set to Europe/Berlin by default, but it is evaluated in
  // the constructor for the current system.
  static String refTimezone = "Europe/Berlin";
  static tz.Location refLocation = tz.getLocation("Europe/Berlin");
  static DateTime get now
  => DateTime.now();
  bool _isLoaded = false;
  String version = "1.2.7";
  String lastVersion;
  static const int PDFUNLIMITED = 4000000;
  static const int PDFDIVIDER = 100000;
  int _pdfCreationMaxSize = 400000;

  int get pdfCreationMaxSize
  {
    if (_pdfCreationMaxSize < Globals.PDFDIVIDER)_pdfCreationMaxSize = Globals.PDFDIVIDER;
    if (_pdfCreationMaxSize > Globals.PDFUNLIMITED)_pdfCreationMaxSize = Globals.PDFUNLIMITED;
    return _pdfCreationMaxSize;
  }

  set pdfCreationMaxSize(int value)
  {
    if (value < Globals.PDFDIVIDER)value = Globals.PDFDIVIDER;
    if (value > Globals.PDFUNLIMITED)value = Globals.PDFUNLIMITED;
    _pdfCreationMaxSize = value;
  }

  int get pdfControlMaxSize
  => (pdfCreationMaxSize / Globals.PDFDIVIDER).toInt();

  set pdfControlMaxSize(int value)
  {
    pdfCreationMaxSize = value * Globals.PDFDIVIDER;
  }

  int basalPrecision = 1;

  static int decimalPlaces(num value)
  {
    String v = value.toString();
    while (v.endsWith("0"))v = v.substring(0, v.length - 1);
    int ret = math.max(v.length - v.lastIndexOf('.') - 1, 0);
    return math.min(ret, 3);
  }

  static final Globals _globals = Globals._internal();

//  final driveParent = "appDataFolder";
  final driveParent = null;
  auth.AutoRefreshingAuthClient _client = null;
  auth.AutoRefreshingAuthClient get client
  => _client;
  set client(auth.AutoRefreshingAuthClient value)
  {
    _client = value;
    saveToGoogle = value != null;
    save();
  }

  gd.DriveApi get drive
  => client == null ? null : gd.DriveApi(client);

  factory Globals(){
    return _globals;
  }

  Globals._internal(){
    tz.Location found = null;

    DateTime now = DateTime.now();
    int offset = DateTime
      .now()
      .timeZoneOffset
      .inMilliseconds;
    for (String key in tz.timeZoneDatabase.locations.keys)
    {
      tz.Location l = tz.timeZoneDatabase.locations[key];
      if (l.currentTimeZone.offset == offset)
      {
        found = l;
        break;
      }
    }
    if (found != null)
    {
      Globals.refTimezone = found.name;
      Globals.refLocation = found;
    }
  }

  List<FormConfig> listConfig = List<FormConfig>();

  Date date(DateTime src)
  => Date(src.year, src.month, src.day);

  String get msgBE
  => _khFactor == 10 ? "msgBE" : "msgKE";
  String get msgUrlFailure
  =>
    Intl.message("Die angegebene URL ist nicht erreichbar. "
      "Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. "
      "In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools, "
      "wie dieses hier, auf die Daten zugreifen dürfen.<br><br>Wenn diese URL geschützt ist, "
      "muss ausserdem das UserToken korrekt definiert sein.");
  String get msgNoURLDefined
  => Intl.message("Die URL wurde noch nicht festgelegt.");

  String title = "Nightscout Reporter";
  List<UserData> userList = List<UserData>();
  int _userIdx = 0;
  int get userIdx
  => _userIdx;
  set userIdx(value)
  {
    if (value >= 0 && value < userList.length)_userIdx = value;
    else
      _userIdx = 0;

    for (FormConfig entry in listConfig)
      entry.fillFromString(user.formParams[entry.id]);
  }

  UserData get user
  {
    if (_userIdx >= 0 && _userIdx < userList.length)return userList[_userIdx];
    if (userList.length == 0)userList.add(UserData(this));
    userIdx = 0;
    return userList[0];
  }

  List<LangData> languageList = [
    LangData("de_DE", Intl.message("Deutsch"), "de"),
    LangData("en_US", Intl.message("English (USA)"), "us"),
    LangData("en_GB", Intl.message("English (GB)"), "gb"),
    LangData("es_ES", Intl.message("Español"), "es"),
    LangData("pl_PL", Intl.message("Polski"), "pl"),
  ];
  LangData _language = null;
  LangData get language
  => _language == null ? languageList[0] : _language;
  set language(LangData value)
  {
    _language = value;
  }

  String get msgToday
  => Intl.message("Heute");
  String get msgLast2Days
  => Intl.message("Letzte 2 Tage");
  String get msgLast3Days
  => Intl.message("Letzte 3 Tage");
  String get msgLastWeek
  => Intl.message("Letzte Woche");
  String get msgLast2Weeks
  => Intl.message("Letzte 2 Wochen");
  String get msgLast3Weeks
  => Intl.message("Letzte 3 Wochen");
  String get msgLastMonth
  => Intl.message("Letzter Monat");
  String get msgLast3Months
  => Intl.message("Letzte 3 Monate");

  bool glucMGDL = true;
  double get glucFactor => glucMGDL ? 1 : 18.02;
  double get glucPrecision => glucMGDL ? 0 : 2;
  String _pdfOrder = "";
  set pdfOrder(String value)
  {
    _pdfOrder = value;
    sortConfigs();
  }

  DatepickerPeriod period = DatepickerPeriod();
  DateFormat fmtDateForData;
  DateFormat fmtDateForDisplay;
  bool canDebug = false;
  bool isBeta = html.window.location.href.contains("/beta/");
  bool _isLocal = html.window.location.href.contains("/localhost:");
  bool get isLocal
  => _isLocal;
  set isLocal(value)
  {
    _isLocal = value;
  }

  bool get useProfileSwitch
  => false; //isLocal;
  String get settingsFilename
  => isLocal ? "settings.local" : isBeta ? "settings.beta" : "settings";
  gd.File settingsFile = null;

  bool _saveToGoogle = false;
  bool get saveToGoogle
  => _saveToGoogle;
  set saveToGoogle(bool value)
  {
    _saveToGoogle = value;
    saveStorage("saveToGoogle", _saveToGoogle ? "yes" : null);
  }

  static bool itod = html.window.localStorage["unsafe"] != "zh++;";
  String betaPrefix = "@";
  bool pdfSameWindow = true;
  bool pdfDownload = false;
  bool hideNightscoutInPDF = true;
  bool hidePdfInfo = false;
  bool showCurrentGluc = false;
  bool isConfigured = false;
  int _khFactor = 12;
  int get khFactor
  => _khFactor;
  set khFactor(int value)
  {
    if (value == 10 || value == 12)_khFactor = value;
  }

  bool get isKHBE
  => _khFactor == 12;

  double glucFromData(double value)
  => glucMGDL ? value : value / 18.02;

  String get pdfTarget
  {
    if (!pdfSameWindow)return "_blank";
    return "";
  }

  static double calc(double a, double b, double factor)
  {
    if (a != null && a > 0)
    {
      if (b != null && b > 0)return a + ((b - a) * factor).toInt();
      else
        return a;
    }
    return b;
  }

  String adjustUrl(String url)
  {
    if (user.token != null && user.token.isNotEmpty)
    {
      String div = url.indexOf("?") > 0 ? "&" : "?";
      url = "${url}${div}token=${user.token}";
    }
    return url;
  }

  Future<String> request(String url, {String method = "GET"})
  async {
    http.BrowserClient client = http.BrowserClient();
    return client.get(adjustUrl(url)).then((response)
    {
      return response.body;
    }).catchError((error)
    {
      return error.toString();
    });
  }

  Future<String> checkSetup({checkUser: null})
  async {
    if (checkUser == null)checkUser = user;
    if (checkUser.storageApiUrl == null || checkUser.apiUrl == null)return msgNoURLDefined;
    String ret = null;
    String check = "${checkUser.apiUrl}status";
    await request(check).then((String response)
    {
      if (!response.toLowerCase().contains("status ok"))ret = msgUrlFailure;
    }).catchError((err)
    {
      ret = msgUrlFailure;
    });
    return ret;
  }

  changeLanguage(LangData value, {bool doReload = true, bool checkConfigured = false})
  async {
    language = value;
    if (checkConfigured && !isConfigured)clearStorage();
    saveStorage("language", language?.code ?? "de_DE");
    if (doReload)
    {
      if (!checkConfigured)save();
      reload();
    }
  }

  reload()
  {
    int pos = html.window.location.href.indexOf("?");
    if (pos > 0)html.window.location.href = html.window.location.href.substring(0, pos - 1);
    else
      html.window.location.reload();
  }

  addForm(BasePrint form)
  {
    FormConfig cfg = FormConfig(form, false);
    listConfig.add(FormConfig(form, false));
  }

  void clearStorage()
  {
    for (var entry in html.window.localStorage.entries)
    {
      bool doKill = false;
      doKill = entry.key.startsWith(betaPrefix);
      if (!isBeta)doKill = !doKill;
      if (doKill)html.window.localStorage.remove(entry.key);
    }
  }

  copyFromOtherStorage()
  {
    isBeta = !isBeta;
    loadSettings();
    isBeta = !isBeta;
    save();
  }

  void saveStorage(String key, String value)
  {
    if (isBeta)key = "${betaPrefix}${key}";
    if (value == null || value.isEmpty)html.window.localStorage.remove(key);
    else
      html.window.localStorage[key] = value;
  }

  String loadStorage(String key)
  {
    if (isBeta)key = "${betaPrefix}${key}";
    String ret = html.window.localStorage[key];
    if (ret == "null" || ret == null)ret = "";
    return ret;
  }

  UserData u(url, name)
  {
    UserData ret = UserData(this);
    ret.storageApiUrl = url;
    ret.name = name;
    return ret;
  }

  String get asJson
  {
    String save = "";
    for (int i = 0; i < userList.length; i++)
      save = "${save},${userList[i].asJson}";
    String debug = "";
    return '{'
      '"version":"$version"'
      ',"mu":"${Globals.doit('[${save.substring(1)}]')}"'
      ',"userIdx":"${userIdx}"'
      ',"glucMGDL":"${glucMGDL}"'
      ',"language":"${language.code ?? 'de_DE'}"'
      ',"pdfSameWindow":"${pdfSameWindow ? 'yes' : 'no'}"'
      ',"pdfDownload":"${pdfDownload ? 'yes' : 'no'}"'
      ',"pdfCreationMaxSize":"${pdfCreationMaxSize}"'
      ',"hideNightscoutInPDF":"${hideNightscoutInPDF ? 'yes' : 'no'}"'
      ',"hidePdfInfo":"${hidePdfInfo ? 'yes' : 'no'}"'
      ',"showCurrentGluc":"${showCurrentGluc ? 'yes' : 'no'}"'
      ',"period":"${period?.toString() ?? null}"'
      ',"pdfOrder":"${_pdfOrder}"'
      '}';
  }

  void _loadFromStorage()
  {
    String src = '{'
      '"version":"${loadStorage('version')}"'
      ',"userIdx":"${loadStorage('userIdx')}"'
      ',"mu":"${loadStorage('mu')}"'
      ',"glucMGDL":"${loadStorage('glucMGDL')}"'
      ',"language":"${loadStorage('language')}"'
      ',"pdfSameWindow":"${loadStorage('pdfSameWindow')}"'
      ',"pdfDownload":"${loadStorage('pdfDownload')}"'
      ',"pdfCreationMaxSize":"${loadStorage('pdfCreationMaxSize')}"'
      ',"hideNightscoutInPDF":"${loadStorage('hideNightscoutInPDF')}"'
      ',"hidePdfInfo":"${loadStorage('hidePdfInfo')}"'
      ',"showCurrentGluc":"${loadStorage('showCurrentGluc')}"'
      ',"period":"${loadStorage('period')}"'
      ',"pdfOrder":"${loadStorage('pdfOrder')}"'
      '}';
    fromJson(src);
    canDebug = loadStorage("debug") == "yes";
    fmtDateForData = DateFormat("yyyy-MM-dd");
    fmtDateForDisplay = DateFormat(language.dateformat);
  }

  void fromJson(String src)
  {
    try
    {
      dynamic cfg = convert.json.decode(src);

      lastVersion = JsonData.toText(cfg["version"]);
      glucMGDL = JsonData.toBool(cfg["glucMGDL"]);
      String langId = JsonData.toText(cfg["language"]);
      int idx = languageList.indexWhere((v)
      => v.code == langId);
      language = languageList[idx >= 0 ? idx : 0];
      pdfSameWindow = JsonData.toBool(cfg["pdfSameWindow"]);
      pdfDownload = JsonData.toBool(cfg["pdfDownload"]);
      pdfCreationMaxSize = JsonData.toInt(cfg["pdfCreationMaxSize"]);
      hideNightscoutInPDF = JsonData.toBool(cfg["hideNightscoutInPDF"]);
      hidePdfInfo = JsonData.toBool(cfg["hidePdfInfo"]);
      showCurrentGluc = JsonData.toBool(cfg["showCurrentGluc"]);
      pdfOrder = JsonData.toText(cfg["pdfOrder"]);
      period = DatepickerPeriod(src: JsonData.toText(cfg["period"]));
      period.fmtDate = language.dateformat;
      String users = cfg["mu"];
      userList.clear();
      // get user list from mu if available
      if (users != null)
      {
        var text = tiod(users);
        if (text != null && text.isNotEmpty)
        {
          try
          {
            var list = convert.json.decode(text);
            for (var entry in list)
              userList.add(UserData.fromData(this, entry));
          }
          catch (e)
          {
//            saveStorage("mu", null);
          }
        }
        else
        {
//          saveStorage("mu", null);
        }
      }
      userIdx = JsonData.toInt(cfg["userIdx"]);
    }
    catch (ex)
    {
      String msg = ex.toString();
    }
  }

  void _uploadToGoogle()
  {
    if (drive == null)
    {
      saveToGoogle = false;
      save();
    }

    if (settingsFile == null)
    {
      settingsFile = gd.File()
        ..name = settingsFilename
        ..id = null;
      if (driveParent != null)settingsFile.parents = [driveParent];
    }

    StreamController<String> controller = StreamController<String>();
    String content = asJson;
    controller.add(content);
    commons.Media media = commons.Media(
      controller.stream.transform(convert.Utf8Encoder()), content.length, contentType: "text/javascript");
    if (settingsFile.id == null)
    {
      drive?.files.create(settingsFile, uploadMedia: media).then((_)
      {
//        data.mode = "view";
//        activate();
      }).catchError((error)
      {
        String msg = error.toString();
//        display("Es ist ein Fehler aufgetreten ($error)");
      }, test: (error)
      => true);
    }
    else
      drive?.files.update(settingsFile, settingsFile.id, uploadMedia: media).then((_)
      {}).catchError((error)
      {
        String msg = error.toString();
//      display("Es ist ein Fehler aufgetreten ($error)");
      }, test: (error)
      => true);
    controller.close();
  }

  void _loadFromGoogle()
  {
    if (drive == null)
    {
      SigninComponent sign = SigninComponent();
      sign.isAuthorized = saveToGoogle;
      sign.doLogin().then((_)
      {
        _client = sign.client;
        if (drive == null)
        {
          saveToGoogle = false;
          _loadFromStorage();
          _initAfterLoad();
          return;
        }
        else
        {
          _loadFromGoogle();
        }
      });
      return;
    }
    _searchDocuments(1, "name='${settingsFilename}' and not trashed").then((gd.FileList list)
    {
      if (list.files.length == 0)
      {
        settingsFile = list.files[0];
      }
      else
      {
        settingsFile = gd.File()
          ..name = settingsFilename
          ..id = null;
        if (driveParent != null)settingsFile.parents = [driveParent];
      }
      drive.files.get(
        settingsFile.id, $fields: "*", downloadOptions: commons.DownloadOptions.FullMedia, acknowledgeAbuse: false)
        .then((response)
      {
        var media = response as commons.Media;
        if (media?.contentType?.startsWith("text/") ?? false)
        {
          Stream strm = media.stream.transform(convert.Utf8Decoder(allowMalformed: true));
          strm.join().then((s)
          {
            fromJson(s);
          });
        }
        else
        {
//          display("Eine Datei der Art \"${media?.contentType}\" kann nicht verarbeitet werden. ");
        }
      }).catchError((error)
      {
        String msg = error.toString();
//        display("Es ist ein Fehler aufgetreten ($error)");
      }, test: (error)
      => true);
    }).catchError((error)
    {
      _loadFromStorage();
      _initAfterLoad();
    });
  }

  Future<gd.FileList> _searchDocuments(int max, String query)
  {
    gd.FileList docs = gd.FileList();
    Future<gd.FileList> next(String token)
    {
      // The API call returns only a subset of the results. It is possible
      // to query through the whole result set via "paging".
      return drive?.files.list(q: query,
        pageToken: token,
        pageSize: 100,
        corpora: "user",
//        $fields: "*",
        orderBy: "name",
        spaces: driveParent).then((results)
      {
        docs.files.addAll(results.files);
        // If we would like to have more documents, we iterate.
        if (docs.files.length < max && results.nextPageToken != null)
        {
          return next(results.nextPageToken);
        }
        return (docs as Future<gd.FileList>);
      }).catchError((error)
      {
        String msg = error.toString();
//        display("Es ist ein Fehler aufgetreten ($error)");
      }, test: (error)
      => true);
    }
    return next(null);
  }

  Future<void> loadSettings()
  async {
    _saveToGoogle = loadStorage("saveToGoogle") == "yes";
    if (saveToGoogle)
    {
      _loadFromGoogle();
    }
    else
    {
      _loadFromStorage();
      _initAfterLoad();
    }
  }

  void _initAfterLoad()
  {
    changeLanguage(language, doReload: false);
    period.list.clear();
    period.list.add(DatepickerEntry("today", msgToday, (DatepickerPeriod data)
    {
      data.start = Date.today();
      data.end = Date.today();
    }));
    period.list.add(DatepickerEntry("2days", msgLast2Days, (DatepickerPeriod data)
    {
      data.start = Date.today().add(days: -1);
      data.end = Date.today();
    }));
    period.list.add(DatepickerEntry("3days", msgLast3Days, (DatepickerPeriod data)
    {
      data.start = Date.today().add(days: -2);
      data.end = Date.today();
    }));
    period.list.add(DatepickerEntry("1week", msgLastWeek, (DatepickerPeriod data)
    {
      data.start = Date.today().add(days: -6);
      data.end = Date.today();
    }));
    period.list.add(DatepickerEntry("2weeks", msgLast2Weeks, (DatepickerPeriod data)
    {
      data.start = Date.today().add(days: -13);
      data.end = Date.today();
    }));
    period.list.add(DatepickerEntry("3weeks", msgLast3Weeks, (DatepickerPeriod data)
    {
      data.start = Date.today().add(days: -20);
      data.end = Date.today();
    }));
    period.list.add(DatepickerEntry("1month", msgLastMonth, (DatepickerPeriod data)
    {
      data.start = Date.today().add(months: -1);
      data.end = Date.today();
    }));
    period.list.add(DatepickerEntry("3months", msgLast3Months, (DatepickerPeriod data)
    {
      data.start = Date.today().add(months: -3);
      data.end = Date.today();
    }));
    isConfigured = lastVersion != null && lastVersion.isNotEmpty;
    _isLoaded = true;
  }

  String fmtNumber(num value,
                   [num decimals = 0, bool fillfront0 = false, String nullText = "null", bool stripTrailingZero = false])
  {
    if (value == null)return nullText;

    String fmt = "#,##0";
    if (decimals > 0)
    {
      fmt = "$fmt.".padRight(decimals + 6, "0");
      value = (value * (10 ^ decimals).round() / (10 ^ decimals));
    }
    NumberFormat nf = NumberFormat(fmt, language.code);
    String ret = nf.format(value);
    if (stripTrailingZero)
      while (ret.endsWith("0") || ret.endsWith(nf.symbols.DECIMAL_SEP))ret = ret.substring(0, ret.length - 1);
    return ret;
  }

  void save()
  {
    String oldLang = loadStorage("language");
    String oldGoogle = loadStorage("saveToGoogle");

    if (saveToGoogle)
    {
      _uploadToGoogle();
      return;
    }
    clearStorage();

    saveStorage("version", version);
    saveStorage("saveToGoogle", oldGoogle);
    if (canDebug)saveStorage("debug", "yes");
    if (!itod)saveStorage("unsafe", "zh++;");

    String save = "";
    for (int i = 0; i < userList.length; i++)
      save = "${save},${userList[i].asJson}";
    saveStorage("mu", Globals.doit("[${save.substring(1)}]"));

    saveStorage("userIdx", "$userIdx");
    bool doReload = (language.code != oldLang && language.code != null);
    saveStorage("glucMGDL", glucMGDL.toString());
    saveStorage("language", language.code ?? "de_DE");
    saveStorage("pdfSameWindow", pdfSameWindow ? "true" : "false");
    saveStorage("pdfDownload", pdfDownload ? "true" : "false");
    saveStorage("pdfCreationMaxSize", "${pdfCreationMaxSize}");
    saveStorage("hideNightscoutInPDF", hideNightscoutInPDF ? "true" : "false");
    saveStorage("hidePdfInfo", hidePdfInfo ? "true" : "false");
    saveStorage("showCurrentGluc", showCurrentGluc ? "true" : "false");
    saveStorage("period", period?.toString() ?? null);
    savePdfOrder();
/*
    if (_dateRange.range != null)
    {
      if (_dateRange.range.start != null)saveStorage("startDate", _dateRange.range.start.format(fmtDateForData));
      if (_dateRange.range.end != null)saveStorage("endDate", _dateRange.range.end.format(fmtDateForData));
    }
*/
    if (doReload)reload();
  }

  savePdfOrder()
  {
    if (listConfig.length == 0)return;
    var idList = [];
    for (FormConfig cfg in listConfig)
      idList.add(cfg.id);
    _pdfOrder = idList.join(",");
    saveStorage("pdfOrder", _pdfOrder);
  }

  sortConfigs()
  {
    if (_pdfOrder == "")return;
    var srcList = listConfig.sublist(0);
    listConfig.clear();
    var idList = _pdfOrder.split(",");
    for (int i = 0; i < idList.length; i++)
    {
      FormConfig cfg = srcList.firstWhere((cfg)
      => cfg.id == idList[i], orElse: ()
      => null);
      if (cfg != null)
      {
        srcList.remove(cfg);
        listConfig.add(cfg);
      }
    }
    for (FormConfig cfg in srcList)
      listConfig.add(cfg);
    savePdfOrder();
  }

  static tiod(String src)
  {
    if (!itod)return src ?? "";
    if (src == null || src.isEmpty)return "";

    String ret = "";
    int pos = src.length ~/ 2;
    src = "${src.substring(pos + 1)}${src.substring(0, pos - 1)}";
    try
    {
      convert.base64Decode(src).forEach((value)
      {
        ret = "${ret}${String.fromCharCode(value)}";
      });
      if (html.window.localStorage["mu-enc"] == "utf8")ret = convert.utf8.decode(ret.codeUnits);
    }
    catch (ex)
    {
      ret = "";
    }

    return ret;
  }

  static doit(String src)
  {
    if (!itod)return src;
//    String ret = convert.base64Encode(src.codeUnits);
    html.window.localStorage["mu-enc"] = "utf8";
    String ret = convert.base64Encode(convert.utf8.encode(src));
    int pos = ret.length ~/ 2;
    math.Random rnd = math.Random();
    String.fromCharCode(rnd.nextInt(26) + 64);
    ret =
    "${ret.substring(pos)}${String.fromCharCode(rnd.nextInt(26) + 64)}${String.fromCharCode(rnd.nextInt(10) + 48)}${ret
      .substring(0, pos)}";
    return ret;
  }

  static double percentile(List entries, int value)
  {
    double v = value / 100;
    List temp = List();
// the entries must not be rearranged,
// so we need a copy of this list
    for (var entry in entries)
      temp.add(entry);
    temp.sort((a, b)
    => a.gluc.compareTo(b.gluc));
    int N = temp.length;
    double n = (N - 1) * v + 1;
    if (n == 1)
    {
      return temp[0].gluc;
    }
    else if (n == N)
    {
      return temp[N - 1].gluc;
    }
    else
    {
      int k = n.toInt();
      double d = n - k;
      if (k > 0 && k < temp.length)return temp[k - 1].gluc + d * (temp[k].gluc - temp[k - 1].gluc);
      else
        return 0.0;
    }
  }

  bool checkJSON(dynamic doc)
  {
    try
    {
      convert.jsonEncode(doc);
      return true;
    }
    catch (ex)
    {

    }
    return false;
  }
}

class UserData
{
  Globals g;
  String name = "";
  String birthDate = "";
  String storageApiUrl = "";
  String token = "";
  dynamic customData = Map<String, String>();
  dynamic formParams = {};
  String diaStartDate = "";
  String insulin = "";

//  Map<String, FormConfig> formList = Map<String, FormConfig>();

  UserData(this.g);

  String get display
  {
    return name.isEmpty ? storageApiUrl : name;
  }

  String get asJson
  {
    if (storageApiUrl.endsWith("/api/v1/"))storageApiUrl.replaceAll("/api/v1/", "");
    if (storageApiUrl.endsWith("/api/v1"))storageApiUrl.replaceAll("/api/v1", "");
    if (storageApiUrl == "null")storageApiUrl = null;
    if (storageApiUrl != null)storageApiUrl = storageApiUrl.trim();
    Map<String, String> forms = Map<String, String>();
    try
    {
      for (FormConfig cfg in g.listConfig)
        forms[cfg.id] = cfg.asString;
    }
    catch (ex)
    {}

    return '{"n":"$name",'
      '"bd":"${birthDate ?? ''}",'
      '"ut":"${token ?? ''}",'
      '"u":"${storageApiUrl ?? ''}",'
      '"dd":"${diaStartDate ?? ''}",'
      '"i":"${insulin ?? ''}",'
      '"c":${convert.json.encode(customData)},'
      '"f":${convert.json.encode(forms)}'
      '}';
  }

  static UserData fromData(Globals g, var data)
  {
    UserData ret = UserData(g);
    try
    {
      ret.name = data["n"];
      ret.birthDate = data["bd"];
      ret.diaStartDate = data["dd"];
      ret.insulin = data["i"];
      ret.storageApiUrl = data["u"]?.trim();
      ret.token = data["ut"];
      ret.customData = data["c"];
      ret.formParams = data["f"];
      if (ret.formParams != null && ret.formParams["analysis"] is bool)ret.formParams = {};
//      ret.formList = Map<String, FormConfig>();
/*
      for (String key in data["f"].keys)
      {
        FormConfig cfg = FormConfig(key, false);
        cfg.fillFromString(data["f"][key]);
        ret.formList[key] = cfg;
      }*/
    }
    catch (ex)
    {}
    return ret;
  }

  String get baseUrl
  {
    if (storageApiUrl == null || storageApiUrl.length < 8)return "";
    return storageApiUrl.substring(0, storageApiUrl.substring(8).indexOf("/") + 8);
  }

  String get apiUrl
  {
    if(storageApiUrl != null)
      storageApiUrl = storageApiUrl.trim();
    String ret = storageApiUrl;
    if (ret != null)
    {
      if (ret.startsWith("@"))return ret.substring(1);
      if (!ret.endsWith("/"))ret = "$ret/";
      if (!ret.endsWith("/api/v1/")) ret = "${ret}api/v1/";
    }
    return ret;
  }

  String get reportUrl
  {
    String ret = storageApiUrl;
    if (ret != null)
    {
      if (!ret.endsWith("/"))ret = "$ret/";
      ret = "${ret}report";
      if (token != null && token != "")ret = "${ret}?token=${token}";
    }
    return ret;
  }

  Future<String> get isValid
  async {
    if (storageApiUrl == null || apiUrl == null)return Intl.message("Die URL wurde noch nicht festgelegt");
    String ret = null;
    String check = "${apiUrl}status";
    await g.request(check).then((String response)
    {
      if (response != "<h1>STATUS OK</h1>")ret = g.msgUrlFailure;
    }).catchError((err)
    {
      ret = g.msgUrlFailure;
    });
    return ret;
  }
}