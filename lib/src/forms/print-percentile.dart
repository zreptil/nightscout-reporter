import 'dart:math' as math;

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';

class PercentileData
{
  DateTime time;
  List<EntryData> entries = List<EntryData>();

  PercentileData(this.time);

  double get max
  {
    double ret = -1000.0;
    for (EntryData entry in entries)
    {
      if (entry.gluc > 0)ret = math.max(entry.gluc, ret);
    }
    return ret;
  }

  double get min
  {
    double ret = 10000000.0;
    for (EntryData entry in entries)
    {
      if (entry.gluc > 0)ret = math.min(entry.gluc, ret);
    }
    return ret;
  }

  double percentile(int value)
  => Globals.percentile(entries, value);
}

class PrintPercentile extends BasePrint
{
  @override
  String id = "percentile";

  @override
  String name = Intl.message("Perzentil Diagramm");

  @override
  String title = Intl.message("Glukose Perzentil Diagramm");

  @override
  bool get isPortrait
  => false;
  num lineWidth;
  String colText = "#080";
  String colLine = "#606060";
  String colBasal = "#0097a7";
  String colBasalFont = "#fff";
  double glucMax = 0.0;
  double gridHeight = 10.0;
  double gridWidth = 22.9;

  double glucY(double value)
  => gridHeight / glucMax * (glucMax - value);

  double glucX(DateTime time)
  => gridWidth / 1440 * (time.hour * 60 + time.minute);

  get msgPercentile1090
  => Intl.message("10% - 90% der Werte");
  get msgPercentile2575
  => Intl.message("25% - 75% der Werte");

  PrintPercentile()
  {
    init();
  }

  @override
  prepareData_(ReportData vars)
  {
    return vars;
  }

  @override
  getFormData_(ReportData src)
  async {
    double xo = xorg;
    double yo = yorg;
    var data = src.calc;
    lineWidth = cm(0.03);

    titleInfo = "${fmtDate(src.begDate)} - ${fmtDate(src.endDate)}";
    List<EntryData> times = data.entries;
    Map<DateTime, PercentileData> percList = Map<DateTime, PercentileData>();
    for (EntryData entry in times)
    {
      DateTime key = DateTime(0, 1, 1, entry.time.hour, entry.time.minute);
      if (!percList.containsKey(key))percList[key] = PercentileData(key);
      percList[key].entries.add(entry);
    }

    glucMax = 0.0;
    for (PercentileData data in percList.values)
      glucMax = math.max(data.percentile(90), glucMax);

    int gridLines = (glucMax / 50).ceil();
    double lineHeight = gridHeight / gridLines;
    double colWidth = gridWidth / 24;

    var vertLines = {"absolutePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    var horzLines = {"absolutePosition": {"x": cm(xo - 0.2), "y": cm(yo)}, "canvas": []};
    var horzLegend = {"stack": []};
    var vertLegend = {"stack": []};
    var graph = {"absolutePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};

    List vertCvs = vertLines["canvas"] as List;
    List horzCvs = vertLines["canvas"] as List;
    List horzStack = horzLegend["stack"];
    List vertStack = vertLegend["stack"];
    for (var i = 0; i < 25; i++)
    {
      vertCvs.add({
        "type": "line",
        "x1": cm(i * colWidth),
        "y1": 0,
        "x2": cm(i * colWidth),
        "y2": cm(lineHeight * gridLines + 0.25),
        "lineWidth": cm(lw),
        "lineColor": i > 0 && i < 24 ? lc : lcFrame
      });
      if (i < 24)horzStack.add({
        "absolutePosition": {"x": cm(xo + i * colWidth), "y": cm(yo + gridLines * lineHeight + 0.3)},
        "text": fmtTime(i),
        "fontSize": "8"
      });
    }

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
        String text = "${glucFromData(fmtNumber(i * 50, 0))}\n${getGlucInfo()["unit"]}";
        vertStack.add({
          "absolutePosition": {"x": cm(xo - 1.1), "y": cm(yo + (gridLines - i) * lineHeight - 0.25)},
          "text": text,
          "fontSize": "8"
        });
        vertStack.add({
          "absolutePosition": {"x": cm(xo + 24 * colWidth + 0.3), "y": cm(yo + (gridLines - i) * lineHeight - 0.25)},
          "text": text,
          "fontSize": "8"
        });
      }
    }
    glucMax = gridLines * 50.0;
    double yHigh = glucY(src
      .profile(DateTime.now())
      .targetHigh);
    double yLow = glucY(src
      .profile(DateTime.now())
      .targetLow);
    var limitLines = {
      "absolutePosition": {"x": cm(xo), "y": cm(yo)},
      "canvas": [
        {
          "type": "rect",
          "x": cm(0.0),
          "y": cm(yHigh),
          "w": cm(24 * colWidth),
          "h": cm(yLow - yHigh),
          "color": "#0f0",
          "fillOpacity": 0.5
        },
        {
          "type": "line",
          "x1": cm(0.0),
          "y1": cm(yHigh),
          "x2": cm(24 * colWidth),
          "y2": cm(yHigh),
          "lineWidth": cm(lw),
          "lineColor": "#0a0"
        },
        {
          "type": "line",
          "x1": cm(0.0),
          "y1": cm(yLow),
          "x2": cm(24 * colWidth),
          "y2": cm(yLow),
          "lineWidth": cm(lw),
          "lineColor": "#0a0"
        },
        {"type": "rect", "x": 0, "y": 0, "w": 0, "h": 0, "color": "#000", "fillOpacity": 1}
      ]
    };
    var percGraph = {"absolutePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    var percLegend = {"absolutePosition": {"x": cm(xo), "y": cm(yo + lineHeight * gridLines + 1.0)}, "stack": []};

    addPercentileGraph(percGraph, percList, 10, 90, "#aaf");
    addLegendEntry(percLegend, "#aaf", msgPercentile1090);
    addPercentileGraph(percGraph, percList, 25, 75, "#88f");
    addLegendEntry(percLegend, "#88f", msgPercentile2575);
    addPercentileGraph(percGraph, percList, 50, 50, "#000");
    addLegendEntry(percLegend, "#000", msgMedian, isArea: false);
    addLegendEntry(percLegend, "#0f0", msgTargetArea(src
      .profile(DateTime.now())
      .targetLow, src
      .profile(DateTime.now())
      .targetHigh));
    return [header, vertLegend, vertLines, horzLegend, horzLines, limitLines, percGraph, graph, percLegend, footer(),
    ];
  }

  addPercentileGraph(var percGraph, Map<DateTime, PercentileData> percList, int low, int high, String color)
  {
    var ptsLow = [];
    var ptsHigh = [];

    double x = 0.0;
    for (PercentileData entry in percList.values)
    {
      x = glucX(entry.time);
      ptsHigh.add({"x": cm(x), "y": cm(glucY(entry.percentile(high)))});
      if (high != low)ptsLow.insert(0, {"x": cm(x), "y": cm(glucY(entry.percentile(low)))});
//        ptsHigh.add({"x": cm(x), "y": cm(glucY(entry.median))});
    }
    x = glucX(DateTime(0, 1, 1, 23, 59, 59));
    ptsHigh.add({"x": cm(x), "y": cm(glucY(percList.values.first.percentile(high)))});
    if (high != low)ptsLow.insert(0, {"x": cm(x), "y": cm(glucY(percList.values.first.percentile(low)))});
    var area = {"type": "polyline", "lineWidth": cm(lw), "closePath": high != low, "fillOpacity": 0.5, "points": []};
    (area["points"] as List).addAll(ptsHigh);
    if (high != low)
    {
      area["color"] = color;
      (area["points"] as List).addAll(ptsLow);
    }
    (percGraph["canvas"] as List).add(area);
    (percGraph["canvas"] as List).add(
      {"type": "rect", "x": 0, "y": 0, "w": 0, "h": 0, "color": "#000", "fillOpacity": 1});
    (percGraph["canvas"] as List).add(
      {"type": "polyline", "lineWidth": cm(lw), "closePath": false, "lineColor": color, "points": ptsHigh});
    (percGraph["canvas"] as List).add(
      {"type": "polyline", "lineWidth": cm(lw), "closePath": false, "lineColor": color, "points": ptsLow});
  }
}