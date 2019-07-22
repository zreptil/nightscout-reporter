import 'dart:math' as math;
import 'dart:math';

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/controls/datepicker/datepicker_component.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';
import 'print-daily-graphic.dart';

class PrintWeeklyGraphic extends BasePrint
{
  @override
  String id = "weekgraph";

  bool sortReverse,
    showDaysInGraphic = true,
    showCGP;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, msgParam1, list: [
      Intl.message("Eine"),
      Intl.message("Zwei"),
      Intl.message("Vier"),
      Intl.message("Acht"),
      Intl.message("Sechzehn")
    ]),
    ParamInfo(1, msgParam2, boolValue: true),
    ParamInfo(2, msgParam3, boolValue: true),
    ParamInfo(3, PrintDailyGraphic.msgParam19, boolValue: false),
  ];


  @override
  prepareData_(ReportData data)
  {
    sortReverse = params[1].boolValue;
    showDaysInGraphic = params[2].boolValue;
    showCGP = params[3].boolValue;

    switch (params[0].intValue)
    {
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
    return data;
  }

  static String _title = Intl.message("Wochengrafik");

  @override
  String title = _title;

  static String get msgParam1
  => Intl.message("Grafiken pro Seite");
  static String get msgParam2
  => Intl.message("Neueste Woche zuerst");
  static String get msgParam3
  => Intl.message("Tagesnamen in Grafik anzeigen");

  @override
  bool get isPortrait
  => false;

  double glucMax = 0.0;
  double carbMax = 200.0;
  double bolusMax = 50.0;
  double graphHeight;
  double graphBottom;
  static double graphWidth;
  static double basalTop;
  static double basalHeight = 3.0;
  static double basalWidth = graphWidth;

  double glucX(DateTime time)
  {
    return graphWidth / 1440 * (time.hour * 60 + time.minute);
  }

  double glucY(double value)
  => graphHeight / glucMax * (glucMax - value);

  double carbY(double value)
  => graphHeight / carbMax * (carbMax - value);

  double bolusY(double value)
  => graphHeight / bolusMax * value;

  PrintWeeklyGraphic()
  {
    init();
  }

  @override
  void fillPages(ReportData src, List<List<dynamic>> pages)
  async {
    var data = src.calc;

    if (data.days.length == 0)return;

    List<List<DayData>> list = List<List<DayData>>();
    list.add(List<DayData>());
    int lastDayInWeek = 1000;
    for (int i = 0; i < data.days.length; i++)
    {
      DayData day = data.days[i];
      int dayInWeek = day.date.weekday - g.period.firstDayOfWeek;
      if (dayInWeek < 0)dayInWeek += 7;
      if (dayInWeek <= lastDayInWeek && list.last.length > 0)list.add(List<DayData>());
      lastDayInWeek = dayInWeek;
      list.last.add(day);
    }
    if (sortReverse)list = list.reversed.toList();
    for (List<DayData> week in list)
    {
      graphWidth = 23.25;
      graphHeight = 12.5;
      basalTop = 2.0;
      graphBottom = graphHeight;
      pages.add(_getPage(week, src));
      if (showCGP)pages.add(getCGPPage(week, src));
      if (g.showBothUnits)
      {
        g.glucMGDL = !g.glucMGDL;
        pages.add(_getPage(week, src));
        g.glucMGDL = !g.glucMGDL;
      }
      title = _title;
    }
  }

  dynamic glucLine(dynamic points, String color)
  => {"type": "polyline", "lineWidth": cm(lw * 2), "closePath": false, "lineColor": color, "points": points};

  _getPage(List<DayData> days, ReportData src)
  {
    footerTextAboveLine["text"] = "";
    double xo = xorg;
    double yo = yorg;
    titleInfo = titleInfoDateRange(days[0].date, days.last.date);
    glucMax = -1000.0;
    for (DayData day in days)
    {
      for (EntryData entry in day.entries)
        glucMax = math.max(entry.gluc, glucMax);
      for (EntryData entry in day.bloody)
        glucMax = math.max(entry.mbg, glucMax);
    }

    var vertLines = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    var horzLines = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    var horzLegend = {"stack": []};
    var vertLegend = {"stack": []};
    List graphGlucCvs = [];
    List graphGlucStack = [{"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": graphGlucCvs}];
    var graphGluc = {"stack": graphGlucStack};

    List vertCvs = vertLines["canvas"] as List;
    List horzCvs = vertLines["canvas"] as List;
    List horzStack = horzLegend["stack"];
    List vertStack = vertLegend["stack"];

    GridData grid = drawGraphicGrid(
      glucMax,
      graphHeight,
      graphWidth,
      vertCvs,
      horzCvs,
      horzStack,
      vertStack,
      glucScale: g.glucMGDL ? 20 : 18.02 * 0.5);
    if (grid.lineHeight == 0)
      return [headerFooter(), {"relativePosition": {"x": cm(xorg), "y": cm(yorg)}, "text": msgMissingData}];


    glucMax = (grid.gridLines * grid.glucScale).toDouble();
    LegendData legend = LegendData(cm(xo), cm(yo + graphHeight + 0.8), cm(8.0), 3);
    for (DayData day in days)
    {
      String color = colWeekDays[day.date.weekday - 1];
      double size = 0.2;

      for (EntryData entry in day.bloody)
      {
        double x = glucX(entry.time);
        double y = glucY(entry.mbg);
        graphGlucCvs.add({"type": "rect", "x": cm(x), "y": cm(y), "w": cm(size), "h": cm(size), "color": color});
      }
      for (TreatmentData t in day.treatments)
      {
        if (t.glucoseType.toLowerCase() == "finger")
        {
          double x = glucX(t.createdAt);
          double y = glucY((g.glucMGDL ? 1 : 18.02) * t.glucose);
          graphGlucCvs.add({"type": "rect", "x": cm(x), "y": cm(y), "w": cm(size), "h": cm(size), "color": color});
        }
      }

      dynamic points = [];
      List<dynamic> names = [];
      List<dynamic> nameBoxes = [];
      EntryData last = null;
      String colorText = colWeekDaysText[day.date.weekday - 1];
      String name = DatepickerPeriod.dowShortName(day.date);
      for (EntryData entry in day.entries)
      {
        double x = glucX(entry.time);
        double y = glucY(entry.gluc);
        if (entry.gluc < 0)
        {
          if (last != null && last.gluc >= 0)
          {
            graphGlucCvs.add(glucLine(points, color));
            points = [];
          }
        }
        else
        {
          points.add({"x": cm(x), "y": cm(y)});
        }

        if (showDaysInGraphic)
        {
          if ((last == null || entry.time.hour > last.time.hour) && entry.gluc > 0)
          {
            if (entry.time.hour % 2 == 1)
            {
              nameBoxes.add(
                {"type": "rect", "x": cm(x - 0.25), "y": cm(y - 0.2), "w": cm(0.5), "h": cm(0.4), "color": color});
              names.add({
                "relativePosition": {"x": cm(xo + x - 0.25), "y": cm(yo + y - 0.15)},
                "columns": [
                  {"width": cm(0.5), "text": name, "fontSize": fs(8), "color": colorText, "alignment": "center"}
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
      addLegendEntry(legend, color, "${fmtDate(day.date, null, false, true)}", isArea: false, lineWidth: lw * 3);
    }

    double yHigh = glucY(min(glucMax, src.status.settings.thresholds.bgTargetTop.toDouble()));
    double yLow = glucY(src.status.settings.thresholds.bgTargetBottom.toDouble());

    var limitLines = {
      "relativePosition": {"x": cm(xo), "y": cm(yo)},
      "canvas": [
        {
          "type": "rect",
          "x": cm(0.0),
          "y": cm(yHigh),
          "w": cm(24 * grid.colWidth),
          "h": cm(yLow - yHigh),
          "color": colTargetArea,
          "fillOpacity": 0.3
        },
        {
          "type": "line",
          "x1": cm(0.0),
          "y1": cm(yHigh),
          "x2": cm(24 * grid.colWidth),
          "y2": cm(yHigh),
          "lineWidth": cm(lw),
          "lineColor": colTargetArea
        },
        {
          "type": "line",
          "x1": cm(0.0),
          "y1": cm(yLow),
          "x2": cm(24 * grid.colWidth),
          "y2": cm(yLow),
          "lineWidth": cm(lw),
          "lineColor": colTargetArea
        },
        {"type": "rect", "x": 0, "y": 0, "w": 0, "h": 0, "color": "#000", "fillOpacity": 1}
      ]
    };
    return [headerFooter(), vertLegend, vertLines, horzLegend, horzLines, limitLines, graphGluc, legend.asOutput];
  }
}