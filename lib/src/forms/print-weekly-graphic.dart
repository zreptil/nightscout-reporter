import 'dart:math' as math;
import 'dart:math';

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/controls/datepicker/datepicker_component.dart';
import 'package:nightscout_reporter/src/json_data.dart';

import 'base-print.dart';
import 'print-daily-graphic.dart';

class PrintWeeklyGraphic extends BasePrint {
  @override
  String help =
  Intl.message('''Dieses Formular zeigt den Verlauf der Glukosekurve über eine Woche hinweg an. Der Zeitraum wird
dazu in Wochenabschnitte aufgeteilt und jede Woche wird auf einer eigenen Seite ausgegeben. Die Wochen werden
farblich markiert, so dass man sie gut unterscheiden kann. Zusätzlich kann noch das @10@ für die jeweilige
Woche erzeugt werden.''', desc: 'help for weekgraph');

  @override
  String baseId = 'weekgraph';

  @override
  String baseIdx = '08';

  bool spareBool1, showDaysInGraphic = true, showCGP;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, BasePrint.msgGraphsPerPage, list: [
      Intl.message('Eine'),
      Intl.message('Zwei'),
      Intl.message('Vier'),
      Intl.message('Acht'),
      Intl.message('Sechzehn')
    ]),
    ParamInfo(1, '', boolValue: true, isDeprecated: true),
    ParamInfo(2, msgParam3, boolValue: true),
    ParamInfo(3, PrintDailyGraphic.msgParam19,
        boolValue: false, thumbValue: true),
  ];

  @override
  void extractParams() {
    spareBool1 = params[1].boolValue;
    showDaysInGraphic = params[2].boolValue;
    showCGP = params[3].boolValue;

    switch (params[0].intValue) {
      case 1:
        pagesPerSheet = 2;
        break;
      case 2:
        pagesPerSheet = 4;
        break;
      case 3:
        pagesPerSheet = 8;
        break;
      case 4:
        pagesPerSheet = 16;
        break;
      default:
        pagesPerSheet = 1;
        break;
    }
  }

  @override
  dynamic get estimatePageCount {
    var count = 0;
    if (g != null && g.period != null && g.period.start != null && g.period.end != null) {
      count = 1;
      var date = g.period.start.add(days: 1);
      while (date.isOnOrBefore(g.period.end)) {
        if (date.weekday == 1) count++;
        date = date.add(days: 1);
      }
      if (showCGP ?? false) count *= 2;
    }
    return {'count': count, 'isEstimated': false};
  }

  @override
  String get backsuffix => showCGP ? 'cgp' : '';

  String get _title => Intl.message('Wochengrafik');

  @override
  String get title => _title;

//  static String get msgParam2 => Intl.message('Neueste Woche zuerst');
  static String get msgParam3 => Intl.message('Tagesnamen in Grafik anzeigen');

  @override
  bool get isPortrait => false;

  double glucMax = 0.0;
  double carbMax = 200.0;
  double bolusMax = 50.0;
  double graphHeight;
  double graphBottom;
  static double graphWidth;
  static double basalTop;
  static double basalHeight = 3.0;
  static double basalWidth = graphWidth;

  double glucX(DateTime time) {
    return graphWidth / 1440 * (time.hour * 60 + time.minute);
  }

  double glucY(double value) => graphHeight / glucMax * (glucMax - value);

  double carbY(double value) => graphHeight / carbMax * (carbMax - value);

  double bolusY(double value) => graphHeight / bolusMax * value;

  PrintWeeklyGraphic({suffix = null}) {
    init(suffix);
  }

  @override
  void fillPages(List<Page> pages) async {
    var data = repData.data;

    if (data.days.isEmpty) return;

    var list = <List<DayData>>[];
    list.add(<DayData>[]);
    var lastDayInWeek = 1000;
    for (var i = 0; i < data.days.length; i++) {
      var day = data.days[i];
      var dayInWeek = day.date.weekday - g.period.firstDayOfWeek;
      if (dayInWeek < 0) dayInWeek += 7;
      if (dayInWeek <= lastDayInWeek && list.last.isNotEmpty) list.add(<DayData>[]);
      lastDayInWeek = dayInWeek;
      list.last.add(day);
    }
    if (g.ppLatestFirst) list = list.reversed.toList();
    for (var week in list) {
      graphWidth = 23.25;
      graphHeight = 12.5;
      basalTop = 2.0;
      graphBottom = graphHeight;
      pages.add(_getPage(week, repData));
      if (showCGP) pages.add(getCGPPage(week));
      if (g.showBothUnits) {
        g.glucMGDLIdx = 1;
        pages.add(_getPage(week, repData));
        g.glucMGDLIdx = 2;
      }
      title = _title;
      if (repData.isForThumbs) break;
    }
//    if (repData.isForThumbs && pages.length - oldLength > 1) pages.removeRange(oldLength + 1, pages.length);
  }

  dynamic glucLine(dynamic points, String color) =>
      {'type': 'polyline', 'lineWidth': cm(lw * 2), 'closePath': false, 'lineColor': color, 'points': points};

  Page _getPage(List<DayData> days, ReportData src) {
    title = _title;
    subtitle = null;
    footerTextAboveLine['text'] = '';
    var xo = xorg;
    var yo = yorg;
    titleInfo = titleInfoDateRange(days[0].date, days.last.date);
    glucMax = -1000.0;
    for (var day in days) {
      for (var entry in day.entries) {
        glucMax = math.max(entry.gluc, glucMax);
      }
      for (var entry in day.bloody) {
        glucMax = math.max(entry.mbg, glucMax);
      }
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
    var graphGlucCvs = [];
    // ignore: omit_local_variable_types
    List graphGlucStack = [
      {
        'relativePosition': {'x': cm(xo), 'y': cm(yo)},
        'canvas': graphGlucCvs
      }
    ];
    var graphGluc = {'stack': graphGlucStack};

    var vertCvs = vertLines['canvas'] as List;
    var horzCvs = vertLines['canvas'] as List;
    var horzStack = horzLegend['stack'];
    var vertStack = vertLegend['stack'];

    var grid = drawGraphicGrid(glucMax, graphHeight, graphWidth, vertCvs, horzCvs, horzStack, vertStack,
        glucScale: g.glucMGDL ? 20 : 18.02 * 0.5);
    if (grid.lineHeight == 0) {
      return Page(isPortrait, [
        headerFooter(),
        {
          'relativePosition': {'x': cm(xorg), 'y': cm(yorg)},
          'text': msgMissingData
        }
      ]);
    }

    glucMax = (grid.gridLines * grid.glucScale).toDouble();
    var legend = LegendData(cm(xo), cm(yo + graphHeight + 0.8), cm(8.0), 3);
    for (var day in days) {
      var color = colWeekDays[day.date.weekday - 1];
      var size = 0.2;

      for (var entry in day.bloody) {
        var x = glucX(entry.time);
        var y = glucY(entry.mbg);
        graphGlucCvs.add({'type': 'rect', 'x': cm(x), 'y': cm(y), 'w': cm(size), 'h': cm(size), 'color': color});
      }
      for (var t in day.treatments) {
        if (t.isBloody) {
          var x = glucX(t.createdAt);
          var y = glucY(g.glucFactor * t.glucose);
          graphGlucCvs.add({'type': 'rect', 'x': cm(x), 'y': cm(y), 'w': cm(size), 'h': cm(size), 'color': color});
        }
      }

      dynamic points = [];
      var names = <dynamic>[];
      var nameBoxes = <dynamic>[];
      EntryData last;
      var colorText = colWeekDaysText[day.date.weekday - 1];
      String name = DatepickerPeriod.dowShortName(day.date);
      for (var entry in day.entries) {
        var x = glucX(entry.time);
        var y = glucY(entry.gluc);
        if (entry.gluc < 0) {
          if (last != null && last.gluc >= 0) {
            graphGlucCvs.add(glucLine(points, color));
            points = [];
          }
        } else {
          points.add({'x': cm(x), 'y': cm(y)});
        }

        if (showDaysInGraphic) {
          if ((last == null || entry.time.hour > last.time.hour) && entry.gluc > 0) {
            if (entry.time.hour % 2 == 1) {
              nameBoxes.add(
                  {'type': 'rect', 'x': cm(x - 0.25), 'y': cm(y - 0.2), 'w': cm(0.5), 'h': cm(0.4), 'color': color});
              names.add({
                'relativePosition': {'x': cm(xo + x - 0.25), 'y': cm(yo + y - 0.15)},
                'columns': [
                  {'width': cm(0.5), 'text': name, 'fontSize': fs(8), 'color': colorText, 'alignment': 'center'}
                ]
              });
            }
          }
        }
        last = entry;
      }
      graphGlucCvs.add(glucLine(points, color));
      graphGlucCvs.addAll(nameBoxes);
      graphGlucStack.addAll(names);
      addLegendEntry(legend, color, '${fmtDate(day.date, null, false, true)}', isArea: false, lineWidth: lw * 3);
    }

    var yHigh = glucY(min(glucMax, targets(repData)['high'].toDouble()));
    var yLow = glucY(targets(repData)['low'].toDouble());

    var limitLines = {
      'relativePosition': {'x': cm(xo), 'y': cm(yo)},
      'canvas': [
        {
          'type': 'rect',
          'x': cm(0.0),
          'y': cm(yHigh),
          'w': cm(24 * grid.colWidth),
          'h': cm(yLow - yHigh),
          'color': colTargetArea,
          'fillOpacity': 0.3
        },
        {
          'type': 'line',
          'x1': cm(0.0),
          'y1': cm(yHigh),
          'x2': cm(24 * grid.colWidth),
          'y2': cm(yHigh),
          'lineWidth': cm(lw),
          'lineColor': colTargetArea
        },
        {
          'type': 'line',
          'x1': cm(0.0),
          'y1': cm(yLow),
          'x2': cm(24 * grid.colWidth),
          'y2': cm(yLow),
          'lineWidth': cm(lw),
          'lineColor': colTargetArea
        },
        {'type': 'rect', 'x': 0, 'y': 0, 'w': 0, 'h': 0, 'color': '#000', 'fillOpacity': 1}
      ]
    };
    return Page(isPortrait, [
      headerFooter(),
      vertLegend,
      vertLines,
      horzLegend,
      horzLines,
      limitLines,
      graphGluc,
      legend.asOutput,
      {'text': ''}
    ]);
  }
}
