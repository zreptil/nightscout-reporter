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
  String baseId = 'daystats';

  @override
  String baseIdx = '04';

  String get _titleGraphic => Intl.message('Tagesstatistik');
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
    ParamInfo(4, msgParamColCount, boolValue: true),
    ParamInfo(7, msgParamColStdAbw, boolValue: true),
    ParamInfo(9, msgParamColPercentile, boolValue: true),
    ParamInfo(10, msgParamHbA1c, boolValue: true),
    ParamInfo(8, msgParamColVarK, boolValue: false),
    ParamInfo(1, msgParamColBasal, boolValue: false, subParams: [
      ParamInfo(1, BasePrint.msgUseDailyBasalrate,
          boolValue: true, isLoopValue: true)
    ]),
    ParamInfo(6, msgParamColKH, boolValue: false),
    ParamInfo(5, msgParamColMinMax, boolValue: false),
    ParamInfo(2, msgParamColBolus, boolValue: false),
    ParamInfo(3, msgParamColTDD, boolValue: false),
    ParamInfo(0, '', literalFormat: LiteralFormat(divider: true)),
  ];

  static String get msgParamColCount => Intl.message('Spalte Messwerte');

  static String get msgParamColStdAbw => Intl.message('Spalte '
      'Standardabweichung');

  static String get msgParamColPercentile => Intl.message('Spalten Perzentile');

  static String get msgParamHbA1c => Intl.message('Spalte HbA1c');

  static String get msgParamColVarK => Intl.message('Spalte '
      'Variationskoeffizient');

  static String get msgParamColBasal => Intl.message('Spalte Basal anzeigen');

  static String get msgParamColKH => Intl.message('Spalte Kohlenhydrate '
      'anzeigen');

  static String get msgParamColMinMax => Intl.message('Spalten Min / Max '
      'anzeigen');

  static String get msgParamColBolus => Intl.message('Spalte Bolus anzeigen');

  static String get msgParamColTDD => Intl.message('TDD anzeigen');

  @override
  void checkValue(ParamInfo param, dynamic value) {
    var list = <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var count = 0;
    list.forEach((idx) {
      var p = params[idx];
      if (p.boolValue) {
        count++;
        if (idx == 2) count += 2;
      }
    });

    list.forEach((idx) {
      var p = params[idx];
      if (count > 6) {
        if (!p.boolValue) {
          p.isDisabled = true;
        }
      } else {
        p.isDisabled = false;
      }
    });
    if (count > 4 && !params[2].boolValue) {
      params[2].isDisabled = true;
    }
    params[10].title = msgColumns(7 - count);
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
    showTDD = false;
    useDailyBasalrate = true;
  }

  @override
  dynamic get estimatePageCount {
    var count = g?.period?.dayCount ?? 0;
    count = (count / 19).ceil();
    return {'count': count, 'isEstimated': false};
  }

  @override
  String get title => _titleGraphic;

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

  PrintDailyStatistics({suffix = null}) {
    init(suffix);
  }

  void fillRow(
      dynamic row, double f, List<String> firstCol, DayData day, String style,
      {double countForAverage = 1.0}) {
    addTableRow(
        true,
        cm(2.9),
        row,
        {'text': msgDate, 'style': 'total', 'alignment': 'center'},
        getContent(firstCol, 'total', 'center'));
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
      'fillColor': colLowBack
    }, {
      'text': '${g.fmtNumber(day.lowPrz(g), 0)} %',
      'style': style,
      'alignment': 'right',
      'fillColor': style == 'total' ? colLowBack : null
    });
    addTableRow(true, '*', row, {
      'text': msgNormal,
      'style': 'total',
      'alignment': 'center',
      'fillColor': colNormBack
    }, {
      'text': '${g.fmtNumber(day.normPrz(g), 0)} %',
      'style': style,
      'alignment': 'right',
      'fillColor': style == 'total' ? colNormBack : null
    });
    addTableRow(true, '*', row, {
      'text': msgHigh(targets(repData)['high']),
      'style': 'total',
      'alignment': 'center',
      'fillColor': colHighBack
    }, {
      'text': '${g.fmtNumber(day.highPrz(g), 0)} %',
      'style': style,
      'alignment': 'right',
      'fillColor': style == 'total' ? colHighBack : null
    });
    addTableRow(
        showBasal,
        'auto',
        row,
        {
          'text': '${msgBasal} ${msgInsulinUnit}',
          'style': 'total',
          'alignment': 'center'
        },
        getRowAverage(day.ieBasalSum(!useDailyBasalrate), countForAverage,
            style, 'right'));
    addTableRow(
        showBolus,
        'auto',
        row,
        {
          'text': '${msgBolus} ${msgInsulinUnit}',
          'style': 'total',
          'alignment': 'center'
        },
        getRowAverage(day.ieBolusSum, countForAverage, style, 'right'));
    addTableRow(
        showTDD,
        'auto',
        row,
        {
          'text': '${msgTDD} ${msgInsulinUnit}',
          'style': 'total',
          'alignment': 'center'
        },
        getRowAverage(day.ieBolusSum + day.ieBasalSum(!useDailyBasalrate),
            countForAverage, style, 'right'));
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
    addTableRow(
        showCarbs,
        'auto',
        row,
        {'text': 'KH\nin g', 'style': 'total', 'alignment': 'center'},
        getRowAverage(day.carbs, countForAverage, style, 'right'));
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

  dynamic getRowAverage(
      double value, double countForAverage, String style, String alignment) {
    dynamic list = ['${g.fmtNumber(value, 1)}'];
    if (countForAverage > 1.0) {
      list.add('${g.fmtNumber(value / countForAverage, 1)}');
    }
    return getContent(list, style, alignment);
  }

  dynamic getContent(List<String> list, String style, String alignment) {
    if (list.length == 1) {
      return {'text': list[0], 'style': style, 'alignment': alignment};
    }

    dynamic ret = {'style': style, 'stack': []};
    for (var i = 0; i < list.length; i++) {
      dynamic text = i == 0
          ? {'text': list[i], 'alignment': alignment}
          : {'text': list[i], 'fontSize': fs(8), 'alignment': alignment};
      ret['stack'].add(text);
    }
    return ret;
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
    var oldLength = pages.length;
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
      fillRow(row, f, [fmtDate(day.date, null, true)], day, 'row');
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
    fillRow(
        row,
        f,
        ['${msgDaySum(totalDays)}', msgDayAverage],
        totalDay,
        'tot'
        'al',
        countForAverage: totalDays as double);
    body.add(row);

    if (prevProfile != null) {
      page.add(headerFooter());
      page.add(getTable(tableWidths, body));
      pages.add(Page(isPortrait, page));
    } else {
      var test = pages.last.content.last as Map;
      test['columns'].last['table']['body'].add(body.last);
    }
    if (repData.isForThumbs && pages.length - oldLength > 1) pages.removeRange(oldLength + 1, pages.length);
  }
}
