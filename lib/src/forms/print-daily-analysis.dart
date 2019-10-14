import 'dart:math' as math;

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-daily.dart';
import 'base-print.dart';
import 'print-daily-graphic.dart';

class StepData
{
  double min, step;
  StepData(this.min, this.step);
}

class PrintDailyAnalysis extends BaseDaily
{
  @override
  String id = "dayanalysis";

  bool sortReverse;
  bool _isPortrait = true;

  @override
  bool get isLocalOnly
  => true;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, PrintDailyGraphic.msgParam10, boolValue: false),
    ParamInfo(1, BaseDaily.msgDaily1, boolValue: true,
      subParams: [ParamInfo(0, BaseDaily.msgDaily2, boolValue: true, isLoopValue: true)],
      isLoopValue: true),
    ParamInfo(2, BasePrint.msgOrientation, list: [Intl.message("Hochformat"), Intl.message("Querformat")]),
  ];

  @override
  extractParams()
  {
    sortReverse = params[0].boolValue;
    showSMB = params[1].boolValue;
    showSMBAtGluc = params[1].subParams[0].boolValue;
    switch (params[2].intValue)
    {
      case 0:
        isPortraitParam = true;
        break;
      case 1:
        isPortraitParam = false;
        break;
    }
  }

  @override
  bool get isPortrait
  => _isPortrait;

  @override
  dynamic get estimatePageCount
  => {"count": g?.period?.dayCount ?? 0, "isEstimated": false};

  @override
  String get backsuffix
  => isPortraitParam ? "" : "landscape";

  static String _titleGraphic = Intl.message("Tagesanalyse");

  @override
  String title = Intl.message("Tagesanalyse");

  @override
  List<String> get imgList
  => ["nightscout", "katheter.print", "sensor.print", "ampulle.print"];

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
  => profMax != 0 && value != null ? graphHeight - (basalHeight / profMax * value) : 0.0;

  PrintDailyAnalysis()
  {
    init();
  }

  @override
  void fillPages(ReportData src, List<Page> pages)
  async {
//    scale = height / width;
    _isPortrait = isPortraitParam;
    var data = src.data;
    graphWidth = width - 6.7;
    basalWidth = graphWidth;
    graphHeight = (height - 7.0) / 5;
    lineWidth = cm(0.03);

    for (int i = 0; i < data.days.length; i++)
    {
      DayData day = data.days[sortReverse ? data.days.length - 1 - i : i];
      if (day.entries.length != 0 || day.treatments.length != 0)pages.add(getPage(day, src));
      else
        pages.add(getEmptyForm(_isPortrait, src));
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

  Page getPage(DayData day, ReportData src)
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
      if (entry.isBloody)glucMax = math.max((g.glucMGDL ? 1 : 18.02) * entry.glucose, glucMax);
      ieMax = math.max(entry.bolusInsulin, ieMax);
    }

    double glucScale = g.glucMGDL ? 50 : 18.02 * 1;
    int gridLines = (glucMax / glucScale).ceil();

//    int gridLines = (glucMax / 50).ceil();
    double lineHeight = gridLines == 0 ? 0 : graphHeight / gridLines;
    _colWidth = graphWidth / 24;
    _vertLines = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    _horzLines = {"relativePosition": {"x": cm(xo - 0.2), "y": cm(yo)}, "canvas": []};
    _graphLines = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "stack": []};
    var frontLines = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    var horzLegend = {"stack": []};
    var vertLegend = {"stack": []};
    var graphGluc = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
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

    if (lineHeight == 0)
    {
      return Page(
        isPortrait, [headerFooter(), {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "text": msgMissingData}]);
    }

    for (var i = 0; i <= gridLines; i++)
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
//        String text = "${glucFromData(g.fmtNumber(i * 50, 0))}\n${getGlucInfo()["unit"]}";
        String text = "${glucFromData(g.fmtNumber(i * glucScale, 0))}";
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
      else
      {
        String text = "${getGlucInfo()["unit"]}";
        _vertStack.add({
          "relativePosition": {"x": cm(xo - 1.5), "y": cm(yo + (gridLines - i) * lineHeight - 0.25)},
          "columns": [{ "width": cm(1.2), "text": text, "fontSize": fs(8), "alignment": "right"}]
        });
        _vertStack.add({
          "relativePosition": {"x": cm(xo + 24 * _colWidth + 0.3), "y": cm(yo + (gridLines - i) * lineHeight - 0.25)},
          "text": text,
          "fontSize": fs(8)
        });
      }
    }
    // graphic for glucose
    glucMax = gridLines * glucScale;
//    glucMax = gridLines * 50.0;
    for (EntryData entry in day.bloody)
    {
      double x = glucX(entry.time);
      double y = glucY(entry.mbg);
      graphGlucCvs.add({"type": "rect", "x": cm(x), "y": cm(y), "w": cm(0.1), "h": cm(0.1), "color": colBloodValues});
    }
    for (TreatmentData t in day.treatments)
    {
      if (t.isBloody)
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
    for (TreatmentData t in day.treatments)
    {
      double x, y;
      if (showSMB && t.isSMB && t.insulin > 0)
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


    DateTime date = DateTime(day.date.year, day.date.month, day.date.day);
    ProfileGlucData profile = src.profile(date);
    double yHigh = glucY(math.min(glucMax, src.status.settings.thresholds.bgTargetTop.toDouble()));
    double yLow = glucY(src.status.settings.thresholds.bgTargetBottom.toDouble());
    List targetValues = [];
    double lastTarget = -1;
    for (var i = 0; i < profile.store.listTargetLow.length; i++)
    {
      double low = profile.store.listTargetLow[i].value * g.glucFactor;
      double high = profile.store.listTargetHigh[i].value * g.glucFactor;
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

    // graphic for basalrate
    profMax = -1000.0;
    for (ProfileEntryData entry in day.basalData.store.listBasal)
      profMax = math.max((entry.value ?? 0) + 0.2, profMax);

    basalHeight = drawScaleIE(
      xo,
      yo,
      graphHeight,
      0.0,
      profMax,
      [S(3, 0.5), S(1.5, 0.2), S(0, 0.1)], (i, step, {value: null})
    => "${g.fmtNumber(value ?? i * step, 1)} ${msgInsulinUnit}");
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

    dynamic ptsIob = [{"x": cm(glucX(DateTime(0, 1, 1, 0, 0))), "y": cm(0)}];
    dynamic ptsCob = [{"x": cm(glucX(DateTime(0, 1, 1, 0, 0))), "y": cm(0)}];
    double lastX = null;
    DateTime time = DateTime(day.date.year, day.date.month, day.date.day);
    int diff = 5;
    double maxIob = -1000.0;
    double minIob = 0.0;
    double maxCob = -1000.0;
    int i = 0;
    while (i < 1440)
    {
      if (i + diff >= 1440 && i != 1439) diff = 1439 - i;
      if (i < 1440)
      {
        double x = glucX(time);
        double y = day
                     .iob(src, time)
                     .iob - 1.0;
        maxIob = math.max(maxIob, y);
        minIob = math.min(minIob, y);
        ptsIob.add({"x": cm(x), "y": y});
//*
        y = day
          .cob(src, time)
          .cob;
        maxCob = math.max(maxCob, y);
        ptsCob.add({"x": cm(x), "y": y});
// */
        lastX = x;
        time = time.add(Duration(minutes: diff));
      }
      i += diff;
    }
    maxIob = maxIob * 1.1;
    minIob = minIob * 1.1;
    double iobGraphHeight = drawScaleIE(
      xo,
      yo,
      3 * graphHeight,
      minIob,
      maxIob,
      [S(10, 2.0), S(7, 1.0), S(3, 0.5), S(1.5, 0.2), S(0, 0.1)], (i, step, {value: null})
    => "${g.fmtNumber(value ?? minIob + i * step, 1)} ${msgInsulinUnit}");
    for (int i = 0; i < ptsIob.length; i++)
    {
      if (maxIob - minIob > 0)ptsIob[i]["y"] = cm(iobGraphHeight / (maxIob - minIob) * (maxIob - ptsIob[i]["y"]));
      else
        ptsIob[i]["y"] = cm(iobGraphHeight);
    }

    double cobGraphHeight = drawScaleIE(
      xo,
      yo,
      4 * graphHeight,
      0.0,
      maxCob,
      [S(100, 20), S(50, 10), S(20, 5), S(0, 1)], (i, step, {value: null})
    => "${g.fmtNumber(value ?? i * step, 0)} g");
    maxCob = maxCob * 1.1;
    for (int i = 0; i < ptsCob.length; i++)
    {
      if (maxCob > 0)ptsCob[i]["y"] = cm(cobGraphHeight / maxCob * (maxCob - ptsCob[i]["y"]));
      else
        ptsCob[i]["y"] = cm(cobGraphHeight);
    }

/*
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
      if (entry.carbs > 0)
      {
        y = graphHeight / maxCob * (maxCob - entry.carbs);
        ptsCob.add({"x": cm(x), "y": cm(y)});
        lastCobX = x;
      }
    }
 */

    if (lastX != null)
    {
      ptsIob.add({"x": cm(lastX), "y": cm(iobGraphHeight / (maxIob - minIob) * maxIob)});
      ptsCob.add({"x": cm(lastX), "y": cm(cobGraphHeight)});
    }

    var graphIob = {
      "relativePosition": {"x": cm(xo), "y": cm(yo + 3 * graphHeight + graphHeight - iobGraphHeight)},
      "canvas": []
    };
    var graphCob = {
      "relativePosition": {"x": cm(xo), "y": cm(yo + 4 * graphHeight + graphHeight - cobGraphHeight)},
      "canvas": []
    };
    List graphIobCvs = graphIob["canvas"];
    List graphCobCvs = graphCob["canvas"];

    graphIobCvs.add(graphArea(ptsIob, colIOBLine, colIOBFill));
    graphCobCvs.add(graphArea(ptsCob, colCOBLine, colCOBFill));

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

    return Page(isPortrait, [
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
    ]);
  }

  drawScaleIE(double xo, double yo, double top, double min, double max, List<StepData> steps, Function display)
  {
    double step = 0.1;
    for (StepData entry in steps)
    {
      if (max - min > entry.min)
      {
        step = entry.step;
        break;
      }
    }

    int gridLines = (((max - min) / step) + 1).floor();
    double lineHeight = gridLines == 0 ? 0 : graphHeight / gridLines;

//    top += 0.1 * (lineHeight / step);
    for (var i = 1; i < gridLines; i++)
    {
      double y = top + (gridLines - i) * lineHeight;
      _horzCvs.add({
        "type": "line",
        "x1": cm(0),
        "y1": cm(y) - lw / 2,
        "x2": cm(24 * _colWidth + 0.2),
        "y2": cm(y) - lw / 2,
        "lineWidth": cm(lw),
        "lineColor": i > 0 ? lc : lcFrame
      });
      double value = min + (max - min) / step * i;
//      vertCvs.add({"relativePosition": {"x": cm(xo - 0.7), "y": cm(yo + (gridLines - i) * lineHeight - 0.15)}, "text": g.fmtNumber(i / 10, 1), "fontSize": fs(8)});
      String text = display(i, step);
//      String text = "${g.fmtNumber(i * step, 1)} ${msgInsulinUnit}";
      _vertStack.add({
        "relativePosition": {"x": cm(xo - 3.0), "y": cm(y + yo - 0.15)},
        "columns": [{ "width": cm(2.7), "text": text, "fontSize": fs(8), "alignment": "right"}]
      });
      _vertStack.add({
        "relativePosition": {"x": cm(xo + _colWidth * 24 + 0.3), "y": cm(y + yo - 0.15)},
        "text": text,
        "fontSize": fs(8)
      });
    }
    return (gridLines - 1) * lineHeight;
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

    areaPoints.add({"x": cm(basalX(DateTime(0, 1, 1, 0, 0))), "y": cm(useProfile ? basalY(0.0) : basalHeight)});
    for (ProfileEntryData entry in temp)
    {
      double x = basalX(entry.time(day.date, useProfile));
      double y = useProfile ? basalY(entry.value) : basalHeight / profMax * (profMax - entry.tempAdjusted * 100);
      if (lastY != null)areaPoints.add({"x": cm(x), "y": cm(lastY)});
      areaPoints.add({"x": cm(x), "y": cm(y)});
      lastY = y;
    }
    if (lastY != null)areaPoints.add({"x": cm(basalX(DateTime(0, 1, 1, 23, 59))), "y": cm(lastY)});

    areaPoints.add({"x": cm(basalX(DateTime(0, 1, 1, 23, 59))), "y": cm(useProfile ? basalY(0.0) : basalHeight)});
    basalCvs.add(area);

    _graphLines["stack"].add({
      "relativePosition": {"x": cm(0), "y": cm(top)},
      "canvas": [{"type": "polyline", "lineWidth": cm(lw), "closePath": true, "lineColor": color, "points": areaPoints}]
    });
//    basalCvs.add({"type": "rect", "x": 0, "y": 0, "w": 1, "h": 1, "fillOpacity": 1});
    return ret;
  }
}