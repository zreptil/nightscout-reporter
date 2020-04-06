import 'dart:math';

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';

class PrintDailyHours extends BasePrint {
  @override
  String id = "dayhours";

  int startHour = 0;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, msgStartHour, list: [
      "0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20",
      "21",
      "22",
      "23"
    ]),
  ];

  static String msgStartHour = Intl.message("Startstunde");

  @override
  extractParams() {
    startHour = params[0].intValue;
  }

  @override
  dynamic get estimatePageCount {
    int count = g?.period?.dayCount ?? 0;
    count = (count / 30).ceil();
    return {"count": count, "isEstimated": false};
  }

  @override
  String get title => Intl.message("Tagesstunden");

  @override
  bool get isPortrait => false;

  @override
  double get scale => 1.0;

  @override
  dynamic get footerText => footerTextDayTimes;

  SettingsData _settings;

  PrintDailyHours() {
    init();
  }

  fillRow(dynamic row, double f, String firstCol, DayData day, String style) {
    double wid = cm((width - 4.4 - 2.1) / 24 - 0.33);
    int hour = startHour;
    DayData orgDay = day;
    if (hour != 0 && day.prevDay != null) day = day.prevDay;

    for (int i = 0; i < 24; i++) {
      DateTime time = DateTime(0, 1, 1, hour, 0);
      double gluc = 0.0;
      int count = 0;

      if (hour == 0) {
        // erste Spalte
        addTableRow(true, cm(2.0), row, {"text": msgDate, "style": "total", "alignment": "center"},
          {"text": firstCol, "style": "total", "alignment": "center"});
        day = orgDay;
      }

      for (EntryData entry in day.entries) {
        if (entry.gluc > 0 && entry.time.hour == hour) {
          count++;
          gluc += entry.gluc;
        }
      }
      if (count > 0) gluc = gluc / count;

      if (gluc == 0) gluc = null;
/*
      EntryData entry = day.findNearest(day.entries, null, check, maxMinuteDiff: 15);
      double gluc = entry?.gluc ?? null;
*/
      // Stundenspalte
      addTableRow(true, wid, row, {"text": fmtTime(time), "style": styleForTime(time), "alignment": "center"},
          {"text": "${g.glucFromData(gluc)}", "style": style, "alignment": "right", "fillColor": colForGluc(day, gluc)});
      hour++;
      if (hour == 24) hour = 0;
    }
    tableHeadFilled = true;
  }

  String percentileFor(double value) {
    if (value == -1) return "";
    return g.glucFromData(value, 1);
  }

  @override
  getTable(widths, body) {
    dynamic ret = {
      "columns": [
        {
          "margin": [cm(2.2), cmy(yorg), cm(2.2), cmy(0.0)],
          "width": cm(width),
          "fontSize": fs(7),
          "table": {"widths": widths, "body": body},
        }
      ],
      "pageBreak": ""
    };

    return ret;
  }

  @override
  void fillPages(List<Page> pages) {
    tableHeadFilled = false;
    tableHeadLine = [];
    tableWidths = [];
    titleInfo = titleInfoBegEnd();
    _settings = repData.status.settings;
    double f = 3.3;
    var body = [];
    f /= 100;

    ProfileGlucData prevProfile = null;
    int lineCount = 0;
    var page = [];
    DayData totalDay = DayData(null, ProfileGlucData(ProfileStoreData("Intern")));
    totalDay.basalData.targetHigh = 0;
    totalDay.basalData.targetLow = 1000;
    int totalDays = 0;
    int oldLength = pages.length;
    for (DayData day in repData.data.days) {
      day.init();
      if (day.entryCountValid == 0) continue;
      totalDays++;
      totalDay.entries.addAll(day.entries);
      totalDay.bloody.addAll(day.bloody);
      totalDay.treatments.addAll(day.treatments);
      totalDay.basalData.targetHigh = max(totalDay.basalData.targetHigh, day.basalData.targetHigh);
      totalDay.basalData.targetLow = min(totalDay.basalData.targetLow, day.basalData.targetLow);
      var row = [];
      fillRow(row, f, fmtDate(day.date, null, true), day, "row");
      ProfileGlucData profile = repData.profile(DateTime(day.date.year, day.date.month, day.date.day));
      if (prevProfile == null ||
          profile.targetLow != prevProfile.targetLow ||
          profile.targetHigh != prevProfile.targetHigh) {
        body.add(tableHeadLine);
        lineCount += 2;
      }
      prevProfile = profile;

      body.add(row);
      lineCount++;
      if (lineCount == 32) {
        page.add(headerFooter());
        page.add(getTable(tableWidths, body));
        lineCount = 0;
        pages.add(Page(isPortrait, page));
        page = [];
        body = [];
        prevProfile = null;
      }
    }

/*
    var row = [];
    totalDay.init();
    fillRow(row, f, msgDaySum(totalDays), totalDay, "total");
    body.add(row);
*/
    if (prevProfile != null) {
      page.add(headerFooter());
      page.add(getTable(tableWidths, body));
      pages.add(Page(isPortrait, page));
    } else {
      Map test = pages.last.content.last as Map;
      test["columns"].last["table"]["body"].add(body.last);
    }
    if (repData.isForThumbs && pages.length - oldLength > 1) pages.removeRange(oldLength + 1, pages.length);
  }
}
