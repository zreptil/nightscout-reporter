import 'dart:math' as math;
import 'dart:math';

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';

class PrintDailyGraphic extends BasePrint
{
  @override
  String id = "daygraph";

  bool showPictures, showInsulin, showCarbs, showBasalDay, showBasalProfile;

  @override
  List<ParamInfo> params = [
    ParamInfo("Symbole (Katheter etc.)", boolValue: true),
    ParamInfo("Insulin", boolValue: true),
    ParamInfo("Kohlenhydrate", boolValue: true),
    ParamInfo("Tages-Basalrate", boolValue: true),
    ParamInfo("Profil-Basalrate", boolValue: true),
  ];

  @override
  prepareData_(ReportData data)
  {
    showPictures = params[0].boolValue;
    showInsulin = params[1].boolValue;
    showCarbs = params[2].boolValue;
    showBasalDay = params[3].boolValue;
    showBasalProfile = params[4].boolValue;
    return data;
  }

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
  double carbMax = 200.0;
  double bolusMax = 50.0;
  static double graphHeight;
  static double graphWidth = 23.25;
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

  double basalX(DateTime time)
  {
    return basalWidth / 1440 * (time.hour * 60 + time.minute);
  }

  double basalY(double value)
  => profMax != 0 ? basalHeight / profMax * (profMax - value) : 0.0;

  PrintDailyGraphic()
  {
    init();
  }

  @override
  getFormData_(ReportData src)
  async {
    var data = src.calc;

    graphHeight = 7.0;
    if (!showBasalDay && !showBasalProfile)graphHeight += basalHeight + 1;

    lineWidth = cm(0.03);
    var ret = [];

    for (int i = 0; i < data.days.length; i++)
    {
      DayData day = data.days[i];
      var page = getPage(day, src);
      ret.addAll(page);
      if (i < data.days.length - 1)ret.last["pageBreak"] = "after";
    }
    return ret;
  }

  getPage(DayData day, ReportData src)
  {
    double xo = xorg;
    double yo = yorg;
    titleInfo = fmtDate(day.date);
    glucMax = -1000.0;
    for (EntryData entry in day.entries)
      glucMax = math.max(entry.gluc, glucMax);
    profMax = -1000.0;
    for (ProfileEntryData entry in day.profile)
      profMax = math.max(entry.value, profMax);

    int gridLines = (glucMax / 50).ceil();
    double lineHeight = graphHeight / gridLines;
    double colWidth = graphWidth / 24;

    var vertLines = {"absolutePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    var horzLines = {"absolutePosition": {"x": cm(xo - 0.2), "y": cm(yo)}, "canvas": []};
    var horzLegend = {"stack": []};
    var vertLegend = {"stack": []};
    var graphGluc = {"absolutePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    var graphLegend = {"absolutePosition": {"x": cm(xo), "y": cm(yo)}, "stack": []};
    var graphCarbs = {
      "stack": [
        {"absolutePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []},
        {"absolutePosition": {"x": cm(xo), "y": cm(yo)}, "stack": []}
      ]
    };
    var graphInsulin = {
      "stack": [
        {"absolutePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []},
        {"absolutePosition": {"x": cm(xo), "y": cm(yo)}, "stack": []}
      ]
    };
    var pictures = {"absolutePosition": {"x": cm(xo), "y": cm(yo)}, "stack": []};

    List vertCvs = vertLines["canvas"] as List;
    List horzCvs = vertLines["canvas"] as List;
    List horzStack = horzLegend["stack"];
    List vertStack = vertLegend["stack"];
    List graphGlucCvs = graphGluc["canvas"];
    List graphText = graphLegend["stack"];
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
    for (EntryData time in day.entries)
    {
      double x = glucX(time.time);
      double y = glucY(time.gluc);
      areaPoints.add({"x": cm(x), "y": cm(y)});
    }
    graphGlucCvs.add(area);

    bool hasCatheterChange = false;
    bool hasSensorChange = false;
    bool hasCarbs = false;
    bool hasBolus = false;
    for (TreatmentData t in day.treatments)
    {
      double x, y;
      String type = t.eventType.toLowerCase();
      if (type == "temp basal")continue;
      if (t.carbs > 0 && showCarbs)
      {
        x = glucX(t.createdAt);
        y = carbY(t.carbs);
        (graphCarbs["stack"][0]["canvas"] as List).add({
          "type": "line",
          "x1": cm(x),
          "y1": cm(y),
          "x2": cm(x),
          "y2": cm(graphHeight - lw),
          "lineColor": colCarbs,
          "lineWidth": cm(0.1),
        });
        (graphCarbs["stack"][1]["stack"] as List).add({
          "relativePosition": {"x": cm(x - 0.5), "y": cm(y - 0.2),},
          "text": "${msgKH(fmtNumber(t.carbs))}",
          "fontSize": 8,
        });
        hasCarbs = true;
      }
      if (t.bolusInsulin > 0 && showInsulin)
      {
        x = glucX(t.createdAt);
        y = bolusY(t.bolusInsulin);
        (graphInsulin["stack"][0]["canvas"] as List).add({
          "type": "line",
          "x1": cm(x),
          "y1": cm(0),
          "x2": cm(x),
          "y2": cm(y),
          "lineColor": colBolus,
          "lineWidth": cm(0.1),
        });
        (graphInsulin["stack"][1]["stack"] as List).add({
          "relativePosition": {"x": cm(x - 0.3), "y": cm(y + 0.05),},
          "text": "${fmtNumber(t.bolusInsulin, 1)} ${msgInsulinUnit}",
          "fontSize": 8,
          "color": colBolus
        });
        hasBolus = true;
      }

      if (type == "site change" && showPictures)
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
        hasCatheterChange = true;
      }
      else if (type == "sensor change" && showPictures)
      {
        double x = xo + glucX(t.createdAt) - 0.3;
        double y = yo + graphHeight - 0.6;
        (pictures["stack"] as List).add(
          {"absolutePosition": {"x": cm(x), "y": cm(y)}, "image": "sensor.print", "width": cm(0.6)});
        (pictures["stack"] as List).add({
          "absolutePosition": {"x": cm(x + 0.0), "y": cm(y + 0.34)},
          "columns": [ {
            "width": cm(0.6),
            "text": "${fmtTime(t.createdAt)}",
            "fontSize": "5",
            "color": "white",
            "alignment": "center"
          }
          ]
        });
        hasSensorChange = true;
      }
/*
      if (cobPoints.length > 0)cobPoints.add({"x": cobPoints.last["x"], "y": cobPoints.first["y"]});
      graphCvs.add(cob);
*/
    }

    DateTime date = DateTime(day.date.year, day.date.month, day.date.day);
    ProfileGlucData profile = src.profile(date);
    double yHigh = glucY(min(glucMax, src.status.settings.thresholds.bgTargetTop.toDouble()));
    double yLow = glucY(src.status.settings.thresholds.bgTargetBottom.toDouble());
    List targetValues = [];
    double lastTarget = -1;
    for (var i = 0; i < profile.store.listTargetLow.length; i++)
    {
      double low = profile.store.listTargetLow[i].value;
      double high = profile.store.listTargetHigh[i].value;
      double x = glucX(profile.store.listTargetLow[i].time);
      double y = glucY((low + high) / 2);
      if (lastTarget >= 0)targetValues.add({"x": cm(x), "y": cm(lastTarget)});
      targetValues.add({"x": cm(x), "y": cm(y)});
      lastTarget = y;
    }
    targetValues.add({
      "x": cm(glucX(DateTime(
        0,
        1,
        1,
        23,
        59,
        59,
        999))),
      "y": cm(lastTarget)
    });

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
          "type": "polyline",
          "lineWidth": cm(lw),
          "closePath": false,
          "lineColor": colTargetValue,
          "points": targetValues
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
    if (showBasalProfile || showBasalDay)y += 2.2 + basalHeight;
    else
      y += 1;
    LegendData legend = LegendData(cm(xo), cm(y), cm(8.0), 5);
    addLegendEntry(legend, colValue, msgGlucosekurve, isArea: false);
    if (hasCarbs)addLegendEntry(legend, colCarbs, msgCarbs, isArea: false, lineWidth: 0.1);
    if (hasBolus)addLegendEntry(
      legend, colBolus, msgBolusInsulin("${fmtNumber(day.ieBolusSum, 1, false)} ${msgInsulinUnit}"), isArea: false,
      lineWidth: 0.1);
    String text;
    if (showBasalDay)
    {
      text = "${fmtNumber(day.ieBasalSum, 1, false)} ${msgInsulinUnit}";
      addLegendEntry(legend, colBasalDay, msgBasalrateDay(text), isArea: true);
    }
    if (showBasalProfile)
    {
      text = "${fmtNumber(day.basalData.store.ieBasalSum, 1, false)} ${msgInsulinUnit}";
      addLegendEntry(legend, colBasalProfile, msgBasalrateProfile(text), isArea: false);
    }
    String v1 = glucFromData(src.status.settings.thresholds.bgTargetBottom.toDouble());
    String v2 = glucFromData(src.status.settings.thresholds.bgTargetTop.toDouble());
    addLegendEntry(legend, colTargetArea, msgTargetArea(v1, v2, getGlucInfo()["unit"]));
    addLegendEntry(legend, colTargetValue,
      msgTargetValue("${glucFromData((profile.targetHigh + profile.targetLow) / 2)} ${getGlucInfo()["unit"]}"),
      isArea: false);
    if (hasCatheterChange)addLegendEntry(
      legend, "", msgCatheterChange, image: "katheter.print", imgWidth: 0.5, imgOffsetY: 0.15);
    if (hasSensorChange)addLegendEntry(legend, "", msgSensorChange, image: "sensor.print", imgWidth: 0.5);
    //blendColor(colBasal, "ffffff", 0.7)
    var profileBasal = showBasalProfile ? getBasalGraph(day, true, showBasalDay, xo, yo) : null;
    var dayBasal = showBasalDay ? getBasalGraph(day, false, false, xo, yo) : null;

    return [
      header,
      vertLegend,
      vertLines,
      horzLegend,
      horzLines,
      limitLines,
      pictures,
      graphGluc,
      graphInsulin,
      graphCarbs,
      graphLegend,
      dayBasal,
      profileBasal,
      legend.asOutput,
      footer()
    ];
  }

  getBasalGraph(DayData day, bool useProfile, bool displayProfile, double xo, double yo)
  {
    List<ProfileEntryData> data;
    double basalSum;
    String color;

    if (useProfile)
    {
      data = day.basalData.store.listBasal;
      basalSum = day.basalData.store.ieBasalSum;
      color = colBasalProfile;
    }
    else
    {
      data = day.profile;
      basalSum = day.ieBasalSum;
      color = colBasalDay;
    }
    var basalCvs = [];
    var ret = {"stack": [{"absolutePosition": {"x": cm(xo), "y": cm(yo + graphHeight + 1.0)}, "canvas": basalCvs}]};
    if (basalSum != 0)ret["stack"].add({
      "absolutePosition": {"x": cm(xo), "y": cm(yo + graphHeight + basalHeight + 1.1)},
      "columns": [ {
        "width": cm(basalWidth),
        "text": "${fmtNumber(basalSum, 1, false)} ${msgInsulinUnit}",
        "fontSize": 20,
        "alignment": displayProfile ? "right" : "left",
        "color": color
      }
      ]
    },);
    double lastY = -1.0;
    var areaPoints = [];
    var area = {
      "type": "polyline",
      "lineWidth": cm(lw),
      "closePath": !displayProfile,
      "color": !displayProfile ? blendColor(color, "#ffffff", 0.7) : null,
      "lineColor": color,
      "dash": displayProfile ? {"length": cm(0.1), "space": cm(0.05)} : {},
      "points": areaPoints,
//      "fillOpacity": opacity
    };

    if (!displayProfile)areaPoints.add({"x": cm(basalX(DateTime(0, 1, 1, 0, 0))), "y": cm(basalY(0.0))});
    for (ProfileEntryData entry in data)
    {
      double x = basalX(entry.time);
      double y = basalY(entry.value);
      if (lastY >= 0)areaPoints.add({"x": cm(x), "y": cm(lastY)});
      areaPoints.add({"x": cm(x), "y": cm(y)});
      lastY = y;
    }
    if (lastY >= 0)areaPoints.add({"x": cm(basalX(DateTime(0, 1, 1, 23, 59))), "y": cm(lastY)});
    if (!displayProfile)areaPoints.add({"x": cm(basalX(DateTime(0, 1, 1, 23, 59))), "y": cm(basalY(0.0))});
    basalCvs.add(area);
//    basalCvs.add({"type": "rect", "x": 0, "y": 0, "w": 1, "h": 1, "fillOpacity": 1});
    return ret;
  }
}