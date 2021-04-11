import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/json_data.dart';

import 'base-print.dart';
import 'base-profile.dart';

class Flags {
  bool hasKatheter = false;
  bool hasSensor = false;
  bool hasAmpulle = false;
  bool hasBattery = false;
}

class PrintDailyLog extends BaseProfile {
  @override
  String help = Intl.message(
      '''Dieses Formular zeigt die Daten in tabellarischer Form an. Es kann abhängig von den
ausgewählten Optionen sehr viele Seiten umfassen. Es ist vor allem dafür sinnvoll, um bestimmte Daten aufzufinden.
Zum Beispiel kann man damit ermitteln, wann Katheterwechsel vorgenommen wurden, wieviele Datensätze als doppelt 
erkannt wurden oder wo Notizen erfasst wurden.
''',
      desc: 'help for daylog');

  @override
  String id = 'daylog';

  @override
  String idx = '07';

  bool showNotes,
      showCarbs,
      showIE,
      showSMB,
      showTempBasal,
      showProfileSwitch,
      showIESource,
      showTempTargets,
      showGluc,
      showChanges,
      showChangesColumn,
      showCalibration,
      showProfileSwitchDetails,
      showTempDigit,
      showDupes,
      showOnlyDupes,
      showTempOverrides;
  int groupMinutes = 0;

  @override
  bool get isBetaOrLocal => false;

  @override
  List<ParamInfo> params = [
    ParamInfo(2, msgParam1, boolValue: true),
    ParamInfo(3, msgParam2, boolValue: true),
    ParamInfo(4, msgParam3,
        boolValue: true, subParams: [ParamInfo(0, msgParam7, boolValue: true)]),
    ParamInfo(11, msgParam4, boolValue: true, isLoopValue: true, subParams: [
      ParamInfo(0, msgParam15, boolValue: false, isLoopValue: true)
    ]),
    ParamInfo(10, msgParam5, boolValue: true, isLoopValue: true),
    ParamInfo(5, msgParam6,
        boolValue: true,
        subParams: [ParamInfo(0, msgParam14, boolValue: true)]),
    ParamInfo(8, msgParam8, boolValue: true, isLoopValue: true),
    ParamInfo(0, msgParam9, list: [
      Intl.message('Keine'),
      Intl.message('1 Minute'),
      Intl.message('5 Minuten'),
      Intl.message('15 Minuten'),
      Intl.message('30 Minuten'),
      Intl.message('1 Stunde')
    ]),
    ParamInfo(1, msgParam10, boolValue: true),
    ParamInfo(6, msgParam11,
        boolValue: true,
        subParams: [ParamInfo(0, msgParam12, boolValue: true)]),
    ParamInfo(7, msgParam13, boolValue: true),
    ParamInfo(12, msgParam16,
        boolValue: false,
        subParams: [ParamInfo(0, msgParam17, boolValue: false)]),
    ParamInfo(9, msgParam18, boolValue: true, isLoopValue: true),
  ];

  @override
  void extractParams() {
    showNotes = params[0].boolValue;
    showCarbs = params[1].boolValue;
    showIE = params[2].boolValue;
    showIESource = params[2].subParams[0].boolValue;
    showTempBasal = params[3].boolValue;
    showTempDigit = params[3].subParams[0].boolValue;
    showSMB = params[4].boolValue;
    showProfileSwitch = params[5].boolValue;
    showProfileSwitchDetails = params[5].subParams[0].boolValue;
    showTempTargets = params[6].boolValue;

    switch (params[7].intValue) {
      case 1:
        groupMinutes = 1;
        break;
      case 2:
        groupMinutes = 5;
        break;
      case 3:
        groupMinutes = 15;
        break;
      case 4:
        groupMinutes = 30;
        break;
      case 5:
        groupMinutes = 60;
        break;
      default:
        groupMinutes = 0;
        break;
    }

    showGluc = params[8].boolValue;
    showChanges = params[9].boolValue;
    showChangesColumn = params[9].subParams[0].boolValue;
    showCalibration = params[10].boolValue;
    showDupes = params[11].boolValue;
    showOnlyDupes = params[11].subParams[0].boolValue;
    showTempOverrides = params[12].boolValue;
  }

  @override
  dynamic get estimatePageCount => {'count': 0, 'isEstimated': true};

  @override
  String get title => Intl.message('Protokoll');

  static String get msgParam1 => Intl.message('Notizen');

  static String get msgParam2 => Intl.message('Kohlenhydrate');

  static String get msgParam3 => Intl.message('Insulin');

  static String get msgParam4 => Intl.message('Temporäre Basalraten');

  static String get msgParam5 => Intl.message('SMB');

  static String get msgParam6 => Intl.message('Profilwechsel');

  static String get msgParam7 => Intl.message('Insulin-Quelle');

  static String get msgParam8 => Intl.message('Temporäre Ziele');

  static String get msgParam9 => Intl.message('Gruppierung der Zeiten');

  static String get msgParam10 => Intl.message('Glukosewert');

  static String get msgParam11 => Intl.message('Wechsel (Katheter etc.)');

  static String get msgParam12 => Intl.message('Zusätzliche Spalte anzeigen');

  static String get msgParam13 =>
      Intl.message('Kalibrierung und blutige Messungen');

  static String get msgParam14 => Intl.message('Details des Profilwechsels');

  static String get msgParam15 => Intl.message('Dauer mit Minutenbruchteil');

  static String get msgParam16 =>
      Intl.message('Mehrfache Datensätze kennzeichnen');

  static String get msgParam17 =>
      Intl.message('Nur mehrfache Datensätze anzeigen');

  static String get msgParam18 => Intl.message('Temporäre Overrides');

  static String get msgMultipleNotFound =>
      Intl.message('Es gibt keine mehrfachen Datensätze.');

  @override
  List<String> get imgList => [
        'nightscout',
        'katheter.print',
        'sensor.print',
        'ampulle.print',
        'battery.print'
      ];

  @override
  bool get isPortrait => true;

  num lineWidth;

  PrintDailyLog() {
    init();
  }

  bool _isFirstLine = true;
  bool _hasData = false;
  @override
  bool tableHeadFilled = false;
  @override
  dynamic tableHeadLine = [];
  @override
  dynamic tableWidths = [];
  var _body = [];
  var _page = [];
  double _y;
  double _bloodValue;

  @override
  dynamic get footerText => footerTextDayTimes;

  @override
  void fillPages(List<Page> pages) async {
    fillPagesInternal(pages);
    if (g.showBothUnits) {
      g.glucMGDLIdx = 1;
      fillPagesInternal(pages);
      g.glucMGDLIdx = 2;
    }
  }

  void fillPagesInternal(List<Page> pages) {
    var data = repData.data;
    titleInfo = titleInfoBegEnd();

    lineWidth = cm(0.03);
    _y = yorg - 0.3;
    _body = [];
    _page = [];
    tableWidths = [];
    _hasData = false;

    var oldLength = pages.length;
    for (var i = 0; i < data.days.length; i++) {
      var day = data.days[i];
      fillTable(day, pages);
      if (repData.isForThumbs) i = data.days.length;
    }

    if (_hasData) {
      _page.add(headerFooter());
      _page.add(getTable(tableWidths, _body));
      pages.add(Page(isPortrait, _page));
    } else {
      _page.add(headerFooter());
      if (showDupes && showOnlyDupes) {
        _page.add({
          'relativePosition': {'x': cm(2.2), 'y': cm(yorg)},
          'text': msgMultipleNotFound
        });
      }
      pages.add(Page(isPortrait, _page));
    }
    if (repData.isForThumbs && pages.length - oldLength > 1)
      pages.removeRange(oldLength + 1, pages.length);
  }

//  double _cellSpace = 0.11;
//  double _lineHeight = 0.34;
  final double _lineHeight = 0.4;
  final double _cellSpace = 0.12; //((23.59 / 70) - 0.3) / 2;
  double _maxY;

  double lineHeight(int lineCount) =>
      2 * _cellSpace + lineCount * (_lineHeight + _cellSpace);

  void fillTable(DayData day, List<Page> pages) {
    _maxY = height - 2.8;
    tableHeadFilled = false;
    tableHeadLine = [];
    _isFirstLine = true;

//    int groupMinutes = g.isLocal ? 60 : 0;
    var nextTime =
        DateTime(day.date.year, day.date.month, day.date.day, 0, groupMinutes);

    var list = <String>[];
    var flags = Flags();
    var treatments = <TreatmentData>[];

    for (var t in day.treatments) {
      treatments.add(t);
    }

    for (var e in day.bloody) {
      var t = TreatmentData();
      t.createdAt = e.time;
      t.eventType = 'nr-${e.type}';
      t.glucoseType = 'finger';
      t.glucose = e.bloodGluc;
      t.notes = msgMBG(g.glucFromData(e.bloodGluc), g.getGlucInfo()['unit']);
      treatments.add(t);
    }

    for (var e in day.entries) {
      if (e.type == 'cal') {
        var t = TreatmentData();
        t.createdAt = e.time;
        t.eventType = 'nr-${e.type}';
        t.notes =
            '${BasePrint.msgCalibration(g.fmtNumber(e.scale, 2), g.fmtNumber(e.intercept, 0), g.fmtNumber(e.slope, 2))}';
        treatments.add(t);
      }
    }
    treatments.sort((t1, t2) => t1.createdAt.compareTo(t2.createdAt));

    for (var i = 0; i < treatments.length; i++) {
      var t = treatments[i];
      var row = [];

      var wasAdded = false;
      if (groupMinutes == 0 || t.createdAt.isBefore(nextTime)) {
        wasAdded = true;
        fillList(groupMinutes != 0, repData, day, t, list, flags);
      }

      if (groupMinutes == 0 || !t.createdAt.isBefore(nextTime)) {
        var time = t.createdAt;
        if (groupMinutes != 0)
          time = nextTime.add(Duration(minutes: -groupMinutes));
        while (list.isNotEmpty) {
          _hasData = true;
          if (_isFirstLine) {
            _body.add(tableHeadLine);
            _y += lineHeight(1);
            _isFirstLine = false;
          }
          list = fillRow(time, repData, day, row,
              day.findNearest(day.entries, null, time), list, flags, 'row');
          row = [];
          if (list.isNotEmpty || _y + _lineHeight >= _maxY) {
            _page.add(headerFooter());
            _page.add(getTable(tableWidths, _body));
            pages.add(Page(isPortrait, _page));
            _page = [];
            _body = [tableHeadLine];
            _y = yorg - 0.3 + lineHeight(2);
            _isFirstLine = false;
          } else {
            flags = Flags();
          }
        }
        nextTime = nextTime.add(Duration(minutes: groupMinutes));
      }

      if (!wasAdded) i--;
    }
  }

  List<String> fillRow(DateTime time, ReportData src, DayData day, dynamic row,
      EntryData glucEntry, List<String> list, Flags flags, String style) {
    if (list.isNotEmpty) {
      var oldY = _y;
      var size = fs(10);
      var text = list[0];
      for (var i = 1; i < list.length; i++) {
        var line = list[i];
        if (text.endsWith(']')) {
          text = '${text} ${line}';
        } else if (text.endsWith('@')) {
          text = '${text.substring(0, text.length - 1)} ${line}';
        } else {
          text = '${text}, ${line}';
        }
      }
      var lines = text.split('\n');
      var y = _y;
      var idx = 0;
      if (lines.length > 1) {
        y += 2 * _cellSpace;
      }
      var output = <String>[];
      var wid = width - 1.8 - 5.1;
      if (showGluc) wid -= 1.6;
      if (showChanges && showChangesColumn) wid -= 1.7;
      var charsPerLine = wid ~/ 0.165;
      while (idx < lines.length &&
          y + _lineHeight * (lines[idx].length ~/ charsPerLine + 1) < _maxY) {
        y += _lineHeight * (lines[idx].length ~/ charsPerLine + 1);
        output.add(getText(y, '${lines[idx]}'));
        idx++;
      }
      _y = y;
      text = output.join('\n');
      if (text != '') {
        _y += 2 * _cellSpace;
        addRow(true, cm(1.8), row, {
          'text': msgTime,
          'style': 'total',
          'fontSize': size,
          'alignment': 'center'
        }, {
          'text': fmtTime(time),
          'style': styleForTime(time),
          'fontSize': size,
          'alignment': 'center'
        });
        if (showGluc) {
          var gluc = glucEntry?.gluc;
          if (_bloodValue == null) {
            addRow(true, cm(1.3), row, {
              'text': g.getGlucInfo()['unit'],
              'style': 'total',
              'fontSize': size,
              'alignment': 'center'
            }, {
              'text': g.glucFromData(gluc),
              'style': style,
              'fontSize': size,
              'alignment': 'center',
              'fillColor': colForGluc(day, gluc)
            });
          } else {
            addRow(true, cm(1.3), row, {
              'text': g.getGlucInfo()['unit'],
              'style': 'total',
              'fontSize': size,
              'alignment': 'center'
            }, {
              'stack': [
                {
                  'text': g.glucFromData(gluc),
                  'style': style,
                  'fontSize': size,
                  'alignment': 'center'
                },
                {
                  'text': g.glucFromData(_bloodValue),
                  'style': style,
                  'fontSize': size,
                  'alignment': 'center',
                  'color': colBloodValues
                },
              ],
              'fillColor': colForGluc(day, gluc)
            });
            _y += _lineHeight;
          }
        }
        if (showChanges && showChangesColumn) {
          dynamic stack = [];
          var x = -0.5;
          if (flags.hasKatheter) {
            stack.add({
              'relativePosition': {'x': cm(x += 0.5), 'y': cm(0.1)},
              'image': 'katheter.print',
              'width': cm(0.4)
            });
          }
          if (flags.hasSensor) {
            stack.add({
              'relativePosition': {'x': cm(x += 0.5), 'y': cm(0)},
              'image': 'sensor.print',
              'width': cm(0.4)
            });
          }
          if (flags.hasAmpulle) {
            stack.add({
              'relativePosition': {'x': cm(x += 0.5), 'y': cm(0.1)},
              'image': 'ampulle.print',
              'width': cm(0.4)
            });
          }
          if (flags.hasBattery) {
            stack.add({
              'relativePosition': {'x': cm(x += 0.5), 'y': cm(0.1)},
              'image': 'battery.print',
              'width': cm(0.4)
            });
          }
          addRow(true, cm(1.4), row, {
            'text': BasePrint.msgChange,
            'style': 'total',
            'fontSize': size,
            'alignment': 'center'
          }, {
            'stack': stack
          });
        }
        addRow(true, cm(wid), row, {
          'text': getText(oldY, '${fmtDate(time, null, false, true)}'),
          'style': 'total',
          'fontSize': size,
          'alignment': 'left'
        }, {
          'text': text,
          'style': style,
          'fontSize': size,
          'alignment': 'left'
        });
        _body.add(row);
        tableHeadFilled = true;
      }

      lines.removeRange(0, idx);
      if (lines.isNotEmpty && lines[0] != '') {
        list = lines.join('\n').split(', ');
      } else {
        list = <String>[];
      }
    }
    _bloodValue = null;
    return list;
  }

  String getText(double y, String text) {
//    if (g.isLocal)return "${g.fmtNumber(y, 1)} - $text";
    return text;
  }

  ProfileEntryData basalFor(DayData day, DateTime time) {
    ProfileEntryData ret;
    for (var i = 0; i < day.profile.length; i++) {
      ret = day.profile[i];
      var check = ret.time(day.date, true);
      if ((check.hour == time.hour &&
              time.minute == check.minute &&
              time.second == check.second) ||
          (check.isBefore(time) &&
              time.add(Duration(seconds: ret.duration)).isBefore(check)))
        return ret;
    }

    return null;
  }

  String msgLogTempTarget(target, duration, reason) =>
      Intl.message('temp. Ziel ${target} für ${duration} min, Grund: ${reason}',
          args: [target, duration, reason], name: 'msgLogTempTarget');

  String get msgLogTempTargetReset => Intl.message('Aufhebung von temp. Ziel');

  String msgLogTempBasal(percent, duration) =>
      Intl.message('temp. Basal ${percent}% / ${duration} min',
          args: [percent, duration], name: 'msgLogTempBasal');

  String msgLogTempBasalAbsolute(value, duration) =>
      Intl.message('temp. Basal ${value} / ${duration} min',
          args: [value, duration], name: 'msgLogTempBasalAbsolute');

  String msgLogSMB(insulin, unit) => Intl.message('SMB ${insulin} ${unit}',
      args: [insulin, unit], name: 'msgLogSMB');

  String msgLogMicroBolus(insulin, unit) =>
      Intl.message('Microbolus ${insulin} ${unit}',
          args: [insulin, unit], name: 'msgLogMicroBolus');

  String get msgChangeSite => Intl.message('Katheterwechsel');

  String get msgChangeSensor => Intl.message('Sensorwechsel');

  String get msgChangeInsulin => Intl.message('Ampullenwechsel');

  String get msgChangeBattery => Intl.message('Batteriewechsel');

  String msgMBG(gluc, unit) => Intl.message('Blutige Messung ${gluc} ${unit}',
      args: [gluc, unit], name: 'msgMBG');

  String msgLogOverride(range, duration, reason, scale) => Intl.message(
      'temp. Override für ${duration} min, Grund: ${reason}, Zielbereich: ${range}, Anpassung: ${scale}%',
      args: [range, duration, reason, scale],
      name: 'msgLogOverride');

  //{"_id":"2D5C42BE-CBE7-4139-BF03-95751ABE2C3C","correctionRange":[95,100],"reason":"😰 120%",
  // "timestamp": "2020-08-23T19:56:14Z",
  // "created_at":"2020-08-23T19:56:14.000Z","eventType":"Temporary Override","insulinNeedsScaleFactor":1.2,
  // "duration":0.022495784362157187,"enteredBy":"Loop","utcOffset":0,"carbs":null,"insulin":null}
  void fillList(bool showTime, ReportData src, DayData day, TreatmentData t,
      List<String> list, Flags flags) {
    var lastIdx = list.length;
    if (showDupes && showOnlyDupes && t.duplicates < 2) return;

    var type = t.eventType.toLowerCase();
    if (showNotes &&
        t.notes != null &&
        t.notes.isNotEmpty &&
        !type.startsWith('nr-')) {
      list.add('${t.notes.replaceAll('<br>', '\n')}');
    }
    if (showCarbs && t.carbs != null && t.carbs != 0)
      list.add('${msgCarbs(t.carbs.toString())}');
    if (showIE && t.insulin != null && t.insulin != 0 && !t.isSMB) {
      if (showIESource) {
        var text = t.eventType;
        if (t.isMealBolus) {
          text = msgMealBolus;
        } else if (t.isBolusWizard) {
          text = msgBolusWizard;
        } else {
          if (t.insulinInjections.isNotEmpty) {
            text = null;
            for (var entry in t.insulinInjections) {
              list.add('${entry.insulin} ${entry.units} ${msgInsulinUnit}');
            }
          } else if (t.hasNoType) {
            text = msgInsulin;
          }
        }
        if (text != null) list.add('${text} ${t.insulin} ${msgInsulinUnit}');
      } else {
        list.add('${t.insulin} ${msgInsulinUnit}');
      }
    }
    if (showSMB) {
      if (t.insulin != null && t.insulin != 0 && t.isSMB) {
        list.add(msgLogSMB(t.insulin, msgInsulinUnit));
      } else if (t.microbolus != null && t.microbolus > 0) {
        list.add(msgLogMicroBolus(
            g.fmtNumber(t.microbolus, g.basalPrecision), msgInsulinUnit));
      }
    }
    if (showTempBasal && t.isTempBasal) {
      var entry = basalFor(day, t.createdAt);
      if (entry != null && entry.tempAdjusted > 0) {
        list.add(msgLogTempBasal(
            g.fmtNumber(entry.tempAdjusted * 100, 0, 0, 'null', false, true),
            g.fmtNumber(entry.duration / 60, showTempDigit ? 1 : 0)));
      } else {
        entry = ProfileEntryData.fromTreatment(null, t);
        if (entry != null) {
          list.add(msgLogTempBasalAbsolute(
              g.fmtNumber(t.absoluteTempBasal, g.basalPrecision, 0, '0', false),
              g.fmtNumber(t.duration / 60, showTempDigit ? 1 : 0)));
        }
      }
    }
    if (showProfileSwitch && t.isProfileSwitch) {
      list.add(getProfileSwitch(src, day, t, showProfileSwitchDetails));
    }

    if (showTempTargets && t.isTempTarget) {
      String target;
      if (t.targetBottom == t.targetTop) {
        target = '${g.glucFromStatusMGDL(t.targetBottom)} '
            '${g.getGlucInfo()['unit']}';
      } else {
        target = '${g.glucFromStatusMGDL(t.targetBottom)} - '
            '${g.glucFromStatusMGDL(t.targetTop)} '
            '${g.getGlucInfo()['unit']}';
      }
      if (t.duration == 0 && t.targetBottom == 0) {
        list.add(msgLogTempTargetReset);
      } else {
        list.add(msgLogTempTarget(target, t.duration / 60, t.reason));
      }
    }
    if (showChanges) {
      if (t.isSiteChange) {
        list.add(msgChangeSite);
        flags.hasKatheter = true;
      }
      if (t.isSensorChange) {
        list.add(msgChangeSensor);
        flags.hasSensor = true;
      }
      if (t.isInsulinChange) {
        list.add(msgChangeInsulin);
        flags.hasAmpulle = true;
      }
      if (t.isPumpBatteryChange) {
        list.add(msgChangeBattery);
        flags.hasBattery = true;
      }
    }

    if (type.startsWith('nr-')) {
      if (showCalibration) {
        if (type == 'nr-cal' || type == 'nr-mbg') list.add('${t.notes}');
      }
    }

    if (t.isBloody) _bloodValue = t.glucose;

    if (showTempOverrides && type == 'temporary override') {
      list.add(msgLogOverride(
          JsonData.toText(t.raw['correctionRange']),
          t.duration / 60,
          t.reason,
          JsonData.toDouble(t.raw['insulinNeedsScaleFactor']) * 100));
    }

    if (list.length != lastIdx) {
      if (showDupes && t.duplicates > 1)
        list.insert(lastIdx, '${t.duplicates} x @');
      if (list.length != lastIdx && showTime && groupMinutes > 1) {
        var time = '[${fmtTime(t.createdAt)}]';
        if (lastIdx < 2 || list[lastIdx - 2] != time)
          list.insert(lastIdx, time);
      }
    }
  }

  void addRow(
      bool check, var width, dynamic dst, dynamic head, dynamic content) {
    if (!check) return;
    if (!tableHeadFilled) {
      tableHeadLine.add(head);
      tableWidths.add(width);
    }
    dst.add(content);
  }

  @override
  dynamic getTable(widths, body, [double fontsize]) {
    dynamic ret = {
      'columns': [
        {
          'margin': [cm(2.2), cmy(yorg - 0.3), cm(2.2), cmy(0.0)],
          'width': cm(width),
          'table': {'widths': widths, 'body': body}
        }
      ],
      'pageBreak': ''
    };

    return ret;
  }

  @override
  Page getPage(int page, ProfileGlucData profile, CalcData calc) {
    return null;
  }
}
