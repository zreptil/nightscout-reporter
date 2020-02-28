import 'dart:math' as math;

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/forms/print-daily-log.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';

class PrintDailyGluc extends BasePrint {
  bool showAllValues, showBolus;

  @override
  String id = "daygluc";

  @override
  String get title => Intl.message("Tagestrend");

  @override
  List<ParamInfo> params = [ParamInfo(1, msgParam1, boolValue: false), ParamInfo(2, msgParam2, boolValue: false)];

  @override
  bool get isPortrait => true;

  static String get msgParam1 => Intl.message("Alle Werte für den Tag anzeigen");
  static String get msgParam2 => Intl.message("Bolusspalte anzeigen");

  String msgBasalInfo(String time) =>
      Intl.message("Die angezeigte Basalrate ist seit ${time}  gültig und beinhaltet keine temporären Änderungen.",
          args: [time], name: "msgBasalInfo", meaning: "The informational text on the page Daytrend for the basalrate");

  PrintDailyProfile() {
    init();
  }

  @override
  dynamic get footerText => footerTextDayTimes;

  @override
  extractParams() {
    showAllValues = params[0].boolValue;
    showBolus = params[1].boolValue;
  }

  @override
  String get backsuffix => showAllValues ? "" : "full";

  @override
  dynamic get estimatePageCount {
    int count = g?.period?.dayCount * (showAllValues ? 3 : 1);
    return {"count": count, "isEstimated": false};
  }

  @override
  void fillPages(List<Page> pages) {
    var data = repData.data;
    int oldLength = pages.length;
    for (DayData day in data.days) {
      if (repData.isForThumbs) {
        bool savSave = showAllValues;
        bool sbSave = showBolus;
        showAllValues = false;
        showBolus = true;
        getPage(day, pages);
        pages.removeRange(oldLength + 1, pages.length);
        showAllValues = true;
        showBolus = true;
        getPage(day, pages);
        showAllValues = savSave;
        showBolus = sbSave;
        if (pages.length - oldLength > 2) pages.removeRange(oldLength + 2, pages.length);
      } else {
        getPage(day, pages);
        if (g.showBothUnits) {
          g.glucMGDL = !g.glucMGDL;
          getPage(day, pages);
          g.glucMGDL = !g.glucMGDL;
        }
      }
      if (repData.isForThumbs) break;
    }
  }

  void getPage(DayData day, List<Page> pages) {
    titleInfo = fmtDate(day.date, null, false, true);

    var tables = [];

    double space = 0.4;
    int count = showAllValues ? day.entries.length : 24;
    int columns = (count ~/ 37) + 1;
    columns = math.min(columns, 2);

    double wid = (width - 2 * xframe) / columns;
    wid -= space * (columns - 1) / columns;
    double fw = 3.5;
    int colCount = showAllValues ? 3 : 4;
    if (showBolus) colCount++;
    double sw = colCount / (1 - 1 / fw);
    var widths = columns == 1
        ? [cm(wid / fw - 0.34), cm(wid / sw - 0.34), cm(wid / sw - 0.34), cm(wid / sw - 0.34), cm(wid / sw - 0.34)]
        : [cm(wid / fw - 0.34), cm(wid / sw - 0.34), cm(wid / sw - 0.34), cm(wid / sw - 0.34)];

    if (showBolus) widths.add(cm(wid / sw - 0.34));

    int idx = 0;
    int lines = 0;
    double trendGluc = 0;
    if (day.prevDay != null) {
      EntryData temp = day.prevDay.entries.firstWhere((e) => e.time.hour == 23 && e.time.minute == 0, orElse: null);
      if (temp != null) trendGluc = temp.gluc;
    }
    ProfileGlucData profile = repData.profile(DateTime(day.date.year, day.date.month, day.date.day), null, false);
    double basalMax = 0.1;
    for (ProfileEntryData entry in profile.store.listBasal) basalMax = math.max(entry.value, basalMax);

    for (EntryData entry in day.entries) {
      if (idx >= tables.length) {
        if (showAllValues)
          tables.add([
            [
              {"text": msgTime, "style": "total", "alignment": "center"},
              {"text": g.getGlucInfo()["unit"], "style": "total", "alignment": "center"},
              {"text": msgTrend, "style": "total", "alignment": "center"},
              {"text": msgKHTitle, "style": "total", "alignment": "center"}
            ]
          ]);
        else
          tables.add([
            [
              {"text": msgTime, "style": "total", "alignment": "center"},
              {"text": g.getGlucInfo()["unit"], "style": "total", "alignment": "center"},
              {"text": msgTrend, "style": "total", "alignment": "center"},
              {"text": msgBasal, "style": "total", "alignment": "center"},
              {"text": msgKHTitle, "style": "total", "alignment": "center"}
            ]
          ]);
        if (showBolus) tables.last.last.add({"text": msgBolus, "style": "total", "alignment": "center"});
      }

      if (!showAllValues && entry.time.minute != 0) continue;

      int startTime = g.timeForCalc(entry.time);
      int endTime = g.timeForCalc(entry.time) + (showAllValues ? 5 : 60) * 60;
      double bolusSum = 0.0;
      double carbs = 0.0;
      Iterable<TreatmentData> list =
          day.treatments.where((t) => t.carbs >= 0 && t.timeForCalc >= startTime && t.timeForCalc < endTime);
      for (TreatmentData t in list) {
        carbs += t.carbs;
        bolusSum += t.bolusInsulin ?? 0;
      }

      if (bolusSum == 0) bolusSum = null;

      String text = "${fmtTime(entry.time, withUnit: columns < 3)}";
      String trend = "";
      String trendColor = "";
      String gluc = "${g.glucFromData(entry.gluc)}";
      if (entry.time.minute == 0 && trendGluc > 0) {
        double trendValue = (entry.gluc - trendGluc) / trendGluc * 100;
        trend = "${g.fmtNumber(trendValue, 0)}%";
        if (entry.gluc >= 0) trendGluc = entry.gluc;
        if (trendValue.abs() >= 15)
          trendColor = colTrendCrit;
        else if (trendValue.abs() >= 10)
          trendColor = colTrendWarn;
        else
          trendColor = colTrendNorm;
      }
      if (entry.gluc <= 0) {
        gluc = "";
        trend = "";
        trendColor = "";
      }
      if (showAllValues) {
        tables[idx].add([
          {"text": text, "alignment": "center", "style": styleForTime(entry.time)},
          {"text": gluc, "alignment": "center", "fillColor": colForGluc(day, entry.gluc)},
          {"text": trend, "alignment": "right", "fillColor": trendColor},
          {"text": carbs > 0 ? msgKH(carbs) : "", "alignment": "center"}
        ]);
      } else {
        ProfileEntryData d = profile.store.listBasal
            .lastWhere((e) => e.time(day.date).isBefore(entry.time.add(Duration(seconds: 1))), orElse: null);
        String basal = d == null ? "" : g.fmtBasal(d.value);
//        basal = "${basal} - ${d.isCalculated?"true":"false"}";
        double w = d.value * (widths[3] + cm(0.1)) / basalMax;
        tables[idx].add([
          {"text": text, "alignment": "center", "style": styleForTime(entry.time)},
          {"text": gluc, "alignment": "center", "fillColor": colForGluc(day, entry.gluc)},
          {"text": trend, "alignment": "right", "fillColor": trendColor},
          {
            "stack": [
              {
                "relativePosition": {"x": cm(-0.05), "y": cm(0)},
                "canvas": [
                  {"type": "rect", "x": cm(0), "y": cm(0), "w": w, "h": cm(0.4), "color": colBasalDay}
                ]
              },
              {"text": basal, "alignment": "center"},
            ]
          },
          {"text": carbs > 0 ? msgKH(carbs) : "", "alignment": "center"},
        ]);
      }

      if (showBolus)
      {
        text = bolusSum == null ? null : "${g.fmtNumber(bolusSum, 1)} ${msgInsulinUnit}";
        tables[idx].last.add({"text": text, "alignment": "center"});
      }

      lines++;
      if (lines > 37) {
        lines = 0;
        idx++;
      }
    }

    var ret = [headerFooter()];
    double x = xframe;
    bool doAdd = false;
    idx = 0;
    double y = yorg;

    if (!showAllValues) {
      ret.add({
        "absolutePosition": {"x": cm(x), "y": cm(yorg)},
        "columns": [
          {"width": cm(wid), "text": msgBasalInfo(fmtDateTime(profile.store.startDate)), "fontSize": fs(10)}
        ]
      });
      y += 1.5;
    }

    for (var table in tables) {
      ret.add({
        "absolutePosition": {"x": cm(x), "y": cm(y)},
        "margin": [cm(0), cm(0), cm(0), cm(wid)],
        "fontSize": fs(10),
        "table": {"headerRows": 0, "widths": widths, "body": table}
      });

      doAdd = true;
      idx++;
      if (idx < columns) {
        x += wid + space;
      } else {
        x = xframe;
        idx = 0;
        pages.add(Page(isPortrait, ret));
        ret = [headerFooter()];
        doAdd = false;
      }
    }

    if (doAdd) pages.add(Page(isPortrait, ret));
  }
}
