import 'dart:math';

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';

class PrintDailyStatistics extends BasePrint
{
  @override
  String id = "daystats";

  bool showHbA1c, showStdabw, showCount, showPercentile, showVarK;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, msgParam1, boolValue: true),
    ParamInfo(1, msgParam2, boolValue: true),
    ParamInfo(2, msgParam3, boolValue: true),
    ParamInfo(3, msgParam4, boolValue: true),
    ParamInfo(4, msgParam5, boolValue: false),
  ];

  static String get msgParam1
  => Intl.message("Spalte Messwerte");
  static String get msgParam2
  => Intl.message("Spalte Standardabweichung");
  static String get msgParam3
  => Intl.message("Spalten Perzentile");
  static String get msgParam4
  => Intl.message("Spalte HbA1c");
  static String get msgParam5
  => Intl.message("Spalte Variationskoeffizient");

  @override
  prepareData_(ReportData data)
  {
    showCount = params[0].boolValue;
    showStdabw = params[1].boolValue;
    showPercentile = params[2].boolValue;
    showHbA1c = params[3].boolValue;
    showVarK = params[4].boolValue;
    return data;
  }

  @override
  String title = Intl.message("Tagesstatistik");

  @override
  bool get isPortrait
  => false;

  @override
  double get scale
  => 1.0;

  bool _headFilled = false;
  dynamic _headLine = [];
  SettingsData _settings;
  dynamic _widths = [];

  PrintDailyStatistics()
  {
    init();
  }

  addRow(bool check, var width, dynamic dst, dynamic head, dynamic content)
  {
    if (!check)return;
    if (!_headFilled)
    {
      _headLine.add(head);
      _widths.add(width);
    }
    dst.add(content);
  }

  fillRow(dynamic row, double f, String firstCol, DayData day, String style)
  {
    addRow(true, cm(2.9), row, {"text": msgDate, "style": "total", "alignment": "center"},
      {"text": firstCol, "style": "total", "alignment": "center"});
    addRow(true, cm(f * 100), row, {"text": msgDistribution, "style": "total", "alignment": "center"}, {
      "style": style,
      "canvas": [
        {"type": "rect", "color": colLow, "x": cm(0), "y": cm(0), "w": cm(day.lowPrz * f), "h": cm(0.5)},
        {"type": "rect", "color": colNorm, "x": cm(day.lowPrz * f), "y": cm(0), "w": cm(day.normPrz * f), "h": cm(0.5)},
        {
          "type": "rect",
          "color": colHigh,
          "x": cm((day.lowPrz + day.normPrz) * f),
          "y": cm(0),
          "w": cm(day.highPrz * f),
          "h": cm(0.5)
        }
      ]
    });
    addRow(true, "*", row, {
      "text": msgLow(_settings.thresholds.bgTargetBottom),
      "style": "total",
      "alignment": "center",
      "fillColor": colLow
    }, {
      "text": "${g.fmtNumber(day.lowPrz, 0)} %",
      "style": style,
      "alignment": "right",
      "fillColor": style == "total" ? colLow : null
    });
    addRow(true, "*", row, {"text": msgNormal, "style": "total", "alignment": "center", "fillColor": colNorm}, {
      "text": "${g.fmtNumber(day.normPrz, 0)} %",
      "style": style,
      "alignment": "right",
      "fillColor": style == "total" ? colNorm : null
    });
    addRow(true, "*", row, {
      "text": msgHigh(_settings.thresholds.bgTargetTop),
      "style": "total",
      "alignment": "center",
      "fillColor": colHigh
    }, {
      "text": "${g.fmtNumber(day.highPrz, 0)} %",
      "style": style,
      "alignment": "right",
      "fillColor": style == "total" ? colHigh : null
    });
    // two columns for carbohydrates. Maybe they are better placed in an extra area below the line
    // to avoid columns to grow beyond every limit.
/*
    addRow(true, "auto", row, {"text": "KH\nin g", "style": "total", "alignment": "center"},
      {"text": "${carbFromData(day.carbs)}", "style": style, "alignment": "right"});
    addRow(true, "auto", row, {"text": msgKHPerDay, "style": "total", "alignment": "center"},
      {"text": "${carbFromData(day.avgCarbs)}", "style": style, "alignment": "right"});
// */
    addRow(showCount, "auto", row, {"text": msgValues, "style": "total", "alignment": "center"},
      {"text": "${g.fmtNumber(day.entryCount, 0)}", "style": style, "alignment": "right"});
    addRow(true, "auto", row, {"text": msgMin, "style": "total", "alignment": "center"},
      {"text": "${glucFromData(day.min)}", "style": style, "alignment": "right"});
    addRow(true, "auto", row, {"text": msgMax, "style": "total", "alignment": "center"},
      {"text": "${glucFromData(day.max)}", "style": style, "alignment": "right"});
    addRow(true, "auto", row, {"text": msgAverage, "style": "total", "alignment": "center"},
      {"text": "${glucFromData(day.mid, 1)}", "style": style, "alignment": "right"});
    addRow(showStdabw, "auto", row, {"text": msgDeviation, "style": "total", "alignment": "center"},
      {"text": "${g.fmtNumber(day.stdAbw(g.glucMGDL), 1)}", "style": style, "alignment": "right"});
    addRow(showVarK, "auto", row, {"text": msgVarK, "style": "total", "alignment": "center"},
      {"text": "${g.fmtNumber(day.varK, 1)}", "style": style, "alignment": "right"});
    addRow(showPercentile, cm(1.5), row, {"text": msg25, "style": "total", "alignment": "center"},
      {"text": "${glucFromData(Globals.percentile(day.entries, 25), 1)}", "style": style, "alignment": "right"});
    addRow(showPercentile, cm(1.5), row, {"text": msgMedian, "style": "total", "alignment": "center"},
      {"text": "${glucFromData(Globals.percentile(day.entries, 50), 1)}", "style": style, "alignment": "right"});
    addRow(showPercentile, cm(1.5), row, {"text": msg75, "style": "total", "alignment": "center"},
      {"text": "${glucFromData(Globals.percentile(day.entries, 75), 1)}", "style": style, "alignment": "right"});
    addRow(showHbA1c, cm(1.5), row, {"text": msgHbA1C, "style": "total", "alignment": "center", "color": colHbA1c},
      {"text": "${hba1c(day.mid)} %", "style": style, "alignment": "right", "color": colHbA1c});
    _headFilled = true;
  }

  @override
  void fillPages(ReportData src, List<List<dynamic>> pages)
  {
    _headFilled = false;
    _headLine = [];
    _widths = [];
    titleInfo = titleInfoBegEnd(src);
    _settings = src.status.settings;
    double f = 3.3;
    var body = [];
    // maybe later the margins will work properly, up to now it
    // doesn't work beacause of hardcoded margins in the tablecells
    // this code has to be moved to addRow for operating correctly
/*
    int colCount = 6;
    double wid = width - 4.4 - f - 2.0;
    var widths = [cm(2.0), cm(f), w, w, w];
    if (showCount)widths.add(w);
    widths.add(w);
    widths.add(w);
    widths.add(w);
    if (showStdabw)widths.add(w);
    if (showPercentile)
    {
      widths.add(cm(1.5));
      widths.add(cm(1.5));
      widths.add(cm(1.5));
    }
    if (showHbA1c)widths.add(cm(1.5));
// */
    f /= 100;

    ProfileGlucData prevProfile = null;
    int lineCount = 0;
    var page = [];
    DayData totalDay = DayData(null, ProfileGlucData(ProfileStoreData("Intern")));
    totalDay.basalData.targetHigh = 0;
    totalDay.basalData.targetLow = 1000;
    int totalDays = 0;
    for (DayData day in src.calc.days)
    {
      day.init();
      if (day.entries.length == 0)continue;
      totalDays++;
      totalDay.entries.addAll(day.entries);
      totalDay.bloody.addAll(day.bloody);
      totalDay.treatments.addAll(day.treatments);
      totalDay.basalData.targetHigh = max(totalDay.basalData.targetHigh, day.basalData.targetHigh);
      totalDay.basalData.targetLow = min(totalDay.basalData.targetLow, day.basalData.targetLow);
      var row = [];
      fillRow(row, f, fmtDate(day.date, null, true), day, "row");
      ProfileGlucData profile = src.profile(DateTime(day.date.year, day.date.month, day.date.day));
      if (prevProfile == null || profile.targetLow != prevProfile.targetLow || profile.targetHigh != prevProfile
        .targetHigh)
      {
        body.add(_headLine);
        lineCount += 2;
      }
      prevProfile = profile;

      body.add(row);
      lineCount ++;
      if (lineCount == 21)
      {
        page.add(headerFooter());
        page.add(getTable(_widths, body));
        lineCount = 0;
        pages.add(page);
        page = [];
        body = [];
        prevProfile = null;
      }
    }

    var row = [];
    totalDay.init();
    fillRow(row, f, msgDaySum(totalDays), totalDay, "total");
    body.add(row);

    if (prevProfile != null)
    {
      page.add(headerFooter());
      page.add(getTable(_widths, body));
      pages.add(page);
    }
  }

  getTable(widths, body)
  {
    dynamic ret = {
      "columns": [ {
        "margin": [cm(2.2), cmy(yorg), cm(2.2), cmy(0.0)],
        "width": cm(width),
        "table": {"widths": widths, "body": body},
      }
      ],
      "pageBreak": ""
    };

    return ret;
  }
}