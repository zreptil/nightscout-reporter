import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'dart:math';
import 'dart:typed_data';

import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/controls/datepicker/datepicker_component.dart';
import 'package:nightscout_reporter/src/globals.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

class GridData
{
  double colWidth;
  double lineHeight;
  double glucScale;
  int gridLines;
}

class LegendData
{
  List<dynamic> columns = List<dynamic>();
  double x;
  double y;
  double colWidth;
  int maxLines;

  List current(bool forceNew)
  {
    if (columns.length == 0 || (columns.last["stack"] as List).length >= maxLines || forceNew)
    {
      x += columns.length > 0 ? colWidth : 0.0;
      columns.add({"relativePosition": {"x": x, "y": y}, "stack": []});
    }
    return columns.last["stack"];
  }

  dynamic get asOutput
  => {"stack": columns};

  LegendData(this.x, this.y, this.colWidth, this.maxLines);
}

enum ParamType
{
  none, bool, string, int
}

class ParamInfo
{
  ParamType type = ParamType.none;
  String title;
  bool boolValue;
  String stringValue;
  int intValue;

  int min;
  int max;

  int sort;

  ParamInfo(this.sort, this.title,
            {this.boolValue = null, this.stringValue = null, this.intValue = null, this.min = null, this.max = null})
  {
    if (boolValue != null)type = ParamType.bool;
    if (stringValue != null)type = ParamType.string;
    if (intValue != null)type = ParamType.int;
  }

  dynamic get asJson
  {
    return {"b": boolValue, "s": stringValue, "i": intValue};
  }

  fill(ParamInfo src)
  {
    boolValue = src.boolValue;
    stringValue = src.stringValue;
  }

  fillFromJson(dynamic value)
  {
    try
    {
      switch (type)
      {
        case ParamType.bool:
          boolValue = value["b"] ?? false;
          break;
        case ParamType.string:
          stringValue = value["s"] ?? "";
          break;
        case ParamType.int:
          intValue = value["i"] ?? 0;
          break;
        default:
          break;
      }
    }
    catch (ex)
    {}
  }
}

class FormConfig
{
  String id;
  bool checked = true;
  bool opened = false;
  BasePrint form = null;
  FormConfig(this.form, this.checked)
  {
    id = form.id;
  }

  dynamic get asJson
  {
    dynamic ret = {"c": checked, "p": []};

    if (form.params != null)
    {
      for (ParamInfo entry in form.params)
        ret["p"].add(entry.asJson);
    }
    return ret;
  }

  String get asString
  {
    return json.encode(asJson);
  }

  fill(FormConfig src)
  {
    for (int i = 0; i < src.form.params.length; i++)
    {
      if (i >= form.params.length)form.params.add(src.form.params[i]);
      form.params[i].fill(src.form.params[i]);
    }
  }

  fillFromJson(dynamic value)
  {
    try
    {
      checked = value["c"];
      for (int i = 0; i < value["p"].length && i < form.params.length; i++)
        form.params[i].fillFromJson(value["p"][i]);
    }
    catch (ex)
    {}
  }

  fillFromString(String value)
  {
    if (value != null)fillFromJson(json.decode(value));
  }
}

abstract class BasePrint
{
  Globals g = Globals();
  String id;
  String title;
  String subtitle = null;
  String get display
  {
    String ret = title; //g.canDebug && pageCount > 0 ? "$title [ $pageCount ]" : title;
    if (isLocalOnly)ret = "$ret (local)";
    return ret;
  }

  String titleInfo;
  String titleInfoSub = "";
  int pagesPerSheet = 1;
  List<ParamInfo> params = List<ParamInfo>();
  List<ParamInfo> get sortedParams
  {
    List<ParamInfo> ret = List<ParamInfo>();
    ret.addAll(params);
    ret.sort((a, b)
    => a.sort.compareTo(b.sort));
    return ret;
  }

  bool get isLocalOnly
  => false;

  bool get isDebugOnly
  => false;

  //String _hba1c(double avgGluc)
  //=> fmtNumber((avgGluc + 86) / 33.3, 1, false);

  String hba1c(double avgGluc)
  => avgGluc == null ? "" : fmtNumber((avgGluc + 46.7) / 28.7, 1, false);

  String colText = "#008800";
  String colInfo = "#606060";
  String colSubTitle = "#a0a0a0";
  String colLine = "#606060";
  String colValue = "#000000";
  String colBasalProfile = "#0097a7";
  String get colBasalDay
  => blendColor(colBasalProfile, "#ffffff", 0.5);
  String colBasalFont = "#fff";
  String colProfileSwitch = "#8080c0";
  String colBolus = "#0060c0";
  String colCarbBolus = "#c000c0";
  String colLow = "#ff6666";
  String colNorm = "#00cc00";
  String colHigh = "#cccc00";
  String colTargetArea = "#00a000";
  String colTargetValue = "#3333aa";
  String colCarbs = "#ffa050";
  String colDurationNotes = "#ff00ff";
  String colDurationNotesLine = "#ff50ff";
  String colNotes = "#000000";
  String colNotesLine = "#666666";
  String colGlucValues = "#000000";
  String colBloodValues = "#ff0000";
  String colHbA1c = "#505050";
  List<String> colWeekDays = ["#1b9e77", "#d95f02", "#7570b3", "#e7298a", "#66a61e", "#e6ab02", "#a6761d"];
  List<String> colWeekDaysText = ["#ffffff", "#ffffff", "#000000", "#ffffff", "#ffffff", "#000000", "#ffffff"];

  double xorg = 3.35;
  double yorg = 3.9;
  double lw = 0.03;
  String lc = "#c0c0c0";
  String lcFrame = "#000000";

  bool _isPortrait = true;
  bool get isPortrait
  => true;
  bool get isSheetPortrait
  => _isPortrait;
  double get width
  => isPortrait ? 21.0 : 29.7;
  double get height
  => isPortrait ? 29.7 : 21.0;

  List<List<dynamic>> _pages = List<List<dynamic>>();
  int pageCount = 0;
  int _fileSize = 0;

  msgValidRange(begDate, endDate)
  => Intl.message("gültig von $begDate bis $endDate", args: [begDate, endDate], name: "msgValidRange");
  msgValidFrom(begDate)
  => Intl.message("gültig ab $begDate", args: [begDate], name: "msgValidFrom");
  msgValidTo(endDate)
  => Intl.message("gültig bis $endDate", args: [endDate], name: "msgValidTo");
  get msgInsulinUnit
  => Intl.message("IE");
  get msgMedian
  => Intl.message("Median");
  get msgUntil
  => Intl.message("bis");
  String msgTargetArea(String min, String max, String units)
  {
    return Intl.message("Zielbereich ($min - $max $units)", args: [min, max, units], name: "msgTargetArea");
  }

  String msgTargetValue(String value)
  {
    return Intl.message("Zielwert", args: [value], name: "msgTargetValue");
  }

  String get msgGlucosekurve
  => Intl.message("Glukosekurve");
  String msgCarbs(String value)
  => Intl.message("Kohlenhydrate (${value}g)", args: [value], name: "msgCarbs");
  String msgBolusInsulin(String value)
  => Intl.message("Bolus Insulin ($value)", args: [value], name: "msgBolusInsulin");
  String msgCorrectBolusInsulin(String value)
  => Intl.message("Korrektur Bolus ($value)", args: [value], name: "msgCorrectBolusInsulin");
  String msgCarbBolusInsulin(String value)
  => Intl.message("Mahlzeiten Bolus ($value)", args: [value], name: "msgCarbBolusInsulin");
  String msgSMBInsulin(String value)
  => Intl.message("SMB ($value)", args: [value], name: "msgSMBInsulin");
  String get msgBasalrate
  => Intl.message("Basalrate");
  String msgBasalrateDay(String value)
  => Intl.message("Basalrate für den Tag ($value)", args: [value], name: "msgBasalrateDay");
  String msgBasalrateProfile(String value)
  => Intl.message("Basalrate aus dem Profil ($value)", args: [value], name: "msgBasalrateProfile");
  String msgLegendTDD(String value)
  => Intl.message("Gesamtinsulin ($value)", args: [value], name: "msgLegendTDD");
  String get msgTDD
  => Intl.message("TDD");
  String get msgMissingData
  => Intl.message("Es sind keine Daten für den Ausdruck vorhanden");
  String get msgCatheterChange
  => Intl.message("Katheterwechsel");
  String get msgSensorChange
  => Intl.message("Sensorwechsel");
  String get msgAmpulleChange
  => Intl.message("Reservoirwechsel");
  String get msgCollectedValues
  => Intl.message("Aufsummierte Werte");
  msgKH(value)
  => Intl.message("${value}g", args: [value], name: "msgKH");
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
  => Intl.message("Werte zwischen ${low} und ${high}", args: [low, high], name: "msgValuesIn");
  msgValuesBelow(low)
  => Intl.message("Werte unter ${low}", args: [low], name: "msgValuesBelow");
  msgValuesAbove(high)
  => Intl.message("Werte über ${high}", args: [high], name: "msgValuesAbove");
  msgKHBE(value)
  => Intl.message("g KH ($value BE)", args: [value], name: "msgKHBE");
  msgReservoirDays(count, txt)
  =>
    Intl.plural(count, one: "($txt Tag pro Ampulle)",
      zero: "",
      other: "($txt Tage pro Ampulle)",
      args: [count, txt],
      name: "msgReservoirDays");
  msgCatheterDays(count, txt)
  =>
    Intl.plural(count, one: "($txt Tag pro Katheter)",
      zero: "",
      other: "($txt Tage pro Katheter)",
      args: [count, txt],
      name: "msgCatheterDays");
  msgSensorDays(count, txt)
  =>
    Intl.plural(count, one: "($txt Tag pro Sensor)",
      zero: "",
      other: "($txt Tage pro Sensor)",
      args: [count, txt],
      name: "msgSensorDays");
  get msgBirthday
  => Intl.message("Geburtstag");
  get msgDiabSince
  => Intl.message("Diabetes seit");
  get msgInsulin
  => Intl.message("Insulin");
  get msgDays
  => Intl.message("Ausgewertete Tage");
  get msgReadingsCount
  => Intl.message("Anzahl Messungen");
  get msgReservoirCount
  => Intl.message("Anzahl Ampullen");
  get msgCatheterCount
  => Intl.message("Anzahl Katheter");
  get msgSensorCount
  => Intl.message("Anzahl Sensoren");
  String get msgHbA1C
  => Intl.message("gesch. HbA1c");
  get msgHbA1CLong
  => Intl.message("Geschätzter HbA1c");
  get msgLowestValue
  => Intl.message("Niedrigster Wert im Zeitraum");
  get msgHighestValue
  => Intl.message("Höchster Wert im Zeitraum");
  get msgGlucoseValue
  => Intl.message("Ø Zuckerwert");
  get msgGVIFull
  => Intl.message("Glykämischer Variabilitäts Index (GVI)");
  get msgPGSFull
  => Intl.message("Patient Glykämischer Status (PGS)");
  get msgKHPerDay
  => Intl.message("Ø KH pro Tag");
  get msgInsulinPerDay
  => Intl.message("Ø Insulin pro Tag");
  get msgBolusPerDay
  => Intl.message("Ø Bolus pro Tag");
  get msgBasalPerDay
  => Intl.message("Ø Basal pro Tag");
  get msgMicroBolusPerDay
  => Intl.message("Ø Microbolus pro Tag");
  get msgInsulinRatio
  => Intl.message("Ø Insulinverhältnis");
  get msgBolus
  => Intl.message("Bolus");
  get msgBasal
  => Intl.message("Basal");
  get msgBasalProfile
  => Intl.message("Basalrate\nIE / Stunde");
  get msgNone
  => Intl.message("Keine");
  get msgOwnLimits
  => Intl.message("Eigene Grenzwerte");
  get msgStandardLimits
  => Intl.message("Standardgrenzwerte");
  get msgTreatments
  => Intl.message("Behandlungen");
  get msgPeriod
  => Intl.message("Zeitraum");
  get msgTotal
  => Intl.message("Ges.");
  get msgTimeShort
  => Intl.message("Uhr-\nzeit");
  get msgTime
  => Intl.message("Uhrzeit");
  get msgNote
  => Intl.message("Notiz");
  get msgAdjustment
  => Intl.message("Anpas-\nsung");
  get msgGlucLow
  => Intl.message("Glukose zu niedrig");
  get msgGlucNorm
  => Intl.message("Glukose im Zielbereich");
  get msgGlucHigh
  => Intl.message("Glukose zu hoch");
  msgLow(value)
  {
    value = "\n<${glucFromData(value)}";
    return Intl.message("Tief${value}", args: [value], name: "msgLow");
  }

  msgCount(value)
  {
    value = fmtNumber(value);
    return Intl.message("(${value} Werte)", args: [value], name: "msgCount");
  }

  msgStdAbw(value)
  {
    value = fmtNumber(value, 1);
    return Intl.message("(StdAbw ${value})", args: [value], name: "msgStdAbw");
  }

  static msgTimeOfDay24(time)
  => Intl.message("${time} Uhr", args: [time], name: "msgTimeOfDay24");
  static msgTimeOfDayAM(time)
  => Intl.message("${time} am", args: [time], name: "msgTimeOfDayAM");
  static msgTimeOfDayPM(time)
  => Intl.message("${time} pm", args: [time], name: "msgTimeOfDayPM");

  get msgNormal
  => "${Intl.message("Normal")}\n${getGlucInfo()["unit"]}";
  msgHigh(value)
  {
    value = "\n>=${glucFromData(value)}";
    return Intl.message("Hoch${value}", args: [value], name: "msgHigh");
  }

  get msgPercentile1090
  => Intl.message("10% - 90% der Werte");
  get msgPercentile2575
  => Intl.message("25% - 75% der Werte");
  get msgICRTitle
  => Intl.message("Insulin Kohlenhydrate Verhältnis (ICR)");
  get msgISFTitle
  => Intl.message("Insulin Sensitivitäts Faktoren (ISF)");
  get msgBasalTitle
  => Intl.message("Basalrate");
  get msgTargetTitle
  => Intl.message("Zielbereich");
  get msgICR
  => Intl.message("Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE");
  msgISF(String unit)
  => Intl.message("Insulin Sensitivitäts Faktoren (ISF)\n1 IE senkt BG um X ${unit}", args: [unit], name: "msgISF");
  msgTarget(String unit)
  => Intl.message("Glukose-Zielbereich\n${unit}", args: [unit], name: "msgTarget");
  msgFactorEntry(String beg, String end)
  => Intl.message("${beg} - ${end}", args: [beg, end], name: "msgFactorEntry");
  get msgProfile
  => Intl.message("Profileinstellungen");
  get msgDIA
  => Intl.message("Dauer der Insulinaktivität (DIA)");
  get msgDIAUnit
  => Intl.message("Stunden");
  get msgKHA
  => Intl.message("Dauer der Kohlenhydrataktivität");
  get msgTimezone
  => Intl.message("Zeitzone");
  get msgKHAUnit
  => Intl.message("g / Stunde");
  get msgDate
  => Intl.message("Datum");
  get msgDistribution
  => Intl.message("Verteilung");
  get msgValues
  => Intl.message("Mess-\nwerte");
  get msgMin
  => Intl.message("Min");
  get msgMax
  => Intl.message("Max");
  get msgAverage
  => Intl.message("Mittel-\nwert");
  get msgDeviation
  => Intl.message("Std.\nAbw.");
  get msgVarK
  => Intl.message("VarK\nin %");
  get msg25
  => Intl.message("25%");
  get msg75
  => Intl.message("75%");
  String msgDaySum(int value)
  => Intl.message("$value Tage", args: [value], name: "msgDaySum");
  get msgStandardDeviation
  => Intl.message("Standardabweichung");
  msgGVINone(min)
  {
    min = fmtNumber(min, 1);
    return Intl.message("nicht vorhanden (kleiner ${min})", args: [min], name: "msgGVINone");
  }

  msgGVIVeryGood(min, max)
  {
    min = fmtNumber(min, 1);
    max = fmtNumber(max, 1);
    return Intl.message("sehr gut (${min} bis ${max})", args: [min, max], name: "msgGVIVeryGood");
  }

  msgGVIGood(min, max)
  {
    min = fmtNumber(min, 1);
    max = fmtNumber(max, 1);
    return Intl.message("gut (${min} bis ${max})", args: [min, max], name: "msgGVIGood");
  }

  msgGVIBad(max)
  {
    max = fmtNumber(max, 1);
    return Intl.message("schlecht (grösser ${max})", args: [max], name: "msgGVIBad");
  }

  String gviQuality(gvi)
  {
    if (gvi < 1.0)return msgGVINone(1.0);
    else if (gvi <= 1.2)return msgGVIVeryGood(1.0, 1.2);
    else if (gvi <= 1.5)return msgGVIGood(1.2, 1.5);

    return msgGVIBad(1.5);
  }

  msgPGSVeryGood(min)
  {
    min = fmtNumber(min);
    return Intl.message("exzellent (kleiner ${min})", args: [min], name: "msgPGSVeryGood");
  }

  msgPGSGood(min, max)
  {
    min = fmtNumber(min);
    max = fmtNumber(max);
    return Intl.message("gut (${min} bis ${max})", args: [min, max], name: "msgPGSGood");
  }

  msgPGSBad(min, max)
  {
    min = fmtNumber(min);
    max = fmtNumber(max);
    return Intl.message("schlecht (${min} bis ${max})", args: [min, max], name: "msgPGSBad");
  }

  msgPGSVeryBad(max)
  {
    max = fmtNumber(max);
    return Intl.message("sehr schlecht (grösser ${max})", args: [max], name: "msgPGSVeryBad");
  }

  String pgsQuality(pgs)
  {
    if (pgs < 35.0)return msgPGSVeryGood(35);
    else if (pgs <= 100.0)return msgPGSGood(35, 100);
    else if (pgs <= 150.0)return msgPGSBad(100, 150);
    return msgPGSVeryBad(150);
  }


  String titleInfoForDates(DateTime startDate, DateTime endDate)
  {
    String ret;
    if (endDate == null)ret = msgValidFrom(fmtDate(startDate));
    else if (startDate.year == 1970)ret = msgValidTo(fmtDate(endDate));
    else
      ret = msgValidRange(fmtDate(startDate), fmtDate(endDate));
    return ret;
  }

  Object headerFooter({skipFooter: false})
  {
    bool isInput = false;
    var stack = [];
    var ret = {"stack": stack, "pageBreak": ""};
    // header
    if (isPortrait)
    {
      if (isInput)
      {
        stack.add({
          "relativePosition": {"x": cm(0), "y": cm(0)},
          "canvas": [
            {"type": "rect", "x": cm(0.0), "y": cm(0), "w": cm(1.6), "h": cm(0.55), "color": "#d69a2e"},
            {"type": "rect", "x": cm(1.6), "y": cm(0), "w": cm(1.6), "h": cm(0.55), "color": "#2e4736"},
            {"type": "rect", "x": cm(3.2), "y": cm(0), "w": cm(1.6), "h": cm(0.55), "color": "#662c40"},
            {"type": "rect", "x": cm(4.8), "y": cm(0), "w": cm(1.6), "h": cm(0.55), "color": "#343a49"},
            {"type": "rect", "x": cm(6.4), "y": cm(0), "w": cm(1.6), "h": cm(0.55), "color": "#528c8e"},
            {"type": "rect", "x": cm(8.0), "y": cm(0), "w": cm(1.6), "h": cm(0.55), "color": "#362946"},
            {"type": "rect", "x": cm(9.6), "y": cm(0), "w": cm(1.6), "h": cm(0.55), "color": "#6b8133"},
            {"type": "rect", "x": cm(11.2), "y": cm(0), "w": cm(1.6), "h": cm(0.55), "color": "#2a3b56"},
            {"type": "rect", "x": cm(12.8), "y": cm(0), "w": cm(1.6), "h": cm(0.55), "color": "#862d2e"},
            {"type": "rect", "x": cm(14.4), "y": cm(0), "w": cm(1.6), "h": cm(0.55), "color": "#607f6e"},
            {"type": "rect", "x": cm(16.0), "y": cm(0), "w": cm(1.6), "h": cm(0.55), "color": "#273d3f"},
            {"type": "rect", "x": cm(17.6), "y": cm(0), "w": cm(1.6), "h": cm(0.55), "color": "#a5916d"}
          ]
        });
      }
    }
    else
    {
      if (isInput)
      {
        stack.add({
          "relativePosition": {"x": cm(0), "y": cm(0)},
          "canvas": [
            {"type": "rect", "x": cm(0.0), "y": cm(0), "w": cm(2.2), "h": cm(0.55), "color": "#d69a2e"},
            {"type": "rect", "x": cm(2.2), "y": cm(0), "w": cm(2.3), "h": cm(0.55), "color": "#2e4736"},
            {"type": "rect", "x": cm(4.5), "y": cm(0), "w": cm(2.3), "h": cm(0.55), "color": "#662c40"},
            {"type": "rect", "x": cm(6.8), "y": cm(0), "w": cm(2.25), "h": cm(0.55), "color": "#343a49"},
            {"type": "rect", "x": cm(9.05), "y": cm(0), "w": cm(2.3), "h": cm(0.55), "color": "#528c8e"},
            {"type": "rect", "x": cm(11.35), "y": cm(0), "w": cm(2.25), "h": cm(0.55), "color": "#362946"},
            {"type": "rect", "x": cm(13.6), "y": cm(0), "w": cm(2.3), "h": cm(0.55), "color": "#6b8133"},
            {"type": "rect", "x": cm(15.9), "y": cm(0), "w": cm(2.25), "h": cm(0.55), "color": "#2a3b56"},
            {"type": "rect", "x": cm(18.15), "y": cm(0), "w": cm(2.3), "h": cm(0.55), "color": "#862d2e"},
            {"type": "rect", "x": cm(20.45), "y": cm(0), "w": cm(2.3), "h": cm(0.55), "color": "#607f6e"},
            {"type": "rect", "x": cm(22.75), "y": cm(0), "w": cm(2.3), "h": cm(0.55), "color": "#273d3f"},
            {"type": "rect", "x": cm(25.05), "y": cm(0), "w": cm(2.3), "h": cm(0.55), "color": "#a5916d"},
          ],
        });
      }
    }
    stack.add({
      "relativePosition": {"x": cm(2.2), "y": cm(1.0)},
      "columns": [
        {"width": "auto", "text": title, "fontSize": fs(36), "color": colText, "bold": true},
        {
          "width": "auto",
          "text": subtitle,
          "fontSize": fs(12),
          "color": colSubTitle,
          "bold": true,
          "margin": [cm(0.5), cm(0.78), 0, 0]
        }
      ]
    });
    if (!g.hideNightscoutInPDF)stack.add({
      "relativePosition": {"x": cm(2.2), "y": cm(2.5)},
      "text": "nightscout reporter ${g.version}",
      "fontSize": fs(8),
      "color": colSubTitle,
    });
    double y = titleInfoSub == "" ? 2.4 : 2.0;
    stack.add({
      "relativePosition": {"x": cm(2.2), "y": cm(y)},
      "columns": [ {
        "width": cm(width - 4.4),
        "text": titleInfo,
        "fontSize": fs(10),
        "color": colInfo,
        "bold": true,
        "alignment": "right"
      }
      ]
    });
    if (titleInfoSub != "")
    {
      stack.add({
        "relativePosition": {"x": cm(2.2), "y": cm(2.4)},
        "columns": [ {
          "width": cm(width - 4.4),
          "text": titleInfoSub,
          "fontSize": fs(8),
          "color": colInfo,
          "bold": true,
          "alignment": "right"
        }
        ]
      });
    }
    stack.add({
      "relativePosition": {"x": cm(2.2), "y": cm(2.95)},
      "canvas": [ {
        "type": "line",
        "x1": cm(0),
        "y1": cm(0),
        "x2": cm(width - 4.4),
        "y2": cm(0),
        "lineWidth": cm(0.2),
        "lineColor": colText
      }
      ]
    });
    // footer
    if (skipFooter)return ret;
    String rightText = "";
    if (g.user.name.isEmpty)
    {
      if (!g.user.birthDate.isEmpty)rightText = "*${g.user.birthDate}";
    }
    else
    {
      if (!g.user.birthDate.isEmpty)rightText = "${g.user.name}, *${g.user.birthDate}";
      else
        rightText = g.user.name;
    }

    stack.addAll([
      {
        "relativePosition": {"x": cm(2.2), "y": cm(height - 2.0)},
        "canvas": [ {
          "type": "line",
          "x1": cm(0),
          "y1": cm(0),
          "x2": cm(width - 4.4),
          "y2": cm(0),
          "lineWidth": cm(0.05),
          "lineColor": colText
        }
        ]
      },
      g.hideNightscoutInPDF ? null : _getFooterImage("nightscout", x: 2.2, y: height - 1.7, width: 0.7),
      g.hideNightscoutInPDF ? null : {
        "relativePosition": {"x": cm(3.1), "y": cm(height - 1.7)},
        "text": "http://www.nightscout.info",
        "color": colInfo,
        "fontSize": fs(10)
      },
      isInput ? _getFooterImage("input", x: width - 5.6, y: height - 3.3, width: 4.0) : {},
      {
        "relativePosition": {"x": cm(2.2), "y": cm(height - 1.7)},
        "columns": [
          {"width": cm(width - 4.4), "text": rightText, "color": colInfo, "alignment": "right", "fontSize": fs(10)}]
      }
    ]);

    return ret;
  }

  dynamic m0 = [];

  Map<String, String> images = Map<String, String>();
  List<String> get imgList
  => ["nightscout-pale", "nightscout",];

  void init()
  {}

  Future<String> getBase64Image(String id)
  async {
    var response = await HttpRequest.request(
      "packages/nightscout_reporter/assets/img/$id.png", responseType: "arraybuffer");
    if (response.response is ByteBuffer)
    {
      String ret = base64.encode((response.response as ByteBuffer).asUint8List());
      return "data:image/png;base64,${ret}";
    }

    return "";
  }

  String titleInfoBegEnd(ReportData src)
  {
    return titleInfoDateRange(src.begDate, src.endDate);
  }

  String titleInfoDateRange(Date begDate, Date endDate, {withTime: false})
  {
    titleInfoSub = g.period.dowActiveText;
    if (begDate == endDate)return "${fmtDate(begDate)}";
    return "${fmtDate(begDate)} ${msgUntil} ${fmtDate(endDate)}";
  }

  String titleInfoTimeRange(DateTime begDate, DateTime endDate)
  {
    String beg = "${fmtDate(begDate)}, ${fmtTime(begDate, withUnit: true)}";
    String end = "${fmtDate(endDate)}, ${fmtTime(endDate, withUnit: true)}";
    if (endDate == null)return msgValidFrom(beg);
    return msgValidRange(beg, end);
  }

  prepareData_(ReportData data);

  _getFooterImage(String id, {double x, double y, double width, double height = 0.0})
  {
    var ret = {"relativePosition": {"x": cm(x), "y": cm(y)}, "image": id};

    if (images[id] != null)
    {
      if (width != 0 && height != 0)ret["fit"] = [cm(width), cm(height)];
      else if (width != 0)ret["width"] = cm(width);
      else if (height != 0)ret["height"] = cm(height);
    }
    else
    {
      ret = {
        "stack": [ {
          "relativePosition": {"x": cm(x), "y": cm(y)},
          "canvas": [ {
            "type": "rect",
            "x": cm(0),
            "y": cm(0),
            "w": cm(max(width, 0.01)),
            "h": cm(max(height, 0.01)),
            "lineWidth": cm(0.01),
            "lineColor": "#f00"
          }
          ]
        }, {"relativePosition": {"x": cm(x), "y": cm(y)}, "text": "bild\n$id\nfehlt", "color": "#f00"}
        ]
      };
    }
    return ret;
  }

  hasData(ReportData src)
  {
    return src.dayCount > 0 && src.ns.count > 0;
  }

  getEmptyForm(ReportData data)
  {
    return [
      headerFooter(),
      {"margin": [cm(2), cm(3.5), cm(2), cm(0)], "text": msgMissingData, "fontSize": fs(10), "alignment": "center"},
    ];
  }

  void _addPageBreak(dynamic ret, dynamic page)
  {
    ret["pageBreak"] = "after";
    pageCount++;
    _fileSize += json
      .encode(page)
      .length;
    if (g.pdfCreationMaxSize != Globals.PDFUNLIMITED && _fileSize > g.pdfCreationMaxSize)
    {
      ret["pageBreak"] = "newFile";
      _fileSize = 0;
    }
  }

  getFormData(ReportData data, int currentSize)
  async {
    m0 = [cm(0), cm(0), cm(0), cm(0)];
    for (String id in imgList)
    {
      try
      {
        images[id] = await getBase64Image(id);
      }
      catch (ex)
      {
        images[id] = await getBase64Image("nightscout");
      }
    }

    if (!hasData(data))return getEmptyForm(data);

    dynamic ret = [];
    var d = prepareData_(data);
    _pages.clear();
    pageCount = 1;
    _fileSize = currentSize;
    try
    {
      scale = 1.0;
      int colCount = 1;
      int rowCount = 1;
      switch (pagesPerSheet)
      {
        case 2:
          scale = 21 / 29.7;
          colCount = 1;
          rowCount = 2;
          break;
        case 4:
          scale = 0.5;
          colCount = 2;
          rowCount = 2;
          break;
        case 8:
          scale = 21 / 29.7 / 2;
          colCount = 2;
          rowCount = 4;
          break;
        case 16:
          scale = 0.25;
          colCount = 4;
          rowCount = 4;
          break;
        case 32:
          scale = 21 / 29.7 / 4;
          colCount = 4;
          rowCount = 8;
          break;
      }
      offsetX = 0.0;
      offsetY = 0.0;
      _isPortrait = isPortrait;
      await fillPages(d, _pages);
      int column = 0;
      int row = 0;
      for (int i = 0; i < _pages.length; i++)
      {
        List<dynamic> page = _pages[i];
        offsetX = column * width;
        offsetY = row * height;
        ret.add({"absolutePosition": {"x": cmx(0), "y": cmy(0)}, "stack": page});
        column++;

        if (column >= colCount)
        {
          column = 0;
          row++;
          if (row >= rowCount && page != _pages.last)
          {
            row = 0;
            _addPageBreak(ret.last, page);
            if (_fileSize == 0)
            {
              column = 0;
              row = 0;
            }
          }
        }
//        ret.addAll(page);
//        if(page != _pages.last)
//          addPageBreak(ret.last);
      }
      switch (pagesPerSheet)
      {
        case 2:
        case 8:
        case 32:
          _isPortrait = !_isPortrait;
          break;
      }
    }
    catch (ex, s)
    {
      offsetX = 0.0;
      offsetY = 0.0;
      ret = {
        "pageSize": "a4",
        "pageOrientation": "portrait",
        "pageMargins": [cmx(1), cmy(1), cmx(1), cmy(1)],
        "content": [
          {"text": "Fehler bei Erstellung von \"${title}\"", "fontSize": fs(20), "alignment": "center", "color": "red"},
          {"text": "\n$ex", "fontSize": fs(10), "alignment": "left"},
          {"text": "\n$s", "fontSize": fs(10), "alignment": "left"}
        ]
      };
      ret = [
        {
          "margin": [cmx(1.0), cmy(0.5), cmx(1.0), cmy(0)],
          "text": "Fehler bei Erstellung von \"${title}\"",
          "fontSize": fs(20),
          "alignment": "center",
          "color": "red"
        },
        {"margin": [cmx(1.0), cmy(0.0), cmx(1.0), cmy(0)], "text": "\n$ex", "fontSize": fs(10), "alignment": "left"},
        {"margin": [cmx(1.0), cmy(0.5), cmx(1.0), cmy(0)], "text": "\n$s", "fontSize": fs(10), "alignment": "left"}
      ];
    }

    return ret;
  }

  void fillPages(ReportData src, List<List<dynamic>> pages);

  double mm(pt)
  {
    return pt / 0.35277;
  }

  double scale = 1.0;
  double offsetX = 0.0;
  double offsetY = 0.0;

  double cm(pt)
  {
    return pt / 0.035277 * scale;
  }

  double cmx(pt)
  {
    return (offsetX + pt) / 0.035277 * scale;
  }

  double cmy(pt)
  {
    return (offsetY + pt) / 0.035277 * scale;
  }

  double fs(double size)
  => size * scale;

  String fmtBasal(num value)
  {
    return fmtNumber(value, g.basalPrecision);
  }

  String fmtNumber(num value,
                   [num decimals = 0, bool fillfront0 = false, String nullText = "null", bool stripTrailingZero = false])
  {
    return g.fmtNumber(value, decimals, fillfront0, nullText, stripTrailingZero);
  }

  String fmtTime(var date, {String def: null, bool withUnit: false, bool withMinutes: true})
  {
    if (def == null)def = "";
    if (date == null)return def;

    if (date is DateTime)
    {
      int hour = date.hour;
      if (!g.language.is24HourFormat)hour = hour > 12 ? hour - 12 : hour;
      String m = withMinutes ? ":${(date.minute < 10 ? "0" : "")}${date.minute}" : "";
      String ret = "${(hour < 10 ? "0" : "")}${hour}$m";
      if (withUnit)
      {
        if (g.language.is24HourFormat)ret = msgTimeOfDay24(ret);
        else
          ret = date.hour > 12 ? msgTimeOfDayPM(ret) : msgTimeOfDayAM(ret);
      }
      return ret;
    }

    if (date is int)
    {
      String m = withMinutes ? ":00" : "";
      if (g.language.is24HourFormat)return "${fmtNumber(date, 0)}$m";

      m = withMinutes ? " " : "";

      if (date < 12)return "${fmtNumber(date, 0)}${m}am";
      else if (date == 12)return "${fmtNumber(date, 0)}${m}pm";
      else
        return "${fmtNumber(date - 12, 0)}${m}pm";
    }

    return date;
  }

  String fmtDateTime(var date, [var def = null])
  {
    if (def == null)def = "";
    if (date == null)return def;

    if (date is DateTime)
    {
      String ret = "${(date.day < 10 ? "0" : "")}${date.day}.${(date.month < 10 ? "0" : "")}${date.month}.${date
        .year} ${(date.hour < 10 ? "0" : "")}${date.hour}:${(date.minute < 10 ? "0" : "")}${date.minute}";
      return msgTimeOfDay24(ret);
    }

    return date;
  }

  String fmtDate(var date, [var def = null, bool withShortWeekday = false, bool withLongWeekday = false])
  {
    if (def == null)def = "";
    if (date == null)return def;

    DateTime dt = null;

    try
    {
      if (date is Date)dt = DateTime(date.year, date.month, date.day);
      else if (date is DateTime)dt = date;
      else if (date is String && date.length >= 8)
      {
        int y = int.tryParse(date.substring(6, 8)) ?? 0;
        int m = int.tryParse(date.substring(4, 6)) ?? 1;
        int d = int.tryParse(date.substring(0, 4)) ?? 1;
        dt = DateTime(y, m, d);
      }
    }
    catch (ex)
    {}

    if (dt == null)return date;

    DateFormat df = DateFormat(g.language.dateformat);
    String ret = df.format(dt);
    if (withShortWeekday)ret = "${DatepickerPeriod.dowShortName(Date(dt.year, dt.month, dt.day))}, $ret";
    if (withLongWeekday)ret = "${DatepickerPeriod.dowName(Date(dt.year, dt.month, dt.day))}, $ret";
    return ret;
  }

  String blendColor(String from, String to, num factor)
  {
    if (from.length == 7)from = from.substring(1);
    if (to.length == 7)to = to.substring(1);
    var rf = int.tryParse(from.substring(0, 2) ?? 0, radix: 16);
    var gf = int.tryParse(from.substring(2, 4) ?? 0, radix: 16);
    var bf = int.tryParse(from.substring(4, 6) ?? 0, radix: 16);
    var rt = int.tryParse(to.substring(0, 2) ?? 0, radix: 16);
    var gt = int.tryParse(to.substring(2, 4) ?? 0, radix: 16);
    var bt = int.tryParse(to.substring(4, 6) ?? 0, radix: 16);

    var r = (rf + (rt - rf) * factor).floor();
    var g = (gf + (gt - gf) * factor).floor();
    var b = (bf + (bt - bf) * factor).floor();

    return "#${radixString(r)}${radixString(g)}${radixString(b)}";
  }

  String radixString(int value)
  {
    String ret = value.toRadixString(16);
    while (ret.length < 2)ret = "0$ret";
    return ret;
  }

  getGlucInfo()
  {
    var ret = {"step": 1, "unit": "mg/dL"};
    if (!g.glucMGDL)ret = {"step": 0.1, "unit": "mmol/L"};

    return ret;
  }

  String fmtGluc(double value)
  => fmtNumber(value, g.glucMGDL ? 0 : 1);

  String glucFromData(var gluc, [precision = null])
  {
    if (gluc is String)gluc = double.tryParse(gluc) ?? 0;
    if (!(gluc is num) || gluc == 0)return "";

    if (!g.glucMGDL)return fmtNumber(gluc / 18.02, precision == null ? 1 : precision);

    return fmtNumber(gluc, precision == null ? 0 : precision);
  }

  String carbFromData(var carb, [precision = 0])
  {
    return fmtNumber(carb, precision);
  }

  GridData drawGraphicGrid(double glucMax, double graphHeight, double graphWidth, List vertCvs, List horzCvs,
                           List horzStack, List vertStack, {double glucScale: 0.0, double graphBottom: 0.0})
  {
    GridData ret = GridData();
    if (graphBottom == 0.0)graphBottom = graphHeight;
    ret.glucScale = glucScale == 0.0 ? g.glucMGDL ? 50 : 18.02 * 1 : glucScale;
    ret.gridLines = (glucMax / ret.glucScale).ceil();

    ret.lineHeight = ret.gridLines == 0 ? 0 : graphHeight / ret.gridLines;
    ret.colWidth = graphWidth / 24;

    // draw vertical lines with times below graphic
    for (int i = 0; i < 25; i++)
    {
      vertCvs.add({
        "type": "line",
        "x1": cm(i * ret.colWidth),
        "y1": cm(0),
        "x2": cm(i * ret.colWidth),
        "y2": cm(graphBottom - lw / 2),
        "lineWidth": cm(lw),
        "lineColor": i > 0 && i < 24 ? lc : lcFrame
      });
      if (i < 24)horzStack.add({
        "relativePosition": {"x": cm(xorg + i * ret.colWidth), "y": cm(yorg + graphBottom + 0.05)},
        "text": fmtTime(i),
        "fontSize": fs(8)
      });
    }

    if (ret.lineHeight == 0)return ret;

    double lastY = null;
    for (int i = 0; i <= ret.gridLines; i++)
    {
      double y = (ret.gridLines - i) * ret.lineHeight - lw / 2;
      if (lastY != null && lastY - y < 0.5)continue;

      lastY = y;
      horzCvs.add({
        "type": "line",
        "x1": cm(i > 0 ? -0.2 : 0.0),
        "y1": cm(y),
        "x2": cm(24 * ret.colWidth + (i > 0 ? 0.2 : 0.0)),
        "y2": cm(y),
        "lineWidth": cm(lw),
        "lineColor": i > 0 ? lc : lcFrame
      });

      if (i > 0)
      {
//        String text = "${glucFromData(fmtNumber(i * glucScale, 0))}\n${getGlucInfo()["unit"]}";
        String text = "${glucFromData(fmtNumber(i * ret.glucScale, 0))}";
        vertStack.add({
          "relativePosition": {"x": cm(xorg - 1.5), "y": cm(yorg + (ret.gridLines - i) * ret.lineHeight - 0.2)},
          "columns": [{ "width": cm(1.2), "text": text, "fontSize": fs(8), "alignment": "right"}]
        });
        vertStack.add({
          "relativePosition": {
            "x": cm(xorg + 24 * ret.colWidth + 0.3),
            "y": cm(yorg + (ret.gridLines - i) * ret.lineHeight - 0.2)
          },
          "text": text,
          "fontSize": fs(8)
        });
      }
      else
      {
        String text = "${getGlucInfo()["unit"]}";
        vertStack.add({
          "relativePosition": {"x": cm(xorg - 1.5), "y": cm(yorg + (ret.gridLines - i) * ret.lineHeight - 0.2)},
          "columns": [{ "width": cm(1.2), "text": text, "fontSize": fs(8), "alignment": "right"}]
        });
        vertStack.add({
          "relativePosition": {
            "x": cm(xorg + 24 * ret.colWidth + 0.3),
            "y": cm(yorg + (ret.gridLines - i) * ret.lineHeight - 0.2)
          },
          "text": text,
          "fontSize": fs(8)
        });
      }
    }
    return ret;
  }

  addLegendEntry(LegendData legend, String color, String text,
                 {bool isArea = true, String image = null, double imgWidth = 0.6, double imgOffsetY = 0.0, double lineWidth = 0.0, String graphText: null, newColumn: false, points: null})
  {
    List dst = legend.current(newColumn);
    if (lineWidth == 0.0)lineWidth = lw;
    if (points != null)
    {
      for (var pt in points)
      {
        pt["x"] = cm(pt["x"] * 0.8);
        pt["y"] = cm(pt["y"] * 0.8);
      }
      dst.add({
        "columns": [ {
          "width": cm(0.8),
          "canvas": [ {"type": "polyline", "closePath": true, "color": color, "lineWidth": cm(0), "points": points,}],
        }, {"text": text, "color": "black", "fontSize": fs(10)}
        ]
      });
    }
    else if (image != null)
    {
      dst.add({
        "columns": [ {
          "width": cm(0.8),
          "stack": [
            {"margin": [cm(0.4 - imgWidth / 2), cm(imgOffsetY), cm(0), cm(0)], "image": image, "width": cm(imgWidth)}],
        }, {"text": text, "color": "black", "fontSize": fs(10)}
        ]
      });
    }
    else if (isArea && graphText != null)dst.add({
      "columns": [ {
        "width": cm(0.8),
        "layout": "noBorders",
        "margin": [cm(0.0), cm(0), cm(0), cm(0.1)],
        "table": {
          "widths": [cm(0.5)],
          "body": [[{"text": graphText, "color": "black", "fontSize": fs(6), "alignment": "center", "fillColor": color}]
          ]
        }
      }, {"text": text, "color": "black", "fontSize": fs(10)}
      ]
    });
    else if (isArea)dst.add({
      "columns": [ {
        "width": cm(0.8),
        "canvas": [
          {"type": "rect", "x": cm(0), "y": cm(0.1), "w": cm(0.5), "h": cm(0.3), "color": color, "fillOpacity": 0.3},
          {"type": "rect", "x": 0, "y": 0, "w": 0, "h": 0, "color": "#000", "fillOpacity": 1},
          {
            "type": "line",
            "x1": cm(0),
            "y1": cm(0.1),
            "x2": cm(0.5),
            "y2": cm(0.1),
            "lineWidth": cm(lineWidth),
            "lineColor": color
          },
          {
            "type": "line",
            "x1": cm(0),
            "y1": cm(0.4),
            "x2": cm(0.5),
            "y2": cm(0.4),
            "lineWidth": cm(lineWidth),
            "lineColor": color
          }
        ]
      }, {"text": text, "color": "black", "fontSize": fs(10)}
      ]
    });
    else
      dst.add({
        "columns": [ {
          "width": cm(0.8),
          "canvas": [ {
            "type": "line",
            "x1": cm(0),
            "y1": cm(0.25),
            "x2": cm(0.5),
            "y2": cm(0.25),
            "lineWidth": cm(lineWidth),
            "lineColor": color
          }
          ]
        }, {"text": text, "color": "black", "fontSize": fs(10)}
        ]
      });
  }
}
