import 'dart:convert';
import 'dart:math' as math;

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart';
import 'package:nightscout_reporter/src/json_data.dart';

import 'base-print.dart';

class PercentileData {
  DateTime time;
  final List<EntryData> _entries = <EntryData>[];

  PercentileData(this.time);

  void add(EntryData entry) {
    var clone = entry.copy;
    clone.time = time;
    _entries.add(clone);
  }

  double get max {
    var ret = -1.0;
    for (var entry in _entries) {
      if (entry.gluc > 0) ret = math.max(entry.gluc, ret);
    }
    return ret;
  }

  double get min {
    var ret = 10000.0;
    for (var entry in _entries) {
      if (entry.gluc > 0) ret = math.min(entry.gluc, ret);
    }
    return ret;
  }

  double percentile(int value) => Globals.percentile(_entries, value);
}

class PrintPercentile extends BasePrint {
  @override
  String help = Intl.message(
      '''Dieses Formular zeigt an, wie sich die Glukosewerte im ausgewählten Zeitraum über den Tag
verteilen. Diese Verteilung kann graphisch und tabellarisch ausgegeben werden.

In der Grafik sind die Bereiche für bestimmte Abweichungen farblich markiert. Die Linie zeigt den Medianwert
an. In der Tabelle kann man diese Werte nachlesen. Wenn die Basalrate mit ausgegeben wird, dann ist das die
Basalrate, die zu Beginn des ausgewählten Zeitraums aktiv war.''',
      desc: 'help for percentile');

  @override
  String baseId = 'percentile';

  @override
  String baseIdx = '03';

  bool showGPD,
      showTable,
      showCol1090,
      showBasal,
      showColKH,
      showColIE,
      showColCount,
      showColAverage,
      showColMin,
      showColMax,
      showColStdAbw;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, BasePrint.msgOutput,
        list: [
          BasePrint.msgGraphic,
          BasePrint.msgTable,
          BasePrint.msgAll,
        ],
        thumbValue: 2),
    ParamInfo(2, msgCol1090, boolValue: false),
    ParamInfo(1, msgParam1, boolValue: false),
    ParamInfo(3, '', literalFormat: LiteralFormat(divider: true)),
    ParamInfo(4, msgColCount, boolValue: true),
    ParamInfo(5, msgColAverage, boolValue: true),
    ParamInfo(6, msgColMin, boolValue: true),
    ParamInfo(7, msgColMax, boolValue: true),
    ParamInfo(8, msgColStdAbw, boolValue: true),
    ParamInfo(9, msgColKH, boolValue: false),
    ParamInfo(10, msgColIE, boolValue: false),
  ];

  static String get msgParam1 => Intl.message('Basalrate anzeigen');

  static String msgBasalInfo1(String unit) =>
      Intl.message('Diese Basalrate war am $unit aktiv.',
          args: [unit], name: 'msgBasalInfo1');

  static String get msgColCount => Intl.message('Spalte Messwerte '
      'anzeigen');

  static String get msgColAverage => Intl.message('Spalte Mittelwert '
      'anzeigen');

  static String get msgColMin => Intl.message('Spalte Min anzeigen');

  static String get msgColMax => Intl.message('Spalte Max anzeigen');

  static String get msgColStdAbw => Intl.message('Spalte Std.Abw. anzeigen');

  static String get msgColKH => Intl.message('Spalte KH anzeigen');

  static String get msgColIE => Intl.message('Spalte IE anzeigen');

  @override
  void checkValue(ParamInfo param, dynamic value) {
    List<int> list = [4, 5, 6, 7, 8, 9, 10];
    list.forEach((idx) {
      ParamInfo p = params[idx];
      p.isVisible = params[0].intValue != 0;
    });

    params[1].isVisible = params[0].intValue != 0;
    params[2].isVisible = params[0].intValue != 1;

    var count = 0;
    list.forEach((idx) {
      ParamInfo p = params[idx];
      if (p.boolValue) {
        count++;
      }
    });
    list.forEach((idx) {
      ParamInfo p = params[idx];
      if (count > 4) {
        if (!p.boolValue) {
          p.isDisabled = true;
        }
      } else {
        p.isDisabled = false;
      }
    });
    params[3].title = msgColumns(5 - count);
  }

  @override
  void extractParams() {
    showGPD = params[0].intValue == 0 || params[0].intValue == 2 || params[0].intValue == null;
    showTable = params[0].intValue == 1 || params[0].intValue == 2 || params[0].intValue == null;
    showCol1090 = params[1].boolValue;
    showBasal = params[2].boolValue;
    showColCount = params[4].boolValue;
    showColAverage = params[5].boolValue;
    showColMin = params[6].boolValue;
    showColMax = params[7].boolValue;
    showColStdAbw = params[8].boolValue;
    showColKH = params[9].boolValue;
    showColIE = params[10].boolValue;
    pagesPerSheet = 1;
  }

  @override
  dynamic get estimatePageCount =>
      {'count': showGPD && showTable ? 2 : 1, 'isEstimated': false};

  @override
  String get backsuffix {
    var ret = params[0].intValue ?? 0;
    if (showBasal && ret == 0) ret = 3;
    if (showBasal && ret == 2) ret = 4;

    return '$ret';
  }

  String get _title =>
      isPortrait ? BasePrint.titleGPDShort : BasePrint.titleGPD;

  @override
  bool isPortrait = false;

  SettingsData _settings;

  num lineWidth;

  static String get msgCol1090 =>
      Intl.message('Spalten für 10% und 90% anzeigen');
  String colBasal = '#0097a7';
  double glucMax = 0.0;
  double _gridHeight;

  double get gridHeight => _gridHeight;

  double get gridWidth => width - 7.0;
  double _basalHeight;
  double _basalWidth;
  double _profMax;
  double _colWidth;

  double glucY(double value) => gridHeight / glucMax * (glucMax - value);

  double glucX(DateTime time) =>
      gridWidth / 1440 * (time.hour * 60 + time.minute);

  PrintPercentile({suffix = null}) {
    init(suffix);
    title = BasePrint.titleGPD;
  }

  @override
  void fillPages(List<Page> pages) async {
    _settings = repData.status.settings;
    titleInfo = titleInfoBegEnd();
    if (showGPD) pages.add(getPage());
    if (showTable) getTablePage(pages);
    if (g.showBothUnits) {
      g.glucMGDLIdx = 1;
      if (showGPD) pages.add(getPage());
      if (showTable) getTablePage(pages);
      g.glucMGDLIdx = 2;
    }
  }

  int fillDebugRow(String type, dynamic row, double f, int hour,
      List<EntryData> entryList, List<TreatmentData> treatList, String style) {
    var firstCol = '${g.fmtNumber(hour, 0, 2)}:00';
    var day = DayData(
        null,
        repData.profile(DateTime(
            repData.begDate.year, repData.begDate.month, repData.begDate.day)), repData.status);
    day.entries.addAll(entryList);
    day.treatments.addAll(treatList);
    day.init();
    var time = DateTime(0, 1, 1, hour);
    var perc = PercentileData(time);
    for (var entry in entryList) {
      if (entry.gluc < 0) continue;
      perc.add(entry);
    }

    var wid = 2.0 / 100.0;
    var colcount = showCol1090 ? 10 : 8;
    colcount = 5;
    colcount += showCol1090 ? 3 : 0;
    colcount += showColKH ? 1 : 0;
    colcount += showColIE ? 1 : 0;
    colcount += showColCount ? 1 : 0;
    colcount += showColAverage ? 1 : 0;
    colcount += showColMin ? 1 : 0;
    colcount += showColMax ? 1 : 0;
    colcount += showColStdAbw ? 1 : 0;
    var f = fs(showCol1090 ? 7 : 10);
    var w = (width - 4.0 - 2.0 - wid * 100) / colcount - 0.45;
    var h = showCol1090 ? 0.35 : 0.5;
    dynamic value = 0.0;
    String label = '';
    switch (type) {
      case 'carbs':
        value = day.avgCarbsPerDay;
        label = msgCarbShort;
        break;
      case 'insulin':
        value = day.avgInsulinPerDay;
        label = msgGluc;
        break;
    }
    var ret = 0;
    if (value['value'] >= 0.1) {
      var text = json.encode(value['dbg']);
      addTableRow(true, cm(2.0), row, {
        'text': label,
        'style': 'total',
        'alignment': 'center',
        'fontSize': f
      }, {
        'text': label,
        'style': 'total',
        'alignment': 'left',
        'fontSize': f
      });
      addTableRow(true, cm(width - 2.0), row, {
        'text': label,
        'style': 'total',
        'alignment': 'center',
        'fontSize': f
      }, {
        'text': text,
        'style': style,
        'alignment': 'right',
        'colSpan': colcount - 1,
        'fontSize': f
      });
      ret = (text.length ~/ 100) + 1;
    }

    return ret;
  }

  void fillRow(dynamic row, double f, int hour, List<EntryData> entryList,
      List<TreatmentData> treatList, String style) {
    var firstCol = '${g.fmtNumber(hour, 0, 2)}:00';
    var day = DayData(
        null,
        repData.profile(DateTime(
            repData.begDate.year, repData.begDate.month, repData.begDate.day)), repData.status);
    day.entries.addAll(entryList);
    day.treatments.addAll(treatList);
    day.init();
    var time = DateTime(0, 1, 1, hour);
    var perc = PercentileData(time);
    for (var entry in entryList) {
      if (entry.gluc < 0) continue;
      perc.add(entry);
    }
/*
    for (EntryData entry in list)
    {
      if (entry.gluc > 0)
      {
        average += entry.gluc;
        count++;
        if (entry.gluc < min)min = entry.gluc;
        if (entry.gluc > max)max = entry.gluc;
      }
    }
    average /= count;
 */
    double f = fs(showCol1090 ? 9 : 10);
    double wid = 3.0 / 100.0;
//    double w = (width - 4.0 - 2.0 - wid * 100) / 8 - 0.45;
    addTableRow(true, "auto", row, {"text": msgTime, "style": "total", "alignment": "center", "fontSize": f},
        {"text": firstCol, "style": "total", "alignment": "center", "fontSize": f});
    var canvas = [
      {"type": "rect", "color": colLow, "x": cm(0), "y": cm(0), "w": cm(day.lowPrz(g) * wid), "h": cm(0.4)},
      {"type": "rect", "color": colNormLow, "x": cm(day.lowPrz(g) * wid), "y": cm(0), "w": cm(day.bottomPrz(g) * wid), "h": cm(0.4)},
      {"type": "rect", "color": colNorm, "x": cm((day.lowPrz(g) + day.bottomPrz(g)) * wid), "y": cm(0), "w": cm(day.normPrz(g) * wid), "h": cm(0.4)},
      {"type": "rect", "color": colNormHigh, "x": cm((day.lowPrz(g) + day.bottomPrz(g) + day.normPrz(g)) * wid), "y": cm(0), "w": cm(day.topPrz(g) * wid), "h": cm(0.4)},
      {"type": "rect", "color": colHigh, "x": cm((day.lowPrz(g) + day.bottomPrz(g) + day.normPrz(g) + day.topPrz(g)) * wid), "y": cm(0), "w": cm(day.highPrz(g) * wid), "h": cm(0.4)}
    ];
    if (day.entryCountValid == 0) canvas = [];
    addTableRow(true, cm(wid * 100), row, {"text": msgDistribution, "style": "total", "alignment": "center", "fontSize": f},
        {"style": style, "canvas": canvas});
    addTableRow(true, "auto", row, {"text": msgVeryLow(_settings.thresholds.bgLow), "style": "total", "alignment": "center", "fillColor": colLow, "fontSize": f},
        {"text": "${g.fmtNumber(day.lowPrz(g), 0)} %", "style": style, "alignment": "right", "fillColor": style == "total" ? colLow : null, "fontSize": f});
    addTableRow(true, "auto", row, {"text": msgLow(_settings.thresholds.bgLow, _settings.thresholds.bgTargetBottom), "style": "total", "alignment": "center", "fillColor": colNormLow, "fontSize": f},
        {"text": "${g.fmtNumber(day.bottomPrz(g), 0)} %", "style": style, "alignment": "right", "fillColor": style == "total" ? colNormLow : null, "fontSize": f});
    addTableRow(true, "auto", row, {"text": msgNormal, "style": "total", "alignment": "center", "fillColor": colNorm, "fontSize": f},
        {"text": "${g.fmtNumber(day.normPrz(g), 0)} %", "style": style, "alignment": "right", "fillColor": style == "total" ? colNorm : null, "fontSize": f});
    addTableRow(true, "auto", row, {"text": msgHigh(_settings.thresholds.bgTargetTop, _settings.thresholds.bgHigh), "style": "total", "alignment": "center", "fillColor": colNormHigh, "fontSize": f},
        {"text": "${g.fmtNumber(day.topPrz(g), 0)} %", "style": style, "alignment": "right", "fillColor": style == "total" ? colNormHigh : null, "fontSize": f});
    addTableRow(true, "auto", row, {"text": msgVeryHigh(_settings.thresholds.bgHigh), "style": "total", "alignment": "center", "fillColor": colHigh, "fontSize": f},
        {"text": "${g.fmtNumber(day.highPrz(g), 0)} %", "style": style, "alignment": "right", "fillColor": style == "total" ? colHigh : null, "fontSize": f});
    addTableRow(true, "auto", row, {"text": msgValues, "style": "total", "alignment": "center", "fontSize": f},
        {"text": "${g.fmtNumber(day.entryCountValid, 0)}", "style": style, "alignment": "right", "fontSize": f});
    addTableRow(true, "auto", row, {"text": msgMin, "style": "total", "alignment": "center", "fontSize": f},
        {"text": "${g.glucFromData(day.min, 1)}", "style": style, "alignment": "right", "fontSize": f});
    addTableRow(true, "auto", row, {"text": msgMax, "style": "total", "alignment": "center", "fontSize": f},
        {"text": "${g.glucFromData(day.max, 1)}", "style": style, "alignment": "right", "fontSize": f});
    addTableRow(true, "auto", row, {"text": msgAverage, "style": "total", "alignment": "center", "fontSize": f},
        {"text": "${g.glucFromData(day.avgGluc, 1)}", "style": style, "alignment": "right", "fontSize": f});
    addTableRow(true, "auto", row, {"text": msgDeviation, "style": "total", "alignment": "center", "fontSize": f},
        {"text": "${g.fmtNumber(day.stdAbw(g.glucMGDL), 1)}", "style": style, "alignment": "right", "fontSize": f});
    addTableRow(true, "auto", row, {"text": msgVarK, "style": "total", "alignment": "center", "fontSize": f},
        {"text": "${g.fmtNumber(day.varK, 1)}", "style": style, "alignment": "right", "fontSize": f});
//*
    if (showCol1090)addTableRow(
        true, "auto", row, {"text": msg10, "style": "total", "alignment": "center", "fontSize": f},
        {"text": "${g.glucFromData(perc.percentile(10), 1)}", "style": style, "alignment": "right", "fontSize": f});
    addTableRow(true, "auto", row, {"text": msg25, "style": "total", "alignment": "center", "fontSize": f},
        {"text": "${g.glucFromData(perc.percentile(25), 1)}", "style": style, "alignment": "right", "fontSize": f});
    addTableRow(true, "auto", row, {"text": msgMedian, "style": "total", "alignment": "center", "fontSize": f},
        {"text": "${g.glucFromData(perc.percentile(50), 1)}", "style": style, "alignment": "right", "fontSize": f});
    addTableRow(true, "auto", row, {"text": msg75, "style": "total", "alignment": "center", "fontSize": f},
        {"text": "${g.glucFromData(perc.percentile(75), 1)}", "style": style, "alignment": "right", "fontSize": f});
    if (showCol1090)addTableRow(
        true, "auto", row, {"text": msg90, "style": "total", "alignment": "center", "fontSize": f},
        {"text": "${g.glucFromData(perc.percentile(90), 1)}", "style": style, "alignment": "right", "fontSize": f});
// */
    tableHeadFilled = true;
  }

  Page getTablePage(List<Page> pages)
  {
    isPortrait = false;
    var body = [];
    var f = 3.3;
    f /= 100;

    tableHeadFilled = false;
    tableHeadLine = [];
    tableWidths = [];
    yorg -= 0.5;

    double y = yorg;
    for (var i = 0; i < 24; i++) {
      var entryList = <EntryData>[];
      var treatList = <TreatmentData>[];
      for (var day in repData.data.days) {
        var entries = day.entries.where((e) => e.time.hour == i);
        entryList.addAll(entries);
        var treatments = day.treatments.where((e) => e.createdAt.hour == i);
        treatList.addAll(treatments);
      }
      var row = [];
      fillRow(row, f, i, entryList, treatList, 'row');

      if (body.isEmpty) body.add(tableHeadLine);
      body.add(row);
      y += 0.6;

      if (g.isDebug) {
        row = [];
        var lines =
            fillDebugRow('carbs', row, f, i, entryList, treatList, 'row');
        if (row.length > 0) {
          body.add(row);
          y += 0.6 * lines;
        }
        row = [];
        lines = fillDebugRow('insulin', row, f, i, entryList, treatList, 'row');
        if (row.length > 0) {
          body.add(row);
          y += 0.6 * lines;
        }
      }

      if (y > 23 && i < 23) {
        title = BasePrint.msgHourlyStats;
        subtitle = '';
        var hf = headerFooter();
        dynamic content = [hf, getTable(tableWidths, body)];
        pages.add(Page(isPortrait, content));
        title = BasePrint.titleGPD;
        y = yorg;
        body = [];
      }
    }

    title = BasePrint.msgHourlyStats;
    subtitle = '';
    var hf = headerFooter();
    dynamic content = [hf, getTable(tableWidths, body)];
    pages.add(Page(isPortrait, content));
    yorg += 0.5;  // gruoner 01/04/20 moved to place table completely on one single page
    title = BasePrint.titleGPD;
    isPortrait = false;
  }

  Page getPage() {
    isPortrait = showBasal;
    // the height of the grid is calculated so that the scale of the graphic looks the same
    // in portrait and landscape mode. formula for portrait is:
    // landscapewidth / landscapeheight * portraitwidth
    _gridHeight =
        isPortrait ? (width - 7) / (height - 7) * (width - 11) : height - 11.0;

    title = _title;
    subtitle = isPortrait ? BasePrint.titleGPD : '';
    var xo = xorg;
    var yo = yorg;
    var data = repData.data;
    lineWidth = cm(0.03);

    var percList = <PercentileData>[];
    for (var entry in data.entries) {
      if (entry.gluc < 0) continue;
      var time = DateTime(0, 1, 1, entry.time.hour, entry.time.minute);
      var src = percList.firstWhere((e) => e.time == time, orElse: () {
        percList.add(PercentileData(time));
        return percList.last;
      });
      src.add(entry);
    }

    percList.sort((a, b) => a.time.compareTo(b.time));

    glucMax = 0.0;
    for (var data in percList) {
      glucMax = math.max(data.percentile(90), glucMax);
    }

    if (g.glucMaxValue != null) glucMax = g.glucMaxValues[g.ppGlucMaxIdx];

    var vertLines = {
      'relativePosition': {'x': cm(xo), 'y': cm(yo)},
      'canvas': []
    };
    var horzLines = {
      'relativePosition': {'x': cm(xo), 'y': cm(yo)},
      'canvas': []
    };
    var horzLegend = {'stack': []};
    var vertLegend = {'stack': []};

    var vertCvs = vertLines['canvas'] as List;
    var horzCvs = horzLines['canvas'] as List;
    var horzStack = horzLegend['stack'];
    var vertStack = vertLegend['stack'];

    var grid = drawGraphicGrid(
        glucMax, gridHeight, gridWidth, vertCvs, horzCvs, horzStack, vertStack,
        horzfs: fs(isPortrait ? 6 : 8));
    if (grid.lineHeight == 0) {
      return Page(isPortrait, [
        headerFooter(),
        {
          'relativePosition': {'x': cm(xorg), 'y': cm(yorg)},
          'text': msgMissingData
        }
      ]);
    }
    glucMax = grid.gridLines * grid.glucScale;
    var yHigh = glucY(targets(repData)['low']);
    var yLow = glucY(targets(repData)['high']);
    var limitLines = {
      'relativePosition': {'x': cm(xo), 'y': cm(yo)},
      'canvas': [
        {
          'type': 'rect',
          'x': cm(0.0),
          'y': cm(yHigh),
          'w': cm(24 * grid.colWidth),
          'h': cm(yLow - yHigh),
          'color': '#00ff00',
          'fillOpacity': 0.5
        },
        {
          'type': 'line',
          'x1': cm(0.0),
          'y1': cm(yHigh),
          'x2': cm(24 * grid.colWidth),
          'y2': cm(yHigh),
          'lineWidth': cm(lw),
          'lineColor': '#00aa00'
        },
        {
          'type': 'line',
          'x1': cm(0.0),
          'y1': cm(yLow),
          'x2': cm(24 * grid.colWidth),
          'y2': cm(yLow),
          'lineWidth': cm(lw),
          'lineColor': '#00aa00'
        },
        {
          'type': 'rect',
          'x': 0,
          'y': 0,
          'w': 0,
          'h': 0,
          'color': '#000000',
          'fillOpacity': 1
        }
      ]
    };
    var percGraph = {
      'relativePosition': {'x': cm(xo), 'y': cm(yo)},
      'canvas': [],
      'pageBreak': '-'
    };
    var percLegend = LegendData(
        cm(xo),
        cm(yo + grid.lineHeight * grid.gridLines + (showBasal ? 1.0 : 2.0)),
        cm(8.0),
        100);
//    var percLegend = LegendData(cm(xo), cm(height - 5.0), cm(8.0), 100);

    if (addPercentileGraph(percGraph, percList, 10, 90, '#aaaaff')) {
      addLegendEntry(percLegend, '#aaaaff', msgPercentile1090);
    }
    if (addPercentileGraph(percGraph, percList, 25, 75, '#8888ff')) {
      addLegendEntry(percLegend, '#8888ff', msgPercentile2575);
    }
    addPercentileGraph(percGraph, percList, 50, 50, '#000000');

    addLegendEntry(percLegend, '#000000', msgMedian, isArea: false);
    addLegendEntry(
        percLegend,
        '#00ff00',
        msgTargetArea(g.glucFromData(targets(repData)['low']),
            g.glucFromData(targets(repData)['high']), g.getGlucInfo()['unit']));

    var profileBasal;
    if (showBasal) {
      // graphic for basalrate
      _profMax = -1000.0;
      _basalHeight = gridHeight;
      _basalWidth = gridWidth;
      _colWidth = _basalWidth / 24;
      for (var entry in data.days.first.basalData.store.listBasal) {
        _profMax = math.max((entry.value ?? 0) + 0.2, _profMax);
      }

      var y = gridHeight + 4.0;
      drawScaleIE(
          xo,
          yo,
          _basalHeight,
          y,
          0.0,
          _profMax,
          _colWidth,
          horzCvs,
          vertStack,
          [S(3, 0.5), S(1.5, 0.2), S(0, 0.1)],
          (i, step, {value}) =>
              '${g.fmtNumber(value ?? i * step, 1)} ${msgInsulinUnit}');
      horzCvs.add({
        'type': 'line',
        'x1': cm(0),
        'y1': cm(y + _basalHeight) - lw / 2,
        'x2': cm(24 * _colWidth),
        'y2': cm(y + _basalHeight) - lw / 2,
        'lineWidth': cm(lw),
        'lineColor': lcFrame
      });

      profileBasal = getBasalGraph(y, data.days.first, true, xo, yo);
      // draw vertical lines with times below graphic
      for (var i = 0; i < 25; i++) {
        vertCvs.add({
          'type': 'line',
          'x1': cm(i * _colWidth),
          'y1': cm(y),
          'x2': cm(i * _colWidth),
          'y2': cm(y + _basalHeight - lw / 2),
          'lineWidth': cm(lw),
          'lineColor': i > 0 && i < 24 ? lc : lcFrame
        });
        if (i < 24) {
          horzStack.add({
            'relativePosition': {
              'x': cm(xorg + i * _colWidth),
              'y': cm(yorg + y + _basalHeight + 0.05)
            },
            'text': fmtTime(i),
            'fontSize': fs(6)
          });
        }
      }

      horzStack.add({
        'relativePosition': {
          'x': cm(xorg),
          'y': cm(yorg + y + _basalHeight + 1.0)
        },
        'text': msgBasalInfo1(fmtDate(repData.begDate))
      });
    }

    dynamic ret = Page(isPortrait, [
      headerFooter(),
      profileBasal,
      vertLegend,
      vertLines,
      horzLegend,
      horzLines,
      limitLines,
      percLegend.asOutput,
      percGraph,
    ]);

    title = BasePrint.titleGPD;
    return ret;
  }

  bool addPercentileGraph(var percGraph, List<PercentileData> percList, int low,
      int high, String color) {
    var ret = high == low;
    var ptsLow = [];
    var ptsHigh = [];

    var x = 0.0;
    for (var entry in percList) {
      if (entry.percentile(high) != entry.percentile(low)) ret = true;
      x = glucX(entry.time);
      ptsHigh.add({'x': cm(x), 'y': cm(glucY(entry.percentile(high)))});
      if (high != low) {
        ptsLow.insert(0, {'x': cm(x), 'y': cm(glucY(entry.percentile(low)))});
      }
    }
    x = glucX(DateTime(0, 1, 1, 23, 59, 59));
    ptsHigh.add({'x': cm(x), 'y': cm(glucY(percList.first.percentile(high)))});
    if (high != low) {
      ptsLow.insert(
          0, {'x': cm(x), 'y': cm(glucY(percList.first.percentile(low)))});
    }
    var area = {
      'type': 'polyline',
      'lineWidth': cm(lw),
      'closePath': high != low,
      'fillOpacity': 0.5,
      'points': []
    };
    (area['points'] as List).addAll(ptsHigh);
    if (high != low) {
      area['color'] = color;
      (area['points'] as List).addAll(ptsLow);
    }
    (percGraph['canvas'] as List).add(area);
    (percGraph['canvas'] as List).add({
      'type': 'rect',
      'x': 0,
      'y': 0,
      'w': 0,
      'h': 0,
      'color': '#000000',
      'fillOpacity': 1
    });
    (percGraph['canvas'] as List).add({
      'type': 'polyline',
      'lineWidth': cm(lw),
      'closePath': false,
      'lineColor': color,
      'points': ptsHigh
    });
    (percGraph['canvas'] as List).add({
      'type': 'polyline',
      'lineWidth': cm(lw),
      'closePath': false,
      'lineColor': color,
      'points': ptsLow
    });

    return ret;
  }

  double basalX(DateTime time) {
    return _basalWidth / 1440 * (time.hour * 60 + time.minute);
  }

  double basalY(double value) => _profMax != 0 && value != null
      ? _basalHeight - (_basalHeight / _profMax * value)
      : 0.0;

  Map<String, List<Map<String, Object>>> getBasalGraph(
      double top, DayData day, bool useProfile, double xo, double yo) {
    List<ProfileEntryData> data;
    String color;

    if (useProfile) {
      data = day.basalData.store.listBasal;
      color = colBasalProfile;
    } else {
      data = day.profile;
      color = colBasalProfile;
    }

    var basalCvs = [];
    var ret = {
      'stack': [
        {
          'relativePosition': {'x': cm(xo), 'y': cm(yo + top)},
          'canvas': basalCvs
        }
      ]
    };
    double lastY;
    var areaPoints = [];
    var area = {
      'type': 'polyline',
      'lineWidth': cm(lw),
      'closePath': true,
      'color': color,
      //blendColor(color, '#ffffff', 0.7),
      'points': areaPoints,
//      'fillOpacity': opacity
    };

    var temp = <ProfileEntryData>[];
    for (var entry in data) {
      temp.add(entry);
    }

    if (useProfile && temp.isNotEmpty) {
      temp.sort((a, b) =>
          a.time(day.date, useProfile).compareTo(b.time(day.date, useProfile)));

      if (temp[0].timeAsSeconds != -temp[0].localDiff * 60 * 60) {
        var clone = temp[0].clone(DateTime(0, 1, 1, -temp[0].localDiff, 0));
        temp.insert(0, clone);
      }
    }

    areaPoints.add({
      'x': cm(basalX(DateTime(0, 1, 1, 0, 0))),
      'y': cm(useProfile ? basalY(0.0) : _basalHeight)
    });
    for (var entry in temp) {
      var x = basalX(entry.time(day.date, useProfile));
      var y = useProfile
          ? basalY(entry.value)
          : _basalHeight / _profMax * (_profMax - entry.tempAdjusted * 100);
      if (lastY != null) areaPoints.add({'x': cm(x), 'y': cm(lastY)});
      areaPoints.add({'x': cm(x), 'y': cm(y)});
      lastY = y;
    }
    if (lastY != null) {
      areaPoints
          .add({'x': cm(basalX(DateTime(0, 1, 1, 23, 59))), 'y': cm(lastY)});
    }

    areaPoints.add({
      'x': cm(basalX(DateTime(0, 1, 1, 23, 59))),
      'y': cm(useProfile ? basalY(0.0) : _basalHeight)
    });
    basalCvs.add(area);

    return ret;
  }
}
