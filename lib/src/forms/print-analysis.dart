import 'dart:math' as math;

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';

class PrintAnalysis extends BasePrint
{
  @override
  String id = "analysis";

  @override
  String title = Intl.message("Auswertung");

  bool isPreciseMaterial, isPreciseTarget, showStdAbw;
  int get _precisionMaterial
  => isPreciseMaterial ? 2 : 0;
  int get _precisionTarget
  => isPreciseTarget ? 1 : 0;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, msgParam1, boolValue: true),
    ParamInfo(1, msgParam2, boolValue: false),
    ParamInfo(2, msgParam3, boolValue: false),
  ];

  @override
  bool get isPortrait
  => true;

  PrintAnalysis()
  {
    init();
  }

  @override
  prepareData_(ReportData data)
  {
    isPreciseMaterial = params[0].boolValue;
    isPreciseTarget = params[1].boolValue;
    showStdAbw = params[2].boolValue;

    return data;
  }

  static String get msgParam1
  => Intl.message("Material mit Nachkommastellen");

  static String get msgParam2
  => Intl.message("Zielbereich mit Nachkommastellen");

  static String get msgParam3
  => Intl.message("Standardabweichung statt Anzahl");

  addBodyArea(List body, String title, List lines, {showLine: true})
  {
    if (showLine)
    {
      body.add([
        {
          "canvas": [
            {"type": "line", "x1": cm(0), "y1": cm(0.2), "x2": cm(13.5), "y2": cm(0.2), "lineWidth": cm(0.01)}
          ],
          "colSpan": 6
        }
      ]);
    }
    body.add([
      {
        "columns": [{"width": cm(13.5), "text": title, "fontSize": fs(8), "color": "#606060", "alignment": "center"}],
        "colSpan": 6,
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
        {"text": g.fmtNumber(entry.value, 1, false), "style": "infodata"},
      ]);
    }
    return ret;
  }
*/
  String fillLimitInfo(var stat)
  {
    if (showStdAbw)return msgStdAbw(stat.stdAbw);

    return msgCount(stat.values.length);
  }

  @override
  void fillPages(ReportData src, List<List<dynamic>> pages)
  {
    pages.add(getPage(src));
    if (g.showBothUnits)
    {
      g.glucMGDL = !g.glucMGDL;
      pages.add(getPage(src));
      g.glucMGDL = !g.glucMGDL;
    }
//    if (showInfoSheet)pages.add(getInfoPage(src));
  }

  getPage(ReportData src)
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
    String countPeriod = msgReadingsPerDay(cntp.toInt(), g.fmtNumber(cntp));
    if (cntp > 24)
    {
      cntp /= 24;
      countPeriod = msgReadingsPerHour(cntp.toInt(), g.fmtNumber(cntp));
      if (cntp > 6)
      {
        cntp = 60 / cntp;
        countPeriod = msgReadingsInMinutes(cntp.toInt(), g.fmtNumber(cntp, 1));
      }
    }

    double f = 1.5;

    DayData totalDay = DayData(null, ProfileGlucData(ProfileStoreData("Intern")));
    totalDay.entries.addAll(data.entries);
    totalDay.init();

    double tgHigh = data.stat["high"].values.length / data.count * f;
    double tgNorm = data.stat["norm"].values.length / data.count * f;
    double tgLow = data.stat["low"].values.length / data.count * f;

    double above180 = data.entriesAbove(180) / data.count * f;
    double in70180 = data.entriesIn(70, 180) / data.count * f;
    double below70 = data.entriesBelow(70) / data.count * f;

    var tableBody = [
      [
        {"text": "", "style": "infotitle"},
        {"text": msgDays, "style": "infotitle"},
        {"text": src.dayCount, "style": "infodata"},
        {"text": "", "style": "infounit", "colSpan": 3},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgReadingsCount, "style": "infotitle"},
        {"text": g.fmtNumber(data.count), "style": "infodata"},
        {"text": "($countPeriod)", "style": "infounit", "colSpan": 3},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgReservoirCount, "style": "infotitle"},
        {"text": g.fmtNumber(data.ampulleCount), "style": "infodata"},
        {
          "text": data.ampulleCount > 0 ? msgReservoirDays((src.dayCount / data.ampulleCount).round(),
            g.fmtNumber(src.dayCount / data.ampulleCount, _precisionMaterial, false, "", true)) : "",
          "style": "infounit",
          "colSpan": 3
        },
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgCatheterCount, "style": "infotitle"},
        {"text": g.fmtNumber(data.catheterCount), "style": "infodata"},
        {
          "text": data.catheterCount > 0 ? msgCatheterDays((src.dayCount / data.catheterCount).round(),
            g.fmtNumber(src.dayCount / data.catheterCount, _precisionMaterial, false, "", true)) : "",
          "style": "infounit",
          "colSpan": 3
        },
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgSensorCount, "style": "infotitle"},
        {"text": g.fmtNumber(data.sensorCount), "style": "infodata"},
        {
          "text": data.sensorCount > 0 ? msgSensorDays((src.dayCount / data.sensorCount).round(),
            g.fmtNumber(src.dayCount / data.sensorCount, _precisionMaterial, false, "", true)) : "",
          "style": "infounit",
          "colSpan": 3
        },
        {"text": "", "style": "infounit"},
      ]
    ];

    double cvsLeft = -0.5;
    double cvsWidth = 0.8;

    addBodyArea(tableBody, msgOwnLimits, [
      [
        {"text": "", "style": "infotitle"},
        {
          "text": msgValuesAbove(
            "${glucFromData(src.status.settings.thresholds.bgTargetTop)} ${getGlucInfo()["unit"]}"),
          "style": "infotitle"
        },
        {
          "text": "${g.fmtNumber(data.stat["high"].values.length / data.count * 100, _precisionTarget)} %",
          "style": "infodata"
        },
        {"text": fillLimitInfo(data.stat["high"]), "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infounit"},
        {
          "canvas": [
            {"type": "rect", "x": cm(cvsLeft), "y": cm(0), "w": cm(cvsWidth), "h": cm(tgHigh), "color": colHigh},
            {"type": "rect", "x": cm(cvsLeft), "y": cm(tgHigh), "w": cm(cvsWidth), "h": cm(tgNorm), "color": colNorm},
            {
              "type": "rect",
              "x": cm(cvsLeft),
              "y": cm(tgHigh + tgNorm),
              "w": cm(cvsWidth),
              "h": cm(tgLow),
              "color": colLow
            },
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
        {
          "text": "${g.fmtNumber(data.stat["norm"].values.length / data.count * 100, _precisionTarget)} %",
          "style": "infodata"
        },
        {"text": fillLimitInfo(data.stat["norm"]), "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infounit"},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {
          "text": msgValuesBelow(
            "${glucFromData(src.status.settings.thresholds.bgTargetBottom)} ${getGlucInfo()["unit"]}"),
          "style": "infotitle"
        },
        {
          "text": "${g.fmtNumber(data.stat["low"].values.length / data.count * 100, _precisionTarget)} %",
          "style": "infodata"
        },
        {"text": fillLimitInfo(data.stat["low"]), "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infounit"},
        {"text": "", "style": "infounit"},
      ]
    ]);

    if (src.status.settings.thresholds.bgTargetBottom != 70 || src.status.settings.thresholds
                                                                 .bgTargetTop != 180) addBodyArea(
      tableBody, msgStandardLimits, [
      [
        {"text": "", "style": "infotitle"},
        {"text": msgValuesAbove("${glucFromData(180)} ${getGlucInfo()["unit"]}"), "style": "infotitle"},
        {
          "text": "${g.fmtNumber(data.stat["stdHigh"].values.length / data.count * 100, _precisionTarget)} %",
          "style": "infodata"
        },
        {"text": fillLimitInfo(data.stat["stdHigh"]), "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infounit"},
        {
          "canvas": [
            {"type": "rect", "x": cm(cvsLeft), "y": cm(0), "w": cm(cvsWidth), "h": cm(above180), "color": colHigh},
            {
              "type": "rect",
              "x": cm(cvsLeft),
              "y": cm(above180),
              "w": cm(cvsWidth),
              "h": cm(in70180),
              "color": colNorm
            },
            {
              "type": "rect",
              "x": cm(cvsLeft),
              "y": cm(above180 + in70180),
              "w": cm(cvsWidth),
              "h": cm(below70),
              "color": colLow
            },
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
        {
          "text": "${g.fmtNumber(data.stat["stdNorm"].values.length / data.count * 100, _precisionTarget)} %",
          "style": "infodata"
        },
        {"text": fillLimitInfo(data.stat["stdNorm"]), "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infounit"},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgValuesBelow("${glucFromData(70)} ${getGlucInfo()["unit"]}"), "style": "infotitle"},
        {
          "text": "${g.fmtNumber(data.stat["stdLow"].values.length / data.count * 100, _precisionTarget)} %",
          "style": "infodata"
        },
        {"text": fillLimitInfo(data.stat["stdLow"]), "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infounit"},
        {"text": "", "style": "infounit"},
      ],
    ]);

    addBodyArea(tableBody, msgPeriod, [
      [
        {"text": "", "style": "infotitle"},
        {"text": msgLowestValue, "style": "infotitle"},
        {"text": "${glucFromData(data.min)}", "style": "infodata"},
        {"text": getGlucInfo()["unit"], "style": "infounit"},
        {"text": "", "style": "infotitle"},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgHighestValue, "style": "infotitle"},
        {"text": "${glucFromData(data.max)}", "style": "infodata"},
        {"text": getGlucInfo()["unit"], "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infotitle"},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgStandardDeviation, "style": "infotitle"},
        {"text": g.fmtNumber(totalDay.stdAbw(g.glucMGDL), 1), "style": "infodata"},
        {"text": getGlucInfo()["unit"], "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infotitle"},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgGVIFull, "style": "infotitle"},
        {"text": g.fmtNumber(data.gvi, 2), "style": "infodata"},
        {"text": gviQuality(data.gvi), "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infotitle"},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgPGSFull, "style": "infotitle"},
        {"text": g.fmtNumber(data.pgs, 2), "style": "infodata"},
        {"text": pgsQuality(data.pgs), "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infotitle"},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": "${msgGlucoseValue}${glucWarnText}", "style": "infotitle"},
        {"text": glucFromData(avgGluc), "style": "infodata"},
        {"text": "${getGlucInfo()["unit"]}", "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infotitle"},
        {
          "canvas": [
            {"type": "rect", "x": cm(cvsLeft), "y": cm(0.2), "w": cm(cvsWidth), "h": cm(0.9), "color": glucWarnColor},
          ],
          "rowSpan": 3
        },
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgHbA1CLong, "style": "infotitle"},
        {"text": hba1c(avgGluc), "style": ["infodata", "hba1c"]},
        {"text": "%", "style": ["hba1c", "infounit"], "colSpan": 2},
        {"text": "", "style": "infotitle"},
        {"text": "", "style": "infounit"},
      ],
    ]);

    addBodyArea(tableBody, msgTreatments, [
      [
        {"text": "", "style": "infotitle"},
        {"text": msgKHPerDay, "style": "infotitle"},
        {"text": g.fmtNumber(data.khCount / src.dayCount, 1, false), "style": "infodata"},
        {"text": msgKHBE(g.fmtNumber(data.khCount / src.dayCount / 12, 1, false)), "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infotitle"},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgInsulinPerDay, "style": "infotitle"},
        {"text": "${g.fmtNumber((data.ieBolusSum + data.ieBasalSum) / src.dayCount, 1, false)}", "style": "infodata"},
        {"text": "${msgInsulinUnit}", "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infotitle"},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgBolusPerDay, "style": "infotitle"},
        {"text": "${g.fmtNumber(data.ieBolusSum / src.dayCount, 1, false)}", "style": "infodata"},
        {"text": "bolus (${g.fmtNumber(data.ieBolusPrz, 1, false)} %)", "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infotitle"},
        {"text": "", "style": "infounit"},
      ],
      [
        {"text": "", "style": "infotitle"},
        {"text": msgBasalPerDay, "style": "infotitle"},
        {"text": "${g.fmtNumber(data.ieBasalSum / src.dayCount, 1, false)}", "style": "infodata"},
        {"text": "basal (${g.fmtNumber(data.ieBasalPrz, 1, false)} %)", "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infotitle"},
        {"text": "", "style": "infounit"},
      ],
      [
        {"@": data.ieMicroBolusSum > 0.0},
        {"text": "", "style": "infotitle"},
        {"text": msgMicroBolusPerDay, "style": "infotitle"},
        {"text": "${g.fmtNumber(data.ieMicroBolusSum / src.dayCount, 1, false)}", "style": "infodata"},
        {"text": "bolus (${g.fmtNumber(data.ieMicroBolusPrz, 1, false)} %)", "style": "infounit", "colSpan": 2},
        {"text": "", "style": "infotitle"},
        {"text": "", "style": "infounit"},
      ],
    ]);
    var ret = [
      headerFooter(),
      {
        "margin": [cm(0), cm(yorg), cm(0), cm(0)],
        "columns": [{"width": cm(width), "text": "${src.globals.user.name}", "fontSize": fs(20), "alignment": "center"}]
      },
      {
        "margin": [cm(5.5), cm(0.5), cm(0), cm(0)],
        "layout": "noBorders",
        "table": {
          "headerRows": 0,
          "widths": [cm(5), cm(8)],
          "body": [
            [{"text": msgBirthday, "style": "perstitle"}, {"text": src.globals.user.birthDate, "style": "persdata"}],
            [
              {"text": msgDiabSince, "style": "perstitle"},
              {"text": src.globals.user.diaStartDate, "style": "persdata"}
            ],
            [{"text": msgInsulin, "style": "perstitle"}, {"text": src.globals.user.insulin, "style": "persdata"}]
          ]
        }
      },
      {
        "margin": [cm(3.7), cm(0.5), cm(0), cm(0)],
        "layout": "noBorders",
        "table": {"headerRows": 0, "widths": [cm(0), cm(7.3), cm(1.5), cm(1.5), cm(1.5), cm(4.5)], "body": tableBody}
      }
    ];
    return ret;
  }

  getInfoPage(ReportData src)
  {
    titleInfo = null;
    subtitle = "Erklärungen";
    var ret = [
      headerFooter(),
      {
        "margin": [cm(0), cm(yorg), cm(0), cm(0)],
        "columns": [{"width": cm(width), "text": "Hinweise", "fontSize": fs(20), "alignment": "center"}]
      },
      {
        "margin": [cm(2.2), cm(0.5), cm(2.2), cm(0)],
        "text": "Der DVI ist ein Wert, der einem Wert gleicht, der ein Wert sein soll, der hoffentlich zu einem Zeilenumbruch führt, was aber nicht klar ist. Nun ist es klar und wir sind sowas von froh, dass es funktioniert. Einfach Toll :)",
        "fontSize": fs(12),
        "alignment": "justify"
      },
      {
        "margin": [cm(2.2), cm(0.2), cm(2.2), cm(0)],
        "text": "Der DVI ist ein Wert, der einem Wert gleicht, der ein Wert sein soll, der hoffentlich zu einem Zeilenumbruch führt, was aber nicht klar ist. Nun ist es klar und wir sind sowas von froh, dass es funktioniert. Einfach Toll :)",
        "fontSize": fs(12),
        "alignment": "justify",
        "color": "red"
      },
    ];
    return ret;
  }
}