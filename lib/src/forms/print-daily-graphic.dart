import 'dart:math' as math;
import 'dart:math';

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;

import 'base-print.dart';

class PrintDailyGraphic extends BasePrint
{
  @override
  String id = "daygraph";

  @override
  String name = Intl.message("Tagesgrafik");

  @override
  String title = Intl.message("Tagesgrafik");

  @override
  List<String> get imgList
  => ["nightscout", "katheter.print", "sensor.print"];

  @override
  bool get isPortrait
  => false;
  num lineWidth;
  double glucMax = 0.0;
  double profMax = 0.0;
  static double graphHeight = 7.0;
  static double graphWidth = 23.25;
  static double basalHeight = 3.0;
  static double basalWidth = graphWidth;

  double glucX(DateTime time)
  {
    return graphWidth / 1440 * (time.hour * 60 + time.minute);
  }

  double glucY(double value)
  => graphHeight / glucMax * (glucMax - value);

  double basalX(DateTime time)
  {
    return basalWidth / 1440 * (time.hour * 60 + time.minute);
  }

  double basalY(double value)
  => basalHeight / profMax * (profMax - value);

  PrintDailyGraphic()
  {
    init();
  }

  @override
  prepareData_(globals.ReportData vars)
  {
    return vars;
  }

  @override
  getFormData_(globals.ReportData src)
  async {
    var data = src.calc;

    lineWidth = cm(0.03);
    var ret = [];

    for (int i = 0; i < data.days.length; i++)
    {
      globals.DayData day = data.days[i];
      var page = getPage(day, src);
      ret.addAll(page);
      if (i < data.days.length - 1)ret.last["pageBreak"] = "after";
    }
    return ret;
  }

  getPage(globals.DayData day, globals.ReportData src)
  {
    double xo = xorg;
    double yo = yorg;
    titleInfo = fmtDate(day.date);
    glucMax = -1000.0;
    for (globals.EntryData entry in day.entries)
      glucMax = math.max(entry.gluc, glucMax);
    profMax = -1000.0;
    for (globals.ProfileEntryData entry in day.profile)
      profMax = math.max(entry.value, profMax);

    int gridLines = (glucMax / 50).ceil();
    double lineHeight = graphHeight / gridLines;
    double colWidth = graphWidth / 24;

    var vertLines = {"absolutePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    var horzLines = {"absolutePosition": {"x": cm(xo - 0.2), "y": cm(yo)}, "canvas": []};
    var horzLegend = {"stack": []};
    var vertLegend = {"stack": []};
    var graph = {"absolutePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    var pictures = {"absolutePosition": {"x": cm(xo), "y": cm(yo)}, "stack": []};

    List vertCvs = vertLines["canvas"] as List;
    List horzCvs = vertLines["canvas"] as List;
    List horzStack = horzLegend["stack"];
    List vertStack = vertLegend["stack"];
    List graphCvs = graph["canvas"];
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
    var area = {"type": "polyline", "lineWidth": cm(lw), "closePath": false, "lineColor": colValue, "points": []};
    List areaPoints = area["points"];
    for (globals.EntryData time in day.entries)
    {
      double x = glucX(time.time);
      double y = glucY(time.gluc);
      areaPoints.add({"x": cm(x), "y": cm(y)});
    }
    graphCvs.add(area);

    var cob = {
      "type": "polyline",
      "lineWidth": cm(lw),
      "closePath": true,
      "points": [],
      "lineColor": "#ff0000",
      "color": "#ffa0a0"
    };
    List cobPoints = cob["points"];
    for (globals.TreatmentData t in day.treatments)
    {
      double x, y;
      if (t.eventType.toLowerCase() == "temp basal")continue;
      if (g.isBeta && t.boluscalc != null && t.boluscalc.cob != 0)
      {
        x = glucX(t.createdAt);
        y = glucY(t.boluscalc.cob);
        if (cobPoints.length == 0)cobPoints.add({"x": cm(x), "y": cm(glucY(0.0))});
        cobPoints.add({"x": cm(x), "y": cm(y)});
      }

      if (t.eventType.toLowerCase() == "site change")
      {
        double x = xo + glucX(t.createdAt) - 0.3;
        double y = yo + graphHeight - 0.6;
        (pictures["stack"] as List).add(
          {"absolutePosition": {"x": cm(x), "y": cm(y)}, "image": "katheter.print", "width": cm(0.8)});
        (pictures["stack"] as List).add({
          "absolutePosition": {"x": cm(x + 0.33), "y": cm(y + 0.04)},
          "text": "${fmtTime(t.createdAt)}",
          "fontSize": "5",
          "color": "white"
        });
      }
      else if (t.eventType.toLowerCase() == "sensor change")
      {
        double x = xo + glucX(t.createdAt) - 0.3;
        double y = yo + graphHeight - 0.6;
        (pictures["stack"] as List).add(
          {"absolutePosition": {"x": cm(x), "y": cm(y)}, "image": "sensor.print", "width": cm(0.6)});
        (pictures["stack"] as List).add({
          "absolutePosition": {"x": cm(x + 0.0), "y": cm(y + 0.34)},
          "columns": [{"width": cm(0.6), "text": "${fmtTime(t.createdAt)}", "fontSize": "5", "color": "white", "alignment": "center"}]
        });
      }
      if (cobPoints.length > 0)cobPoints.add({"x": cobPoints.last["x"], "y": cobPoints.first["y"]});
      graphCvs.add(cob);
    }

    DateTime date = DateTime(day.date.year, day.date.month, day.date.day);
    globals.ProfileGlucData profile = src.profile(src, date);
    double yHigh = glucY(min(glucMax, src.status.settings.thresholds.bgTargetTop.toDouble()));
    double yLow = glucY(src.status.settings.thresholds.bgTargetBottom.toDouble());
    double targetValue = glucY((profile.targetHigh + profile.targetLow) / 2);
    var limitLines = {
      "absolutePosition": {"x": cm(xo), "y": cm(yo)},
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
          "y1": cm(targetValue),
          "x2": cm(24 * colWidth),
          "y2": cm(targetValue),
          "lineWidth": cm(lw),
          "lineColor": colTargetValue
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
/*
    List basalCvs = [];
    var dayBasal = {
      "stack": [
        {"absolutePosition": {"x": cm(xo), "y": cm(yo + graphHeight + 1.0)}, "canvas": basalCvs},
        {
          "absolutePosition": {"x": cm(xo), "y": cm(yo + graphHeight + basalHeight + 1.1)},
          "columns": [{"width": cm(basalWidth), "text": "${fmtNumber(day.ieBasalSum, 1, false)} ${msgInsulinUnit}", "fontSize": 20, "alignment": "center"}]
        },
      ]
    };
    double lastY = -1.0;
    areaPoints = [];
    area = {"type": "polyline", "lineWidth": cm(lw), "closePath": true, "lineColor": colBasal, "color": blendColor(colBasal, "ffffff", 0.7), "points": areaPoints};
    areaPoints.add({"x": cm(basalX(DateTime(0, 1, 1, 0, 0))), "y": cm(basalY(0.0))});
    for (globals.ProfileEntryData entry in day.profile)
    {
      double x = basalX(entry.time);
      double y = basalY(entry.value);
      if (lastY >= 0)areaPoints.add({"x": cm(x), "y": cm(lastY)});
      areaPoints.add({"x": cm(x), "y": cm(y)});
      lastY = y;
    }
    areaPoints.add({"x": cm(basalX(DateTime(0, 1, 1, 23, 59))), "y": cm(lastY)});
    areaPoints.add({"x": cm(basalX(DateTime(0, 1, 1, 23, 59))), "y": cm(basalY(0.0))});
    basalCvs.add(area);
*/
    var legend = {
      "absolutePosition": {"x": cm(xo), "y": cm(yo + lineHeight * gridLines + 2.0 + basalHeight)},
      "stack": []
    };
    addLegendEntry(legend, colValue, msgGlucosekurve, false);
    addLegendEntry(legend, colTargetArea, msgTargetArea);
    addLegendEntry(legend, colTargetValue, msgTargetValue, false);
    addLegendEntry(legend, colBasal, msgBasalrate, true);
    //blendColor(colBasal, "ffffff", 0.7)
    var profileBasal = getBasalGraph(day.basalData.store.listBasal, xo, yo, 0, null);
    var dayBasal = getBasalGraph(day.profile, xo, yo, day.ieBasalSum, blendColor(colBasal, "ffffff", 0.7));

    return [
      header,
      vertLegend,
      vertLines,
      horzLegend,
      horzLines,
      limitLines,
      graph,
      dayBasal,
      profileBasal,
      pictures,
      legend,
      footer()
    ];
  }

  getBasalGraph(List<globals.ProfileEntryData> data, double xo, double yo, double basalSum, String color)
  {
    var basalCvs = [];
    var ret = {"stack": [{"absolutePosition": {"x": cm(xo), "y": cm(yo + graphHeight + 1.0)}, "canvas": basalCvs},
    ]};
    if (basalSum != 0)ret["stack"].add({
      "absolutePosition": {"x": cm(xo), "y": cm(yo + graphHeight + basalHeight + 1.1)},
      "columns": [ {
        "width": cm(basalWidth),
        "text": "${fmtNumber(basalSum, 1, false)} ${msgInsulinUnit}",
        "fontSize": 20,
        "alignment": "center"
      }
      ]
    },);
    double lastY = -1.0;
    var areaPoints = [];
    var area = {
      "type": "polyline",
      "lineWidth": cm(lw),
      "closePath": color != null,
      "color": color,
      "lineColor": colBasal,
      "dash": color == null ? {"length": cm(0.1), "space": cm(0.05)} : {},
      "points": areaPoints,
//      "fillOpacity": opacity
    };

    if (color != null)areaPoints.add({"x": cm(basalX(DateTime(0, 1, 1, 0, 0))), "y": cm(basalY(0.0))});
    for (globals.ProfileEntryData entry in data)
    {
      double x = basalX(entry.time);
      double y = basalY(entry.value);
      if (lastY >= 0)areaPoints.add({"x": cm(x), "y": cm(lastY)});
      areaPoints.add({"x": cm(x), "y": cm(y)});
      lastY = y;
    }
    areaPoints.add({"x": cm(basalX(DateTime(0, 1, 1, 23, 59))), "y": cm(lastY)});
    if (color != null)areaPoints.add({"x": cm(basalX(DateTime(0, 1, 1, 23, 59))), "y": cm(basalY(0.0))});
    basalCvs.add(area);
//    basalCvs.add({"type": "rect", "x": 0, "y": 0, "w": 1, "h": 1, "fillOpacity": 1});
    return ret;
  }
}