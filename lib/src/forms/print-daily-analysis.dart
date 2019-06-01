import 'dart:math' as math;

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';
import 'print-daily-graphic.dart';

class StepData
{
  double min, step;
  StepData(this.min, this.step);
}

class PrintDailyAnalysis extends BasePrint
{
  @override
  String id = "dayanalysis";

  bool sortReverse;

  @override
  bool get isLocalOnly
  => true;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, PrintDailyGraphic.msgParam10, boolValue: false),
  ];


  @override
  prepareData_(ReportData data)
  {
    sortReverse = params[0].boolValue;

    return data;
  }

  static String _titleGraphic = Intl.message("Tagesanalyse");

  @override
  String title = Intl.message("Tagesanalyse");

  @override
  List<String> get imgList
  => ["nightscout", "katheter.print", "sensor.print", "ampulle.print"];

  @override
  bool get isPortrait
  => true;

  num lineWidth;
  double glucMax = 0.0;
  double profMax = 0.0;
  double carbMax = 200.0;
  double bolusMax = 50.0;
  double ieMax = 0.0;
  double graphHeight;
  static double graphWidth;
  static double notesTop = 0.4;
  static double notesHeight = 0.3;
  static double basalHeight;
  static double basalWidth = graphWidth;
  S(double min, double step)
  => StepData(min, step);

  double glucX(DateTime time)
  {
    return graphWidth / 1440 * (time.hour * 60 + time.minute);
  }

  double glucY(double value)
  => graphHeight / glucMax * (glucMax - value);

  double carbY(double value)
  => graphHeight / carbMax * (carbMax - value);

  double bolusY(double value)
  => graphHeight / 4 * value / ieMax;

  double basalX(DateTime time)
  {
    return basalWidth / 1440 * (time.hour * 60 + time.minute);
  }

  double basalY(double value)
  => profMax != 0 && value != null ? basalHeight / profMax * (profMax - value) : 0.0;

  PrintDailyAnalysis()
  {
    init();
  }

  @override
  void fillPages(ReportData src, List<List<dynamic>> pages)
  async {
//    scale = height / width;
    var data = src.calc;
    graphWidth = width - 6.7;
    graphHeight = (height - 7.0) / 5;
    lineWidth = cm(0.03);

    for (int i = 0; i < data.days.length; i++)
    {
      DayData day = data.days[sortReverse ? data.days.length - 1 - i : i];
      if (day.entries.length != 0 || day.treatments.length != 0)
        pages.add(getPage(day, src));
      else
        pages.add(getEmptyForm(src));
    }
    title = _titleGraphic;
  }

  dynamic glucLine(dynamic points)
  => {"type": "polyline", "lineWidth": cm(lw), "closePath": false, "lineColor": colValue, "points": points};

  dynamic graphArea(dynamic points, String colLine, String colFill)
  =>
    {
      "type": "polyline",
      "lineWidth": cm(lw),
      "closePath": true,
      "color": colFill,
      "lineColor": colLine,
      "points": points
    };

  var _vertLines, _horzLines, _graphLines;
  List _vertCvs, _horzCvs;
  List _vertStack, _horzStack;
  double _colWidth;

  getPage(DayData day, ReportData src)
  {
    title = _titleGraphic;
    basalHeight = graphHeight;
    double xo = xorg;
    double yo = yorg;
    titleInfo = fmtDate(day.date, null, false, true);
    glucMax = -1000.0;
    ieMax = 0.0;
    for (EntryData entry in day.entries)
      glucMax = math.max(entry.gluc, glucMax);
    for (EntryData entry in day.bloody)
      glucMax = math.max(entry.mbg, glucMax);
    for (TreatmentData entry in day.treatments)
    {
      if (entry.glucoseType.toLowerCase() == "finger")
        glucMax = math.max((g.glucMGDL ? 1 : 18.02) * entry.glucose, glucMax);
      ieMax = math.max(entry.bolusInsulin, ieMax);
    }

    int gridLines = (glucMax / 50).ceil();
    double lineHeight = gridLines == 0 ? 0 : graphHeight / gridLines;
    _colWidth = graphWidth / 24;
    _vertLines = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    _horzLines = {"relativePosition": {"x": cm(xo - 0.2), "y": cm(yo)}, "canvas": []};
    _graphLines = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "stack": []};
    var frontLines = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    var horzLegend = {"stack": []};
    var vertLegend = {"stack": []};
    var graphGluc = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    var graphIob = {"relativePosition": {"x": cm(xo), "y": cm(yo + 3 * graphHeight)}, "canvas": []};
    var graphCob = {"relativePosition": {"x": cm(xo), "y": cm(yo + 4 * graphHeight)}, "canvas": []};
    var graphLegend = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "stack": []};
    var graphCarbs = {
      "stack": [
        {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []},
        {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "stack": []}
      ]
    };
    var graphInsulin = {
      "stack": [
        {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []},
        {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "stack": []}
      ]
    };
    var pictures = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "stack": []};

    _vertCvs = _vertLines["canvas"] as List;
    _horzCvs = _horzLines["canvas"] as List;
    _horzStack = horzLegend["stack"];
    _vertStack = vertLegend["stack"];
    List graphGlucCvs = graphGluc["canvas"];
    List graphIobCvs = graphIob["canvas"];
    List graphCobCvs = graphCob["canvas"];
    // draw vertical lines with times below graphic
    for (var i = 0; i < 25; i++)
    {
      var line = {
        "type": "line",
        "x1": cm(i * _colWidth),
        "y1": cm(0),
        "x2": cm(i * _colWidth),
        "y2": cm(graphHeight * 5),
        "lineWidth": cm(lw),
        "lineColor": i == 0 || i == 24 ? lcFrame : lc
      };

      if (i == 0 || i == 24)(frontLines["canvas"] as List).add(line);
      else
        _vertCvs.add(line);
      if (i < 24)_horzStack.add({
        "relativePosition": {"x": cm(xo + i * _colWidth), "y": cm(yo + graphHeight * 5 + 0.05)},
        "text": fmtTime(i, withMinutes: false),
        "fontSize": fs(7)
      });
    }

    glucMax = 0.0;
    if (lineHeight == 0)
    {
      return [headerFooter(), {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "text": msgMissingData}];
    }
    for (var i = 1; i <= gridLines; i++)
    {
      _horzCvs.add({
        "type": "line",
        "x1": cm(-0.2),
        "y1": cm((gridLines - i) * lineHeight - lw / 2),
        "x2": cm(24 * _colWidth + 0.2),
        "y2": cm((gridLines - i) * lineHeight - lw / 2),
        "lineWidth": cm(lw),
        "lineColor": lc
      });

      if (i > 0)
      {
        String text = "${glucFromData(g.fmtNumber(i * 50, 0))}\n${getGlucInfo()["unit"]}";
        _vertStack.add({
          "relativePosition": {"x": cm(xo - 1.1), "y": cm(yo + (gridLines - i) * lineHeight - 0.25)},
          "text": text,
          "fontSize": fs(8)
        });
        _vertStack.add({
          "relativePosition": {"x": cm(xo + 24 * _colWidth + 0.3), "y": cm(yo + (gridLines - i) * lineHeight - 0.25)},
          "text": text,
          "fontSize": fs(8)
        });
      }
    }
    glucMax = gridLines * 50.0;
    for (EntryData entry in day.bloody)
    {
      double x = glucX(entry.time);
      double y = glucY(entry.mbg);
      graphGlucCvs.add({"type": "rect", "x": cm(x), "y": cm(y), "w": cm(0.1), "h": cm(0.1), "color": colBloodValues});
    }
    for (TreatmentData t in day.treatments)
    {
      if (t.glucoseType.toLowerCase() == "finger")
      {
        double x = glucX(t.createdAt);
        double y = glucY((g.glucMGDL ? 1 : 18.02) * t.glucose);
        graphGlucCvs.add({"type": "rect", "x": cm(x), "y": cm(y), "w": cm(0.1), "h": cm(0.1), "color": colBloodValues});
      }
    }

    dynamic points = [];
    EntryData last = null;
    for (EntryData entry in day.entries)
    {
      double x = glucX(entry.time);
      double y = glucY(entry.gluc);
      if (entry.gluc < 0)
      {
        if (last != null && last.gluc >= 0)
        {
          graphGlucCvs.add(glucLine(points));
          points = [];
        }
      }
      else
      {
        points.add({"x": cm(x), "y": cm(y)});
      }
      last = entry;
    }
    graphGlucCvs.add(glucLine(points));
/*
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
          if (t.createdAt
            .difference(collCarbs.last.start)
            .inMinutes < collMinutes)collCarbs.last.fill(t.createdAt, t.carbs);
          else
            collCarbs.add(CollectInfo(t.createdAt, t.carbs));
        }
        hasCarbs = true;
      }
      if (showInsulin)
      {
        if (t.bolusInsulin > 0 && !t.isSMB)
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

          if (t.createdAt
            .difference(collInsulin.last.start)
            .inMinutes < collMinutes)collInsulin.last.fill(t.createdAt, t.bolusInsulin);
          else
            collInsulin.add(CollectInfo(t.createdAt, t.bolusInsulin));
          hasBolus = true;
        }
        if (t.isSMB && t.insulin > 0)
        {
          EntryData entry = day.findNearest(day.entries, null, t.createdAt);
          x = glucX(t.createdAt);
          if (entry != null && showSMBAtGluc)
          {
            y = glucY(entry.gluc);
          }
          else
          {
            y = glucY(src.targetValue(t.createdAt)) + lw / 2;
          }
          paintSMB(t.insulin, x, y, graphInsulin["stack"][0]["canvas"] as List);
        }
      }
      if (type == "site change" && showPictures)
      {
        double x = glucX(t.createdAt) - 0.3;
        double y = graphHeight - 0.6;
        (pictures["stack"] as List).add(
          {"relativePosition": {"x": cm(x), "y": cm(y)}, "image": "katheter.print", "width": cm(0.8)});
        (pictures["stack"] as List).add({
          "relativePosition": {"x": cm(x + 0.33), "y": cm(y + 0.04)},
          "text": "${fmtTime(t.createdAt)}",
          "fontSize": fs(5),
          "color": "white"
        });
        hasCatheterChange = true;
      }
      else if (type == "sensor change" && showPictures)
      {
        double x = glucX(t.createdAt) - 0.3;
        double y = graphHeight - 0.6;
        (pictures["stack"] as List).add(
          {"relativePosition": {"x": cm(x), "y": cm(y)}, "image": "sensor.print", "width": cm(0.6)});
        (pictures["stack"] as List).add({
          "relativePosition": {"x": cm(x + 0.0), "y": cm(y + 0.34)},
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
      else if (type == "insulin change" && showPictures)
      {
        double x = glucX(t.createdAt) - 0.3;
        double y = graphHeight - 0.6;
        (pictures["stack"] as List).add(
          {"relativePosition": {"x": cm(x), "y": cm(y)}, "image": "ampulle.print", "width": cm(0.8)});
        (pictures["stack"] as List).add({
          "relativePosition": {"x": cm(x + 0.33), "y": cm(y + 0.1)},
          "text": "${fmtTime(t.createdAt)}",
          "fontSize": fs(5),
          "color": "white"
        });
        hasAmpulleChange = true;
      }

      if (showNotes && (t.notes ?? "").isNotEmpty && !t.isECarb)
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
          double top = graphBottom;
          if (showInfoLinesAtGluc)
          {
            EntryData e = day.findNearest(day.entries, null, t.createdAt);
            if (e != null)top = glucY(e.gluc);
          }
          graphGlucCvs.add({
            "type": "line",
            "x1": cm(x),
            "y1": cm(top),
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
              "y1": cm(graphBottom + 0.35),
              "x2": cm(x),
              "y2": cm(y + 0.1),
              "lineWidth": cm(lw),
              "lineColor": colDurationNotesLine
            });
          }
        }
      }
    }

    for (CollectInfo info in collInsulin)
    {
      if (info.sum == 0.0)continue;
      DateTime date = info.start.add(Duration(minutes: info.end
        .difference(info.start)
        .inMinutes ~/ 2));
      double y = sumNarrowValues ? -0.5 : bolusY(info.max);
      String text = "${g.fmtNumber(info.sum, _precision)} ${msgInsulinUnit}";
      if (info.count > 1)
      {
        text = "[$text]";
        hasCollectedValues = true;
      }
      (graphInsulin["stack"][1]["stack"] as List).add({
        "relativePosition": {"x": cm(glucX(info.start) - 0.05), "y": cm(y),},
        "text": text,
        "fontSize": fs(8),
        "color": colBolus
      });
    }
    for (CollectInfo info in collCarbs)
    {
      if (info.sum == 0.0)continue;
      DateTime date = info.start.add(Duration(minutes: info.end
        .difference(info.start)
        .inMinutes ~/ 2));
      double y = carbY(info.max);
      String text = "${msgKH(g.fmtNumber(info.sum))}";
      if (info.count > 1)
      {
        text = "[$text]";
        hasCollectedValues = true;
      }
      (graphCarbs["stack"][1]["stack"] as List).add(
        {"relativePosition": {"x": cm(glucX(info.start) - 0.05), "y": cm(y - 0.35),}, "text": text, "fontSize": fs(8)});
    }
*/
    DateTime date = DateTime(day.date.year, day.date.month, day.date.day);
    ProfileGlucData profile = src.profile(date);
    double yHigh = glucY(math.min(glucMax, src.status.settings.thresholds.bgTargetTop.toDouble()));
    double yLow = glucY(src.status.settings.thresholds.bgTargetBottom.toDouble());
    List targetValues = [];
    double lastTarget = -1;
    for (var i = 0; i < profile.store.listTargetLow.length; i++)
    {
      double low = profile.store.listTargetLow[i].value;
      double high = profile.store.listTargetHigh[i].value;
      double x = glucX(profile.store.listTargetLow[i].time(day.date));
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
      "relativePosition": {"x": cm(xo), "y": cm(yo)},
      "canvas": [
        {
          "type": "rect",
          "x": cm(0.0),
          "y": cm(yHigh),
          "w": cm(24 * _colWidth),
          "h": cm(yLow - yHigh),
          "color": colTargetArea,
          "fillOpacity": 0.3
        },
        {
          "type": "line",
          "x1": cm(0.0),
          "y1": cm(yHigh),
          "x2": cm(24 * _colWidth),
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
          "x2": cm(24 * _colWidth),
          "y2": cm(yLow),
          "lineWidth": cm(lw),
          "lineColor": colTargetArea
        },
        {"type": "rect", "x": 0, "y": 0, "w": 0, "h": 0, "color": "#000", "fillOpacity": 1}
      ]
    };
/*
    var y = yo + lineHeight * gridLines;
    if (showBasalProfile || showBasalDay)y += 1.2 + basalHeight + basalTop;
    else
      y += basalTop;

    LegendData legend = LegendData(cm(xo), cm(y), cm(8.0), 6);
    double tdd = day.ieBasalSum + day.ieBolusSum;

    if (showLegend)
    {
      addLegendEntry(legend, colValue, msgGlucosekurve, isArea: false);
      String text;
      if (hasCarbs)
      {
        text = "${g.fmtNumber(day.carbs, 0)}";
        addLegendEntry(legend, colCarbs, msgCarbs(text), isArea: false, lineWidth: 0.1);
      }
      if (hasBolus)addLegendEntry(
        legend, colBolus, msgBolusInsulin("${g.fmtNumber(day.ieBolusSum, _precision, false)} ${msgInsulinUnit}"),
        isArea: false, lineWidth: 0.1);
      if (showBasalDay)
      {
        text = "${g.fmtNumber(day.ieBasalSum, _precision, false)} ${msgInsulinUnit}";
        addLegendEntry(legend, colBasalDay, msgBasalrateDay(text), isArea: true);
      }
      if (showBasalProfile)
      {
        text = "${g.fmtNumber(day.basalData.store.ieBasalSum, _precision, false)} ${msgInsulinUnit}";
        addLegendEntry(legend, colBasalProfile, msgBasalrateProfile(text), isArea: false);
      }
      text = "${g.fmtNumber(tdd, _precision, false)} ${msgInsulinUnit}";
      addLegendEntry(legend, "", msgLegendTDD(text), graphText: msgTDD);
      String v1 = glucFromData(src.status.settings.thresholds.bgTargetBottom.toDouble());
      String v2 = glucFromData(src.status.settings.thresholds.bgTargetTop.toDouble());
      addLegendEntry(legend, colTargetArea, msgTargetArea(v1, v2, getGlucInfo()["unit"]));
      addLegendEntry(legend, colTargetValue,
        msgTargetValue("${glucFromData((profile.targetHigh + profile.targetLow) / 2)} ${getGlucInfo()["unit"]}"),
        isArea: false);
      if (hasCollectedValues)addLegendEntry(legend, "", msgCollectedValues, graphText: "[0,0]");
      if (hasCatheterChange)addLegendEntry(
        legend, "", msgCatheterChange, image: "katheter.print", imgWidth: 0.5, imgOffsetY: 0.15);
      if (hasSensorChange)addLegendEntry(
        legend, "", msgSensorChange, image: "sensor.print", imgWidth: 0.5, imgOffsetY: -0.05);
      if (hasAmpulleChange)addLegendEntry(
        legend, "", msgAmpulleChange, image: "ampulle.print", imgWidth: 0.4, imgOffsetY: 0.1);
      if (showGlucTable)
      {
        if (hasLowGluc)addLegendEntry(
          legend, colLow, msgGlucLow, graphText: glucFromData(day.basalData.targetLow), newColumn: true);
        if (hasNormGluc)addLegendEntry(legend, colNorm, msgGlucNorm,
          graphText: glucFromData((day.basalData.targetLow + day.basalData.targetHigh) / 2), newColumn: !hasLowGluc);
        if (hasHighGluc)addLegendEntry(legend, colHigh, msgGlucHigh, graphText: glucFromData(day.basalData.targetHigh));
      }
    }
*/
    // graphic for basalrate
    profMax = -1000.0;
    for (ProfileEntryData entry in day.basalData.store.listBasal)
      profMax = math.max((entry.value ?? 0) + 0.2, profMax);

    drawScaleIE(xo, yo, graphHeight, profMax, [S(3, 0.5), S(1.5, 0.2), S(0, 0.1)], (i, step)
    => "${g.fmtNumber(i * step, 1)} ${msgInsulinUnit}");
    var profileBasal = getBasalGraph(graphHeight, day, true, xo, yo);

    // graphic for temporary basalratechanges
    profMax = -1000.0;
    for (ProfileEntryData entry in day.profile)
      profMax = math.max(entry.tempAdjusted ?? 0, profMax);

//    profMax = (profMax * 100 / 10).ceil().toDouble() * 10;
    profMax = profMax * 100.0;

    double step = profMax + 100 > 300 ? 50 : profMax + 100 > 150 ? 20 : 10;
    gridLines = (((profMax + 100) / step) + 1).floor();
    lineHeight = gridLines == 0 ? 0 : graphHeight / gridLines;
    double top = graphHeight * 3 - (gridLines - 1) * lineHeight;
    basalHeight = (graphHeight * 3 - top) - (100 / step) * lineHeight;
    top -= lw * 3;
    for (var i = 1; i < gridLines; i ++)
    {
      var y = 3 * graphHeight - i * lineHeight - lw / 2 - lw * 3;
      _horzCvs.add({
        "type": "line",
        "x1": cm(0),
        "y1": cm(y),
        "x2": cm(24 * _colWidth + 0.2),
        "y2": cm(y),
        "lineWidth": cm(lw),
        "lineColor": i > 0 ? lc : lcFrame
      });
//      vertCvs.add({"relativePosition": {"x": cm(xo - 0.7), "y": cm(yo + (gridLines - i) * lineHeight - 0.15)}, "text": g.fmtNumber(i / 10, 1), "fontSize": fs(8)});
      String text = "${g.fmtNumber(-100 + i * step)} %";
      _vertStack.add(
        {"relativePosition": {"x": cm(xo - 1.0), "y": cm(yo + y - 0.15)}, "text": text, "fontSize": fs(8)});
      _vertStack.add({
        "relativePosition": {"x": cm(xo + _colWidth * 24 + 0.3), "y": cm(yo + y - 0.15)},
        "text": text,
        "fontSize": fs(8)
      });
    }
    var dayBasal = getBasalGraph(top, day, false, xo, yo);

    // graphic for iob and cob
    List <BoluscalcData> listIobCob = List<BoluscalcData>();
    double maxIob = -1000.0;
    double maxCob = -1000.0;
    for (TreatmentData t in day.treatments)
    {
      if (t.boluscalc != null)
      {
        listIobCob.add(t.boluscalc);
        maxIob = math.max(t.boluscalc.iob, maxIob);
        maxCob = math.max(t.boluscalc.cob, maxCob);
      }
    }

    drawScaleIE(xo, yo, 3 * graphHeight, maxIob, [S(7, 1.0), S(3, 0.5), S(1.5, 0.2), S(0, 0.1)], (i, step)
    => "${g.fmtNumber(i * step, 1)} ${msgInsulinUnit}");

    drawScaleIE(xo, yo, 4 * graphHeight, maxCob, [S(100, 20), S(50, 10), S(20, 5), S(0, 1)], (i, step)
    => "${g.fmtNumber(i * step, 0)} g");

    dynamic ptsIob = [{"x": cm(glucX(DateTime(0,1,1,0,0))), "y": cm(graphHeight)}];
    dynamic ptsCob = [{"x": cm(glucX(DateTime(0,1,1,0,0))), "y": cm(graphHeight)}];
    double lastIobX = null;
    double lastCobX = null;
    for (BoluscalcData entry in listIobCob)
    {
      double x = glucX(entry.eventTime);
      double y;
      if (entry.iob > 0)
      {
        y = graphHeight / maxIob * (maxIob - entry.iob);
        ptsIob.add({"x": cm(x), "y": cm(y)});
        lastIobX = x;
      }
      if (entry.cob > 0)
      {
        y = graphHeight / maxCob * (maxCob - entry.cob);
        ptsCob.add({"x": cm(x), "y": cm(y)});
        lastCobX = x;
      }
    }

    if(lastIobX != null)ptsIob.add({"x": cm(lastIobX), "y": cm(graphHeight)});
    if(lastCobX != null)ptsCob.add({"x": cm(lastCobX), "y": cm(graphHeight)});

    graphIobCvs.add(graphArea(ptsIob, "#affe00", colGlucValues));
    graphCobCvs.add(graphArea(ptsCob, "#affe00", colCarbs));

    // horizontal lines between regions
    for (int i = 1; i < 6; i++)
    {
      (frontLines["canvas"] as List).add({
        "type": "line",
        "x1": cm(-0.2),
        "y1": cm(graphHeight * i - lw / 2),
        "x2": cm(24 * _colWidth + 0.2),
        "y2": cm(graphHeight * i - lw / 2),
        "lineWidth": cm(lw),
        "lineColor": lcFrame
      });
    }

    return [
      headerFooter(),
      dayBasal,
      profileBasal,
      graphIob,
      graphCob,
      horzLegend,
      _horzLines,
      vertLegend,
      _vertLines,
      _graphLines,
      frontLines,
      limitLines,
      pictures,
      graphGluc,
      graphInsulin,
      graphCarbs,
      graphLegend,
    ];
  }

  drawScaleIE(double xo, double yo, double top, double max, List<StepData> steps, Function display)
  {
    double step = 0.1;
    for (StepData entry in steps)
    {
      if (max > entry.min)
      {
        step = entry.step;
        break;
      }
    }
//    double step = maxIob > 3 ? 0.5 : maxIob > 1.5 ? 0.2 : 0.1;
    int gridLines = ((max / step) + 1).floor();
    double lineHeight = gridLines == 0 ? 0 : graphHeight / gridLines;
    for (var i = 1; i < gridLines; i++)
    {
      _horzCvs.add({
        "type": "line",
        "x1": cm(0),
        "y1": cm(top + (gridLines - i) * lineHeight) - lw / 2,
        "x2": cm(24 * _colWidth + 0.2),
        "y2": cm(top + (gridLines - i) * lineHeight) - lw / 2,
        "lineWidth": cm(lw),
        "lineColor": i > 0 ? lc : lcFrame
      });
//      vertCvs.add({"relativePosition": {"x": cm(xo - 0.7), "y": cm(yo + (gridLines - i) * lineHeight - 0.15)}, "text": g.fmtNumber(i / 10, 1), "fontSize": fs(8)});
      String text = display(i, step);
//      String text = "${g.fmtNumber(i * step, 1)} ${msgInsulinUnit}";
      _vertStack.add({
        "relativePosition": {"x": cm(xo - 1.0), "y": cm(top + yo + (gridLines - i) * lineHeight - 0.15)},
        "text": text,
        "fontSize": fs(8)
      });
      _vertStack.add({
        "relativePosition": {
          "x": cm(xo + _colWidth * 24 + 0.3),
          "y": cm(top + yo + (gridLines - i) * lineHeight - 0.15)
        },
        "text": text,
        "fontSize": fs(8)
      });
    }
  }

  getBasalGraph(double top, DayData day, bool useProfile, double xo, double yo)
  {
    List<ProfileEntryData> data;
    String color;

    if (useProfile)
    {
      data = day.basalData.store.listBasal;
      color = colBasalProfile;
    }
    else
    {
      data = day.profile;
      color = colBasalProfile;
    }

    var basalCvs = [];
    var ret = {"stack": [{"relativePosition": {"x": cm(xo), "y": cm(yo + top)}, "canvas": basalCvs}]};
    double lastY = null;
    var areaPoints = [];
    var area = {
      "type": "polyline",
      "lineWidth": cm(lw),
      "closePath": true,
      "color": blendColor(color, "#ffffff", 0.7),
      "points": areaPoints,
//      "fillOpacity": opacity
    };

    var temp = List<ProfileEntryData>();
    for (ProfileEntryData entry in data)
      temp.add(entry);

    if (useProfile)
    {
      temp.sort((a, b)
      => a.time(day.date, useProfile).compareTo(b.time(day.date, useProfile)));

      if (temp[0].timeAsSeconds != -temp[0].localDiff * 60 * 60)
      {
        ProfileEntryData clone = temp[0].clone(DateTime(0, 1, 1, -temp[0].localDiff, 0));
        temp.insert(0, clone);
      }
    }

    areaPoints.add({"x": cm(basalX(DateTime(0, 1, 1, 0, 0))), "y": cm(basalY(0.0))});
    for (ProfileEntryData entry in temp)
    {
      double x = basalX(entry.time(day.date, useProfile));
      double y = useProfile ? basalY(entry.value) : basalY(entry.tempAdjusted * 100);
      if (lastY != null)areaPoints.add({"x": cm(x), "y": cm(lastY)});
      areaPoints.add({"x": cm(x), "y": cm(y)});
      lastY = y;
    }
    if (lastY != null)areaPoints.add({"x": cm(basalX(DateTime(0, 1, 1, 23, 59))), "y": cm(lastY)});

    areaPoints.add({"x": cm(basalX(DateTime(0, 1, 1, 23, 59))), "y": cm(basalY(0.0))});
    basalCvs.add(area);

    _graphLines["stack"].add({
      "relativePosition": {"x": cm(0), "y": cm(top)},
      "canvas": [{"type": "polyline", "lineWidth": cm(lw), "closePath": true, "lineColor": color, "points": areaPoints}]
    });
//    basalCvs.add({"type": "rect", "x": 0, "y": 0, "w": 1, "h": 1, "fillOpacity": 1});
    return ret;
  }
}