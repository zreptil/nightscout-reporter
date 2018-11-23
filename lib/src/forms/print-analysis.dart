import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';

class PrintAnalysis extends BasePrint
{
  @override
  String id = "analysis";

  @override
  String name = Intl.message("Auswertung");

  @override
  String title = Intl.message("Auswertung");

  @override
  bool get isPortrait
  => true;

  PrintAnalysis()
  {
    init();
  }

  @override
  prepareData_(ReportData vars)
  {
    return vars;
  }

  addBodyArea(List body, String title, List lines, {showLine: true})
  {
    if (showLine)
    {
      body.add([ {
        "canvas": [ {"type": "line", "x1": cm(0), "y1": cm(0.2), "x2": cm(13.5), "y2": cm(0.2), "lineWidth": cm(0.01)}],
        "colSpan": 5
      }
      ]);
    }
    body.add([ {
      "columns": [{"width": cm(13.5), "text": title, "fontSize": fs(8), "color": "#606060", "alignment": "center"}],
      "colSpan": 5,
    }
    ]);

    for (dynamic line in lines)
    {
      if (line[0]["@"] != null)
      {
        if (line[0]["@"] == false)continue;
        else
          line.removeAt(0);
      }
      body.add(line);
    }
  }

/*
  getFactorBody(Date date, List<ProfileEntryData> list, msg(String a, String b))
  {
    dynamic ret = [];
    for (int i = 0; i < list.length; i++)
    {
      ProfileEntryData entry = list[i];
      DateTime end = DateTime(0, 1, 1, 23, 59);
      if (i < list.length - 1)end = list[i + 1].time(date);
      ret.add([
        {"text": msg(fmtTime(entry.time, withUnit: true), fmtTime(end, withUnit: true)), "style": "infotitle"},
        {"text": fmtNumber(entry.value, 1, false), "style": "infodata"},
      ]);
    }
    return ret;
  }
*/
  @override
  void fillPages(ReportData src, List<List<dynamic>> pages)
  {
    titleInfo = titleInfoBegEnd(src);
    var data = src.ns;

    var avgGluc = data.avgGluc;
    var glucWarnColor = colNorm;
    var glucWarnText = "";
//    if (hba1c > 7)glucWarnColor = blendColor("ffffff", "ff0000", (hba1c - 7) / 2);
    if (avgGluc >= src.status.settings.thresholds.bgTargetTop && avgGluc < src.status.settings.thresholds.bgTargetTop)
      glucWarnColor = blendColor(glucWarnColor, colHigh,
        (avgGluc - src.status.settings.thresholds.bgTargetTop) / (180 - src.status.settings.thresholds.bgTargetTop));
    else if (avgGluc < src.status.settings.thresholds.bgTargetBottom) glucWarnColor = blendColor(glucWarnColor, colHigh,
      (src.status.settings.thresholds.bgTargetBottom - avgGluc) / (src.status.settings.thresholds.bgTargetBottom));
    else if (avgGluc > src.status.settings.thresholds.bgTargetTop)glucWarnColor = colHigh;
/*
    var pumpList = [];
    for (var entry in config ["pumps"])
    {
      var pump = {"style": "persdata"};
      pump["text"] = "${fmtDate(entry["since"])}, ${entry["name"]}";
      pumpList.add(pump);
    }

*/
    var cntp = src.dayCount > 0 ? (data.count / src.dayCount) : 0;
    String countPeriod = msgReadingsPerDay(cntp.toInt(), fmtNumber(cntp));
    if (cntp > 24)
    {
      cntp /= 24;
      countPeriod = msgReadingsPerHour(cntp.toInt(), fmtNumber(cntp));
      if (cntp > 6)
      {
        cntp = 60 / cntp;
        countPeriod = msgReadingsInMinutes(cntp.toInt(), fmtNumber(cntp, 1));
      }
    }

    double f = 1.5;

    double tgHigh = data.highCount / data.count * f;
    double tgNorm = data.normCount / data.count * f;
    double tgLow = data.lowCount / data.count * f;

    double above180 = data.entriesAbove(180) / data.count * f;
    double in70180 = data.entriesIn(70, 180) / data.count * f;
    double below70 = data.entriesBelow(70) / data.count * f;

    var tableBody = [
      [
        {"text": "", "style": "infotitle"},
        {"text": msgDays, "style": "infotitle"},
        {"text": src.dayCount, "style": "infodata"},
        {"text": "", "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgReadingsCount, "style": "infotitle"},
        {"text": fmtNumber(data.count), "style": "infodata"},
        {"text": "($countPeriod)", "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgReservoirCount, "style": "infotitle"},
        {"text": fmtNumber(data.ampulleCount), "style": "infodata"},
        {
          "text": data.ampulleCount > 0 ? msgReservoirDays((src.dayCount / data.ampulleCount).floor()) : "",
          "style": "infounit",
          "colSpan": 2
        },
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgCatheterCount, "style": "infotitle"},
        {"text": fmtNumber(data.catheterCount), "style": "infodata"},
        {
          "text": data.catheterCount > 0 ? msgCatheterDays((src.dayCount / data.catheterCount).floor()) : "",
          "style": "infounit",
          "colSpan": 2
        },
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgSensorCount, "style": "infotitle"},
        {"text": fmtNumber(data.sensorCount), "style": "infodata"},
        {
          "text": data.sensorCount > 0 ? msgSensorDays((src.dayCount / data.sensorCount).floor()) : "",
          "style": "infounit",
          "colSpan": 2
        },
        {"text": "", "style": "infounit"},
      ]
    ];

    addBodyArea(tableBody, msgOwnLimits, [
      [
        {"text": "", "style": "infotitle"},
        {
          "text": msgValuesAbove(
            "${glucFromData(src.status.settings.thresholds.bgTargetTop)} ${getGlucInfo()["unit"]}"),
          "style": "infotitle"
        },
        {"text": "${(data.highCount / data.count * 100).floor()} %", "style": "infodata"},
        {"text": "(${fmtNumber(data.highCount)})", "style": "infounit"},
        {
          "canvas": [
            {"type": "rect", "x": cm(0), "y": cm(0), "w": cm(2.0), "h": cm(tgHigh), "color": colHigh},
            {"type": "rect", "x": cm(0), "y": cm(tgHigh), "w": cm(2.0), "h": cm(tgNorm), "color": colNorm},
            {"type": "rect", "x": cm(0), "y": cm(tgHigh + tgNorm), "w": cm(2.0), "h": cm(tgLow), "color": colLow},
          ],
          "rowSpan": 3
        },
      ],
      [
        {"text": "", "style": "infotitle"},
        {
          "text": msgValuesIn("${glucFromData(src.status.settings.thresholds.bgTargetBottom)} ${getGlucInfo()["unit"]}",
            "${glucFromData(src.status.settings.thresholds.bgTargetTop)} ${getGlucInfo()["unit"]}"),
          "style": "infotitle"
        },
        {"text": "${(data.normCount / data.count * 100).floor()} %", "style": "infodata"},
        {"text": "(${fmtNumber(data.normCount)})", "style": "infounit"},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {
          "text": msgValuesBelow(
            "${glucFromData(src.status.settings.thresholds.bgTargetBottom)} ${getGlucInfo()["unit"]}"),
          "style": "infotitle"
        },
        {"text": "${(data.lowCount / data.count * 100).floor()} %", "style": "infodata"},
        {"text": "(${fmtNumber(data.lowCount)})", "style": "infounit"},
        {"text": "", "style": "infounit"},
      ]
    ]);

    if (src.status.settings.thresholds.bgTargetBottom != 70 ||
      src.status.settings.thresholds.bgTargetTop != 180) addBodyArea(tableBody, msgStandardLimits, [
      [
        {"text": "", "style": "infotitle"},
        {"text": msgValuesAbove("${glucFromData(180)} ${getGlucInfo()["unit"]}"), "style": "infotitle"},
        {"text": "${(data.entriesIn(181, 9999) / data.count * 100).floor()} %", "style": "infodata"},
        {"text": "(${fmtNumber(data.entriesIn(181, 9999))})", "style": "infounit"},
        {
          "canvas": [
            {"type": "rect", "x": cm(0), "y": cm(0), "w": cm(2.0), "h": cm(above180), "color": colHigh},
            {"type": "rect", "x": cm(0), "y": cm(above180), "w": cm(2.0), "h": cm(in70180), "color": colNorm},
            {"type": "rect", "x": cm(0), "y": cm(above180 + in70180), "w": cm(2.0), "h": cm(below70), "color": colLow},
          ],
          "rowSpan": 3
        },
      ],
      [
        {"text": "", "style": "infotitle"},
        {
          "text": msgValuesIn(
            "${glucFromData(70)} ${getGlucInfo()["unit"]}", "${glucFromData(180)} ${getGlucInfo()["unit"]}"),
          "style": "infotitle"
        },
        {"text": "${(data.entriesIn(71, 180) / data.count * 100).floor()} %", "style": "infodata"},
        {"text": "(${fmtNumber(data.entriesIn(71, 180))})", "style": "infounit"},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgValuesBelow("${glucFromData(70)} ${getGlucInfo()["unit"]}"), "style": "infotitle"},
        {"text": "${(data.entriesIn(0, 70) / data.count * 100).floor()} %", "style": "infodata"},
        {"text": "(${fmtNumber(data.entriesIn(0, 70))})", "style": "infounit"},
        {"text": "", "style": "infounit"},
      ],
    ]);

    addBodyArea(tableBody, msgPeriod, [
      [
        {"text": "", "style": "infotitle"},
        {"text": msgLowestValue, "style": "infotitle"},
        {"text": "${glucFromData(data.min)}", "style": "infodata"},
        {"text": getGlucInfo()["unit"], "style": "infounit"},
        {"canvas": [ {"type": "rect", "x": cm(0), "y": cm(1.25), "w": cm(2.0), "h": cm(0.9), "color": glucWarnColor},
        ], "rowSpan": 3},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgHighestValue, "style": "infotitle"},
        {"text": "${glucFromData(data.max)}", "style": "infodata"},
        {"text": getGlucInfo()["unit"], "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": "${msgGlucoseValue}${glucWarnText}", "style": "infotitle"},
        {"text": glucFromData(avgGluc), "style": "infodata"},
        {"text": "${getGlucInfo()["unit"]}", "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgHbA1C, "style": "infotitle"},
        {"text": hba1c(avgGluc), "style": ["infodata", "hba1c"]},
        {"text": "%", "style": ["infounit", "hba1c"], "colSpan": 2},
        {"text": "", "style": "infounit"},
      ]
    ]);

    addBodyArea(tableBody, msgTreatments, [
      [
        {"text": "", "style": "infotitle"},
        {"text": msgKHPerDay, "style": "infotitle"},
        {"text": fmtNumber(data.khCount / src.dayCount, 1, false), "style": "infodata"},
        {"text": msgKHBE(fmtNumber(data.khCount / src.dayCount / 12, 1, false)), "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgInsulinPerDay, "style": "infotitle"},
        {"text": "${fmtNumber((data.ieBolusSum + data.ieBasalSum) / src.dayCount, 1, false)}", "style": "infodata"},
        {"text": "${msgInsulinUnit}", "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgBolusPerDay, "style": "infotitle"},
        {"text": "${fmtNumber(data.ieBolusSum / src.dayCount, 1, false)}", "style": "infodata"},
        {"text": "bolus (${fmtNumber(data.ieBolusPrz, 1, false)} %)", "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgBasalPerDay, "style": "infotitle"},
        {"text": "${fmtNumber(data.ieBasalSum / src.dayCount, 1, false)}", "style": "infodata"},
        {"text": "basal (${fmtNumber(data.ieBasalPrz, 1, false)} %)", "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infounit"},
      ],
      [
        {"@": data.ieMicroBolusSum > 0.0},
        {"text": "", "style": "infotitle"},
        {"text": msgMicroBolusPerDay, "style": "infotitle"},
        {"text": "${fmtNumber(data.ieMicroBolusSum / src.dayCount, 1, false)}", "style": "infodata"},
        {"text": "bolus (${fmtNumber(data.ieMicroBolusPrz, 1, false)} %)", "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infounit"},
      ],
    ]);
    var ret = [
      header,
      {
        "margin": [cmx(0), cmy(3), cm(0), cm(0)],
        "columns": [{"width": cm(width), "text": "${src.globals.user.name}", "fontSize": fs(20), "alignment": "center"}]
      },
      {
        "margin": [cmx(5.5), cm(0.5), cm(0), cm(0)],
        "layout": "noBorders",
        "table": {
          "headerRows": 0,
          "widths": [cm(5), cm(8)],
          "body": [
            [{"text": msgBirthday, "style": "perstitle"}, {"text": src.globals.user.birthDate, "style": "persdata"}],
            [{"text": msgDiabSince, "style": "perstitle"}, {"text": src.globals.user.diaStartDate, "style": "persdata"}
            ],
            [{"text": msgInsulin, "style": "perstitle"}, {"text": src.globals.user.insulin, "style": "persdata"}]
          ]
        }
      },
      {
        "margin": [cmx(3.7), cm(0.5), cm(0), cm(0)],
        "layout": "noBorders",
        "table": {"headerRows": 0, "widths": [cm(0), cm(7.3), cm(1.5), cm(1.5), cm(6)], "body": tableBody}
      },
      footer(),
    ];
    pages.add(ret);
  }
}