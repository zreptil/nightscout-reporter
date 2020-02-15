import 'dart:math' as math;

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';

class PrintDailyProfile extends BasePrint {
  bool showSeconds;

  @override
  String id = "dayprofile";

  @override
  String get title => Intl.message("Tagesprofil");

  @override
  List<ParamInfo> params = [ParamInfo(1, msgParam1, boolValue: false)];

  @override
  bool get isPortrait => true;

  static String get msgParam1 => Intl.message("Sekunden anzeigen");

  PrintDailyProfile() {
    init();
  }

  @override
  extractParams() {
    showSeconds = params[0].boolValue;
  }

  @override
  dynamic get estimatePageCount {
    int count = g?.period?.dayCount ?? 0;
    return {"count": count, "isEstimated": true};
  }

  @override
  void fillPages(List<Page> pages) {
    var data = repData.data;
    int oldLength = pages.length;
    for (DayData day in data.days) {
      getPage(day, pages);
      if (g.showBothUnits) {
        g.glucMGDL = !g.glucMGDL;
        getPage(day, pages);
        g.glucMGDL = !g.glucMGDL;
      }
      if (repData.isForThumbs) break;
    }
    if (repData.isForThumbs && pages.length - oldLength > 1) pages.removeRange(oldLength + 1, pages.length);
  }

  void getPage(DayData day, List<Page> pages) {
    titleInfo = fmtDate(day.date, null, false, true);

    var tables = [];

    double space = 0.4;
    int count = day.profile.length;
    int columns = (count ~/ 37) + 1;
    columns = math.min(columns, 3);

    double wid = (width - 2 * xframe) / columns;
    wid -= space * (columns - 1) / columns;
    var widths = [
      cm(wid / (columns == 3 ? 3 : 2) - 0.34),
      cm(wid / (columns == 3 ? 3 : 4) - 0.34),
      cm(wid / (columns == 3 ? 3 : 4) - 0.34)
    ];

    double sum = 0.0;
    int idx = 0;
    int lines = 0;
    double max = 0.0;
    for (ProfileEntryData entry in day.profile) max = math.max(entry.value, max);

    for (ProfileEntryData entry in day.profile) {
      if (idx >= tables.length)
        tables.add([
          [
            {"text": msgTime, "style": "total", "alignment": "center"},
            {"text": msgIEHr, "style": "total", "alignment": "center"},
            {"text": msgSum, "style": "total", "alignment": "center"}
          ]
        ]);

      sum += entry.value * entry.duration / 3600;
      double w = entry.value * (widths[1] + cm(0.1)) / max;
      String text = "${fmtTime(entry.time(day.date), withSeconds: showSeconds, withUnit: !showSeconds && columns < 3)}";
      if (columns < 3)
        text =
            "${text} - ${fmtTime(entry.time(day.date).add(Duration(seconds: entry.duration)), withSeconds: showSeconds, withUnit: !showSeconds && columns < 3)}";
      tables[idx].add([
        {"text": text, "alignment": "center"},
        {
          "stack": [
            {
              "relativePosition": {"x": cm(-0.05), "y": cm(0)},
              "canvas": [
                {"type": "rect", "x": cm(0), "y": cm(0), "w": w, "h": cm(0.4), "color": colBasalDay}
              ]
            },
            {"text": g.fmtNumber(entry.value, g.basalPrecision), "alignment": "left"},
          ]
        },
        {"text": g.fmtNumber(sum, g.basalPrecision), "alignment": "right"},
      ]);
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
    for (var table in tables) {
      ret.add({
        "absolutePosition": {"x": cm(x), "y": cm(yorg)},
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
