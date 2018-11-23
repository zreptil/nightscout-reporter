import 'dart:math' as math;

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';

class PercentileData
{
  DateTime time;
  List<EntryData> _entries = List<EntryData>();

  PercentileData(this.time);

  void add(EntryData entry)
  {
    EntryData clone = entry.copy;
    clone.time = time;
    _entries.add(clone);
  }

  double get max
  {
    double ret = -1.0;
    for (EntryData entry in _entries)
    {
      if (entry.gluc > 0)ret = math.max(entry.gluc, ret);
    }
    return ret;
  }

  double get min
  {
    double ret = 10000.0;
    for (EntryData entry in _entries)
    {
      if (entry.gluc > 0)ret = math.min(entry.gluc, ret);
    }
    return ret;
  }

  double percentile(int value)
  => Globals.percentile(_entries, value);
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
  double get gridHeight
  => height - 11.0;
  double get gridWidth
  => width - 7.0;

  double glucY(double value)
  => gridHeight / glucMax * (glucMax - value);

  double glucX(DateTime time)
  => gridWidth / 1440 * (time.hour * 60 + time.minute);

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
  void fillPages(ReportData src, List<List<dynamic>> pages)
  async {
    double xo = xorg;
    double yo = yorg;
    var data = src.calc;
    lineWidth = cm(0.03);

    titleInfo = titleInfoBegEnd(src);
    List<PercentileData> percList = List<PercentileData>();
    for (EntryData entry in data.entries)
    {
      if (entry.gluc < 0)continue;
      DateTime time = DateTime(0, 1, 1, entry.time.hour, entry.time.minute);
      PercentileData src = percList.firstWhere((e)
      => e.time == time, orElse: ()
      {
        percList.add(PercentileData(time));
        return percList.last;
      });
      src.add(entry);
    }

    percList.sort((a, b)
    => a.time.compareTo(b.time));

    glucMax = 0.0;
    for (PercentileData data in percList)
      glucMax = math.max(data.percentile(90), glucMax);

    int gridLines = (glucMax / 50).ceil();
    double lineHeight = gridHeight / gridLines;
    double colWidth = gridWidth / 24;

    var vertLines = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    var horzLines = {"relativePosition": {"x": cm(xo - 0.2), "y": cm(yo)}, "canvas": []};
    var horzLegend = {"stack": []};
    var vertLegend = {"stack": []};
    var graph = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};

    List vertCvs = vertLines["canvas"] as List;
    List horzCvs = vertLines["canvas"] as List;
    List horzStack = horzLegend["stack"];
    List vertStack = vertLegend["stack"];
    for (var i = 0; i < 25; i++)
    {
      vertCvs.add({
        "type": "line",
        "x1": cm(i * colWidth),
        "y1": cm(0),
        "x2": cm(i * colWidth),
        "y2": cm(lineHeight * gridLines + 0.25),
        "lineWidth": cm(lw),
        "lineColor": i > 0 && i < 24 ? lc : lcFrame
      });
      if (i < 24)horzStack.add({
        "relativePosition": {"x": cm(xo + i * colWidth), "y": cm(yo + gridLines * lineHeight + 0.3)},
        "text": fmtTime(i),
        "fontSize": fs(8)
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
    glucMax = gridLines * 50.0;
    double yHigh = glucY(src
      .profile(DateTime.now())
      .targetHigh);
    double yLow = glucY(src
      .profile(DateTime.now())
      .targetLow);
    var limitLines = {
      "relativePosition": {"x": cm(xo), "y": cm(yo)},
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
    var percGraph = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    var percLegend = LegendData(cm(xo), cm(yo + lineHeight * gridLines + 1.0), cm(8.0), 100);

    if (addPercentileGraph(percGraph, percList, 10, 90, "#aaf"))addLegendEntry(percLegend, "#aaf", msgPercentile1090);
    if (addPercentileGraph(percGraph, percList, 25, 75, "#88f"))addLegendEntry(percLegend, "#88f", msgPercentile2575);
    addPercentileGraph(percGraph, percList, 50, 50, "#000");

    addLegendEntry(percLegend, "#000", msgMedian, isArea: false);
    addLegendEntry(percLegend, "#0f0", msgTargetArea(glucFromData(src
      .profile(DateTime.now())
      .targetLow), glucFromData(src
      .profile(DateTime.now())
      .targetHigh), getGlucInfo()["unit"]));
    pages.add(
      [headerFooter(), vertLegend, vertLines, horzLegend, horzLines, limitLines, percGraph, graph, percLegend.asOutput
      ]);
  }

  bool addPercentileGraph(var percGraph, List<PercentileData> percList, int low, int high, String color)
  {
    bool ret = high == low;
    var ptsLow = [];
    var ptsHigh = [];

    double x = 0.0;
    for (PercentileData entry in percList)
    {
      if (entry.percentile(high) != entry.percentile(low))ret = true;
      x = glucX(entry.time);
      ptsHigh.add({"x": cm(x), "y": cm(glucY(entry.percentile(high)))});
      if (high != low)ptsLow.insert(0, {"x": cm(x), "y": cm(glucY(entry.percentile(low)))});
    }
    x = glucX(DateTime(0, 1, 1, 23, 59, 59));
    ptsHigh.add({"x": cm(x), "y": cm(glucY(percList.first.percentile(high)))});
    if (high != low)ptsLow.insert(0, {"x": cm(x), "y": cm(glucY(percList.first.percentile(low)))});
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

    return ret;
  }
}