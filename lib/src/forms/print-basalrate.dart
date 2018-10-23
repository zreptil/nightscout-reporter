import 'dart:math';

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;

import 'base-print.dart';

class CalcData
{
  double firstGluc = 0.0;
  int firstTime = 0;
  int lastTime = 0;
  int bolusTime = 0;
  int glucMax = 0;
  int brBolusTime = null;
  DateTime endDate = null;
  List<globals.ProfileEntryData> nextBRTimes = List<globals.ProfileEntryData>();
}

class PrintBasalrate extends BasePrint
{
  @override
  String id = "basal";

  @override
  String get name
  => msgBasalrate;

  @override
  String get title
  => msgBasalrate;

  @override
  bool get isPortrait
  => false;

  @override
  List<String> get imgList
  => ["nightscout",];

  num lineWidth;

  msgValidRange(begDate, endDate)
  => Intl.message("gültig von $begDate bis $endDate", args: [begDate, endDate], name: "msgValidRange");
  msgValidFrom(begDate)
  => Intl.message("gültig ab $begDate", args: [begDate], name: "msgValidFrom");
  msgValidTo(endDate)
  => Intl.message("gültig bis $endDate", args: [endDate], name: "msgValidTo");

  get msgTotal
  => Intl.message("Ges.");
  get msgTimeShort
  => Intl.message("Uhr-\nzeit");
  get msgTime
  => Intl.message("Uhrzeit");
  get msgAdjustment
  => Intl.message("Anpas-\nsung");

  PrintBasalrate()
  {
    init();
  }

  @override
  hasData(globals.ReportData src)
  {
    return src.profiles.length > 0;
  }

  @override
  prepareData_(globals.ReportData vars)
  {
    return vars;
  }

  @override
  getFormData_(globals.ReportData src)
  async {
    lineWidth = cm(0.03);
    var ret = [];
    var calc = CalcData();
    DateTime startDate = DateTime(src.begDate.year, src.begDate.month, src.begDate.day);
    DateTime endDate = DateTime(src.endDate.year, src.endDate.month, src.endDate.day);
    List<globals.ProfileData> profiles = src.profiles;
    for (int i = 0; i < src.profiles.length; i++)
    {
//      calc = calcDay(src.profiles[i], calc);

      if (i < src.profiles.length - 1)
      {
        calc.nextBRTimes = src.profiles[i + 1].current.listBasal;
        calc.endDate = src.profiles[i + 1].startDate.add(Duration(days: -1));
//        calc.endDate.add(Duration(days: -1));
        if (startDate
          .difference(src.profiles[i + 1].startDate)
          .inDays >= 0)continue;
      }
      else
      {
        calc.nextBRTimes = src.profiles[i].current.listBasal;
        calc.endDate = null;
      }

      if (endDate
        .difference(src.profiles[i].startDate)
        .inDays < 0)continue;

      var page = getPage(profiles[i], calc);
      if (ret.length > 0)ret.last["pageBreak"] = "after";
      for (var j = 0; j < page.length; j++)
        ret.add(page[j]);

//      ret.add(getFooter(true, i < profiles.length - 1));
//      calc.firstTime -= 24 * 60;
//      calc.bolusTime -= 24 * 60;
//      if(calc.brBolusTime)
//        calc.brBolusTime -= 24*60;
    }
    return ret;
  }

/*
  CalcData calcDay(globals.ProfileData profile, CalcData calc)
  {
    List<globals.ProfileEntryData> brtimes = profile.store[profile.defaultProfile].listBasal;
      for(var i=0; i<brtimes.length; i++)
      {
        if(day.times[i].typ=="brtest" && day.times[i].gluc)
        {
          var gluc = Number(day.times[i].gluc);
          if(!calc.firstGluc)
          {
            var time = day.times[i].time;
            time = (time/100).floor()*60+(time%100);
            if(!calc.bolusTime || time > calc.bolusTime + 4*60)
            {
              calc.firstGluc = gluc;
              calc.firstTime = Number(day.times[i].time);
              calc.firstTime = (calc.firstTime/100).floor()*60+(calc.firstTime%100);
            }
          }
          if(gluc>calc.glucMax)
            calc.glucMax = gluc;

          if(!calc.brBolusTime)
          {
            calc.lastTime = Number(day.times[i].time);
            calc.lastTime = (calc.lastTime/100).floor()*60+(calc.lastTime%100);
          }
          if(day.times[i].bolusbe || day.times[i].bolusadjust)
          {
            calc.brBolusTime = day.times[i].time;
            calc.brBolusTime = (calc.brBolusTime/100).floor()*60+(calc.brBolusTime%100);
          }
        }
        if((day.times[i].bolusbe || day.times[i].bolusadjust) && !calc.firstTime)
        {
          calc.bolusTime = Number(day.times[i].time);
          calc.bolusTime = (calc.bolusTime/100).floor()*60+(calc.bolusTime%100);
        }
      }
    return calc;
  }
// */
  static double gridHeight = 9.45;
  static double gridWidth = 24.0;
  static double graphWidth = gridWidth / 25.0 * 24.0;

  double glucX(DateTime time)
  {
    return graphWidth / 1440 * (time.hour * 60 + time.minute);
  }

  getPage(globals.ProfileData profile, calc)
  {
    double xo = xorg;
    double yo = yorg;
    if (calc.endDate == null)titleInfo = msgValidFrom(fmtDate(profile.startDate));
    else if (profile.startDate.year == 1970)titleInfo = msgValidTo(fmtDate(calc.endDate));
    else
      titleInfo = msgValidRange(fmtDate(profile.startDate), fmtDate(calc.endDate));
    double brMax = 0.0;
    List<globals.ProfileEntryData> brtimes = profile.store[profile.defaultProfile].listBasal;
    for (var i = 0; i < brtimes.length; i++)
      brMax = max(brtimes[i].value, brMax);

    int gridLines = ((brMax * 10) + 1).floor();
    double lineHeight = gridHeight / gridLines;
    double colWidth = gridWidth / 25;

    double lw = cm(0.03);
    String lc = "#a0a0a0";
    var vertLines = {"absolutePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    var horzLines = {"absolutePosition": {"x": cm(xo - 0.2), "y": cm(yo)}, "canvas": []};
    var horzLegend = {"stack": []};

    List vertCvs = vertLines["canvas"] as List;
    List horzCvs = vertLines["canvas"] as List;
    List horzStack = horzLegend["stack"];
    for (var i = 0; i < 25; i++)
    {
      vertCvs.add({
        "type": "line",
        "x1": cm(i * colWidth),
        "y1": 0,
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
          "absolutePosition": {"x": cm(xo + i * colWidth), "y": cm(yo + gridLines * lineHeight + 0.3)},
          "text": fmtNumber(i, 0),
          "fontSize": "8"
        });
        horzStack.add({
          "absolutePosition": {"x": cm(xo + i * colWidth), "y": cm(yo + gridLines * lineHeight + 0.3)},
          "text": fmtTime(i, 0),
          "fontSize": "8"
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
//      vertCvs.add({"absolutePosition": {"x": cm(xo - 0.7), "y": cm(yo + (gridLines - i) * lineHeight - 0.15)}, "text": fmtNumber(i / 10, 1), "fontSize": "8"});
      String text = "${fmtNumber(i / 10, 1)} ${msgInsulinUnit}";
      vertStack.add({
        "absolutePosition": {"x": cm(xo - 1.0), "y": cm(yo + (gridLines - i) * lineHeight - 0.15)},
        "text": text,
        "fontSize": "8"
      });
      vertStack.add({
        "absolutePosition": {"x": cm(xo + colWidth * 24 + 0.3), "y": cm(yo + (gridLines - i) * lineHeight - 0.15)},
        "text": text,
        "fontSize": "8"
      });
    }

    var testArea = {"absolutePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    var glucArea = {"absolutePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    var glucValues = {"stack": []};
    var brArea = {"absolutePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    List brAreaCvs = brArea["canvas"] as List;
    for (var i = 0; i < brtimes.length; i++)
    {
      double x = glucX(brtimes[i].time);
      double w = 0;
      if (i < brtimes.length - 1)w = glucX(brtimes[i + 1].time) - x;
      else
        w = graphWidth - x;
      brAreaCvs.add({
        "type": "rect",
        "x": cm(x),
        "y": cm(lineHeight * gridLines),
        "w": cm(w),
        "h": cm(-brtimes[i].value * 10 * lineHeight),
        "color": colBasal
      });
    }
    xo -= 1.0;
    yo += lineHeight * gridLines + 1.5;

    lineHeight = 0.7;
    var brTable = {"absolutePosition": {"x": cm(xo), "y": cm(yo)}, "canvas": []};
    List brTableCvs = brTable["canvas"] as List;
    brTableCvs.add(
      {"type": "rect", "x": cm(0), "y": cm(0), "w": cm(24 * colWidth + 2.0), "h": cm(lineHeight), "color": colBasal});
    brTableCvs.add({
      "type": "rect",
      "x": cm(0),
      "y": cm(lineHeight),
      "w": cm(24 * colWidth + 2.0),
      "h": cm(lineHeight),
      "color": blendColor(colBasal, "#ffffff", 0.5)
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
      "absolutePosition": {"x": cm(xo), "y": cm(yo)},
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
          "absolutePosition": {"x": cm(xo), "y": cm(yo + 0.05)},
          "columns": [
            {"width": cm(1), "text": msgTimeShort, "fontSize": "8", "color": colBasalFont, "alignment": "center"}]
        },
        {
          "absolutePosition": {"x": cm(xo), "y": cm(yo + lineHeight + 0.2)},
          "columns": [ {"width": cm(1), "text": msgInsulinUnit, "fontSize": "8", "alignment": "center"},
          ]
        },
        {
          "absolutePosition": {"x": cm(xo), "y": cm(yo + 2 * lineHeight + 0.05)},
          "columns": [ {"width": cm(1), "text": msgAdjustment, "fontSize": "8", "alignment": "center"}],
        },
      ],
    };

    var legendTime = (brLegend["stack"] as List)[0]["columns"] as List;
    var legendIE = (brLegend["stack"] as List)[1]["columns"] as List;
    var legendAdjust = (brLegend["stack"] as List)[2]["columns"] as List;

    double ieSum = 0.0;
    double ieSumNext = 0.0;
    var m = [cm(0.1), cm(0.17), 0, 0];
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
        "margin": [i < 24 ? cm(0.15) : 0, cm(0.15), 0, 0],
        "text": (i < 24 ? fmtNumber(i) : msgTotal),
        "fontSize": "8",
        "color": colBasalFont,
        "alignment": i < 24 ? "left" : "center"
      };
      legendTime.add(text);
    }

    double x = 0.0;
    var m1 = [0, 0, 0, 0];
    int lastHour = 0;
    for (var i = 0; i < brtimes.length; i++)
    {
      int hour = brtimes[i].time.hour;
      int w = 0;
      m1[0] = hour - lastHour;
      lastHour = hour;
      if (i < brtimes.length - 1)w = brtimes[i + 1].time.hour - brtimes[i].time.hour;
      else
        w = 24 - brtimes[i].time.hour;
      legendIE.add({
        "width": cm(w * colWidth),
        "margin": m1,
        "text": fmtNumber(brtimes[i].value, 1),
        "fontSize": "8",
        "alignment": "left"
      });
/*
      if (brtimes[i].value != calc.nextBRTimes[i].value)
      {
        hasAdjustment = true;
        legendAdjust.add({
          "width": cm(w),
          "margin": [0, cm(0.15), 0, 0],
          "text": fmtNumber(calc.nextBRTimes[i].value, 1),
          "fontSize": "8",
          "alignment": "center"
        });
// */
      ieSum += brtimes[i].value * w;
      ieSumNext += calc.nextBRTimes[i].value;
    }
    legendAdjust.add({"width": cm(colWidth), "text": "", "fontSize": "8"});

    legendIE.add(
      {"width": cm(colWidth), "margin": m0, "text": fmtNumber(ieSum, 1), "fontSize": "8", "alignment": "center"});

    if (hasAdjustment) legendAdjust.add({
      "width": cm(colWidth),
      "margin": [0, cm(0.15), 0, 0],
      "text": fmtNumber(ieSumNext, 1),
      "fontSize": "8",
      "alignment": "center"
    });
    var content = [
      header, /*
      {"absolutePosition": {"x": cm(2.2), "y": cm(1.0)}, "text": "Basalrate", "fontSize": "36", "color": colText, "bold": true},
      {
        "absolutePosition": {"x": cm(20.5), "y": cm(1.85)},
        "text": "gültig ${calc.endDate == null ? 'ab' : 'von'} ${fmtDate(profile.startDate)}${calc.endDate == null ? '' : ' bis${fmtDate(calc.endDate)}'} ",
        "fontSize": "10",
        "color": "#c0c0c0",
        "bold": true
      },
      {"absolutePosition": {"x": cm(2.2), "y": cm(2.95)}, "canvas": [ {"type": "line", "x1": 0, "y1": 0, "x2": cm(25.2), "y2": 0, "lineWidth": cm(0.2), "lineColor": colText}]},
*/
      brArea,
      testArea,
      vertLegend,
      vertLines,
      horzLegend,
      horzLines,
      glucArea,
      glucValues,
      {"absolutePosition": {"x": cm(13.5), "y": cm(14.1)}, "text": msgTime, "fontSize": 12},
      brTable,
      brLegend,
      footer(),
    ];

    return

      content

    ;
  }

  getIllegalMark(xo, yo, x, y)
  {
    return [
      {"absolutePosition": {"x": cm(xo), "y": cm(yo)}, "type": "ellipse", "x": cm(x), "y": cm(y), "r1": 3, "r2": 3}];
  }

  getBRMark(xo, yo, x, y, gluc, calc)
  {
    var ret = [ {
      "absolutePosition": {"x": cm(xo), "y": cm(yo)},
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
