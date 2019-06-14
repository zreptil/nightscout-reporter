import 'dart:math';

import 'package:angular_components/angular_components.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-profile.dart';

class PrintBasalrate extends BaseProfile
{
  @override
  String id = "basal";

  @override
  String get title
  => msgBasalrate;

  @override
  bool get isPortrait
  => false;

  @override
  List<String> get imgList
  => ["nightscout",];

  static double gridHeight = 9.45;
  static double gridWidth = 24.0;
  static double graphWidth = gridWidth / 25.0 * 24.0;

  num lineWidth;

  PrintBasalrate() : super()
  {
  }

  double glucX(DateTime time)
  {
    return graphWidth / 1440 * (time.hour * 60 + time.minute);
  }

  @override
  dynamic getPage(int page, ProfileGlucData profile, CalcData calc)
  {
    if (page > 0)return null;
    subtitle = profile.store.name;
    titleInfo = "";//titleInfoTimeRange(profStartTime, profEndTime);

//    getPage(ProfileGlucData profile, CalcData calc)
//  {
    double xo = xorg;
    double yo = yorg;
//    titleInfo = titleInfoForDates(profile.startDate, calc.endDate);

    double brMax = 0.0;
    List<ProfileEntryData> brtimes = profile.store.listBasal;
    for (var i = 0; i < brtimes.length; i++)
      brMax = max(brtimes[i].value, brMax);

    double step = brMax > 6 ? 0.5 : brMax > 3 ? 0.2 : 0.1;

    int gridLines = ((brMax / step) + 1).floor();
    double lineHeight = gridHeight / gridLines;
    double colWidth = gridWidth / 25;

    double lw = cm(0.03);
    String lc = "#a0a0a0";
    var vertLines = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    var horzLines = {"relativePosition": {"x": cm(xo - 0.2), "y": cm(yo)}, "canvas": []};
    var horzLegend = {"stack": []};

    List vertCvs = vertLines["canvas"] as List;
    List horzCvs = vertLines["canvas"] as List;
    List horzStack = horzLegend["stack"];
    for (var i = 0; i < 25; i++)
    {
      vertCvs.add({
        "type": "line",
        "x1": cm(i * colWidth),
        "y1": cm(0),
        "x2": cm(i * colWidth),
        "y2": cm(lineHeight * gridLines + 0.25),
        "lineWidth": lw,
        "lineColor": i > 0 && i < 24 ? lc : lcFrame
      });
      if (i < 24)
      {
        vertCvs.add({
          "type": "line",
          "x1": cm((i + 0.5) * colWidth),
          "y1": cm(lineHeight * gridLines),
          "x2": cm((i + 0.5) * colWidth),
          "y2": cm(lineHeight * gridLines + 0.1),
          "lineWidth": lw,
          "lineColor": lc
        });
        horzCvs.add({
          "relativePosition": {"x": cm(xo + i * colWidth), "y": cm(yo + gridLines * lineHeight + 0.3)},
          "text": g.fmtNumber(i, 0),
          "fontSize": fs(8)
        });
        horzStack.add({
          "relativePosition": {"x": cm(xo + i * colWidth), "y": cm(yo + gridLines * lineHeight + 0.3)},
          "text": fmtTime(i, def: "0"),
          "fontSize": fs(8)
        });
      }
    }
    var vertLegend = {"stack": []};
    List vertStack = vertLegend["stack"];
    for (var i = 0; i <= gridLines; i++)
    {
      horzCvs.add({
        "type": "line",
        "x1": cm(-0.2),
        "y1": cm((gridLines - i) * lineHeight) - lw / 2,
        "x2": cm(24 * colWidth + 0.2),
        "y2": cm((gridLines - i) * lineHeight) - lw / 2,
        "lineWidth": lw,
        "lineColor": i > 0 ? lc : lcFrame
      });
//      vertCvs.add({"relativePosition": {"x": cm(xo - 0.7), "y": cm(yo + (gridLines - i) * lineHeight - 0.15)}, "text": g.fmtNumber(i / 10, 1), "fontSize": fs(8)});
      String text = "${g.fmtNumber(i * step, 1)} ${msgInsulinUnit}";
      vertStack.add({
        "relativePosition": {"x": cm(xo - 1.0), "y": cm(yo + (gridLines - i) * lineHeight - 0.15)},
        "text": text,
        "fontSize": fs(8)
      });
      vertStack.add({
        "relativePosition": {"x": cm(xo + colWidth * 24 + 0.3), "y": cm(yo + (gridLines - i) * lineHeight - 0.15)},
        "text": text,
        "fontSize": fs(8)
      });
    }

    var testArea = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    var glucArea = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    var glucValues = {"stack": []};
    var brArea = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    List brAreaCvs = brArea["canvas"] as List;
    Date date = Date(profStartTime.year, profStartTime.month, profStartTime.day);
    for (var i = 0; i < brtimes.length; i++)
    {
      double x = glucX(brtimes[i].time(date));
      double w = 0;
      if (i < brtimes.length - 1)w = glucX(brtimes[i + 1].time(date)) - x;
      else
        w = graphWidth - x;

      bool showBar = true;
/*
      if (isSingleDay)
      {
        DateTime startTime = brtimes[i].time(date);
        DateTime endTime = brtimes[i].time(date).add(Duration(minutes: 59));
        showBar = isSingleDayRange(startTime, endTime);
      }
*/
      if (showBar)brAreaCvs.add({
        "type": "rect",
        "x": cm(x),
        "y": cm(lineHeight * gridLines),
        "w": cm(w),
        "h": cm(-brtimes[i].value / step * lineHeight),
        "color": colBasalProfile,
      });
    }
    xo -= 1.0;
    yo += lineHeight * gridLines + 1.5;

    lineHeight = 0.7;
    var brTable = {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    List brTableCvs = brTable["canvas"] as List;
    brTableCvs.add({
      "type": "rect",
      "x": cm(0),
      "y": cm(0),
      "w": cm(24 * colWidth + 2.0),
      "h": cm(lineHeight),
      "color": colBasalProfile,
    });
    brTableCvs.add({
      "type": "rect",
      "x": cm(0),
      "y": cm(lineHeight),
      "w": cm(24 * colWidth + 2.0),
      "h": cm(lineHeight),
      "color": blendColor(colBasalProfile, "#ffffff", 0.5)
    });
    brTableCvs.add({
      "type": "line",
      "x1": cm(0),
      "y1": cm(0),
      "x2": cm(0),
      "y2": cm(3 * lineHeight),
      "lineWidth": lw,
      "lineColor": lc
    });
    brTableCvs.add({
      "type": "line",
      "x1": cm(24 * colWidth + 2.0),
      "y1": cm(0),
      "x2": cm(24 * colWidth + 2.0),
      "y2": cm(3 * lineHeight),
      "lineWidth": lw,
      "lineColor": lc
    });
    for (var i = 0; i < 4; i++)
      brTableCvs.add({
        "type": "line",
        "x1": cm(0),
        "y1": cm(i * lineHeight),
        "x2": cm(24 * colWidth + 2.0),
        "y2": cm(i * lineHeight),
        "lineWidth": lw,
        "lineColor": lc
      });

/*
    var pureLayout = {"hlineWidth": 0, "vlineWidth": 0, "hlineColor": 0, "vlineColor": 0, "paddingLeft": 0, "paddingRight": 0, "paddingTop": 0, "paddingBottom": 0};
    var brLegend = {
      "relativePosition": {"x": cm(xo), "y": cm(yo)},
      "table": {
        "body": [
          [{"margin": [0, cm(0.05), 0, 0], "text": "Uhr-\nzeit", "color": colorBasalFont, "alignment": "center"}],
          [{"margin": [0, cm(0.175), 0, 0], "text": msgInsulinUnit, "alignment": "center"}],
          [{"margin": [0, cm(0.17), 0, 0], "text": "Anpas-\nsung", "alignment": "center"}]
        ],
        "widths": [cm(1)]
      },
      "layout": pureLayout,
    };
// */
    var brLegend = {
      "lineHeight": lineHeight,
      "stack": [
        {
          "relativePosition": {"x": cm(xo), "y": cm(yo + 0.05)},
          "columns": [
            {"width": cm(1), "text": msgTimeShort, "fontSize": fs(8), "color": colBasalFont, "alignment": "center"}
          ]
        },
        {
          "relativePosition": {"x": cm(xo), "y": cm(yo + lineHeight + 0.2)},
          "columns": [ {"width": cm(1), "text": msgInsulinUnit, "fontSize": fs(8), "alignment": "center"},
          ]
        },
        {
          "relativePosition": {"x": cm(xo), "y": cm(yo + 2 * lineHeight + 0.05)},
          "columns": [ {"width": cm(1), "text": msgAdjustment, "fontSize": fs(8), "alignment": "center"}],
        },
      ],
    };

    var legendTime = (brLegend["stack"] as List)[0]["columns"] as List;
    var legendIE = (brLegend["stack"] as List)[1]["columns"] as List;
    var legendAdjust = (brLegend["stack"] as List)[2]["columns"] as List;

    double ieSum = 0.0;
    double ieSumNext = 0.0;
    var m = [cm(0.1), cm(0.17), cm(0), cm(0)];
    bool hasAdjustment = false;
    for (var i = 0; i < 25; i++)
    {
      m[0] = cm(0.5);
      brTableCvs.add({
        "type": "line",
        "x1": cm(1 + i * colWidth),
        "y1": cm(0),
        "x2": cm(1 + i * colWidth),
        "y2": cm(3 * lineHeight),
        "lineWidth": lw,
        "lineColor": lc
      });
      var text = {
        "width": cm(colWidth),
        "margin": [i < 24 ? cm(0.15) : cm(0), cm(0.15), cm(0), cm(0)],
        "text": (i < 24 ? g.fmtNumber(i) : msgTotal),
        "fontSize": fs(8),
        "color": colBasalFont,
        "alignment": i < 24 ? "left" : "center"
      };
      legendTime.add(text);
    }

    var m1 = [cm(0), cm(0), cm(0), cm(0)];
    var m2 = [cm(0), cm(0.15), cm(0), cm(0)];

    int lastHour = 0;
    for (var i = 0; i < brtimes.length; i++)
    {
      int hour = brtimes[i]
        .time(date)
        .hour;
      int w = 0;
      m1[0] = (hour - lastHour).toDouble();
      m2[0] = m1[0];
      lastHour = hour;
      if (i < brtimes.length - 1)w = brtimes[i + 1]
                                       .time(date)
                                       .hour - brtimes[i]
                                       .time(date)
                                       .hour;
      else
        w = 24 - brtimes[i]
          .time(date)
          .hour;
      legendIE.add({
        "width": cm(w * colWidth),
        "margin": m1,
        "text": g.fmtBasal(brtimes[i].value),
        "fontSize": fs(8),
        "alignment": "left"
      });
//*
      String text = "";
      if (i < calc.nextBRTimes.length && brtimes[i].value != calc.nextBRTimes[i].value)
      {
        text = g.fmtBasal(calc.nextBRTimes[i].value);
        hasAdjustment = true;
      }
      legendAdjust.add({"width": cm(w * colWidth), "margin": m2, "text": text, "fontSize": fs(8), "alignment": "left"});
// */
      ieSum += brtimes[i].value * w;
      ieSumNext += calc.nextBRTimes.length > i ? calc.nextBRTimes[i].value : 0.0;
    }
//    legendAdjust.add({"width": cml(colWidth), "text": "", "fontSize": fs(8)});

    legendIE.add(
      {"width": cm(colWidth), "margin": m0, "text": g.fmtBasal(ieSum), "fontSize": fs(8), "alignment": "center"});

    if (hasAdjustment) legendAdjust.add(
      {"width": cm(colWidth), "margin": m2, "text": g.fmtBasal(ieSumNext), "fontSize": fs(8), "alignment": "center"});
    var content = [
      headerFooter(), /*
      {"relativePosition": {"x": cm(2.2), "y": cm(1.0)}, "text": "Basalrate", "fontSize": fs(36), "color": colText, "bold": true},
      {
        "relativePosition": {"x": cm(20.5), "y": cm(1.85)},
        "text": "gültig ${calc.endDate == null ? 'ab' : 'von'} ${fmtDate(profile.startDate)}${calc.endDate == null ? '' : ' bis${fmtDate(calc.endDate)}'} ",
        "fontSize": fs(10),
        "color": "#c0c0c0",
        "bold": true
      },
      {"relativePosition": {"x": cm(2.2), "y": cm(2.95)}, "canvas": [ {"type": "line", "x1": 0, "y1": 0, "x2": cm(25.2), "y2": 0, "lineWidth": cm(0.2), "lineColor": colText}]},
*/
      brArea,
      testArea,
      vertLegend,
      vertLines,
      horzLegend,
      horzLines,
      glucArea,
      glucValues,
      {"relativePosition": {"x": cm(13.5), "y": cm(14.1)}, "text": msgTime, "fontSize": fs(12)},
      brTable,
      brLegend
    ];

    return content;
  }

  getIllegalMark(xo, yo, x, y)
  {
    return [
      {"relativePosition": {"x": cm(xo), "y": cm(yo)}, "type": "ellipse", "x": cm(x), "y": cm(y), "r1": 3, "r2": 3}
    ];
  }

  getBRMark(xo, yo, x, y, gluc, calc)
  {
    var ret = [
      {
        "relativePosition": {"x": cm(xo), "y": cm(yo)},
        "type": "ellipse",
        "x": cm(x),
        "y": cm(y),
        "r1": 3,
        "r2": 3,
        "color": "#f15741"
      }
    ];
    if ((gluc - calc.firstGluc).abs() > 30)
    {
      ret[0]["color"] = "#f00";
      ret.add({
        "type": "line",
        "x1": cm(x - 0.1),
        "y1": cm(y - 0.1),
        "x2": cm(x + 0.1),
        "y2": cm(y + 0.1),
        "lineColor": "#000",
        "lineWidth": cm(0.01)
      });
      ret.add({
        "type": "line",
        "x1": cm(x + 0.1),
        "y1": cm(y - 0.1),
        "x2": cm(x - 0.1),
        "y2": cm(y + 0.1),
        "lineColor": "#000",
        "lineWidth": cm(0.01)
      });
    }

    return ret;
  }
}
