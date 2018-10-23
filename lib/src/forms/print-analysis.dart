import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;

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
  prepareData_(globals.ReportData vars)
  {
    return vars;
  }

  msgReadingsPerDay(howMany, fmt)
  =>
    Intl.plural(howMany, zero: "Keine Messwerte vorhanden",
      one: "1 Messung am Tag",
      other: "$fmt Messungen am Tag",
      args: [howMany, fmt],
      name: "msgReadingsPerDay");
  msgReadingsPerHour(howMany, fmt)
  =>
    Intl.plural(howMany, zero: "Keine Messwerte vorhanden",
      one: "1 Messung pro Stunde",
      other: "$fmt Messungen pro Stunde",
      args: [howMany, fmt],
      name: "msgReadingsPerHour");
  msgReadingsInMinutes(howMany, fmt)
  =>
    Intl.plural(howMany, zero: "Keine Messwerte vorhanden",
      one: "1 Messung pro Minute",
      other: "Messung alle $fmt Minuten",
      args: [howMany, fmt],
      name: "msgReadingsInMinutes");
  msgValuesIn(low, high)
  => Intl.message("Werte zwischen ${low} und ${high}:", args: [low, high], name: "msgValuesIn");
  msgValuesBelow(low)
  => Intl.message("Werte unter ${low}:", args: [low], name: "msgValuesBelow");
  msgValuesAbove(high)
  => Intl.message("Werte über ${high}:", args: [high], name: "msgValuesAbove");
  msgKHBE(value)
  => Intl.message("g KH ($value BE)", args: [value], name: "msgKHBE");
  msgReservoirDays(count)
  =>
    Intl.plural(count, one: "(Ø $count Tag pro Ampulle)",
      zero: "(keine Ampulle)",
      other: "(Ø $count Tage pro Ampulle)",
      args: [count],
      name: "msgReservoirDays");
  msgCatheterDays(count)
  =>
    Intl.plural(count, one: "(Ø $count Tag pro Katheter)",
      zero: "(keine Katheter)",
      other: "(Ø $count Tage pro Katheter)",
      args: [count],
      name: "msgCatheterDays");
  get msgBirthday
  => Intl.message("Geburtstag :");
  get msgDiabSince
  => Intl.message("Diabetes seit:");
  get msgInsulin
  => Intl.message("Insulin:");
  get msgDays
  => Intl.message("Ausgewertete Tage:");
  get msgReadingsCount
  => Intl.message("Anzahl Messungen:");
  get msgReservoirCount
  => Intl.message("Anzahl Ampullen:");
  get msgCatheterCount
  => Intl.message("Anzahl Katheter:");
  get msgHbA1C
  => Intl.message("geschätzter HbA1c");
  get msgLowestValue
  => Intl.message("Niedrigster Wert im Zeitraum:");
  get msgHighestValue
  => Intl.message("Höchster Wert im Zeitraum:");
  get msgGlucoseValue
  => Intl.message("Zuckerwert");
  get msgKHPerDay
  => Intl.message("KH pro Tag");
  get msgInsulinPerDay
  => Intl.message("Ø Insulin pro Tag");
  get msgBolusPerDay
  => Intl.message("Ø Bolus pro Tag");
  get msgBasalPerDay
  => Intl.message("Ø Basal pro Tag");
  get msgInsulinRatio
  => Intl.message("Ø Insulinverhältnis");
  get msgBolus
  => Intl.message("Bolus");
  get msgBasal
  => Intl.message("Basal");
  get msgNone
  => Intl.message("Keine");
  get msgUntil
  => Intl.message("bis");

  @override
  getFormData_(globals.ReportData src)
  {
    titleInfo = "${fmtDate(src.begDate)} ${msgUntil} ${fmtDate(src.endDate)}";
    var data = src.ns;

    var avgGluc = data.avgGluc;
    var glucWarnColor = colNorm;
    var glucWarnText = "";
    var hba1c = (avgGluc + 86) / 33.3;
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

    double graphTop = 10.3;
    double f = 1.5;

    double tgHigh = data.highCount / data.count * f;
    double tgNorm = data.normCount / data.count * f;
    double tgLow = data.lowCount / data.count * f;

    double above180 = data.entriesAbove(180) / data.count * f;
    double in70180 = data.entriesIn(70, 180) / data.count * f;
    double below70 = data.entriesBelow(70) / data.count * f;

    var ret = [
      header,
      {"margin": [0, cm(3), 0, 0], "text": "${src.globals.userName}", "fontSize": 20, "alignment": "center"},
      {
        "margin": [cm(5.5), cm(0.5), 0, 0],
        "layout": "noBorders",
        "table": {
          "headerRows": 0,
          "widths": [cm(5), cm(8)],
          "body": [
            [{"text": msgBirthday, "style": "perstitle"}, {"text": src.globals.birthDate, "style": "persdata"}],
            [{"text": msgDiabSince, "style": "perstitle"}, {"text": src.globals.diaStartDate, "style": "persdata"}],
//              [ {"text": "Pumpen:", "style": "perstitle"}, pumpList],
            [{"text": msgInsulin, "style": "perstitle"}, {"text": src.globals.insulin, "style": "persdata"}]
          ]
        }
      }
//         ,{ "text": "\nBerechnungswerte:", bold: true}
      , /*
      {
        "absolutePosition": {"x": cm(13.7), "y": cm(graphTop)},
        "canvas": [
          {"type": "rect", "x": 0, "y": 0, "w": cm(2.0), "h": cm(tgHigh), "color": colHigh},
          {"type": "rect", "x": 0, "y": cm(tgHigh), "w": cm(2.0), "h": cm(tgNorm), "color": colNorm},
          {"type": "rect", "x": 0, "y": cm(tgHigh + tgNorm), "w": cm(2.0), "h": cm(tgLow), "color": colLow},
        ]
      },
      {
        "absolutePosition": {"x": cm(13.7), "y": cm(graphTop + 2.3)},
        "canvas": [
          {"type": "rect", "x": 0, "y": 0, "w": cm(2.0), "h": cm(above180), "color": colHigh},
          {"type": "rect", "x": 0, "y": cm(above180), "w": cm(2.0), "h": cm(in70180), "color": colNorm},
          {"type": "rect", "x": 0, "y": cm(above180 + in70180), "w": cm(2.0), "h": cm(below70), "color": colLow},
        ]
      },
      {
        "absolutePosition": {"x": cm(13.7), "y": cm(graphTop + 5.9)},
        "canvas": [ {"type": "rect", "x": 0, "y": 0, "w": cm(2.0), "h": cm(0.9), "color": glucWarnColor},
        ]
      },// */
      {
        "margin": [cm(2.7), cm(0.5), 0, 0, 0],
        "layout": "noBorders",
        "table": {
          "headerRows": 0,
          "widths": [0, cm(7.3), cm(1.5), cm(1), cm(6)],
          "body": [
            [
              {"text": ""},
              {"text": msgDays, "style": "infotitle"},
              {"text": src.dayCount, "style": "infodata"},
              {"text": "", "style": "infounit", "colSpan": 2},
              {"text": ""},
            ],
            [
              {"text": ""},
              {"text": msgReadingsCount, "style": "infotitle"},
              {"text": fmtNumber(data.count), "style": "infodata"},
              {"text": "(Ø $countPeriod)", "style": "infounit", "colSpan": 2},
              {"text": ""},
            ],
            [
              {"text": ""},
              {"text": msgReservoirCount, "style": "infotitle"},
              {"text": fmtNumber(data.ampulleCount), "style": "infodata"},
              {
                "text": data.ampulleCount > 0 ? msgReservoirDays((src.dayCount / data.ampulleCount).floor()) : "",
                "style": "infounit",
                "colSpan": 2
              },
              {"text": ""},
            ],
            [
              {"text": ""},
              {"text": msgCatheterCount, "style": "infotitle"},
              {"text": fmtNumber(data.catheterCount), "style": "infodata"},
              {
                "text": data.catheterCount > 0 ? msgCatheterDays((src.dayCount / data.catheterCount).floor()) : "",
                "style": "infounit",
                "colSpan": 2
              },
              {"text": ""},
            ],
            [ {
              "canvas": [ {"type": "line", "x1": 0, "y1": 0, "x2": cm(13.5), "y2": 0, "lineWidth": cm(0.01)}],
              "colSpan": 5,
              "style": "infoline"
            }
            ],
            [
              {"text": ""},
              {
                "text": msgValuesAbove(
                  "${glucFromData(src.status.settings.thresholds.bgTargetTop)} ${getGlucInfo()["unit"]}"),
                "style": "infotitle"
              },
              {"text": "${(data.highCount / data.count * 100).floor()} %", "style": "infodata"},
              {"text": "(${fmtNumber(data.highCount)})", "style": "infounit"},
              {
                "canvas": [
                  {"type": "rect", "x": 0, "y": 0, "w": cm(2.0), "h": cm(tgHigh), "color": colHigh},
                  {"type": "rect", "x": 0, "y": cm(tgHigh), "w": cm(2.0), "h": cm(tgNorm), "color": colNorm},
                  {"type": "rect", "x": 0, "y": cm(tgHigh + tgNorm), "w": cm(2.0), "h": cm(tgLow), "color": colLow},
                ],
                "rowSpan": 3
              },
            ],
            [
              {"text": ""},
              {
                "text": msgValuesIn(
                  "${glucFromData(src.status.settings.thresholds.bgTargetBottom)} ${getGlucInfo()["unit"]}",
                  "${glucFromData(src.status.settings.thresholds.bgTargetTop)} ${getGlucInfo()["unit"]}"),
                "style": "infotitle"
              },
              {"text": "${(data.normCount / data.count * 100).floor()} %", "style": "infodata"},
              {"text": "(${fmtNumber(data.normCount)})", "style": "infounit"},
              {"text": ""},
            ],
            [
              {"text": ""},
              {
                "text": msgValuesBelow(
                  "${glucFromData(src.status.settings.thresholds.bgTargetBottom)} ${getGlucInfo()["unit"]}"),
                "style": "infotitle"
              },
              {"text": "${(data.lowCount / data.count * 100).floor()} %", "style": "infodata"},
              {"text": "(${fmtNumber(data.lowCount)})", "style": "infounit"},
              {"text": ""},
            ],
            [ {
              "canvas": [ {"type": "line", "x1": 0, "y1": 0, "x2": cm(13.5), "y2": 0, "lineWidth": cm(0.01)}],
              "colSpan": 5,
              "style": "infoline"
            }
            ],
            [
              {"text": ""},
              {"text": msgValuesAbove("${glucFromData(180)} ${getGlucInfo()["unit"]} :"), "style": "infotitle"},
              {"text": "${(data.entriesIn(180, 9999) / data.count * 100).floor()} %", "style": "infodata"},
              {"text": "(${fmtNumber(data.entriesIn(180, 9999))})", "style": "infounit"},
              {
                "canvas": [
                  {"type": "rect", "x": 0, "y": 0, "w": cm(2.0), "h": cm(above180), "color": colHigh},
                  {"type": "rect", "x": 0, "y": cm(above180), "w": cm(2.0), "h": cm(in70180), "color": colNorm},
                  {
                    "type": "rect",
                    "x": 0,
                    "y": cm(above180 + in70180),
                    "w": cm(2.0),
                    "h": cm(below70),
                    "color": colLow
                  },
                ],
                "rowSpan": 3
              },
            ],
            [
              {"text": ""},
              {
                "text": msgValuesIn(
                  "${glucFromData(70)} ${getGlucInfo()["unit"]}", "${glucFromData(180)} ${getGlucInfo()["unit"]}"),
                "style": "infotitle"
              },
              {"text": "${(data.entriesIn(70, 180) / data.count * 100).floor()} %", "style": "infodata"},
              {"text": "(${fmtNumber(data.entriesIn(70, 180))})", "style": "infounit"},
              {"text": ""},
            ],
            [
              {"text": ""},
              {"text": msgValuesBelow("${glucFromData(70)} ${getGlucInfo()["unit"]}"), "style": "infotitle"},
              {"text": "${(data.entriesIn(0, 70) / data.count * 100).floor()} %", "style": "infodata"},
              {"text": "(${fmtNumber(data.entriesIn(0, 70))})", "style": "infounit"},
              {"text": ""},
            ],
            [ {
              "canvas": [ {"type": "line", "x1": 0, "y1": 0, "x2": cm(13.5), "y2": 0, "lineWidth": cm(0.01)}],
              "colSpan": 5,
              "style": "infoline"
            }
            ],
            [
              {"text": ""},
              {"text": msgLowestValue, "style": "infotitle"},
              {"text": "${glucFromData(data.min)}", "style": "infodata"},
              {"text": getGlucInfo()["unit"], "style": "infounit"},
              {"canvas": [ {"type": "rect", "x": 0, "y": cm(1.25), "w": cm(2.0), "h": cm(0.9), "color": glucWarnColor},
              ], "rowSpan": 3},
            ],
            [
              {"text": ""},
              {"text": msgHighestValue, "style": "infotitle"},
              {"text": "${glucFromData(data.max)}", "style": "infodata"},
              {"text": getGlucInfo()["unit"], "style": "infounit", "colSpan": 2},
              {"text": ""},
            ],
            [
              {"text": ""},
              {"text": "Ø ${msgGlucoseValue}${glucWarnText}", "style": "infotitle"},
              {"text": glucFromData(avgGluc), "style": "infodata"},
              {"text": "${getGlucInfo()["unit"]}", "style": "infounit", "colSpan": 2},
              {"text": ""},
            ],
            [
              {"text": ""},
              {"text": msgHbA1C, "style": "infotitle"},
              {"text": fmtNumber(hba1c, 1, false), "style": ["infodata", "hba1c"]},
              {"text": "%", "style": ["infounit", "hba1c"], "colSpan": 2},
              {"text": ""},
            ],
            [ {
              "canvas": [ {"type": "line", "x1": 0, "y1": 0, "x2": cm(13.5), "y2": 0, "lineWidth": cm(0.01)}],
              "colSpan": 5,
              "style": "infoline"
            }
            ],
            [
              {"text": ""},
              {"text": "Ø ${msgKHPerDay}", "style": "infotitle"},
              {"text": fmtNumber(data.khCount / src.dayCount, 1, false), "style": "infodata"},
              {
                "text": msgKHBE(fmtNumber(data.khCount / src.dayCount / 12, 1, false)),
                "style": "infounit",
                "colSpan": 2
              },
              {"text": ""},
            ],
            [
              {"text": ""},
              {"text": msgInsulinPerDay, "style": "infotitle"},
              {
                "text": "${fmtNumber((data.ieBolusSum + data.ieBasalSum) / src.dayCount, 1, false)}",
                "style": "infodata"
              },
              {"text": "${msgInsulinUnit}", "style": "infounit", "colSpan": 2},
              {"text": ""},
            ],
            [
              {"text": ""},
              {"text": msgBolusPerDay, "style": "infotitle"},
              {"text": "${fmtNumber(data.ieBolusSum / src.dayCount, 1, false)}", "style": "infodata"},
              {"text": "bolus (${fmtNumber(data.ieBolusPrz, 1, false)} %)", "style": "infounit", "colSpan": 2},
              {"text": ""},

            ],
            [
              {"text": ""},
              {"text": msgBasalPerDay, "style": "infotitle"},
              {"text": "${fmtNumber(data.ieBasalSum / src.dayCount, 1, false)}", "style": "infodata"},
              {"text": "basal (${fmtNumber(data.ieBasalPrz, 1, false)} %)", "style": "infounit", "colSpan": 2},
              {"text": ""},
            ], // */
          ]
        }
      },

//      "images": images,
/*
      "styles": {
        "infoline": {"margin": [0, cm(0.25), 0, cm(0.25)]},
        "perstitle": {"fontSize": 10, "alignment": "right"},
        "persdata": {"fontSize": 10, "color": "#0000ff"},
        "infotitle": {"fontSize": 10, "alignment": "left"},
        "infodata": {"fontSize": 10, "alignment": "right", "color": "#0000ff"},
        "infounit": {"margin": [0, cm(0.07), 0, 0], "fontSize": 8, "color": "#0000ff"},
        "hba1c": {"color": "#5050ff"}
      }
// */
      footer(),
    ];
    return ret;
  }
}