import 'dart:math' as math;
import 'dart:math';

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';

class PrintDailyGraphic extends BasePrint
{
  @override
  String id = "daygraph";

  bool showPictures, showInsulin, showCarbs, showBasalDay, showBasalProfile, showLegend, isPrecise, isSmall, showNotes,
    sortReverse, showGlucTable, showSMBatGluc;
  int get _precision
  => isPrecise ? 2 : 1;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, msgParam1, boolValue: true),
    ParamInfo(1, msgParam2, boolValue: true),
    ParamInfo(3, msgParam3, boolValue: true),
    ParamInfo(4, msgParam4, boolValue: true),
    ParamInfo(5, msgParam5, boolValue: true),
    ParamInfo(6, msgParam6, boolValue: false),
    ParamInfo(10, msgParam7, boolValue: false),
    ParamInfo(8, msgParam8, boolValue: true),
    ParamInfo(7, msgParam9, boolValue: true),
    ParamInfo(9, msgParam10, boolValue: false),
    ParamInfo(11, msgParam11, boolValue: true),
    ParamInfo(2, msgParam12, boolValue: true),
  ];


  @override
  prepareData_(ReportData data)
  {
    showPictures = params[0].boolValue;
    showInsulin = params[1].boolValue;
    showCarbs = params[2].boolValue;
    showBasalDay = params[3].boolValue;
    showBasalProfile = params[4].boolValue;
    isPrecise = params[5].boolValue;
    isSmall = params[6].boolValue;
    showLegend = params[7].boolValue;
    showNotes = params[8].boolValue;
    sortReverse = params[9].boolValue;
    showGlucTable = params[10].boolValue;
    showSMBatGluc = params[11].boolValue;
    return data;
  }

  @override
  String name = Intl.message("Tagesgrafik");

  @override
  String title = Intl.message("Tagesgrafik");

  static String get msgParam1
  => Intl.message("Symbole (Katheter etc.)");
  static String get msgParam2
  => Intl.message("Insulin");
  static String get msgParam3
  => Intl.message("Kohlenhydrate");
  static String get msgParam4
  => Intl.message("Tages-Basalrate");
  static String get msgParam5
  => Intl.message("Profil-Basalrate");
  static String get msgParam6
  => Intl.message("Basal mit zwei Nachkommastellen");
  static String get msgParam7
  => Intl.message("Vier Grafiken pro Seite");
  static String get msgParam8
  => Intl.message("Legende");
  static String get msgParam9
  => Intl.message("Notizen");
  static String get msgParam10
  => Intl.message("umgekehrte Sortierung");
  static String get msgParam11
  => Intl.message("Tabelle mit Glukosewerten");
  static String get msgParam12
  => Intl.message("SMB an der Kurve platzieren");

  @override
  List<String> get imgList
  => ["nightscout", "katheter.print", "sensor.print"];

  @override
  double get scale
  => isSmall ?? false ? (g.isLocal ? 0.25 : 0.5) : 1.0;

  @override
  bool get isPortrait
  => false;
  num lineWidth;
  double glucMax = 0.0;
  double profMax = 0.0;
  double carbMax = 200.0;
  double bolusMax = 50.0;
  double graphHeight;
  double graphBottom;
  static double graphWidth = 23.25;
  static double notesTop = 0.6;
  static double notesHeight = 0.4;
  static double basalTop;
  static double basalHeight = 3.0;
  static double basalWidth = graphWidth;
  double glucTableHeight = 0.6;

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

    graphHeight = 6.5;
    if (!showBasalDay && !showBasalProfile)graphHeight += basalHeight + 1;
    if (!showLegend) graphHeight += 2.5;
    basalTop = 2.0;
    if (!showNotes)basalTop -= notesHeight;
    graphBottom = graphHeight;
    if (showGlucTable)
    {
      graphHeight -= glucTableHeight;
    }

    lineWidth = cm(0.03);
    var ret = [];
    offsetX = 0.0;
    offsetY = 0.0;

    for (int i = 0; i < data.days.length; i++)
    {
      DayData day = data.days[sortReverse ? data.days.length - 1 - i : i];
      var page = getPage(day, src);
      ret.addAll(page);
      if (i < data.days.length - 1)
      {
        if (!isSmall || (offsetY == height && offsetX == width))
        {
          ret.last["pageBreak"] = "after";
          offsetX = 0.0;
          offsetY = 0.0;
        }
        else if (offsetX == width)
        {
          offsetX = 0.0;
          offsetY += height;
        }
        else
        {
          offsetX = width;
        }
      }
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
    for (EntryData entry in day.bloody)
      glucMax = math.max(entry.mbg, glucMax);
    profMax = -1000.0;
    for (ProfileEntryData entry in day.profile)
      profMax = math.max(entry.value, profMax);

    int gridLines = (glucMax / 50).ceil();
    double lineHeight = graphHeight / gridLines;
    double colWidth = graphWidth / 24;

    var vertLines = {"absolutePosition": {"x": cmx(xo), "y": cmy(yo)}, "canvas": []};
    var horzLines = {"absolutePosition": {"x": cmx(xo - 0.2), "y": cmy(yo)}, "canvas": []};
    var horzLegend = {"stack": []};
    var vertLegend = {"stack": []};
    var graphGluc = {"absolutePosition": {"x": cmx(xo), "y": cmy(yo)}, "canvas": []};
    var graphLegend = {"absolutePosition": {"x": cmx(xo), "y": cmy(yo)}, "stack": []};
    var glucTable = {"absolutePosition": {"x": cmx(xo), "y": cmy(yo + graphHeight)}, "stack": []};
    var glucTableCvs = {"absolutePosition": {"x": cmx(xo), "y": cmy(yo + graphHeight)}, "canvas": []};
    var graphCarbs = {
      "stack": [
        {"absolutePosition": {"x": cmx(xo), "y": cmy(yo)}, "canvas": []},
        {"absolutePosition": {"x": cmx(xo), "y": cmy(yo)}, "stack": []}
      ]
    };
    var graphInsulin = {
      "stack": [
        {"absolutePosition": {"x": cmx(xo), "y": cmy(yo)}, "canvas": []},
        {"absolutePosition": {"x": cmx(xo), "y": cmy(yo)}, "stack": []}
      ]
    };
    var pictures = {"absolutePosition": {"x": cmx(xo), "y": cmy(yo)}, "stack": []};

    List vertCvs = vertLines["canvas"] as List;
    List horzCvs = vertLines["canvas"] as List;
    List horzStack = horzLegend["stack"];
    List vertStack = vertLegend["stack"];
    List graphGlucCvs = graphGluc["canvas"];
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
        "absolutePosition": {"x": cmx(xo + i * colWidth), "y": cmy(yo + graphBottom + 0.05)},
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
        String text = "${glucFromData(fmtNumber(i * 50, 0))}\n${getGlucInfo()["unit"]}";
        vertStack.add({
          "absolutePosition": {"x": cmx(xo - 1.1), "y": cmy(yo + (gridLines - i) * lineHeight - 0.25)},
          "text": text,
          "fontSize": fs(8)
        });
        vertStack.add({
          "absolutePosition": {"x": cmx(xo + 24 * colWidth + 0.3), "y": cmy(yo + (gridLines - i) * lineHeight - 0.25)},
          "text": text,
          "fontSize": fs(8)
        });
      }
    }
    glucMax = gridLines * 50.0;
    var glucLine = {"type": "polyline", "lineWidth": cm(lw), "closePath": false, "lineColor": colValue, "points": []};
    List glucLinePoints = glucLine["points"];
    for (EntryData entry in day.bloody)
    {
      double x = glucX(entry.time);
      double y = glucY(entry.mbg);
      graphGlucCvs.add({"type": "rect", "x": cm(x), "y": cm(y), "w": cm(0.1), "h": cm(0.1), "color": "red"});
    }
    for (EntryData entry in day.entries)
    {
      double x = glucX(entry.time);
      double y = glucY(entry.gluc);
      glucLinePoints.add({"x": cm(x), "y": cm(y)});
    }
    graphGlucCvs.add(glucLine);

    bool hasLowGluc = false;
    bool hasNormGluc = false;
    bool hasHighGluc = false;
    if (showGlucTable)
    {
      for (int i = 0; i < 48; i++)
      {
        int hours = i ~/ 2;
        int minutes = (i % 2) * 30;
        DateTime check = DateTime(0, 1, 1, hours, minutes);
        EntryData entry = day.findNearest(check, maxMinuteDiff: 15);
        if (entry != null)
        {
          double x = glucX(check);
          String col = colNorm;
          if (entry.gluc > day.basalData.targetHigh)
          {
            col = colHigh;
            hasHighGluc = true;
          }
          else if (entry.gluc < day.basalData.targetLow)
          {
            col = colLow;
            hasLowGluc = true;
          }
          else
          {
            hasNormGluc = true;
          }
          (glucTableCvs["canvas"] as List).add({
            "type": "rect",
            "x": cm(glucX(check)),
            "y": cm(0),
            "w": cm(graphWidth / 1440 * 30),
            "h": cm(glucTableHeight),
            "color": col
          });
          (glucTable["stack"] as List).add({
            "relativePosition": {"x": cm(x), "y": cm(i % 2 == 0 ? 0 : glucTableHeight / 2)},
            "text": glucFromData(entry.gluc),
            "color": colGlucValues,
            "fontSize": fs(7)
          });
        }
        if (i % 2 == 1)
        {
          (glucTableCvs["canvas"] as List).add({
            "type": "line",
            "x1": cm(glucX(check)),
            "y1": cm(glucTableHeight * 0.75),
            "x2": cm(glucX(check)),
            "y2": cm(glucTableHeight),
            "lineWidth": cm(lw),
            "lineColor": lc
          });
        }
      }
      (glucTableCvs["canvas"] as List).add({
        "type": "line",
        "x1": cm(0),
        "y1": cm(glucTableHeight),
        "x2": cm(graphWidth),
        "y2": cm(glucTableHeight),
        "lineWidth": cm(lw),
        "lineColor": lcFrame
      });
    }

    bool hasCatheterChange = false;
    bool hasSensorChange = false;
    bool hasCarbs = false;
    bool hasBolus = false;
    List<double> noteLines = List<double>();
    for (TreatmentData t in day.treatments)
    {
      double x, y;
      String type = t.eventType.toLowerCase();
      if (type == "temp basal")continue;
      if ((t.carbs > 0 || t.eCarbs > 0) && showCarbs)
      {
        x = glucX(t.createdAt);
        if (t.isECarb)
        {
          paintECarbs(t.eCarbs, x, graphHeight - lw, graphCarbs["stack"][0]["canvas"] as List);
        }
        else
        {
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
            "fontSize": fs(8),
          });
        }
        hasCarbs = true;
      }
      if (showInsulin)
      {
        if (t.bolusInsulin > 0)
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
            "text": "${fmtNumber(t.bolusInsulin, _precision)} ${msgInsulinUnit}",
            "fontSize": fs(8),
            "color": colBolus
          });
          hasBolus = true;
        }
        if (t.isSMB && t.insulin > 0)
        {
          EntryData entry = day.findNearest(t.createdAt);
          x = glucX(t.createdAt);
          if (entry != null && showSMBatGluc)
          {
            y = glucY(entry.gluc);
          }
          else
          {
            y = glucY(src.targetValue(t.createdAt)) + lw / 2;
          }
          paintSMB(t.insulin, x, y, graphInsulin["stack"][0]["canvas"] as List);
/*
          double baseY = glucY(src.status.settings.thresholds.bgTargetTop.toDouble());
          y = bolusY(t.insulin);
          (graphInsulin["stack"][0]["canvas"] as List).add({
            "type": "line",
            "x1": cm(x),
            "y1": cm(baseY),
            "x2": cm(x),
            "y2": cm(baseY + y),
            "lineColor": colBolus,
            "lineWidth": cm(0.1),
          });
*/
        }
      }
      if (type == "site change" && showPictures)
      {
        double x = xo + glucX(t.createdAt) - 0.3;
        double y = yo + graphHeight - 0.6;
        (pictures["stack"] as List).add(
          {"absolutePosition": {"x": cmx(x), "y": cmy(y)}, "image": "katheter.print", "width": cm(0.8)});
        (pictures["stack"] as List).add({
          "absolutePosition": {"x": cmx(x + 0.33), "y": cmy(y + 0.04)},
          "text": "${fmtTime(t.createdAt)}",
          "fontSize": fs(5),
          "color": "white"
        });
        hasCatheterChange = true;
      }
      else if (type == "sensor change" && showPictures)
      {
        double x = xo + glucX(t.createdAt) - 0.3;
        double y = yo + graphHeight - 0.6;
        (pictures["stack"] as List).add(
          {"absolutePosition": {"x": cmx(x), "y": cmy(y)}, "image": "sensor.print", "width": cm(0.6)});
        (pictures["stack"] as List).add({
          "absolutePosition": {"x": cmx(x + 0.0), "y": cmy(y + 0.34)},
          "columns": [ {
            "width": cm(0.6),
            "text": "${fmtTime(t.createdAt)}",
            "fontSize": fs(5),
            "color": "white",
            "alignment": "center"
          }
          ]
        });
        hasSensorChange = true;
      }
      else if (showNotes && (t.notes ?? "").isNotEmpty && !t.isECarb)
      {
        double x = glucX(t.createdAt);
// *** line length estimation ***
// the following code is used to estimate the length of the note-lines for
// trying to avoid overlapping.
        int idx = noteLines.indexWhere((v)
        => v < x);
        bool isMultiline = t.notes.indexOf("\n") > 0;
        int len = t.notes.indexOf("\n") > 0 ? t.notes.indexOf("\n") : t.notes.length;
        double pos = x + len * 0.15;
        if (idx < 0)
        {
          noteLines.add(pos);
          idx = noteLines.length - 1;
        }
        else
        {
          noteLines[idx] = pos;
        }

        if (isMultiline)
        {
          List<String> lines = t.notes.split("\n");
          for (int i = 0; i < lines.length; i++)
          {
            pos = x + lines[i].length * 0.15;
            if (idx + i >= noteLines.length)noteLines.add(0);
            noteLines[idx + i] = max(noteLines[idx + i], pos);
          }
        }
// *** end of linelength estimation ***
        if (idx < (isMultiline ? 1 : 3))
        {
          double y = graphBottom + notesTop + idx * notesHeight;
          graphGlucCvs.add({
            "type": "line",
            "x1": cm(x),
            "y1": cm(glucY(t.glucose)),
            "x2": cm(x),
            "y2": cm(y + notesHeight),
            "lineWidth": cm(lw),
            "lineColor": t.duration > 0 ? colDurationNotesLine : colNotesLine
          });
          (graphLegend["stack"] as List).add({
            "relativePosition": {"x": cm(x + 0.05), "y": cm(y + notesHeight - 0.25)},
            "text": t.notes,
            "fontSize": fs(8),
            "alignment": "left",
            "color": t.duration > 0 ? colDurationNotes : colNotes
          });
          if (t.duration > 0)
          {
            x = glucX(t.createdAt.add(Duration(minutes: t.duration)));
            graphGlucCvs.add({
              "type": "line",
              "x1": cm(x),
              "y1": cm(y),
              "x2": cm(x),
              "y2": cm(y + notesHeight / 2),
              "lineWidth": cm(lw),
              "lineColor": colDurationNotesLine
            });
          }
        }
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
      "absolutePosition": {"x": cmx(xo), "y": cmy(yo)},
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
    if (showBasalProfile || showBasalDay)y += 1.2 + basalHeight + basalTop;
    else
      y += basalTop;

    LegendData legend = LegendData(cmx(xo), cmy(y), cmx(8.0), 5);
    if (showLegend)
    {
      addLegendEntry(legend, colValue, msgGlucosekurve, isArea: false);
      if (hasCarbs)addLegendEntry(legend, colCarbs, msgCarbs, isArea: false, lineWidth: 0.1);
      if (hasBolus)addLegendEntry(
        legend, colBolus, msgBolusInsulin("${fmtNumber(day.ieBolusSum, _precision, false)} ${msgInsulinUnit}"),
        isArea: false, lineWidth: 0.1);
      String text;
      if (showBasalDay)
      {
        text = "${fmtNumber(day.ieBasalSum, _precision, false)} ${msgInsulinUnit}";
        addLegendEntry(legend, colBasalDay, msgBasalrateDay(text), isArea: true);
      }
      if (showBasalProfile)
      {
        text = "${fmtNumber(day.basalData.store.ieBasalSum, _precision, false)} ${msgInsulinUnit}";
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
      if (showGlucTable)
      {
        if (hasLowGluc)addLegendEntry(
          legend, colLow, msgGlucLow, graphText: glucFromData(day.basalData.targetLow), newColumn: true);
        if (hasNormGluc)addLegendEntry(legend, colNorm, msgGlucNorm,
          graphText: glucFromData((day.basalData.targetLow + day.basalData.targetHigh) / 2), newColumn: !hasLowGluc);
        if (hasHighGluc)addLegendEntry(legend, colHigh, msgGlucHigh, graphText: glucFromData(day.basalData.targetHigh));
      }
    }

    var profileBasal = showBasalProfile ? getBasalGraph(day, true, showBasalDay, xo, yo) : null;
    var dayBasal = showBasalDay ? getBasalGraph(day, false, false, xo, yo) : null;

    return [
      header,
      glucTableCvs,
      vertLegend,
      vertLines,
      horzLegend,
      horzLines,
      limitLines,
      pictures,
      graphGluc,
      graphInsulin,
      graphCarbs,
      glucTable,
      dayBasal,
      profileBasal,
      graphLegend,
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
    var ret = {
      "stack": [{"absolutePosition": {"x": cmx(xo), "y": cmy(yo + graphHeight + basalTop)}, "canvas": basalCvs}]
    };
    if (basalSum != 0)ret["stack"].add({
      "absolutePosition": {"x": cmx(xo), "y": cmy(yo + graphHeight + basalHeight + basalTop + 0.1)},
      "columns": [ {
        "width": cm(basalWidth),
        "text": "${fmtNumber(basalSum, _precision, false)} ${msgInsulinUnit}",
        "fontSize": fs(20),
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

  paintECarbs(double eCarbs, double x, double y, List cvs)
  {
    double h = graphHeight - carbY(eCarbs);
    cvs.add({
      "type": "polyline",
      "closePath": true,
      "_lineColor": "#000000",
      "color": colCarbs,
      "lineWidth": cm(0),
      "points": [{"x": cm(x), "y": cm(y - h - 0.1)}, {"x": cm(x + 0.1), "y": cm(y)}, {"x": cm(x - 0.1), "y": cm(y)}],
    });
  }

  paintSMB(double insulin, double x, double y, List cvs)
  {
    double h = bolusY(insulin) * 2;
    cvs.add({
      "type": "polyline",
      "closePath": true,
      "_lineColor": "#000000",
      "color": colBolus,
      "lineWidth": cm(0),
      "points": [
        {"x": cm(x), "y": cm(y)}, {"x": cm(x + 0.1), "y": cm(y - h - 0.1)}, {"x": cm(x - 0.1), "y": cm(y - h - 0.1)}],
    });
  }
}