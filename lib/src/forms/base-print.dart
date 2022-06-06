import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'dart:math';
import 'dart:typed_data';

import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/controls/datepicker/datepicker_component.dart';
import 'package:nightscout_reporter/src/globals.dart';
import 'package:nightscout_reporter/src/json_data.dart';

import 'print-cgp.dart';

class GridData {
  double colWidth;
  double lineHeight;
  double glucScale;
  int gridLines;
}

class LegendData {
  List<dynamic> columns = List<dynamic>();
  double x;
  double y;
  double colWidth;
  int maxLines;

  List current(bool forceNew) {
    if (columns.isEmpty || (columns.last['stack'] as List).length >= maxLines || forceNew) {
      x += columns.isNotEmpty ? colWidth : 0.0;
      columns.add({
        'relativePosition': {'x': x, 'y': y},
        'stack': []
      });
    }
    return columns.last['stack'];
  }

  dynamic get asOutput => columns.length > 0 ? {'stack': columns} : null;

  LegendData(this.x, this.y, this.colWidth, this.maxLines);
}

class StepData {
  double min, step;

  StepData(this.min, this.step);
}

class LiteralFormat {
  bool divider;

  LiteralFormat({divider = true}) {
    this.divider = divider;
  }
}

enum ParamType { none, bool, string, int, list, literal }

class ParamInfo {
  ParamType type = ParamType.none;
  String title;
  bool _boolValue;
  String _stringValue;
  int _intValue;
  LiteralFormat _literalFormat;
  bool isForThumbs = false;
  Function checkValue;

  bool get boolValue => isForThumbs ? thumbValue : (isLoopValue && Globals().hideLoopData ? false : _boolValue);

  String get stringValue => isForThumbs ? thumbValue : _stringValue;

  LiteralFormat get literalFormat => isForThumbs ? thumbValue : _literalFormat;

  int get intValue => isForThumbs ? thumbValue : _intValue;

  void handleValueChange(dynamic value) {
    if (checkValue != null) checkValue(this, value);
  }

  set boolValue(value) {
    _boolValue = value;
    handleValueChange(value);
  }

  set intValue(value) {
    _intValue = value;
    handleValueChange(value);
  }

  set stringValue(value) {
    _stringValue = value;
    handleValueChange(value);
  }

  set literalFormat(value) {
    _literalFormat = value;
  }

  var thumbValue;
  bool isDeprecated;
  bool isLoopValue;
  bool isDisabled = false;
  bool isVisible = true;

  int get sliderValue => intValue >= min && intValue <= max ? intValue : min;

  set sliderValue(int value) {
    _intValue = value;
    handleValueChange(value);
  }

  List<String> list;
  List<ParamInfo> subParams;

  String get listValue {
    if (list == null || list.isEmpty) return '';
    if (intValue == null || intValue < 0 || intValue >= list.length) {
      return list[0];
    }
    return list[intValue];
  }

  int min;
  int max;
  int sort;
  String subtitle;

  ParamInfo(this.sort, this.title,
      {bool boolValue,
        String stringValue,
        int intValue,
        LiteralFormat literalFormat,
        this.min,
        this.max,
        this.list,
        this.subParams,
        this.isDeprecated = false,
        this.isLoopValue = false,
        this.thumbValue}) {
    _boolValue = boolValue;
    _intValue = intValue;
    _stringValue = stringValue;
    _literalFormat = literalFormat;
    if (boolValue != null) {
      type = ParamType.bool;
      thumbValue ??= boolValue;
    }
    if (stringValue != null) {
      type = ParamType.string;
      thumbValue ??= stringValue;
    }
    if (intValue != null) {
      type = ParamType.int;
      thumbValue ??= intValue;
    }
    if (list != null) {
      type = ParamType.list;
      thumbValue ??= 0;
    }
    if (literalFormat != null) {
      type = ParamType.literal;
      thumbValue ??= 0;
    }
  }

  dynamic get asJson {
    List sp = [];
    if (subParams != null) {
      for (ParamInfo p in subParams) {
        if (p.type != ParamType.literal) sp.add(p.asJson);
      }
    }
    return {'b': boolValue, 's': stringValue, 'i': intValue, 'sp': sp};
  }

  fill(ParamInfo src, Function checkValue) {
    if (src.type != ParamType.literal) return;
    _boolValue = src.boolValue;
    _stringValue = src.stringValue;
    _intValue = src.intValue;
    subParams = src.subParams;
    if (checkValue != null) {
      checkValue(this, null);
    }
    this.checkValue = checkValue;
  }

  void fillFromJson(dynamic value, Function checkValue) {
    try {
      switch (type) {
        case ParamType.bool:
          _boolValue = value['b'] ?? false;
          if (checkValue != null) {
            checkValue(this, _boolValue);
          }
          break;
        case ParamType.string:
          _stringValue = value['s'] ?? '';
          if (checkValue != null) {
            checkValue(this, _stringValue);
          }
          break;
        case ParamType.int:
        case ParamType.list:
          _intValue = value['i'] ?? 0;
          if (checkValue != null) {
            checkValue(this, _intValue);
          }
          break;
        default:
          break;
      }
      if (subParams != null) {
        for (int i = 0; i < subParams.length; i++) {
          if (i < value['sp'].length) {
            subParams[i].fillFromJson(value['sp'][i], checkValue);
          }
        }
      }
    } catch (ex) {}
    this.checkValue = checkValue;
  }
}

class FormConfig {
  String get dataId => form.dataId;

  String get id => form.id;

  String get idx => form.idx;
  bool _checked = true;

  bool get checked => _checked;

  set checked(value) {
    _checked = value;
  }

  bool opened = false;
  BasePrint form;

  FormConfig(this.form, this._checked) {}

  dynamic get asJson {
    dynamic ret = {'c': checked, 'p': []};

    if (form.params != null) {
      for (var entry in form.params)
        ret['p'].add(entry.asJson);
    }
    return ret;
  }

  String get asString {
    return json.encode(asJson);
  }

  void fill(FormConfig src) {
    for (var i = 0; i < src.form.params.length; i++) {
      if (i >= form.params.length) form.params.add(src.form.params[i]);
      form.params[i].fill(src.form.params[i], form.checkValue);
    }
    form.extractParams();
  }

  void fillFromJson(dynamic value) {
    try {
      checked = value['c'];
      for (var i = 0; i < value['p'].length && i < form.params.length; i++) {
        form.params[i].fillFromJson(value['p'][i], form.checkValue);
      }
      // ignore: empty_catches
    } catch (ex) {}
    form.extractParams();
  }

  void fillFromString(var value) {
    if (value != null) {
      if (value is String) {
        fillFromJson(json.decode(value));
      } else {
        fillFromJson(value);
      }
    }
  }
}

class Page {
  bool isPortrait = false;

  double get width => isPortrait ? 21.0 : 29.7;

  double get height => isPortrait ? 29.7 : 21.0;

  double x = 0;
  double y = 0;

  List<dynamic> content = List<dynamic>();

  void offset(double x, double y) {
    this.x = x;
    this.y = y;
  }

  dynamic get asElement =>
      {
        'absolutePosition': {'x': x, 'y': y},
        'stack': content
      };

  Page(this.isPortrait, this.content);
}

class SubNeeded {
  bool current = false;
  bool anybody = false;

  SubNeeded(this.current, this.anybody);

  bool get needed => current || anybody;

  void mix(SubNeeded src) {
    current |= src.current;
    anybody |= src.anybody;
  }
}

class DataNeeded {
  SubNeeded status = SubNeeded(false, false);
  SubNeeded data = SubNeeded(true, false);

  DataNeeded({statusCurr = false, statusAny = false, dataCurr = true, dataAny = false}) {
    status.current = statusCurr;
    status.anybody = statusAny;
    data.current = dataCurr;
    data.anybody = dataAny;
  }

  bool get needsStatus => status.needed;

  bool get needsData => data.needed;

  void mix(DataNeeded src) {
    status.mix(src.status);
    data.mix(src.data);
  }
}

class HelpItem {
  String text;
  String type;
  FormConfig cfg;
}

abstract class BasePrint {
  Globals g = Globals();
  String baseId;
  String baseIdx;

  String get id => '${baseId}${suffix}';

  String get dataId => '${baseId}${suffix == '-' ? '' : suffix}';

  String get idx => '${baseIdx}${suffix}';

//  String id;
//  String idx;
  String suffix = '-';
  String title;
  String subtitle;
  DataNeeded needed = DataNeeded();
  String help;

  String get helpHtml {
    if (help == null) return null;

    var ret = help.replaceAll('\n', 'µ');
    ret = ret.replaceAll('µµ', '<br><br>');
    ret = ret.replaceAll('µ', ' ');
    var list = RegExp('@([^@]*)@').allMatches(ret);
    var links = <String>[];
    for (var match in list) {
      var part = match.group(1);
      var cfg = g.listConfig.firstWhere((cfg) => cfg.idx == part, orElse: () => null);
      if (cfg != null) {
        links.add('</span><material-button (trigger)="g.show(\'Oleole\')">${cfg.form.title}</material-button><span>');
      }
    }
    ret += links.toString();
    return ret;
  }

  Future<void> loadUserData(UserData user) {}

  List<HelpItem> get helpStrings {
    var ret = <HelpItem>[];
    var text = help?.replaceAll('\n', 'µ') ?? '';
    text = text.replaceAll('µµ', '<br><br>');
    text = text.replaceAll('µ', ' ');
    var pos = text.indexOf('@');
    while (pos >= 0) {
      if (pos > 0) {
        ret.add(HelpItem()
          ..type = 'text'
          ..text = text.substring(0, pos));
        text = text.substring(pos);
        pos = 0;
      }
      text = text.substring(1);
      pos = text.indexOf('@');
      if (pos >= 0) {
        var id = text.substring(0, pos);
        var cfg = g.listConfig.firstWhere((cfg) => cfg.idx == id, orElse: () => null);
        if (cfg != null) {
          ret.add(HelpItem()
            ..type = 'btn'
            ..cfg = cfg
            ..text = cfg.form.title);
        }
        text = text.substring(pos + 1);
      }
      pos = text.indexOf('@');
    }
    if (text.isNotEmpty) {
      ret.add(HelpItem()
        ..type = 'text'
        ..text = text);
    }
    return ret;
  }

  String get display {
    var ret = title; //g.canDebug && pageCount > 0 ? '$title [ $pageCount ]' : title;
    if (isLocalOnly) ret = '$ret (local)';
    if (suffix != '-') ret = '$ret ${int.parse(suffix) + 1}';
    return ret;
  }

  String get backsuffix => '';

  String get backimage {
    extractParams();
    return 'packages/nightscout_reporter/assets/img/thumbs/${g.language.img}/${baseId}'
        '${backsuffix == '' ? '' : '-${backsuffix}'}.png';
  }

  String titleInfo;
  String titleInfoSub = '';
  var footerTextAboveLine = {'x': 0, 'y': 0, 'fs': 12, 'text': ''};
  int pagesPerSheet = 1;
  List<ParamInfo> params = <ParamInfo>[];

  List<ParamInfo> get sortedParams {
    var ret = <ParamInfo>[];
    ret.addAll(params.where((p) => !p.isDeprecated));
    ret.sort((a, b) => a.sort.compareTo(b.sort));
    return ret;
  }

  bool get isLocalOnly => false;

  bool get isDebugOnly => false;

  bool get isBetaOrLocal => false;

  //String _hba1c(double avgGluc)
  //=> g.fmtNumber((avgGluc + 86) / 33.3, 1, false);

  String hba1c(double avgGluc) => avgGluc == null ? '' : g.fmtNumber(hba1cValue(avgGluc), 1);

  double hba1cValue(double avgGluc) => avgGluc == null ? null : (avgGluc + 46.7) / 28.7;

  //(avgGluc / 18.02 + 2.645) / 1.649;
  dynamic colors = {
    'colText': '#008800',
    'colInfo': '#606060',
    'colSubTitle': '#a0a0a0',
    'colLine': '#606060',
    'colValue': '#000000',
    'colBasalProfile': '#0097a7',
    'colBasalFont': '#fff',
    'colProfileSwitch': '#8080c0',
    'colBolus': '#0060c0',
    'colBolusExt': '#60c0ff',
    'colCarbBolus': '#c000c0',
    'colLow': '#ff6666',
    'colNormLow': '#809933',
    'colNorm': '#00cc00',
    'colNormHigh': '#aacc00',
    'colHigh': '#cccc00',
    'colTargetArea': '#00a000',
    'colTargetValue': '#3333aa',
    'colCarbs': '#ffa050',
    'colCarbsText': '#ff6f00',
    'colDurationNotes': '#ff00ff',
    'colDurationNotesLine': '#ff50ff',
    'colNotes': '#000000',
    'colNotesLine': '#666666',
    'colGlucValues': '#000000',
    'colBloodValues': '#ff0000',
    'colHbA1c': '#505050',
    'colWeekDays': ['#1b9e77', '#d95f02', '#7570b3', '#e7298a', '#66a61e', '#e6ab02', '#a6761d'],
    'colWeekDaysText': ['#ffffff', '#ffffff', '#000000', '#ffffff', '#ffffff', '#000000', '#ffffff'],
    'colExercises': '#c0c0c0',
    'colExerciseText': '#000000',
    'colTempOverrides': '#f8f',
    'colTempOverridesText': '#000000',
    'colCGPLine': '#a0a0a0',
    'colCGPHealthyLine': '#008000',
    'colCGPHealthyFill': '#00e000',
    'colCGPPatientLine': '#808000',
    'colCGPPatientFill': '#e0e000',
    'colIOBFill': '#a0a0ff',
    'colIOBLine': '#a0a0ff',
    'colCOBFill': '#ffa050',
    'colCOBLine': '#ffa050',
    'colTrendCrit': '#f59595',
    'colTrendWarn': '#f2f595',
    'colTrendNorm': '#98f595',
    'colCOBDaily': '#ffe090',
    'colIOBDaily': '#d0d0ff',
  };

  String get colText => colors['colText'];

  String get colInfo => colors['colInfo'];

  String get colSubTitle => colors['colSubTitle'];

  String get colLine => colors['colLine'];

  String get colValue => colors['colValue'];

  String get colBasalProfile => colors['colBasalProfile'];

  String get colBasalDay => blendColor(colBasalProfile, '#ffffff', 0.5);

  String get colBasalFont => colors['colBasalFont'];

  String get colProfileSwitch => colors['colProfileSwitch'];

  String get colBolus => colors['colBolus'];

  String get colBolusExt => colors['colBolusExt'];

  String get colCarbBolus => colors['colCarbBolus'];

  String get colLow => colors['colLow'];

  String get colNormLow => colors['colNormLow'];

  String get colNorm => colors['colNorm'];

  String get colNormHigh => colors['colNormHigh'];

  String get colHigh => colors['colHigh'];

  String get colLowBack => blendColor(colLow, '#ffffff', 0.4);

  String get colNormLowBack => blendColor(colNormLow, '#ffffff', 0.4);

  String get colNormBack => blendColor(colNorm, '#ffffff', 0.4);

  String get colNormHighBack => blendColor(colNormHigh, '#ffffff', 0.4);

  String get colHighBack => blendColor(colHigh, '#ffffff', 0.4);

  String get colTargetArea => colors['colTargetArea'];

  String get colTargetValue => colors['colTargetValue'];

  String get colCarbs => colors['colCarbs'];

  String get colCarbsText => colors['colCarbsText'];

  String get colDurationNotes => colors['colDurationNotes'];

  String get colDurationNotesLine => colors['colDurationNotesLine'];

  String get colNotes => colors['colNotes'];

  String get colNotesLine => colors['colNotesLine'];

  String get colGlucValues => colors['colGlucValues'];

  String get colBloodValues => colors['colBloodValues'];

  String get colHbA1c => colors['colHbA1c'];

  List<String> get colWeekDays => colors['colWeekDays'];

  List<String> get colWeekDaysText => colors['colWeekDaysText'];

  String get colExercises => colors['colExercises'];

  String get colExerciseText => colors['colExerciseText'];

  String get colTempOverrides => colors['colTempOverrides'];

  String get colTempOverridesText => colors['colTempOverridesText'];

  String get colCGPLine => colors['colCGPLine'];

  String get colCGPHealthyLine => colors['colCGPHealthyLine'];

  String get colCGPHealthyFill => colors['colCGPHealthyFill'];

  String get colCGPPatientLine => colors['colCGPPatientLine'];

  String get colCGPPatientFill => colors['colCGPPatientFill'];

  String get colIOBFill => colors['colIOBFill'];

  String get colIOBLine => colors['colIOBLine'];

  String get colCOBFill => colors['colCOBFill'];

  String get colCOBLine => colors['colCOBLine'];

  String get colTrendCrit => colors['colTrendCrit'];

  String get colTrendWarn => colors['colTrendWarn'];

  String get colTrendNorm => colors['colTrendNorm'];

  String get colCOBDaily => colors['colCOBDaily'];

  String get colIOBDaily => colors['colIOBDaily'];

  double xorg = 3.35;
  double yorg = 3.9;
  double xframe = 2.2;
  double lw = 0.03;
  String lc = '#c0c0c0';
  String lcFrame = '#000000';

  bool isPortraitParam = true;

  bool get isPortrait => true;

  double get width => isPortrait ? 21.0 : 29.7;

  double get height => isPortrait ? 29.7 : 21.0;

  List<Page> _pages = List<Page>();
  int _fileSize = 0;

  dynamic get estimatePageCount;

  String pageCountDisplay(forceEstimate) {
    dynamic ret = {'count': g?.period?.dayCount ?? 0, 'isEstimated': true};
    if (!forceEstimate && _pages != null && _pages.length > 0) {
      ret['count'] = _pages.length;
      ret['isEstimated'] = false;
    } else {
      extractParams();
      ret = estimatePageCount;
    }

    ret['count'] = (ret['count'] / pagesPerSheet).ceil();
    return msgPageCount(ret['count'], ret['isEstimated']);
  }

  String _msgPageCountEst(count) =>
      Intl.plural(count,
          zero: '',
          one: '1 Seite oder mehr',
          other: '$count Seiten oder mehr',
          args: [count],
          name: '_msgPageCountEst');

  String _msgPageCount(count) =>
      Intl.plural(count, zero: '',
          one: '1 Seite',
          other: '$count Seiten',
          args: [count],
          name: '_msgPageCount');

  dynamic msgPageCount(count, isEstimated) => isEstimated ? _msgPageCountEst(count) : _msgPageCount(count);

  String msgValidRange(begDate, endDate) =>
      Intl.message('gültig von $begDate bis $endDate', args: [begDate, endDate], name: 'msgValidRange');

  String msgValidFrom(begDate) => Intl.message('gültig ab $begDate', args: [begDate], name: 'msgValidFrom');

  String msgValidTo(endDate) => Intl.message('gültig bis $endDate', args: [endDate], name: 'msgValidTo');

  String get msgInsulinUnit => Intl.message('IE');

  String get msgMedian => Intl.message('Median');

  String get msgUntil => Intl.message('bis');

  String msgDuration(int hours, int minutes) {
    return Intl.message('$hours Std $minutes Min', args: [hours, minutes], name: 'msgDuration');
  }

  String msgTargetArea(String min, String max, String units) {
    return Intl.message('Zielbereich ($min - $max $units)', args: [min, max, units], name: 'msgTargetArea');
  }

  String msgTargetValue(String value) {
    return Intl.message('Zielwert', args: [value], name: 'msgTargetValue');
  }

  String get msgGlucosekurve => Intl.message('Glukosekurve');

  String msgCarbs(String value) => Intl.message('Kohlenhydrate (${value}g)', args: [value], name: 'msgCarbs');

  String msgBolusInsulin(String value) => Intl.message('Bolus Insulin ($value)', args: [value], name: 'msgBolusInsulin');

  String get msgMealBolus => Intl.message('Mahlzeitenbolus', meaning: 'bolus to handle a meal');

  String get msgBolusWizard => Intl.message('Bolus Rechner', meaning: 'bolus calculated by the bolus wizard');

  String get msgBolusExtInsulin => Intl.message('Verzögerter Bolus');

  String msgCorrectBolusInsulin(String value) =>
      Intl.message('Korrektur Bolus ($value)', args: [value], name: 'msgCorrectBolusInsulin');

  String msgCarbBolusInsulin(String value) =>
      Intl.message('Mahlzeiten Bolus ($value)', args: [value], name: 'msgCarbBolusInsulin');

  String msgSMBInsulin(String value) => Intl.message('SMB ($value)', args: [value], name: 'msgSMBInsulin');

  String get msgBasalrate => Intl.message('Basalrate');

  String msgBasalrateDay(String value) => Intl.message('Basalrate für den Tag ($value)', args: [value], name: 'msgBasalrateDay');

  String msgBasalrateProfile(String value) =>
      Intl.message('Basalrate aus dem Profil ($value)', args: [value], name: 'msgBasalrateProfile');

  String msgLegendTDD(String value) => Intl.message('Gesamtinsulin ($value)', args: [value], name: 'msgLegendTDD');

  String get msgTDD => Intl.message('TDD');

  String get msgMissingData => Intl.message('Es sind keine Daten für den Ausdruck vorhanden');

  String get msgServerNotReachable => g.msgUrlFailure('').replaceAll('<br>', '\n');

  String get msgCatheterChange => Intl.message('Katheterwechsel');

  String get msgSensorChange => Intl.message('Sensorwechsel');

  String get msgAmpulleChange => Intl.message('Reservoirwechsel');

  String get msgCollectedValues => Intl.message('Aufsummierte Werte');

  String get msgCarbIE => Intl.message('Berechnete IE für Kohlenhydrate');

  String get msgKHTitle => Intl.message('KH');

  String msgKH(value) => Intl.message('${value}g', args: [value], name: 'msgKH');

  String msgReadingsPerDay(howMany, fmt) =>
      Intl.plural(howMany,
          zero: 'Keine Messwerte vorhanden',
          one: '1 Messung am Tag',
          other: '$fmt Messungen am Tag',
          args: [howMany, fmt],
          name: 'msgReadingsPerDay');

  String msgReadingsPerHour(howMany, fmt) =>
      Intl.plural(howMany,
          zero: 'Keine Messwerte vorhanden',
          one: '1 Messung pro Stunde',
          other: '$fmt Messungen pro Stunde',
          args: [howMany, fmt],
          name: 'msgReadingsPerHour');

  String msgReadingsInMinutes(howMany, fmt) =>
      Intl.plural(howMany,
          zero: 'Keine Messwerte vorhanden',
          one: '1 Messung pro Minute',
          other: 'Messung alle $fmt Minuten',
          args: [howMany, fmt],
          name: 'msgReadingsInMinutes');

  String msgValuesIn(low, high) => Intl.message('Werte zwischen ${low} und ${high}', args: [low, high], name: 'msgValuesIn');

  String msgValuesBelow(low) => Intl.message('Werte unter ${low}', args: [low], name: 'msgValuesBelow');

  String msgValuesAbove(high) => Intl.message('Werte über ${high}', args: [high], name: 'msgValuesAbove');

  String msgValuesVeryHigh(value) => Intl.message('Sehr hohe Werte ( > ${value})', args: [value], name: 'msgValuesVeryHigh');

  String msgValuesNormHigh(value) => Intl.message('Hohe Werte (${value})', args: [value], name: 'msgValuesNormHigh');

  String msgValuesNorm(low, high) => Intl.message('Zielbereich (${low} - ${high})', args: [low, high], name: 'msgValuesNorm');

  String msgValuesNormLow(value) => Intl.message('Niedrige Werte (${value})', args: [value], name: 'msgValuesNormLow');

  String msgValuesVeryLow(value) => Intl.message('Sehr niedrige Werte (< ${value})', args: [value], name: 'msgValuesVeryLow');

  String msgKHBE(value) =>
      Intl.message('g KH ($value BE)', args: [value], name: 'msgKHBE', meaning: 'gram Carbohydrates displayed at analysis page');

  String msgReservoirDays(count, txt) =>
      Intl.plural(count,
          one: '($txt Tag pro Ampulle)',
          zero: '',
          other: '($txt Tage pro Ampulle)',
          args: [count, txt],
          name: 'msgReservoirDays');

  String msgCatheterDays(count, txt) =>
      Intl.plural(count,
          one: '($txt Tag pro Katheter)',
          zero: '',
          other: '($txt Tage pro Katheter)',
          args: [count, txt],
          name: 'msgCatheterDays');

  String msgSensorDays(count, txt) =>
      Intl.plural(count,
          one: '($txt Tag pro Sensor)',
          zero: '',
          other: '($txt Tage pro Sensor)',
          args: [count, txt],
          name: 'msgSensorDays');

  String get msgBirthday => Intl.message('Geburtstag');

  String get msgDiabSince => Intl.message('Diabetes seit');

  String get msgInsulin => Intl.message('Insulin');

  String get msgDays => Intl.message('Ausgewertete Tage');

  String get msgReadingsCount => Intl.message('Anzahl Messungen');

  String get msgReservoirCount => Intl.message('Anzahl Ampullenwechsel');

  String get msgCatheterCount => Intl.message('Anzahl Katheterwechsel');

  String get msgSensorCount => Intl.message('Anzahl Sensorenwechsel');

  String get msgHbA1C => Intl.message('gesch. HbA1c');

  String get msgHbA1CLong => Intl.message('Geschätzter HbA1c');

  String get msgLowestValue => Intl.message('Niedrigster Wert im Zeitraum');

  String get msgHighestValue => Intl.message('Höchster Wert im Zeitraum');

  String get msgGlucoseValue => Intl.message('Ø Zuckerwert');

  String get msgGVIFull => Intl.message('Glykämischer Variabilitäts Index (GVI)');

  String get msgPGSFull => Intl.message('Patient Glykämischer Status (PGS)');

  String get msgKHPerDay => Intl.message('Ø KH pro Tag');

  String get msgKHPerMeal => Intl.message('Ø KH pro Mahlzeit');

  String get msgInsulinPerDay => Intl.message('Ø Insulin pro Tag');

  String get msgBolusPerDay => Intl.message('Ø Bolus pro Tag');

  String get msgBasalPerDay => Intl.message('Ø Basal pro Tag');

  String get msgMicroBolusPerDay => Intl.message('Ø Microbolus pro Tag');

  String get msgInsulinRatio => Intl.message('Ø Insulinverhältnis');

  String get msgBolus => Intl.message('Bolus');

  String get msgBasal => Intl.message('Basal');

  String get msgBasalProfile => Intl.message('Basalrate\nIE / Stunde');

  String get msgNone => Intl.message('Keine');

  String get msgOwnLimits => Intl.message('Eigene Grenzwerte');

  String get msgStandardLimits => Intl.message('Standardgrenzwerte');

  String get msgTreatments => Intl.message('Behandlungen');

  String get msgPeriod => Intl.message('Zeitraum');

  String get msgTotal => Intl.message('Ges.');

  String get msgTimeShort => Intl.message('Uhr-\nzeit');

  String get msgTime => Intl.message('Uhrzeit');

  String get msgIEHr => Intl.message('IE/std');

  String get msgSum => Intl.message('Summe');

  String get msgTrend => Intl.message('Trend');

  static String get msgOutput => Intl.message('Ausgabe');

  static String get msgGraphic => Intl.message('Grafik');

  static String get msgTable => Intl.message('Tabelle');

  static String get msgAll => Intl.message('Alles');

  static String get titleGPD => Intl.message('Glukose Perzentil Diagramm');

  static String get titleGPDShort => Intl.message('GPD');

  static String get msgHourlyStats => Intl.message('Stündliche Statistik');

  static String get msgUseDailyBasalrate => Intl.message('Tagesbasalrate verwenden');

  String get msgNote => Intl.message('Notiz');

  String get msgAdjustment => Intl.message('Anpas-\nsung');

  String get msgGlucLow => Intl.message('Glukose zu niedrig');

  static String get msgGraphsPerPage => Intl.message('Grafiken pro Seite');

  String get msgGlucNorm => Intl.message('Glukose im Zielbereich');

  String get msgSource =>
      Intl.message('Quelle: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). '
          'The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic '
          'Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. '
          '(https://doi.org/10.1177/1932296817718561)');

  get msgGlucHigh => Intl.message("Glukose zu hoch");
  String msgLow(valueFrom, valueTo) {
    String value = "\n>=${g.glucFromData(valueFrom)} <${g.glucFromData(valueTo)}";
    return Intl.message("Tief${value}", args: [value], name: "msgLow");
  }
  msgVeryLow(value) {
    value = "\n<${g.glucFromData(value)}";
    return Intl.message("sehr Tief${value}", args: [value], name: "msgVeryLow");
  }

  String msgCount(value) {
    return Intl.plural(value, zero: 'Kein Wert',
        one: '1 Wert',
        other: '$value Werte',
        args: [value],
        name: 'msgCount');
  }

  String msgStdAbw(value) {
    value = g.fmtNumber(value, 1, 0, '0.0');
    return Intl.message('(StdAbw ${value})', args: [value], name: 'msgStdAbw');
  }

  static String msgTimeOfDay24(time) => Intl.message('${time} Uhr', args: [time], name: 'msgTimeOfDay24');

  static String msgTimeOfDayAM(time) => Intl.message('${time} am', args: [time], name: 'msgTimeOfDayAM');

  static String msgTimeOfDayPM(time) => Intl.message('${time} pm', args: [time], name: 'msgTimeOfDayPM');

  String get msgNormal => "${Intl.message("Normal")}\n${g.getGlucInfo()["unit"]}";
  
  String msgHigh(valueFrom, valueTo) {
    String value = "\n>=${g.glucFromData(valueFrom)} <${g.glucFromData(valueTo)}";
    return Intl.message("Hoch${value}", args: [value], name: "msgHigh");
  }
  msgVeryHigh(value) {
    value = "\n>=${g.glucFromData(value)}";
    return Intl.message("sehr Hoch${value}", args: [value], name: "msgVeryHigh");
  }

  String get msgPercentile1090 => Intl.message('10% - 90% der Werte');

  String get msgPercentile2575 => Intl.message('25% - 75% der Werte');

  String get msgICRTitle => Intl.message('Insulin Kohlenhydrate Verhältnis (ICR)');

  String get msgISFTitle => Intl.message('Insulin Sensitivitäts Faktoren (ISF)');

  String get msgBasalTitle => Intl.message('Basalrate');

  String get msgBasalSum => Intl.message('Gesamt');

  String get msgTargetTitle => Intl.message('Zielbereich');

  String get msgICRSum => Intl.message('Ø ICR/Stunde');

  String get msgISFSum => Intl.message('Ø ISF/Stunde');

  String get msgICR => Intl.message('Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE');

  String msgISF(String unit) =>
      Intl.message('Insulin Sensitivitäts Faktoren (ISF)\n1 IE senkt BG um X ${unit}', args: [unit], name: 'msgISF');

  String msgTarget(String unit) => Intl.message('Glukose-Zielbereich\n${unit}', args: [unit], name: 'msgTarget');

  String msgFactorEntry(String beg, String end) => Intl.message('${beg} - ${end}', args: [beg, end], name: 'msgFactorEntry');

  static String get msgOrientation => Intl.message('Ausrichtung');

  String get msgProfile => Intl.message('Profileinstellungen');

  String get msgDIA => Intl.message('Dauer der Insulinaktivität (DIA)');

  String get msgDIAUnit => Intl.message('Stunden');

  String get msgKHA => Intl.message('Dauer der Kohlenhydrataktivität');

  String get msgTimezone => Intl.message('Zeitzone');

  String get msgKHAUnit => Intl.message('g / Stunde');

  String get msgDate => Intl.message('Datum');

  String get msgDistribution => Intl.message('Verteilung');

  String get msgValues => Intl.message('Mess-\nwerte');

  String get msgMin => Intl.message('Min');

  String get msgMax => Intl.message('Max');

  String get msgGluc => Intl.message('IE');

  String get msgCarbShort => Intl.message('KH');

  String get msgAverage => Intl.message('Mittel-\nwert');

  String get msgDeviation => Intl.message('Std.\nAbw.');

  String get msgVarK => Intl.message('VarK\nin %');

  String get msg10 => Intl.message('10%');

  String get msg25 => Intl.message('25%');

  String get msg75 => Intl.message('75%');

  String get msg90 => Intl.message('90%');

  String msgDaySum(int value) => Intl.message('$value Tage', args: [value], name: 'msgDaySum');

  String get msgDayAverage => Intl.message('Durchschnitt');

  String get msgStandardDeviation => Intl.message('Standardabweichung');

  static String msgCalibration(scale, intercept, slope) =>
      Intl.message('Kalibrierung (scale $scale / intercept $intercept / slope $slope)',
          args: [scale, intercept, slope], name: 'msgCalibration');

  static String get msgChange => Intl.message('Wechsel');

  dynamic targets(ReportData repData) {
    dynamic ret = {'verylow': Globals.stdVeryLow, 'low': Globals.stdLow, 'high': Globals.stdHigh, 'veryhigh': Globals.stdVeryHigh};

    if (!g.ppStandardLimits) {
      ret['verylow'] = repData.status.settings.thresholds.bgLow;
      ret['low'] = repData.status.settings.thresholds.bgTargetBottom;
      ret['high'] = repData.status.settings.thresholds.bgTargetTop;
      ret['veryhigh'] = repData.status.settings.thresholds.bgHigh;
    }

    return ret;
  }

  String msgGVINone(min) {
    min = g.fmtNumber(min, 1);
    return Intl.message('nicht vorhanden (kleiner ${min})', args: [min], name: 'msgGVINone');
  }

  String msgGVIVeryGood(min, max) {
    min = g.fmtNumber(min, 1);
    max = g.fmtNumber(max, 1);
    return Intl.message('sehr gut (${min} bis ${max})', args: [min, max], name: 'msgGVIVeryGood');
  }

  String msgGVIGood(min, max) {
    min = g.fmtNumber(min, 1);
    max = g.fmtNumber(max, 1);
    return Intl.message('gut (${min} bis ${max})', args: [min, max], name: 'msgGVIGood');
  }

  String msgGVIBad(max) {
    max = g.fmtNumber(max, 1);
    return Intl.message('schlecht (grösser ${max})', args: [max], name: 'msgGVIBad');
  }

  String gviQuality(gvi) {
    if (gvi < 1.0) {
      return msgGVINone(1.0);
    } else if (gvi <= 1.2) {
      return msgGVIVeryGood(1.0, 1.2);
    } else if (gvi <= 1.5) {
      return msgGVIGood(1.2, 1.5);
    }

    return msgGVIBad(1.5);
  }

  String msgPGSVeryGood(min) {
    min = g.fmtNumber(min);
    return Intl.message('exzellent (kleiner ${min})', args: [min], name: 'msgPGSVeryGood');
  }

  String msgPGSGood(min, max) {
    min = g.fmtNumber(min);
    max = g.fmtNumber(max);
    return Intl.message('gut (${min} bis ${max})', args: [min, max], name: 'msgPGSGood');
  }

  String msgPGSBad(min, max) {
    min = g.fmtNumber(min);
    max = g.fmtNumber(max);
    return Intl.message('schlecht (${min} bis ${max})', args: [min, max], name: 'msgPGSBad');
  }

  String msgPGSVeryBad(max) {
    max = g.fmtNumber(max);
    return Intl.message('sehr schlecht (grösser ${max})', args: [max], name: 'msgPGSVeryBad');
  }

  String pgsQuality(pgs) {
    if (pgs < 35.0) {
      return msgPGSVeryGood(35);
    } else if (pgs <= 100.0) {
      return msgPGSGood(35, 100);
    } else if (pgs <= 150.0) {
      return msgPGSBad(100, 150);
    }
    return msgPGSVeryBad(150);
  }

  String msgHistorical(value) => Intl.message('Historisch ${value}', args: [value], name: 'msgHistorical');

  String msgColumns(count) =>
      Intl.plural(count,
          zero: 'Eine Spalte abwählen, um eine@nl@andere aktivieren zu '
              'können',
          one: 'Noch eine Spalte verfügbar',
          other: 'Noch $count Spalten verfügbar',
          args: [count],
          name: 'msgColumns')
          .replaceAll('@nl@', '<br>');

  String titleInfoForDates(DateTime startDate, DateTime endDate) {
    String ret;
    if (endDate == null) {
      ret = msgValidFrom(fmtDate(startDate));
    } else if (startDate.year == 1970) {
      ret = msgValidTo(fmtDate(endDate));
    } else {
      ret = msgValidRange(fmtDate(startDate), fmtDate(endDate));
    }
    return ret;
  }

  dynamic get footerText => null;

  static String get msgDay => Intl.message('Tag (08:00 - 17:59)');

  static String get msgDawn => Intl.message('Dämmerung (06:00 - 07:59, 18:00 - 20:59)');

  static String get msgNight => Intl.message('Nacht (21:00 - 05:59)');

  dynamic get footerTextDayTimes =>
      [
        {
          'table': {
            'widths': [cm(6.0)],
            'body': [
              [
                {'text': msgDay, 'style': 'timeDay', 'alignment': 'center'}
              ],
              [
                {'text': msgDawn, 'style': 'timeLate', 'alignment': 'center'}
              ],
              [
                {'text': msgNight, 'style': 'timeNight', 'alignment': 'center'}
              ]
            ]
          },
          'fontSize': fs(7),
          'layout': 'noBorders'
        }
      ];

  Object headerFooter({skipFooter: false, date: null}) {
    bool isInput = false;
    var stack = [];
    var ret = {'stack': stack, 'pageBreak': ''};
    // header
    if (isPortrait) {
      if (isInput) {
        stack.add({
          'relativePosition': {'x': cm(0), 'y': cm(0)},
          'canvas': [
            {'type': 'rect', 'x': cm(0.0), 'y': cm(0), 'w': cm(1.6), 'h': cm(0.55), 'color': '#d69a2e'},
            {'type': 'rect', 'x': cm(1.6), 'y': cm(0), 'w': cm(1.6), 'h': cm(0.55), 'color': '#2e4736'},
            {'type': 'rect', 'x': cm(3.2), 'y': cm(0), 'w': cm(1.6), 'h': cm(0.55), 'color': '#662c40'},
            {'type': 'rect', 'x': cm(4.8), 'y': cm(0), 'w': cm(1.6), 'h': cm(0.55), 'color': '#343a49'},
            {'type': 'rect', 'x': cm(6.4), 'y': cm(0), 'w': cm(1.6), 'h': cm(0.55), 'color': '#528c8e'},
            {'type': 'rect', 'x': cm(8.0), 'y': cm(0), 'w': cm(1.6), 'h': cm(0.55), 'color': '#362946'},
            {'type': 'rect', 'x': cm(9.6), 'y': cm(0), 'w': cm(1.6), 'h': cm(0.55), 'color': '#6b8133'},
            {'type': 'rect', 'x': cm(11.2), 'y': cm(0), 'w': cm(1.6), 'h': cm(0.55), 'color': '#2a3b56'},
            {'type': 'rect', 'x': cm(12.8), 'y': cm(0), 'w': cm(1.6), 'h': cm(0.55), 'color': '#862d2e'},
            {'type': 'rect', 'x': cm(14.4), 'y': cm(0), 'w': cm(1.6), 'h': cm(0.55), 'color': '#607f6e'},
            {'type': 'rect', 'x': cm(16.0), 'y': cm(0), 'w': cm(1.6), 'h': cm(0.55), 'color': '#273d3f'},
            {'type': 'rect', 'x': cm(17.6), 'y': cm(0), 'w': cm(1.6), 'h': cm(0.55), 'color': '#a5916d'}
          ]
        });
      }
    } else {
      if (isInput) {
        stack.add({
          'relativePosition': {'x': cm(0), 'y': cm(0)},
          'canvas': [
            {'type': 'rect', 'x': cm(0.0), 'y': cm(0), 'w': cm(2.2), 'h': cm(0.55), 'color': '#d69a2e'},
            {'type': 'rect', 'x': cm(2.2), 'y': cm(0), 'w': cm(2.3), 'h': cm(0.55), 'color': '#2e4736'},
            {'type': 'rect', 'x': cm(4.5), 'y': cm(0), 'w': cm(2.3), 'h': cm(0.55), 'color': '#662c40'},
            {'type': 'rect', 'x': cm(6.8), 'y': cm(0), 'w': cm(2.25), 'h': cm(0.55), 'color': '#343a49'},
            {'type': 'rect', 'x': cm(9.05), 'y': cm(0), 'w': cm(2.3), 'h': cm(0.55), 'color': '#528c8e'},
            {'type': 'rect', 'x': cm(11.35), 'y': cm(0), 'w': cm(2.25), 'h': cm(0.55), 'color': '#362946'},
            {'type': 'rect', 'x': cm(13.6), 'y': cm(0), 'w': cm(2.3), 'h': cm(0.55), 'color': '#6b8133'},
            {'type': 'rect', 'x': cm(15.9), 'y': cm(0), 'w': cm(2.25), 'h': cm(0.55), 'color': '#2a3b56'},
            {'type': 'rect', 'x': cm(18.15), 'y': cm(0), 'w': cm(2.3), 'h': cm(0.55), 'color': '#862d2e'},
            {'type': 'rect', 'x': cm(20.45), 'y': cm(0), 'w': cm(2.3), 'h': cm(0.55), 'color': '#607f6e'},
            {'type': 'rect', 'x': cm(22.75), 'y': cm(0), 'w': cm(2.3), 'h': cm(0.55), 'color': '#273d3f'},
            {'type': 'rect', 'x': cm(25.05), 'y': cm(0), 'w': cm(2.3), 'h': cm(0.55), 'color': '#a5916d'},
          ],
        });
      }
    }
    stack.add({
      'relativePosition': {'x': cm(xframe), 'y': cm(1.0)},
      'columns': [
        {'width': 'auto', 'text': title, 'fontSize': fs(36), 'color': colText, 'bold': true},
        {
          'width': 'auto',
          'text': subtitle,
          'fontSize': fs(12),
          'color': colSubTitle,
          'bold': true,
          'margin': [cm(0.5), cm(0.78), 0, 0]
        }
      ]
    });
    if (!g.ppHideNightscoutInPDF)
      stack.add({
        'relativePosition': {'x': cm(xframe), 'y': cm(2.5)},
        'text': 'nightscout reporter ${g.version}',
        'fontSize': fs(8),
        'color': colSubTitle,
      });
    double y = titleInfoSub == '' ? 2.4 : 2.0;

    if (g.currPeriodShift.months != 0) {
      stack.add({
        'relativePosition': {'x': cm(xframe), 'y': cm(y - 0.5)},
        'columns': [
          {
            'width': cm(width - 4.4),
            'text': msgHistorical(g.currPeriodShift.title),
            'fontSize': fs(10),
            'color': colInfo,
            'bold': true,
            'alignment': 'right'
          }
        ]
      });
    }
    stack.add({
      'relativePosition': {'x': cm(xframe), 'y': cm(y)},
      'columns': [
        {'width': cm(width - 4.4), 'text': titleInfo, 'fontSize': fs(10), 'color': colInfo, 'bold': true, 'alignment': 'right'}
      ]
    });
    if (titleInfoSub != '') {
      stack.add({
        'relativePosition': {'x': cm(xframe), 'y': cm(2.4)},
        'columns': [
          {
            'width': cm(width - 4.4),
            'text': titleInfoSub,
            'fontSize': fs(8),
            'color': colInfo,
            'bold': true,
            'alignment': 'right'
          }
        ]
      });
    }
    stack.add({
      'relativePosition': {'x': cm(xframe), 'y': cm(2.95)},
      'canvas': [
        {'type': 'line', 'x1': cm(0), 'y1': cm(0), 'x2': cm(width - 4.4), 'y2': cm(0), 'lineWidth': cm(0.2), 'lineColor': colText}
      ]
    });
    // footer
    if (skipFooter) return ret;
    String rightText = '';
    if (repData.user.name.isEmpty) {
      if (!repData.user.birthDate.isEmpty) rightText = '*${repData.user.birthDate}';
    } else {
      if (!repData.user.birthDate.isEmpty)
        rightText = '${repData.user.name}, *${repData.user.birthDate}';
      else
        rightText = repData.user.name;
    }

    stack.addAll([
      {
        'relativePosition': {'x': cm(xframe), 'y': cm(height - 2.0)},
        'canvas': [
          {
            'type': 'line',
            'x1': cm(0),
            'y1': cm(0),
            'x2': cm(width - 4.4),
            'y2': cm(0),
            'lineWidth': cm(0.05),
            'lineColor': colText
          }
        ]
      },
      footerTextAboveLine['text'] == ''
          ? null
          : {
        'relativePosition': {'x': cm(xframe + footerTextAboveLine['x']), 'y': cm(height - 2.0 - footerTextAboveLine['y'])},
        'columns': [
          {'width': cm(width - 2 * xframe), 'text': footerTextAboveLine['text'], 'fontSize': fs(footerTextAboveLine['fs'])}
        ]
      },
      g.ppHideNightscoutInPDF ? null : _getFooterImage('nightscout', x: xframe, y: height - 1.7, width: 0.7),
      g.ppHideNightscoutInPDF
          ? null
          : {
        'relativePosition': {'x': cm(3.1), 'y': cm(height - 1.7)},
        'text': 'http://www.nightscout.info',
        'color': colInfo,
        'fontSize': fs(10)
      },
      footerText == null
          ? null
          : {
        'relativePosition': {'x': cm(g.ppHideNightscoutInPDF ? xframe : 7.5), 'y': cm(height - 1.7)},
        'stack': footerText,
        'fontSize': fs(10)
      },
      isInput ? _getFooterImage('input', x: width - 5.6, y: height - 3.3, width: 4.0) : {},
      {
        'relativePosition': {'x': cm(xframe), 'y': cm(height - 1.7)},
        'columns': [
          {
            'width': cm(width - 2 * xframe),
            'stack': [
              {'text': rightText, 'color': colInfo, 'fontSize': fs(10)},
              !g.ppShowUrlInPDF ? null : {'text': g.user
                  .urlDataFor(date)
                  .url, 'color': colInfo, 'fontSize': fs(8)}
            ],
            'alignment': 'right'
          }
        ]
      }
    ]);

    return ret;
  }

  bool tableHeadFilled = false;
  dynamic tableHeadLine = [];
  dynamic tableWidths = [];

  void addTableRow(bool check, var width, dynamic dst, dynamic head, dynamic content) {
    if (!check) return;
    if (!tableHeadFilled) {
      tableHeadLine.add(head);
      tableWidths.add(width);
    }
    dst.add(content);
  }

  dynamic getTable(widths, body) {
    dynamic ret = {
      'columns': [
        {
          'margin': [cm(2.2), cmy(yorg), cm(2.2), cmy(0.0)],
          'width': cm(width),
          'fontSize': fs(10),
          'table': {'widths': widths, 'body': body},
        }
      ],
      'pageBreak': ''
    };

    return ret;
  }

  dynamic m0 = [];

  Map<String, String> images = <String, String>{};

  List<String> get imgList =>
      [
        'nightscout-pale',
        'nightscout',
      ];

  void init(String suffix) {
    this.suffix = suffix ?? '-';
    isPortraitParam = isPortrait;
  }

  Future<String> getBase64Image(String id) async {
    // print('versuche Bild ${id} zu laden');
    var response = await HttpRequest.request('packages/nightscout_reporter/assets/img/$id.png', responseType: 'arraybuffer');
    if (response.response is ByteBuffer) {
      var ret = base64.encode((response.response as ByteBuffer).asUint8List());
      return 'data:image/png;base64,${ret}';
    }

    return '';
  }

  ReportData repData;

  String titleInfoBegEnd() {
    return titleInfoDateRange(repData.begDate, repData.endDate);
  }

  String titleInfoDateRange(Date begDate, Date endDate, {withTime = false}) {
    titleInfoSub = g.period.dowActiveText;
    if (begDate == endDate) return fmtDate(begDate);
    return '${fmtDate(begDate)} ${msgUntil} ${fmtDate(endDate)}';
  }

  String titleInfoTimeRange(DateTime begDate, DateTime endDate) {
    var beg = '${fmtDate(begDate)}, ${fmtTime(begDate, withUnit: true)}';
    var end = '${fmtDate(endDate)}, ${fmtTime(endDate, withUnit: true)}';
    if (endDate == null) return msgValidFrom(beg);
    return msgValidRange(beg, end);
  }

  void extractParams() {}

  Map<String, dynamic> _getFooterImage(String id, {double x, double y, double width, double height = 0.0}) {
    var ret = {
      'relativePosition': {'x': cm(x), 'y': cm(y)},
      'image': id
    };

    if (images[id] != null) {
      if (width != 0 && height != 0) {
        ret['fit'] = [cm(width), cm(height)];
      } else if (width != 0) {
        ret['width'] = cm(width);
      } else if (height != 0) ret['height'] = cm(height);
    } else {
      ret = {
        'stack': [
          {
            'relativePosition': {'x': cm(x), 'y': cm(y)},
            'canvas': [
              {
                'type': 'rect',
                'x': cm(0),
                'y': cm(0),
                'w': cm(max(width, 0.01)),
                'h': cm(max(height, 0.01)),
                'lineWidth': cm(0.01),
                'lineColor': '#f00'
              }
            ]
          },
          {
            'relativePosition': {'x': cm(x), 'y': cm(y)},
            'text': 'bild\n$id\nfehlt',
            'color': '#f00'
          }
        ]
      };
    }
    return ret;
  }

  bool hasData(ReportData src) {
    return (src.dayCount > 0 && src.data.countValid > 0) || needed.needsStatus;
  }

  Page getEmptyForm(bool isPortrait, String status, {skipFooter: false}) {
    return Page(isPortrait, [
      headerFooter(skipFooter: skipFooter),
      {
        'margin': [cm(2), cm(3.5), cm(2), cm(0)],
        'text': status == '401' ? msgServerNotReachable : msgMissingData,
        'color': 'red',
        'fontSize': fs(10),
        'alignment': 'justify'
      },
    ]);
  }

  int countObjects(var src) {
    var ret = 1;
    if (src is Map) {
      for (var key in src.keys) {
        ret += countObjects(src[key]);
      }
    } else if (src is List) {
      for (var entry in src) {
        ret += countObjects(entry);
      }
    }
    return ret;
  }

  void _addPageBreak(Page page) {
    if (page.content.last['pageBreak'] == '-') return;
    page.content.last['pageBreak'] = 'after';
    // int cnt = countObjects(page);
    // print(page.content);
    var text = json.encode(page.content);
    _fileSize += text.length;
    if (g.pdfCreationMaxSize != Globals.PDFUNLIMITED && _fileSize > g.pdfCreationMaxSize) {
      page.content.last['pageBreak'] = 'newFile';
      _fileSize = 0;
    }
  }

  Future<List<Page>> getFormPages(ReportData data, int currentSize) async {
    repData = data;
    m0 = [cm(0), cm(0), cm(0), cm(0)];
    for (var id in imgList) {
      try {
        images[id] = await getBase64Image(id);
      } catch (ex) {
        images[id] = await getBase64Image('nightscout');
      }
    }

    if (!hasData(data)) {
      return [getEmptyForm(isPortrait, data.status.status)];
    }

    var ret = <Page>[];
    for (var param in params) {
      param.isForThumbs = data.isForThumbs;
    }
    extractParams();
    for (var param in params) {
      param.isForThumbs = false;
    }
    _pages.clear();
    _fileSize = currentSize;
    try {
      scale = 1.0;
      var colCount = 1;
      var rowCount = 1;
      switch (pagesPerSheet) {
        case 2:
          scale = 21 / 29.7;
          colCount = 1;
          rowCount = 2;
          break;
        case 4:
          scale = 0.5;
          colCount = 2;
          rowCount = 2;
          break;
        case 8:
          scale = 21 / 29.7 / 2;
          colCount = 2;
          rowCount = 4;
          break;
        case 16:
          scale = 0.25;
          colCount = 4;
          rowCount = 4;
          break;
        case 32:
          scale = 21 / 29.7 / 4;
          colCount = 4;
          rowCount = 8;
          break;
      }
      offsetX = 0.0;
      offsetY = 0.0;
      await fillPages(_pages);
      var column = 0;
      var row = 0;
      for (int i = 0; i < _pages.length; i++) {
        var page = _pages[i];
        switch (pagesPerSheet) {
          case 2:
          case 8:
          case 32:
            page.isPortrait = !page.isPortrait;
            break;
        }
        offsetX = column * width;
        offsetY = row * height;
        page.offset(cmx(0), cmy(0));
        if (column == 0 && row == 0) {
          ret.add(page);
        } else {
          ret.last.content.add(page.asElement);
        }
        column++;

        if (column >= colCount) {
          column = 0;
          row++;
          if (row >= rowCount && i < _pages.length - 1) {
            row = 0;
            _addPageBreak(page);
          }
        }
//        ret.addAll(page);
//        if(page != _pages.last)
//          addPageBreak(ret.last);
      }
    } catch (ex, s) {
      offsetX = 0.0;
      offsetY = 0.0;
/*
      ret = {
        'pageSize': 'a4',
        'pageOrientation': 'portrait',
        'pageMargins': [cmx(1), cmy(1), cmx(1), cmy(1)],
        'content': [
          {'text': 'Fehler bei Erstellung von \'${title}\'', 'fontSize': fs(20), 'alignment': 'center', 'color': 'red'},
          {'text': '\n$ex', 'fontSize': fs(10), 'alignment': 'left'},
          {'text': '\n$s', 'fontSize': fs(10), 'alignment': 'left'}
        ]
      };
 */
      ret = [
        Page(isPortrait, [
          {
            'margin': [cmx(1.0), cmy(0.5), cmx(1.0), cmy(0)],
            'text': 'Fehler bei Erstellung von "${title}"',
            'fontSize': fs(20),
            'alignment': 'center',
            'color': 'red'
          },
          {
            'margin': [cmx(1.0), cmy(0.0), cmx(1.0), cmy(0)],
            'text': '\n$ex',
            'fontSize': fs(10),
            'alignment': 'left'
          },
          {
            'margin': [cmx(1.0), cmy(0.5), cmx(1.0), cmy(0)],
            'text': '\n$s',
            'fontSize': fs(10),
            'alignment': 'left'
          }
        ])
      ];
    }

    return ret;
  }

  void fillPages(List<Page> pages);

  double mm(pt) {
    return pt / 0.35277;
  }

  double scale = 1.0;
  double offsetX = 0.0;
  double offsetY = 0.0;

  double cm(pt) {
    return pt.isNaN ? 0 : pt / 0.035277 * scale;
  }

  double cmx(pt) {
    return cm(offsetX + pt);
  }

  double cmy(pt) {
    return cm(offsetY + pt);
  }

  double fs(double size) => size * scale;

  String fmtTime(var date, {String def, bool withUnit = false, bool withMinutes = true, bool withSeconds = false}) {
    def ??= '';
    if (date == null) return def;

    if (withSeconds) withMinutes = true;

    if (date is DateTime) {
      var hour = date.hour;
      if (!g.language.is24HourFormat) hour = hour > 12 ? hour - 12 : hour;
      var m = withMinutes ? ':${(date.minute < 10 ? '0' : '')}${date.minute}' : '';
      if (withSeconds) {
        m = '${m}:${(date.second < 10 ? '0' : '')}${date.second}';
      }
      var ret = '${(hour < 10 ? '0' : '')}${hour}$m';
      if (withUnit) {
        if (g.language.is24HourFormat) {
          ret = msgTimeOfDay24(ret);
        } else {
          ret = date.hour > 12 ? msgTimeOfDayPM(ret) : msgTimeOfDayAM(ret);
        }
      }
      return ret;
    }

    if (date is int) {
      var m = withMinutes ? ':00' : '';
      if (g.language.is24HourFormat) return '${g.fmtNumber(date, 0)}$m';

      m = withMinutes ? ' ' : '';

      if (date < 12) {
        return '${g.fmtNumber(date, 0)}${m}am';
      } else if (date == 12) {
        return '${g.fmtNumber(date, 0)}${m}pm';
      } else {
        return '${g.fmtNumber(date - 12, 0)}${m}pm';
      }
    }

    return date;
  }

  String fmtDateTime(var date, [var def, bool withSeconds = false]) {
    def ??= '';
    if (date == null) return def;

    if (date is DateTime) {
      var ret = '${(date.day < 10 ? '0' : '')}${date.day}.${(date.month < 10 ? '0' : '')}'
          '${date.month}.${date.year}, ${(date.hour < 10 ? '0' : '')}${date.hour}:${(date.minute < 10 ? '0' : '')}'
          '${date.minute}';
      if (withSeconds) {
        ret = '${ret}:${(date.second < 10 ? '0' : '')}${date.second}';
      }
      return msgTimeOfDay24(ret);
    }

    return date;
  }

  String fmtDate(var date, [var def, bool withShortWeekday = false, bool withLongWeekday = false]) {
    def ??= '';
    if (date == null) return def;

    DateTime dt;

    try {
      if (date is Date) {
        dt = DateTime(date.year, date.month, date.day);
      } else if (date is DateTime) {
        dt = date;
      } else if (date is String && date.length >= 8) {
        var y = int.tryParse(date.substring(6, 8)) ?? 0;
        var m = int.tryParse(date.substring(4, 6)) ?? 1;
        var d = int.tryParse(date.substring(0, 4)) ?? 1;
        dt = DateTime(y, m, d);
      }
    } catch (ex) {}

    if (dt == null) return date;

    var df = DateFormat(g.language.dateformat);
    var ret = df.format(dt);
    if (withShortWeekday) {
      ret = '${DatepickerPeriod.dowShortName(Date(dt.year, dt.month, dt.day))}, $ret';
    }
    if (withLongWeekday) {
      ret = '${DatepickerPeriod.dowName(Date(dt.year, dt.month, dt.day))}, $ret';
    }
    return ret;
  }

  String blendColor(String from, String to, num factor) {
    if (from.length == 7) from = from.substring(1);
    if (to.length == 7) to = to.substring(1);
    var rf = int.tryParse(from.substring(0, 2) ?? 0, radix: 16);
    var gf = int.tryParse(from.substring(2, 4) ?? 0, radix: 16);
    var bf = int.tryParse(from.substring(4, 6) ?? 0, radix: 16);
    var rt = int.tryParse(to.substring(0, 2) ?? 0, radix: 16);
    var gt = int.tryParse(to.substring(2, 4) ?? 0, radix: 16);
    var bt = int.tryParse(to.substring(4, 6) ?? 0, radix: 16);

    var r = (rf + (rt - rf) * factor).floor();
    var g = (gf + (gt - gf) * factor).floor();
    var b = (bf + (bt - bf) * factor).floor();

    return '#${radixString(r)}${radixString(g)}${radixString(b)}';
  }

  String radixString(int value) {
    String ret = value.toRadixString(16);
    while (ret.length < 2) ret = '0$ret';
    return ret;
  }

  String fmtGluc(double value) => g.fmtNumber(value, g.glucMGDL ? 0 : 1);

  String styleForTime(DateTime time) {
    if (time.hour < 6 || time.hour > 20) return 'timeNight';
    if (time.hour < 8 || time.hour > 17) return 'timeLate';
    return 'timeDay';
  }

  String colForGluc(DayData day, double gluc) {
    if (gluc == null) return '';
    if (gluc < targets(repData)['low']) {
      return colLow;
    } else if (gluc > targets(repData)['high']) {
      return colHigh;
    }
    return colNorm;
  }

  String colForGlucBack(DayData day, double gluc) {
    if (gluc == null) return '';
    if (gluc < targets(repData)['low']) {
      return colLowBack;
    } else if (gluc > targets(repData)['high']) {
      return colHighBack;
    }
    return colNormBack;
  }

  String carbFromData(var carb, [precision = 0]) {
    return g.fmtNumber(carb, precision);
  }

  /// draws a graphic grid
  ///
  /// it uses [horzfs] as the fontsize of the horizontal scale and [vertfs] as the fontsize for the vertical
  /// scale.
  GridData drawGraphicGrid(double glucMax, double graphHeight, double graphWidth, List vertCvs, List horzCvs, List horzStack,
      List vertStack,
      {double glucScale: 0.0, double graphBottom: 0.0, double horzfs: null, double vertfs: null}) {
    if (horzfs == null) horzfs = fs(8);
    if (vertfs == null) vertfs = fs(8);
    GridData ret = GridData();
    if (graphBottom == 0.0) graphBottom = graphHeight;
    ret.glucScale = glucScale == 0.0
        ? g.glucMGDL
        ? 50
        : 18.02 * 1
        : glucScale;
    ret.gridLines = (glucMax / ret.glucScale).ceil();

    ret.lineHeight = ret.gridLines == 0 ? 0 : graphHeight / ret.gridLines;
    ret.colWidth = graphWidth / 24;

    // draw vertical lines with times below graphic
    for (int i = 0; i < 25; i++) {
      vertCvs.add({
        'type': 'line',
        'x1': cm(i * ret.colWidth),
        'y1': cm(0),
        'x2': cm(i * ret.colWidth),
        'y2': cm(graphBottom - lw / 2),
        'lineWidth': cm(lw),
        'lineColor': i > 0 && i < 24 ? lc : lcFrame
      });
      if (i < 24)
        horzStack.add({
          'relativePosition': {'x': cm(xorg + i * ret.colWidth), 'y': cm(yorg + graphBottom + 0.05)},
          'text': fmtTime(i),
          'fontSize': horzfs
        });
    }

    if (ret.lineHeight == 0) return ret;

    double lastY = null;
    for (int i = 0; i <= ret.gridLines; i++) {
      double y = (ret.gridLines - i) * ret.lineHeight - lw / 2;
      if (lastY != null && lastY - y < 0.5) continue;

      lastY = y;
      horzCvs.add({
        'type': 'line',
        'x1': cm(i > 0 ? -0.2 : 0.0),
        'y1': cm(y),
        'x2': cm(24 * ret.colWidth + (i > 0 ? 0.2 : 0.0)),
        'y2': cm(y),
        'lineWidth': cm(lw),
        'lineColor': i > 0 ? lc : lcFrame
      });

      if (i > 0) {
//        String text = '${glucFromData(g.fmtNumber(i * glucScale, 0))}\n${getGlucInfo()['unit']}';
        String text = '${g.glucFromData(g.fmtNumber(i * ret.glucScale, 0))}';
        vertStack.add({
          'relativePosition': {'x': cm(xorg - 1.5), 'y': cm(yorg + (ret.gridLines - i) * ret.lineHeight - 0.2)},
          'columns': [
            {'width': cm(1.2), 'text': text, 'fontSize': fs(8), 'alignment': 'right'}
          ]
        });
        vertStack.add({
          'relativePosition': {
            'x': cm(xorg + 24 * ret.colWidth + 0.3),
            'y': cm(yorg + (ret.gridLines - i) * ret.lineHeight - 0.2)
          },
          'text': text,
          'fontSize': vertfs
        });
      } else {
        String text = '${g.getGlucInfo()['unit']}';
        vertStack.add({
          'relativePosition': {'x': cm(xorg - 1.5), 'y': cm(yorg + (ret.gridLines - i) * ret.lineHeight - 0.2)},
          'columns': [
            {'width': cm(1.2), 'text': text, 'fontSize': vertfs, 'alignment': 'right'}
          ]
        });
        vertStack.add({
          'relativePosition': {
            'x': cm(xorg + 24 * ret.colWidth + 0.3),
            'y': cm(yorg + (ret.gridLines - i) * ret.lineHeight - 0.2)
          },
          'text': text,
          'fontSize': vertfs
        });
      }
    }
    return ret;
  }

  Page getCGPPage(var dayList) {
    PrintCGP cgpPage = PrintCGP();
    cgpPage.repData = repData;
    cgpPage.scale = scale;
    title = cgpPage.title;
    subtitle = cgpPage.subtitle;
    var cgpSrc = cgpPage.calcCGP(dayList, 1.0, 0, 0.3);
    PentagonData cgp = cgpSrc['cgp'];
    footerTextAboveLine = cgpPage.footerTextAboveLine;
    footerTextAboveLine['y'] = 0.9;
    double x = xorg + 2 * cgp.axisLength / cgp.scale + 1.2;
    double y = yorg + 2.0;
    var ret = [
      headerFooter(),
      {
        'relativePosition': {'x': cm(xorg) + cm(cgp.axisLength / cgp.scale), 'y': cm(y)},
        'canvas': cgp.outputCvs
      },
      {
        'relativePosition': {'x': cm(xorg) + cm(cgp.axisLength / cgp.scale), 'y': cm(y)},
        'stack': cgp.outputText
      },
      cgpPage.infoTable(cgpSrc, cgp.glucInfo['unit'], x, y, 2.5, width - x - xorg - 2.5)
    ];
    return Page(isPortrait, ret);
  }

  dynamic addLegendEntry(LegendData legend, String color, String text,
      {bool isArea = true,
        String image,
        double imgWidth = 0.6,
        double imgOffsetY = 0.0,
        double lineWidth = 0.0,
        String graphText,
        newColumn: false,
        points: null,
        colGraphText: null,
        colLegendText: null}) {
    List dst = legend.current(newColumn);
    if (lineWidth == 0.0) lineWidth = lw;
    if (colGraphText == null) colGraphText == 'black';
    if (colLegendText == null) colLegendText = 'black';
    if (points != null) {
      for (var pt in points) {
        pt['x'] = cm(pt['x'] * 0.8);
        pt['y'] = cm(pt['y'] * 0.8);
      }
      dst.add({
        'columns': [
          {
            'width': cm(0.8),
            'canvas': [
              {
                'type': 'polyline',
                'closePath': true,
                'color': color,
                'lineWidth': cm(0),
                'points': points,
              }
            ],
          },
          {'text': text, 'color': colLegendText, 'fontSize': fs(10)}
        ]
      });
    } else if (image != null) {
      dst.add({
        'columns': [
          {
            'width': cm(0.8),
            'stack': [
              {
                'margin': [cm(0.4 - imgWidth / 2), cm(imgOffsetY), cm(0), cm(0)],
                'image': image,
                'width': cm(imgWidth)
              }
            ],
          },
          {'text': text, 'color': colLegendText, 'fontSize': fs(10)}
        ]
      });
    } else if (isArea && graphText != null) {
      dst.add({
        'columns': [
          {
            'width': cm(0.8),
            'layout': 'noBorders',
            'margin': [cm(0.0), cm(0), cm(0), cm(0.1)],
            'table': {
              'widths': [cm(0.6)],
              'body': [
                [
                  {'text': graphText, 'color': colGraphText, 'fontSize': fs(6), 'alignment': 'center', 'fillColor': color}
                ]
              ]
            }
          },
          {'text': text, 'color': colLegendText, 'fontSize': fs(10)}
        ]
      });
    } else if (isArea) {
      dst.add({
        'columns': [
          {
            'width': cm(0.8),
            'canvas': [
              {'type': 'rect', 'x': cm(0), 'y': cm(0.1), 'w': cm(0.5), 'h': cm(0.3), 'color': color, 'fillOpacity': 0.3},
              {'type': 'rect', 'x': 0, 'y': 0, 'w': 0, 'h': 0, 'color': colGraphText, 'fillOpacity': 1},
              {
                'type': 'line',
                'x1': cm(0),
                'y1': cm(0.1),
                'x2': cm(0.5),
                'y2': cm(0.1),
                'lineWidth': cm(lineWidth),
                'lineColor': color
              },
              {
                'type': 'line',
                'x1': cm(0),
                'y1': cm(0.4),
                'x2': cm(0.5),
                'y2': cm(0.4),
                'lineWidth': cm(lineWidth),
                'lineColor': color
              }
            ]
          },
          {'text': text, 'color': colLegendText, 'fontSize': fs(10)}
        ]
      });
    } else {
      dst.add({
        'columns': [
          {
            'width': cm(0.8),
            'canvas': [
              {
                'type': 'line',
                'x1': cm(0),
                'y1': cm(0.25),
                'x2': cm(0.5),
                'y2': cm(0.25),
                'lineWidth': cm(lineWidth),
                'lineColor': color
              }
            ]
          },
          {'text': text, 'color': colLegendText, 'fontSize': fs(10)}
        ]
      });
    }
  }

  double calcX(double width, DateTime time) => width / 1440 * (time.hour * 60 + time.minute);

  double calcY(double height, double max, double value) => height / max * (max - value);

  S(double min, double step) => StepData(min, step);

  drawScaleIE(double xo, double yo, double graphHeight, double top, double min, double max, double colWidth, dynamic horzCvs,
      dynamic vertStack, List<StepData> steps, Function display) {
    double step = 0.1;
    for (StepData entry in steps) {
      if (max - min > entry.min) {
        step = entry.step;
        break;
      }
    }
    int gridLines = (((max - min) / step) + 1).floor();
    double lineHeight = gridLines == 0 ? 0 : graphHeight / gridLines;

//    top += 0.1 * (lineHeight / step);
    for (var i = 1; i < gridLines; i++) {
      double y = top + (gridLines - i) * lineHeight;
      horzCvs.add({
        'type': 'line',
        'x1': cm(-0.2),
        'y1': cm(y) - lw / 2,
        'x2': cm(24 * colWidth + 0.2),
        'y2': cm(y) - lw / 2,
        'lineWidth': cm(lw),
        'lineColor': i > 0 ? lc : lcFrame
      });
//      double value = min + (max - min) / step * i;
//      vertCvs.add({'relativePosition': {'x': cm(xo - 0.7), 'y': cm(yo + (gridLines - i) * lineHeight - 0.15)},
//      'text': g.fmtNumber(i / 10, 1), 'fontSize': fs(8)});
      String text = display(i, step);
//      String text = '${g.fmtNumber(i * step, 1)} ${msgInsulinUnit}';
      vertStack.add({
        'relativePosition': {'x': cm(xo - 3.0), 'y': cm(y + yo - 0.15)},
        'columns': [
          {'width': cm(2.7), 'text': text, 'fontSize': fs(8), 'alignment': 'right'}
        ]
      });
      vertStack.add({
        'relativePosition': {'x': cm(xo + colWidth * 24 + 0.3), 'y': cm(y + yo - 0.15)},
        'text': text,
        'fontSize': fs(8)
      });
    }
    return (gridLines - 1) * lineHeight;
  }

  dynamic getIobCob(double xo, double yo, double graphWidth, double graphHeight, dynamic horzCvs, dynamic vertStack, DayData day,
      [double upperIob = 0, double upperCob = 0]) {
    var colWidth = graphWidth / 24;
    // graphic for iob and cob
    dynamic ptsIob = [
      {'x': cm(calcX(graphWidth, DateTime(0, 1, 1, 0, 0))), 'y': cm(0)}
    ];
    dynamic ptsCob = [
      {'x': cm(calcX(graphWidth, DateTime(0, 1, 1, 0, 0))), 'y': cm(0)}
    ];
    var time = DateTime(day.date.year, day.date.month, day.date.day);
    var diff = 5;
    var maxIob = -1000.0;
    var minIob = 0.0;
    var maxCob = -1000.0;
    var lastX = 0.0;
    var i = 0;
    var currentDay = day.date.day;
    var maxTime = 1440;
    if (day.date.year == Date
        .today()
        .year && day.date.month == Date
        .today()
        .month && day.date.day == Date
        .today()
        .day) {
      maxTime = DateTime
          .now()
          .hour * 60 + DateTime
          .now()
          .minute;
    }
    while (i < maxTime) {
      if (currentDay != time.day) {
        i += diff;
        continue;
      }
      if (i + diff >= maxTime && i != maxTime - 1) diff = maxTime - 1 - i;
      if (i < maxTime) {
        var x = calcX(graphWidth, time);
        var y = day
            .iob(repData, time, day.prevDay)
            .iob - 1.0;
        maxIob = max(maxIob, y);
        minIob = min(minIob, y);
        ptsIob.add({'x': cm(x), 'y': y});
//*
        y = day
            .cob(repData, time, day.prevDay)
            .cob;
        maxCob = max(maxCob, y);
        ptsCob.add({'x': cm(x), 'y': y});
// */
        lastX = x;
        time = time.add(Duration(minutes: diff));
      }
      i += diff;
    }
    if (upperIob == 0) {
      minIob = minIob * 1.1;
      maxIob = maxIob * 1.1;
    } else {
      maxIob = upperIob;
    }
    double iobHeight = drawScaleIE(
        xo,
        yo,
        graphHeight,
        3 * graphHeight,
        minIob,
        maxIob,
        colWidth,
        horzCvs,
        vertStack,
        [S(10, 2.0), S(7, 1.0), S(3, 0.5), S(1.5, 0.2), S(0, 0.1)],
            (i, step, {value}) => '${g.fmtNumber(value ?? minIob + i * step, 1)} ${msgInsulinUnit}');
    for (var i = 0; i < ptsIob.length; i++) {
      if (maxIob - minIob > 0) {
        double y = ptsIob[i]['y'];
        if (upperIob > 0) {
          ptsIob[i]['y'] = cm(iobHeight / maxIob * (y + minIob));
        } else {
          ptsIob[i]['y'] = cm(iobHeight / (maxIob - minIob) * (maxIob - y));
        }
      } else {
        ptsIob[i]['y'] = cm(iobHeight);
      }
    }

    double cobHeight = drawScaleIE(
        xo,
        yo,
        graphHeight,
        4 * graphHeight,
        0.0,
        maxCob,
        colWidth,
        horzCvs,
        vertStack,
        [S(100, 20), S(50, 10), S(20, 5), S(0, 1)], (i, step, {value}) => '${g.fmtNumber(value ?? i * step, 0)} g');

    if (upperCob == 0) {
      maxCob = maxCob * 1.1;
    } else {
      maxCob = upperCob;
    }
    for (var i = 0; i < ptsCob.length; i++) {
      if (maxCob > 0) {
        ptsCob[i]['y'] = cm(cobHeight / maxCob * (maxCob - ptsCob[i]['y']));
      } else {
        ptsCob[i]['y'] = cm(cobHeight);
      }
    }

    if (lastX != null) {
      var y = 0.0;
      if (upperIob > 0) {
        ptsIob.add({'x': cm(lastX), 'y': cm(iobHeight / maxIob * (y + minIob))});
      } else if (maxIob - minIob > 0) {
        ptsIob.add({'x': cm(lastX), 'y': cm(iobHeight / (maxIob - minIob) * (maxIob - y))});
      } else {
        ptsIob.add({'x': cm(lastX), 'y': cm(iobHeight)});
      }
      ptsCob.add({'x': cm(lastX), 'y': cm(cobHeight)});
    }

    return {'iob': ptsIob, 'cob': ptsCob, 'iobHeight': iobHeight, 'cobHeight': cobHeight, 'iobTop': iobHeight / maxIob * minIob,
      'maxCob': maxCob};
  }

  void checkValue(ParamInfo param, dynamic value) {}
}
