import 'dart:math' as math;
import 'dart:math';

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/controls/datepicker/datepicker_component.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';

class PrintWeeklyGraphic extends BasePrint
{
  @override
  String id = "weekgraph";

  bool isSmall,
    sortReverse,
    showDaysInGraphic = true;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, msgParam1, boolValue: false),
    ParamInfo(1, msgParam2, boolValue: true),
    ParamInfo(2, msgParam3, boolValue: true),
  ];


  @override
  prepareData_(ReportData data)
  {
    isSmall = params[0].boolValue;
    sortReverse = params[1].boolValue;
    showDaysInGraphic = params[2].boolValue;
    pagesPerSheet = isSmall ? 4 : 1;
    return data;
  }

  @override
  String title = Intl.message("Wochengrafik");

  static String get msgParam1
  => Intl.message("Vier Grafiken pro Seite");
  static String get msgParam2
  => Intl.message("umgekehrte Sortierung");
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
  static int glucStep = 20;

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

    List<List<DayData>> list = List<List<DayData>>();
    list.add(List<DayData>());
    for (int i = 0; i < data.days.length; i++)
    {
      DayData day = data.days[i];
      if (day.date.weekday == g.period.firstDayOfWeek && list.last.length > 0)list.add(List<DayData>());
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
    }
  }

  dynamic glucLine(dynamic points, String color)
  => {"type": "polyline", "lineWidth": cm(lw * 2), "closePath": false, "lineColor": color, "points": points};

  _getPage(List<DayData> days, ReportData src)
  {
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
    int gridLines = (glucMax / glucStep).ceil();
    double lineHeight = graphHeight / gridLines;
    double colWidth = graphWidth / 24;

    var vertLines = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    var horzLines = {"relativePosition": {"x": cm(xo - 0.2), "y": cm(yo)}, "canvas": []};
    var horzLegend = {"stack": []};
    var vertLegend = {"stack": []};
    List graphGlucCvs = [];
    List graphGlucStack = [{"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": graphGlucCvs}];
    var graphGluc = {"stack": graphGlucStack};

    List vertCvs = vertLines["canvas"] as List;
    List horzCvs = vertLines["canvas"] as List;
    List horzStack = horzLegend["stack"];
    List vertStack = vertLegend["stack"];
    // draw vertical lines with times below graphic
    for (var i = 0; i < 25; i++)
    {
      vertCvs.add({
        "type": "line",
        "x1": cm(i * colWidth),
        "y1": cm(0),
        "x2": cm(i * colWidth),
        "y2": cm(graphBottom),
        //cm(lineHeight * gridLines + 0.25),
        "lineWidth": cm(lw),
        "lineColor": i > 0 && i < 24 ? lc : lcFrame
      });
      if (i < 24)horzStack.add({
        "relativePosition": {"x": cm(xo + i * colWidth), "y": cm(yo + graphBottom + 0.05)},
        "text": fmtTime(i),
        "fontSize": fs(8)
      });
    }

    glucMax = 0.0;
    for (var i = 0; i <= gridLines; i++)
    {
      horzCvs.add({
        "type": "line",
        "x1": cm(-0.2),
        "y1": cm((gridLines - i) * lineHeight - lw / 2),
        "x2": cm(24 * colWidth + 0.2),
        "y2": cm((gridLines - i) * lineHeight - lw / 2),
        "lineWidth": cm(lw),
        "lineColor": i > 0 ? lc : lcFrame
      });

      if (i > 0)
      {
        String text = "${glucFromData(fmtNumber(i * glucStep, 0))}\n${getGlucInfo()["unit"]}";
        vertStack.add({
          "relativePosition": {"x": cm(xo - 1.1), "y": cm(yo + (gridLines - i) * lineHeight - 0.25)},
          "text": text,
          "fontSize": fs(8)
        });
        vertStack.add({
          "relativePosition": {"x": cm(xo + 24 * colWidth + 0.3), "y": cm(yo + (gridLines - i) * lineHeight - 0.25)},
          "text": text,
          "fontSize": fs(8)
        });
      }
    }
    glucMax = (gridLines * glucStep).toDouble();
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
          double y = glucY(t.glucose);
          graphGlucCvs.add(
            {"type": "rect", "x": cm(x), "y": cm(y), "w": cm(size), "h": cm(size), "color": color});
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
                  {"width": cm(0.5), "text": name, "fontSize": fs(8), "color": colorText, "alignment": "center"}]
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
          "w": cm(24 * colWidth),
          "h": cm(yLow - yHigh),
          "color": colTargetArea,
          "fillOpacity": 0.3
        },
        {
          "type": "line",
          "x1": cm(0.0),
          "y1": cm(yHigh),
          "x2": cm(24 * colWidth),
          "y2": cm(yHigh),
          "lineWidth": cm(lw),
          "lineColor": colTargetArea
        },
        {
          "type": "line",
          "x1": cm(0.0),
          "y1": cm(yLow),
          "x2": cm(24 * colWidth),
          "y2": cm(yLow),
          "lineWidth": cm(lw),
          "lineColor": colTargetArea
        },
        {"type": "rect", "x": 0, "y": 0, "w": 0, "h": 0, "color": "#000", "fillOpacity": 1}
      ]
    };
    var y = yo + lineHeight * gridLines;
    y += basalTop;

    return [headerFooter(), vertLegend, vertLines, horzLegend, horzLines, limitLines, graphGluc, legend.asOutput];
  }
}