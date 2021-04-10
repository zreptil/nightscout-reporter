import 'dart:math';

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart';
import 'package:nightscout_reporter/src/json_data.dart';

import 'base-print.dart';

class PrintDailyStatistics extends BasePrint {
  @override
  String help = Intl.message(
      '''Dieses Formular zeigt die statistischen Werte für die Tage des ausgewählten Zeitraums
an. Für jeden Tag wird eine Zeile erzeugt. Die Spalten kann man teilweise konfigurieren. Auch hier wird der geschätzte 
HbA1c ausgegeben. Dieser hat wie auch im Formular @01@ nur sehr wenig Aussagekraft, weshalb er auch hier nur mit 
schwächerer Schrift angezeigt wird.
''',
      desc: 'help for daystats');

  @override
  String id = 'daystats';

  @override
  String idx = '04';

  bool showHbA1c,
      showStdabw,
      showCount,
      showValueStats,
      showPercentile,
      showVarK,
      showBasal,
      useDailyBasalrate,
      showCarbs,
      showBolus,
      showTDD;
  double _maxTDD = 0.0;
  double _basalSum = 0.0;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, msgParam1, boolValue: true),
    ParamInfo(3, msgParam2, boolValue: true),
    ParamInfo(4, msgParam3, boolValue: true),
    ParamInfo(5, msgParam4, boolValue: true),
    ParamInfo(6, msgParam5, boolValue: false),
    ParamInfo(7, msgParam6, boolValue: false, subParams: [
      ParamInfo(0, BasePrint.msgUseDailyBasalrate,
          boolValue: true, isLoopValue: true)
    ]),
    ParamInfo(10, msgParam7, boolValue: false),
    ParamInfo(1, msgParam8, boolValue: false),
    ParamInfo(8, msgParam9, boolValue: false),
    ParamInfo(9, msgParam10, boolValue: false),
  ];

  static String get msgParam1 => Intl.message('Spalte Messwerte');

  static String get msgParam2 => Intl.message('Spalte Standardabweichung');

  static String get msgParam3 => Intl.message('Spalten Perzentile');

  static String get msgParam4 => Intl.message('Spalte HbA1c');

  static String get msgParam5 => Intl.message('Spalte Variationskoeffizient');

  static String get msgParam6 => Intl.message('Basal anzeigen');

  static String get msgParam7 => Intl.message('Kohlenhydrate anzeigen');

  static String get msgParam8 => Intl.message('Min / Max Werte anzeigen');

  static String get msgParam9 => Intl.message('Bolus anzeigen');

  static String get msgParam10 => Intl.message('TDD anzeigen');

  @override
  void checkValue(ParamInfo param, dynamic value) {
    var count = 0;
    params.forEach((p) {
      if (p.boolValue) {
        count++;
      }
    });
    var list = params.where((p) => p.boolValue == false);
    params.forEach((p) {
      if (count > 6) {
        if (!p.boolValue) {
          p.isDisabled = true;
        }
      } else {
        p.isDisabled = false;
      }
    });
  }

  @override
  void extractParams() {
    showCount = params[0].boolValue;
    showStdabw = params[1].boolValue;
    showPercentile = params[2].boolValue;
    showHbA1c = params[3].boolValue;
    showVarK = params[4].boolValue;
    showBasal = params[5].boolValue;
    useDailyBasalrate = params[5].subParams[0].boolValue;
    showCarbs = params[6].boolValue;
    showValueStats = params[7].boolValue;
    showBolus = params[8].boolValue;
    showTDD = params[9].boolValue;
  }

  @override
  dynamic get estimatePageCount {
    var count = g?.period?.dayCount ?? 0;
    count = (count / 19).ceil();
    return {'count': count, 'isEstimated': false};
  }

  @override
  String get title => Intl.message('Tagesstatistik');

  @override
  bool get isPortrait => false;

  @override
  double get scale => 1.0;

  @override
  dynamic getTable(widths, body) {
    dynamic ret = {
      'columns': [
        {
          'margin': [cm(2.2), cmy(yorg - 0.6), cm(2.2), cmy(0.0)],
          'width': cm(width),
          'fontSize': fs(10),
          'table': {'widths': widths, 'body': body},
        }
      ],
      'pageBreak': ''
    };

    return ret;
  }

  PrintDailyStatistics() {
    init();
  }

  void fillRow(
      dynamic row, double f, String firstCol, DayData day, String style) {
    addTableRow(
        true,
        cm(2.9),
        row,
        {'text': msgDate, 'style': 'total', 'alignment': 'center'},
        {'text': firstCol, 'style': 'total', 'alignment': 'center'});
    var text = msgDistribution;
    if (showTDD) text += '\n' + msgTDD;
    double tdd = day.ieBasalSum(!useDailyBasalrate) + day.ieBolusSum;
    addTableRow(true, cm(f * 100), row, {
      'text': text,
      'style': 'total',
      'alignment': 'center'
    }, {
      'style': style,
      'canvas': [
        {
          'type': 'rect',
          'color': colLow,
          'x': cm(0),
          'y': cm(0),
          'w': cm(day.lowPrz(g) * f),
          'h': cm(showTDD ? 0.25 : 0.5)
        },
        {
          'type': 'rect',
          'color': colNorm,
          'x': cm(day.lowPrz(g) * f),
          'y': cm(0),
          'w': cm(day.normPrz(g) * f),
          'h': cm(showTDD ? 0.25 : 0.5)
        },
        {
          'type': 'rect',
          'color': colHigh,
          'x': cm((day.lowPrz(g) + day.normPrz(g)) * f),
          'y': cm(0),
          'w': cm(day.highPrz(g) * f),
          'h': cm(showTDD ? 0.25 : 0.5)
        },
        showTDD
            ? {
                'type': 'rect',
                'color': colBasalDay,
                'x': cm(0),
                'y': cm(0.3),
                'w': cm((style == 'total'
                        ? _basalSum
                        : day.ieBasalSum(!useDailyBasalrate)) *
                    f *
                    100 /
                    tdd),
                'h': cm(0.25)
              }
            : {},
        showTDD
            ? {
                'type': 'rect',
                'color': colBolus,
                'x': cm((style == 'total'
                        ? _basalSum
                        : day.ieBasalSum(!useDailyBasalrate)) *
                    f *
                    100 /
                    tdd),
                'y': cm(0.3),
                'w': cm(day.ieBolusSum * f * 100 / tdd),
                'h': cm(0.25)
              }
            : {},
      ]
    });
    addTableRow(true, '*', row, {
      'text': msgLow(targets(repData)['low']),
      'style': 'total',
      'alignment': 'center',
      'fillColor': colLow
    }, {
      'text': '${g.fmtNumber(day.lowPrz(g), 0)} %',
      'style': style,
      'alignment': 'right',
      'fillColor': style == 'total' ? colLow : null
    });
    addTableRow(true, '*', row, {
      'text': msgNormal,
      'style': 'total',
      'alignment': 'center',
      'fillColor': colNorm
    }, {
      'text': '${g.fmtNumber(day.normPrz(g), 0)} %',
      'style': style,
      'alignment': 'right',
      'fillColor': style == 'total' ? colNorm : null
    });
    addTableRow(true, '*', row, {
      'text': msgHigh(targets(repData)['high']),
      'style': 'total',
      'alignment': 'center',
      'fillColor': colHigh
    }, {
      'text': '${g.fmtNumber(day.highPrz(g), 0)} %',
      'style': style,
      'alignment': 'right',
      'fillColor': style == 'total' ? colHigh : null
    });
    addTableRow(showBasal, 'auto', row, {
      'text': '${msgBasal} ${msgInsulinUnit}',
      'style': 'total',
      'alignment': 'center'
    }, {
      'text': '${g.fmtNumber(day.ieBasalSum(!useDailyBasalrate), 1)}',
      'style': style,
      'alignment': 'right'
    });
    addTableRow(showBolus, 'auto', row, {
      'text': '${msgBolus} ${msgInsulinUnit}',
      'style': 'total',
      'alignment': 'center'
    }, {
      'text': '${g.fmtNumber(day.ieBolusSum, 1)}',
      'style': style,
      'alignment': 'right'
    });
    addTableRow(showTDD, 'auto', row, {
      'text': '${msgTDD} ${msgInsulinUnit}',
      'style': 'total',
      'alignment': 'center'
    }, {
      'text':
          '${g.fmtNumber(day.ieBolusSum + day.ieBasalSum(!useDailyBasalrate), 1)}',
      'style': style,
      'alignment': 'right'
    });
    addTableRow(showCount, 'auto', row, {
      'text': msgValues,
      'style': 'total',
      'alignment': 'center'
    }, {
      'text': '${g.fmtNumber(day.entryCountValid, 0)}',
      'style': style,
      'alignment': 'right'
    });
    addTableRow(showValueStats, 'auto', row, {
      'text': msgMin,
      'style': 'total',
      'alignment': 'center'
    }, {
      'text': '${g.glucFromData(day.min)}',
      'style': style,
      'alignment': 'right'
    });
    addTableRow(showValueStats, 'auto', row, {
      'text': msgMax,
      'style': 'total',
      'alignment': 'center'
    }, {
      'text': '${g.glucFromData(day.max)}',
      'style': style,
      'alignment': 'right'
    });
    addTableRow(showValueStats, 'auto', row, {
      'text': msgAverage,
      'style': 'total',
      'alignment': 'center'
    }, {
      'text': '${g.glucFromData(day.mid, 1)}',
      'style': style,
      'alignment': 'right'
    });
    addTableRow(showCarbs, 'auto', row, {
      'text': 'KH\nin g',
      'style': 'total',
      'alignment': 'center'
    }, {
      'text': '${carbFromData(day.carbs)}',
      'style': style,
      'alignment': 'right'
    });
    addTableRow(showCarbs, 'auto', row, {
      'text': msgKHPerMeal,
      'style': 'total',
      'alignment': 'center'
    }, {
      'text': '${carbFromData(day.avgCarbs)}',
      'style': style,
      'alignment': 'right'
    });
    addTableRow(showStdabw, 'auto', row, {
      'text': msgDeviation,
      'style': 'total',
      'alignment': 'center'
    }, {
      'text': '${g.fmtNumber(day.stdAbw(g.glucMGDL), 1)}',
      'style': style,
      'alignment': 'right'
    });
    addTableRow(showVarK, 'auto', row, {
      'text': msgVarK,
      'style': 'total',
      'alignment': 'center'
    }, {
      'text': '${g.fmtNumber(day.varK, 1)}',
      'style': style,
      'alignment': 'right'
    });
    addTableRow(showPercentile, cm(1.5), row, {
      'text': msg25,
      'style': 'total',
      'alignment': 'center'
    }, {
      'text': '${percentileFor(Globals.percentile(day.entries, 25))}',
      'style': style,
      'alignment': 'right'
    });
    addTableRow(showPercentile, cm(1.5), row, {
      'text': msgMedian,
      'style': 'total',
      'alignment': 'center'
    }, {
      'text': '${percentileFor(Globals.percentile(day.entries, 50))}',
      'style': style,
      'alignment': 'right'
    });
    addTableRow(showPercentile, cm(1.5), row, {
      'text': msg75,
      'style': 'total',
      'alignment': 'center'
    }, {
      'text': '${percentileFor(Globals.percentile(day.entries, 75))}',
      'style': style,
      'alignment': 'right'
    });
    addTableRow(showHbA1c, cm(1.5), row, {
      'text': msgHbA1C,
      'style': 'total',
      'alignment': 'center',
      'color': colHbA1c
    }, {
      'text': '${hba1c(day.mid)} %',
      'style': style,
      'alignment': 'right',
      'color': colHbA1c
    });
    tableHeadFilled = true;
  }

  String percentileFor(double value) {
    if (value == -1) return '';
    return g.glucFromData(value, 1);
  }

  @override
  void fillPages(List<Page> pages) {
    var oldLength = pages.length;
    _fillPages(pages);
    if (g.showBothUnits) {
      g.glucMGDLIdx = 1;
      _fillPages(pages);
      g.glucMGDLIdx = 2;
    }
    if (repData.isForThumbs && pages.length - oldLength > 1)
      pages.removeRange(oldLength + 1, pages.length);
  }

  void _fillPages(List<Page> pages) {
    tableHeadFilled = false;
    tableHeadLine = [];
    tableWidths = [];
    titleInfo = titleInfoBegEnd();
    var f = 3.3;
    var body = [];
    // maybe later the margins will work properly, up to now it
    // doesn't work beacause of hardcoded margins in the tablecells
    // this code has to be moved to addRow for operating correctly
/*
    int colCount = 6;
    double wid = width - 4.4 - f - 2.0;
    var widths = [cm(2.0), cm(f), w, w, w];
    if (showCount)widths.add(w);
    widths.add(w);
    widths.add(w);
    widths.add(w);
    if (showStdabw)widths.add(w);
    if (showPercentile)
    {
      widths.add(cm(1.5));
      widths.add(cm(1.5));
      widths.add(cm(1.5));
    }
    if (showHbA1c)widths.add(cm(1.5));
// */
    f /= 100;

    ProfileGlucData prevProfile;
    var lineCount = 0;
    var page = [];
    var totalDay = DayData(null, ProfileGlucData(ProfileStoreData('Intern')));
    totalDay.basalData.store.listBasal = [];
    totalDay.basalData.targetHigh = 0;
    totalDay.basalData.targetLow = 1000;
    var totalDays = 0;
    _maxTDD = 0.0;
    _basalSum = 0.0;

    for (var i = 0; i < repData.data.days.length; i++) {
      var day = repData
          .data.days[g.ppLatestFirst ? repData.data.days.length - 1 - i : i];
      day.init();
      if (day.entryCountValid == 0) continue;
      _basalSum += day.ieBasalSum(!useDailyBasalrate);
      _maxTDD =
          max(_maxTDD, day.ieBasalSum(!useDailyBasalrate) + day.ieBolusSum);
    }

    for (var i = 0; i < repData.data.days.length; i++) {
      var day = repData
          .data.days[g.ppLatestFirst ? repData.data.days.length - 1 - i : i];
      if (day.entryCountValid == 0) continue;
      totalDays++;
      totalDay.entries.addAll(day.entries);
      totalDay.bloody.addAll(day.bloody);
      totalDay.treatments.addAll(day.treatments);
      totalDay.profile.addAll(day.profile);
      totalDay.basalData.store.listBasal.addAll(day.basalData.store.listBasal);
      totalDay.basalData.targetHigh =
          max(totalDay.basalData.targetHigh, day.basalData.targetHigh);
      totalDay.basalData.targetLow =
          min(totalDay.basalData.targetLow, day.basalData.targetLow);
      var row = [];
      fillRow(row, f, fmtDate(day.date, null, true), day, 'row');
      var profile = repData
          .profile(DateTime(day.date.year, day.date.month, day.date.day));
      if (prevProfile == null ||
          profile.targetLow != prevProfile.targetLow ||
          profile.targetHigh != prevProfile.targetHigh) {
        body.add(tableHeadLine);
        lineCount += 2;
      }
      prevProfile = profile;

      body.add(row);
      lineCount++;
      if (lineCount == 21) {
        page.add(headerFooter());
        page.add(getTable(tableWidths, body));
        lineCount = 0;
        pages.add(Page(isPortrait, page));
        page = [];
        body = [];
        prevProfile = null;
      }
    }
    var row = [];
    totalDay.init(nextDay: null, keepProfile: true);
    fillRow(row, f, msgDaySum(totalDays), totalDay, 'total');
    body.add(row);

    if (prevProfile != null) {
      page.add(headerFooter());
      page.add(getTable(tableWidths, body));
      pages.add(Page(isPortrait, page));
    } else {
      var test = pages.last.content.last as Map;
      test['columns'].last['table']['body'].add(body.last);
    }
  }
}
