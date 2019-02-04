library diamant.jsonData;

import 'dart:math' as math;

import 'package:angular_components/angular_components.dart';
import 'package:nightscout_reporter/src/globals.dart';
import 'package:timezone/browser.dart' as tz;

class JsonData
{
  JsonData();

  static DateTime toTime(String value)
  {
    int hour = 0;
    int minute = 0;
    int second = 0;
    List<String> parts = value.split(":");
    if (parts.length >= 1)hour = int.tryParse(parts[0]) ?? 0;
    if (parts.length >= 2)minute = int.tryParse(parts[1]) ?? 0;
    if (parts.length >= 3)second = int.tryParse(parts[2]) ?? 0;
    return DateTime(0, 1, 1, hour, minute, second);
  }

  static DateTime toDate(value)
  {
    if (value == null)return DateTime(0, 1, 1);
    if (value is int)return DateTime.fromMillisecondsSinceEpoch(value);
    return DateTime.tryParse(value).toLocal() ?? DateTime(0, 1, 1);
  }

  static String toText(value, [String def = ""])
  => value == null ? def : value is String ? value : "${value}";

  static bool toBool(value)
  => value == null ? false : value is bool ? value : value is String ? value == "true" || value == "yes" : false;

  static double toDouble(value, [def = 0.0])
  => value == null || value == "NaN" ? def : value is double || value is int ? value : double.tryParse(value) ?? def;

  static int toInt(value, [int def = 0])
  => value == null ? def : value is int ? value : value is double ? value.toInt() : int.tryParse(value) ?? def;
}

class ThresholdData extends JsonData
{
  int bgHigh;
  int bgTargetTop;
  int bgTargetBottom;
  int bgLow;

  ThresholdData();

  factory ThresholdData.fromJson(Map<String, dynamic> json){
    ThresholdData ret = ThresholdData();
    if (json == null)return ret;
    ret.bgHigh = JsonData.toInt(json["bgHigh"]);
    ret.bgTargetTop = JsonData.toInt(json["bgTargetTop"]);
    ret.bgTargetBottom = JsonData.toInt(json["bgTargetBottom"]);
    ret.bgLow = JsonData.toInt(json["bgLow"]);
    return ret;
  }
}

class SettingsData extends JsonData
{
  String units;
  int timeFormat;
  bool nightMode;
  bool editMode;
  String showRawbg;
  String customTitle;
  String theme;
  bool alarmUrgentHigh;
  List<int> alarmUrgentHighMins = List<int>();
  bool alarmHigh;
  List<int> alarmHighMins = List<int>();
  bool alarmLow;
  List<int> alarmLowMins = List<int>();
  bool alarmUrgentLow;
  List<int> alarmUrgentLowMins = List<int>();
  List<int> alarmUrgentMins = List<int>();
  List<int> alarmWarnMins = List<int>();
  bool alarmTimeagoWarn;
  int alarmTimeagoWarnMins;
  bool alarmTimeagoUrgent;
  int alarmTimeagoUrgentMins;
  String language;
  String scaleY;
  List<String> showPlugins = List<String>();
  String showForecast;
  int focusHours;
  int heartbeat;
  String baseURL;
  String authDefaultRoles;
  ThresholdData thresholds;
  List<String> defaultFeatures = List<String>();
  List<String> alarmTypes = List<String>();
  List<String> enable = List<String>();

  SettingsData();

  factory SettingsData.fromJson(Map<String, dynamic> json){
    SettingsData ret = SettingsData();
    if (json == null)return ret;
    ret.units = JsonData.toText(json["units"]);
    ret.timeFormat = JsonData.toInt(json["timeFormat"]);
    ret.nightMode = JsonData.toBool(json["nightMode"]);
    ret.editMode = JsonData.toBool(json["editMode"]);
    ret.showRawbg = JsonData.toText(json["showRawbg"]);
    ret.customTitle = JsonData.toText(json["customTitle"]);
    ret.theme = JsonData.toText(json["theme"]);
    ret.alarmUrgentHigh = JsonData.toBool(json["alarmUrgentHigh"]);
    for (dynamic entry in json["alarmUrgentHighMins"])
      ret.alarmUrgentHighMins.add(JsonData.toInt(entry));
    ret.alarmHigh = JsonData.toBool(json["alarmHigh"]);
    for (dynamic entry in json["alarmHighMins"])
      ret.alarmHighMins.add(JsonData.toInt(entry));
    ret.alarmLow = JsonData.toBool(json["alarmLow"]);
    for (dynamic entry in json["alarmLowMins"])
      ret.alarmLowMins.add(JsonData.toInt(entry));
    ret.alarmUrgentLow = JsonData.toBool(json["alarmUrgentLow"]);
    for (dynamic entry in json["alarmUrgentLowMins"])
      ret.alarmUrgentLowMins.add(JsonData.toInt(entry));
    for (dynamic entry in json["alarmUrgentMins"])
      ret.alarmUrgentMins.add(JsonData.toInt(entry));
    for (dynamic entry in json["alarmWarnMins"])
      ret.alarmWarnMins.add(JsonData.toInt(entry));
    ret.alarmTimeagoWarn = JsonData.toBool(json["alarmTimeagoWarn"]);
    ret.alarmTimeagoWarnMins = JsonData.toInt(json["alarmTimeagoWarnMins"]);
    ret.alarmTimeagoUrgent = JsonData.toBool(json["alarmTimeagoUrgent"]);
    ret.alarmTimeagoUrgent = JsonData.toBool(json["alarmTimeagoUrgent"]);
    ret.alarmTimeagoUrgentMins = JsonData.toInt(json["alarmTimeagoUrgentMins"]);
    ret.language = json["language"];
    ret.scaleY = json["scaleY"];
    for (String entry in json["showPlugins"].toString().split(" "))
    {
      if (entry != "")ret.showPlugins.add(entry);
    }
    ret.showForecast = json["showForecast"];
    ret.focusHours = JsonData.toInt(json["focusHours"]);
    ret.heartbeat = JsonData.toInt(json["heartbeat"]);
    ret.baseURL = json["baseURL"];
    ret.authDefaultRoles = json["authDefaultRoles"];
    if (json["thresholds"] != null)ret.thresholds = ThresholdData.fromJson(json["thresholds"]);
    for (String entry in json["DEFAULT_FEATURES"])
      ret.defaultFeatures.add(entry);
    for (String entry in json["alarmTypes"])
      ret.alarmTypes.add(entry);
    for (String entry in json["enable"])
      ret.enable.add(entry);
    return ret;
  }
}

class AgeData extends JsonData
{
  String display;
  int warn;
  int urgent;
  bool info;
  bool enableAlerts;

  AgeData();

  factory AgeData.fromJson(Map<String, dynamic> json){
    AgeData ret = AgeData();
    if (json == null)return ret;
    ret.display = JsonData.toText(json["display"]);
    ret.warn = JsonData.toInt(json["warn"]);
    ret.urgent = JsonData.toInt(json["urgent"]);
    ret.info = JsonData.toBool(json["info"]);
    ret.enableAlerts = JsonData.toBool(json["enableAlerts"]);
    return ret;
  }
}

class ExtendedSettingsData extends JsonData
{
  bool upbatEnableAlerts;
  int upbatWarn;
  AgeData cage;
  AgeData sage;
  List<String> pumpFields = List<String>();
  bool advancedDeviceStatus;

  ExtendedSettingsData();

  factory ExtendedSettingsData.fromJson(Map<String, dynamic> json){
    ExtendedSettingsData ret = ExtendedSettingsData();
    if (json == null)return ret;
    if (json["pump"] != null)
    {
      for (dynamic entry in json["pump"]["fields"].toString().split(" "))
        ret.pumpFields.add(entry);
    }
    if (json["upbat"] != null)
    {
      ret.upbatEnableAlerts = JsonData.toBool(json["upbat"]["enableAlerts"]);
      ret.upbatWarn = JsonData.toInt(json["upbat"]["warn"]);
    }
    ret.cage = AgeData.fromJson(json["cage"]);
    ret.cage = AgeData.fromJson(json["sage"]);
    ret.advancedDeviceStatus = JsonData.toBool(json["advancedDeviceStatus"]);
    return ret;
  }
}

class StatusData extends JsonData
{
  dynamic raw;
  String status;
  String name;
  String version;
  DateTime serverTime;
  int serverTimeEpoch;
  bool apiEnabled;
  bool careportalEnabled;
  bool boluscalcEnabled;
  String head;
  SettingsData settings;
  ExtendedSettingsData extendedSettings;

  StatusData();

  factory StatusData.fromJson(Map<String, dynamic> json){
    StatusData ret = StatusData();
    ret.raw = json;
    if (json == null)return ret;
    ret.status = json["status"];
    ret.name = json["name"];
    ret.version = json["version"];
    ret.serverTime = JsonData.toDate(json["serverTime"]);
    ret.serverTimeEpoch = JsonData.toInt(json["serverTimeEpoch"]);
    ret.apiEnabled = JsonData.toBool("apiEnabled");
    ret.careportalEnabled = JsonData.toBool("careportalEnabled");
    ret.boluscalcEnabled = JsonData.toBool("boluscalcEnabled");
    ret.head = json["head"];
    if (json["settings"] != null)ret.settings = SettingsData.fromJson(json["settings"]);
    if (json["extendedSettings"] != null)ret.extendedSettings = ExtendedSettingsData.fromJson(json["extendedSettings"]);
    return ret;
  }
}

class ProfileGlucData
{
  DateTime day;
  double targetLow;
  double targetHigh;
  ProfileEntryData sens;
  ProfileEntryData carbRatio;
  ProfileEntryData basal;
  ProfileStoreData store;

  ProfileGlucData(this.store)
  {
    sens = ProfileEntryData(store.timezone);
    carbRatio = ProfileEntryData(store.timezone);
    basal = ProfileEntryData(store.timezone);
  }

  ProfileEntryData find(Date date, DateTime time, List<ProfileEntryData> list)
  {
    ProfileEntryData ret = ProfileEntryData(store.timezone);
    DateTime check = DateTime(date.year, date.month, date.day, time.hour, time.minute, time.second);
    for (ProfileEntryData entry in list)
    {
      if (!entry.time(date).isAfter(check))ret = entry;
    }
    return ret;
  }
}

class ProfileEntryData extends JsonData
{
  DateTime _time;
  String forceText = null;
  double value;
  double _percentAdjust = null;
  double _absoluteRate = null;
  set percentAdjust(double value)
  => _percentAdjust = value;
  set absoluteRate(double value)
  => _absoluteRate = value;
  int duration = 60;
  double orgValue;
  int timeAsSeconds;
  tz.Location _location;
  DateTime time(Date date)
  => //*
  DateTime(
    date.year,
    date.month,
    date.day,
    _time.hour,
    _time.minute,
    _time.second,
    _time.millisecond,
    _time.microsecond);

  ProfileEntryData get copy
  =>
    ProfileEntryData(null)
      .. value = value
      .. duration = duration
      .. timeAsSeconds = timeAsSeconds
      .. _absoluteRate = _absoluteRate
      .. _location = _location
      .. _percentAdjust = _percentAdjust
      .. _time = _time
      .. forceText = forceText
      .. orgValue = orgValue;

  ProfileEntryData(String timezone, [DateTime src = null])
  {
    if (timezone != null)_location = tz.getLocation(timezone);
    _time = src ?? DateTime(0);
  }

  double adjustedValue(double v)
  {
    if (_percentAdjust != null)return v + (v * _percentAdjust) / 100.0;
    if (_absoluteRate != null)return _absoluteRate;
    return v;
  }

  factory ProfileEntryData.fromJson(Map<String, dynamic> json, String timezone){
    ProfileEntryData ret = ProfileEntryData(timezone);
    if (json == null)return ret;
    ret._time = JsonData.toTime(json["time"]);
    ret.value = JsonData.toDouble(json["value"]);
    ret.timeAsSeconds = JsonData.toInt(json["timeAsSeconds"]);
    return ret;
  }
}

class ProfileStoreData extends JsonData
{
  double dia;
  List<ProfileEntryData> listCarbratio = List<ProfileEntryData>();
  int carbsHr;
  int delay;
  List<ProfileEntryData> listSens = List<ProfileEntryData>();
  String timezone;
  List<ProfileEntryData> listBasal = List<ProfileEntryData>();
  List<ProfileEntryData> listTargetLow = List<ProfileEntryData>();
  List<ProfileEntryData> listTargetHigh = List<ProfileEntryData>();
  DateTime startDate;
  String units;
  double get ieBasalSum
  {
    double ret = 0.0;
    for (ProfileEntryData entry in listBasal)
      ret += (entry.value / 60.0) * entry.duration;
    return ret;
  }

  ProfileStoreData()
  {
    timezone = "Europe/Berlin";
  }

  factory ProfileStoreData.fromJson(Map<String, dynamic> json){
    ProfileStoreData ret = ProfileStoreData();
    if (json == null)return ret;
    ret.dia = JsonData.toDouble(json["dia"]);
    ret.carbsHr = JsonData.toInt(json["carbs_hr"]);
    ret.delay = JsonData.toInt(json["delay"]);
    try
    {
      ret.timezone = JsonData.toText(json["timezone"]);
      tz.getLocation(ret.timezone);
    }
    catch (ex)
    {
      ret.timezone = "Europe/Berlin";
    }
    ret.startDate = JsonData.toDate(json["startDate"]);
    ret.units = JsonData.toText(json["units"]);
    for (dynamic entry in json["carbratio"])
      ret.listCarbratio.add(ProfileEntryData.fromJson(entry, ret.timezone));
    for (dynamic entry in json["sens"])
      ret.listSens.add(ProfileEntryData.fromJson(entry, ret.timezone));
    for (dynamic entry in json["basal"])
      ret.listBasal.add(ProfileEntryData.fromJson(entry, ret.timezone));
    for (dynamic entry in json["target_low"])
      ret.listTargetLow.add(ProfileEntryData.fromJson(entry, ret.timezone));
    for (dynamic entry in json["target_high"])
      ret.listTargetHigh.add(ProfileEntryData.fromJson(entry, ret.timezone));
    return ret;
  }
}

class ProfileData extends JsonData
{
  dynamic raw;
  String id;
  String defaultProfile;

  ProfileStoreData get current
  => store[defaultProfile];

  Map<String, ProfileStoreData> store = Map<String, ProfileStoreData>();
  DateTime startDate;
  int get mills
  => startDate.millisecondsSinceEpoch ?? 0;
  String units;
  DateTime createdAt;

  ProfileData();

  factory ProfileData.fromJson(Map<String, dynamic> json){
    ProfileData ret = ProfileData();
    ret.raw = json;
    if (json == null)return ret;
    ret.id = json["int"];
    ret.defaultProfile = json["defaultProfile"];
    ret.startDate = JsonData.toDate(json["startDate"]);
    ret.units = JsonData.toText(json["units"]);
    ret.createdAt = JsonData.toDate(json["created_at"]);
    Map<String, dynamic> src = json["store"];
    for (String key in src.keys)
    {
      dynamic temp = src.entries.firstWhere((e)
      => e.key == key);
      if (temp != null)ret.store[key] = ProfileStoreData.fromJson(temp.value);
    }
    return ret;
  }
}

class BoluscalcData extends JsonData
{
  String profile;
  String notes;
  DateTime eventTime;
  int targetBGLow;
  int targetBGHigh;
  int isf;
  int ic;
  double iob;
  double bolusIob;
  double basalIob;
  bool bolusIobUsed;
  bool basalIobUsed;
  int bg;
  double insulinBg;
  bool insulinBgUsed;
  int bgDiff;
  double insulinCarbs;
  double carbs;
  double cob;
  bool cobUsed;
  double insulinCob;
  double otherCorrection;
  double insulinSuperBolus;
  double insulinTrend;
  double insulin;
  bool superBolusUsed;
  bool trendUsed;
  String trend;
  bool ttUsed;
  String NSClientId;

  BoluscalcData();

  BoluscalcData get copy
  =>
    BoluscalcData()
      .. profile = profile
      .. notes = notes
      .. eventTime = eventTime
      .. targetBGLow = targetBGLow
      .. targetBGHigh = targetBGHigh
      .. isf = isf
      .. ic = ic
      .. iob = iob
      .. bolusIob = bolusIob
      .. basalIob = basalIob
      .. bolusIobUsed = bolusIobUsed
      .. basalIobUsed = basalIobUsed
      .. bg = bg
      .. insulinBg = insulinBg
      .. insulinBgUsed = insulinBgUsed
      .. bgDiff = bgDiff
      .. insulinCarbs = insulinCarbs
      .. carbs = carbs
      .. cob = cob
      .. cobUsed = cobUsed
      .. insulinCob = insulinCob
      .. otherCorrection = otherCorrection
      .. insulinSuperBolus = insulinSuperBolus
      .. insulinTrend = insulinTrend
      .. insulin = insulin
      .. superBolusUsed = superBolusUsed
      .. trendUsed = trendUsed
      .. trend = trend
      .. ttUsed = ttUsed
      .. NSClientId = NSClientId;

  factory BoluscalcData.fromJson(Map<String, dynamic> json){
    BoluscalcData ret = BoluscalcData();
    if (json == null)return ret;
    ret.profile = json["profile"];
    ret.notes = json["notes"];
    ret.eventTime = JsonData.toDate(json["eventTime"]);
    ret.targetBGLow = JsonData.toInt(json["targetBGLow"]);
    ret.targetBGHigh = JsonData.toInt(json["targetBGHigh"]);
    ret.isf = JsonData.toInt(json["isf"]);
    ret.ic = JsonData.toInt(json["ic"]);
    ret.iob = JsonData.toDouble(json["iob"]);
    ret.bolusIob = JsonData.toDouble(json["bolusIob"]);
    ret.basalIob = JsonData.toDouble(json["basalIob"]);
    ret.bolusIobUsed = JsonData.toBool(json["bolusIobUsed"]);
    ret.basalIobUsed = JsonData.toBool(json["basalIobUsed"]);
    ret.bg = JsonData.toInt(json["bg"]);
    ret.insulinBg = JsonData.toDouble(json["insulinBg"]);
    ret.insulinBgUsed = JsonData.toBool(json["insulinBgUsed"]);
    ret.bgDiff = JsonData.toInt(json["bgdiff"]);
    ret.insulinCarbs = JsonData.toDouble(json["insulincarbs"]);
    ret.carbs = JsonData.toDouble(json["carbs"]);
    ret.cob = JsonData.toDouble(json["cob"]);
    ret.cobUsed = JsonData.toBool(json["cobused"]);
    ret.insulinCob = JsonData.toDouble(json["insulincob"]);
    ret.otherCorrection = JsonData.toDouble(json["othercorrection"]);
    ret.insulinSuperBolus = JsonData.toDouble(json["insulinsuperbolus"]);
    ret.insulinTrend = JsonData.toDouble(json["insulintrend"]);
    ret.insulin = JsonData.toDouble(json["insulin"]);
    ret.superBolusUsed = JsonData.toBool(json["superbolusused"]);
    ret.trendUsed = JsonData.toBool(json["trendused"]);
    ret.trend = json["trend"];
    ret.ttUsed = JsonData.toBool(json["ttused"]);
    ret.NSClientId = json["NSCLIENT_ID"];
    return ret;
  }

  void slice(BoluscalcData src, BoluscalcData dst, double f)
  {
    isf = Globals.calc(src?.isf?.toDouble(), dst?.isf?.toDouble(), f).toInt();
    ic = Globals.calc(src?.ic?.toDouble(), dst?.ic?.toDouble(), f).toInt();
    iob = Globals.calc(src?.iob, dst?.iob, f);
    bolusIob = Globals.calc(src?.bolusIob, dst?.bolusIob, f);
    basalIob = Globals.calc(src?.basalIob, dst?.basalIob, f);
    bg = Globals.calc(src?.bg?.toDouble(), dst?.bg?.toDouble(), f).toInt();
    insulinBg = Globals.calc(src?.insulinBg, dst?.insulinBg, f);
    bgDiff = Globals.calc(src?.bgDiff?.toDouble(), dst?.bgDiff?.toDouble(), f).toInt();
    insulinCarbs = Globals.calc(src?.insulinCarbs, dst?.insulinCarbs, f);
    carbs = Globals.calc(src?.carbs, dst?.carbs, f);
    cob = Globals.calc(src?.cob, dst?.cob, f);
    insulinCob = Globals.calc(src?.insulinCob, dst?.insulinCob, f);
    otherCorrection = Globals.calc(src?.otherCorrection, dst?.otherCorrection, f);
    insulinSuperBolus = Globals.calc(src?.insulinSuperBolus, dst?.insulinSuperBolus, f);
    insulinTrend = Globals.calc(src?.insulinTrend, dst?.insulinTrend, f);
    insulin = Globals.calc(src?.insulin, dst?.insulin, f);
  }
}

class TreatmentData extends JsonData
{
  dynamic raw;
  String id;
  String eventType;
  int duration;
  int _percent;
  double _absolute;
  double _rate;
  DateTime createdAt;
  String enteredBy;
  String NSClientId;
  double _carbs;
  double insulin;
  double microbolus;
  bool isSMB;
  String pumpId;
  double glucose;
  String glucoseType;
  BoluscalcData boluscalc = null;
  String notes;

  bool isECarb = false;

  double adjustedValue(double v)
  {
    if (_percent != null)return v + (v * _percent) / 100.0;

    if (_rate != null)return _rate;

    return v;
  }

  double get eCarbs
  => isECarb ? _carbs : 0.0;

  double get carbs
  {
    switch (eventType.toLowerCase())
    {
      case "bolus wizard":
      case "meal bolus":
      case "carb correction":
        if (_carbs != null && !isECarb)return _carbs;
        break;
      case "<none>":
        if (enteredBy == "xdrip" && _carbs != null && !isECarb)return _carbs;
        break;
    }
    return 0.0;
  }

  double get bolusInsulin
  {
    if (insulin != null)return insulin;
    return 0.0;
  }

  void carbo(double value){_carbs = value;}

  TreatmentData();

  TreatmentData get copy
  =>
    TreatmentData()
      ..id = id
      .. eventType = eventType
      .. duration = duration
      .. _percent = _percent
      .. _absolute = _absolute
      .. _rate = _rate
      .. createdAt = createdAt
      .. enteredBy = enteredBy
      .. NSClientId = NSClientId
      .. _carbs = _carbs
      .. insulin = insulin
      .. microbolus = microbolus
      .. isSMB = isSMB
      .. pumpId = pumpId
      .. glucose = glucose
      .. glucoseType = glucoseType
      .. boluscalc = boluscalc == null ? null : boluscalc.copy
      .. notes = notes
      ..isECarb = isECarb;

  factory TreatmentData.fromJson(Map<String, dynamic> json){
    TreatmentData ret = TreatmentData();
    if (json == null)return ret;
    ret.raw = json;
    ret.id = JsonData.toText(json["_id"]);
    ret.eventType = JsonData.toText(json["eventType"]);
    ret.duration = JsonData.toInt(json["duration"]);
    ret._percent = JsonData.toInt(json["percent"], null);
    ret._absolute = JsonData.toDouble(json["absolute"], null);
    ret._rate = JsonData.toDouble(json["rate"]);
    ret.createdAt = JsonData.toDate(json["created_at"]);
    ret.enteredBy = JsonData.toText(json["enteredBy"]);
    ret.NSClientId = JsonData.toText(json["NSCLIENT_ID"]);
    ret._carbs = JsonData.toDouble(json["carbs"]);
    ret.insulin = JsonData.toDouble(json["insulin"]);
    ret.isSMB = JsonData.toBool(json["isSMB"]);
    ret.pumpId = JsonData.toText(json["pumpId"]);
    ret.glucose = JsonData.toDouble(json["glucose"]);
    ret.glucoseType = JsonData.toText(json["glucoseType"]);
    if (json["boluscalc"] != null)ret.boluscalc = BoluscalcData.fromJson(json["boluscalc"]);
    ret.notes = JsonData.toText(json["notes"]);
    ret.microbolus = 0.0;

    // Specialhandling for Uploader for Minimed 600-series
    if (json["key600"] != null)
    {
      RegExp reg = RegExp(r"microbolus (.*)U");
      Match m = reg.firstMatch(ret.notes);
      if (m != null && m.groupCount == 1)ret.microbolus = double.tryParse(m.group(1)) ?? 0.0;
    }

    return ret;
  }

  void slice(TreatmentData src, TreatmentData dst, double f)
  {
    _carbs = Globals.calc(src._carbs, dst._carbs, f);
    glucose = Globals.calc(src.glucose, dst.glucose, f);
    if (boluscalc != null)boluscalc.slice(src.boluscalc, dst.boluscalc, f);
  }
}

class EntryData extends JsonData
{
  dynamic raw;
  String id;
  DateTime time;
  int rssi;
  String device;
  String direction;
  double rawbg;
  double sgv;
  double mbg;
  String type;
  bool isGap = false;
  bool isCopy = false;
  bool get isInvalid
  => type != "mbg" && direction != null && direction.toLowerCase() == "none";
  double get gluc
  {
    return isGap ? -1 : (type == "sgv" ? sgv : rawbg) ?? 0;
  }

  double get fullGluc
  {
    return isGap ? -1 : (type == "mbg" ? mbg : gluc) ?? 0;
  }

  EntryData();

  EntryData get copy
  =>
    EntryData()
      ..id = id
      ..time = time
      ..rssi = rssi
      ..device = device
      ..direction = direction
      ..rawbg = rawbg
      ..sgv = sgv
      ..mbg = mbg
      ..type = type
      ..isGap = isGap
      ..isCopy = true;

  factory EntryData.fromJson(Map<String, dynamic> json){
    EntryData ret = EntryData();
    ret.raw = json;
    if (json == null)return ret;
    ret.id = json["_id"];
    ret.time = JsonData.toDate(json["date"]);
    ret.rssi = JsonData.toInt(json["rssi"]);
    ret.device = json["device"];
    ret.direction = json["direction"];
    ret.rawbg = JsonData.toDouble(json["rawbg"]);
    ret.sgv = JsonData.toDouble(json["sgv"]);
    ret.mbg = JsonData.toDouble(json["mbg"]);
    ret.type = json["type"];
    return ret;
  }

  void slice(EntryData src, EntryData dst, double f)
  {
    sgv = Globals.calc(src.sgv, dst.sgv, f);
    rawbg = Globals.calc(src.rawbg, dst.rawbg, f);
    mbg = Globals.calc(src.mbg, dst.mbg, f);
  }
}

class DayData
{
  Date date;
  ProfileGlucData basalData;
  int lowCount = 0;
  int normCount = 0;
  int highCount = 0;
  int entryCount = 0;
  int carbCount = 0;
  double carbs = 0;
  double min;
  double max;
  double mid;
  double varianz = 0.0;
  double get stdAbw
  => math.sqrt(varianz);
  double get varK
  => (mid ?? 0) != 0 ? stdAbw / mid * 100 : 0;
  double get lowPrz
  => entryCount == 0 ? 0 : lowCount / entryCount * 100;
  double get normPrz
  => entryCount == 0 ? 0 : normCount / entryCount * 100;
  double get highPrz
  => entryCount == 0 ? 0 : highCount / entryCount * 100;
  double get avgCarbs
  => carbCount > 0 ? carbs / carbCount : 0;
  bool isSameDay(DateTime time)
  {
    if (date.year != time.year)return false;
    if (date.month != time.month)return false;
    return date.day == time.day;
  }

  double get ieBolusSum
  {
    double ret = 0.0;
    for (TreatmentData entry in treatments)
      ret += entry.bolusInsulin;
    return ret;
  }

  double get ieBasalSum
  {
    double ret = 0.0;
    for (ProfileEntryData entry in profile)
      ret += ((entry.value ?? 0) / 60.0) * entry.duration;
    return ret;
  }

  DayData(date, this.basalData)
  {
    if (date == null)this.date = Date(0);
    else
      this.date = Date(date.year, date.month, date.day);

    EntryData entry = EntryData();
    entry.type = "mbg";
    entry.mbg = 123.0;
    entry.time = DateTime.now();
//    bloody.add(entry);
  }

  List<EntryData> entries = List<EntryData>();
  List<EntryData> _bloody = List<EntryData>();
  List<EntryData> get bloody
  => _bloody;
  List<TreatmentData> treatments = List<TreatmentData>();
  List<ProfileEntryData> _profile = null;
  List<ProfileEntryData> get profile
  {
    if (_profile != null)return _profile;
    if (basalData.store.listBasal.length == 0)
    {
      _profile = List<ProfileEntryData>();
      return _profile;
    }

    _profile = List<ProfileEntryData>();
    // fill profile with datasets representing the profile for that day
    for (ProfileEntryData entry in basalData.store.listBasal)
    {
      ProfileEntryData temp = ProfileEntryData(basalData.store.timezone, entry.time(date));
      temp.value = entry.value;
      temp.orgValue = entry.value;
      _profile.add(temp);
    }
    for (TreatmentData treat in treatments)
    {
      if (treat.eventType.toLowerCase() == "temp basal")
      {
        ProfileEntryData entry = ProfileEntryData(basalData.store.timezone, treat.createdAt);
        if (treat._percent != null)entry.percentAdjust = treat._percent.toDouble();
        else if (treat._rate != null)entry.absoluteRate = treat._rate;
        entry.duration = treat.duration;
        entry.value = null; //treat.microbolus;
        _profile.add(entry);
      }
    }
    _profile.sort((a, b)
    => a.time(date).compareTo(b.time(date)));
    ProfileEntryData last = null;
    DateTime lastTime = null;
    for (int i = 0; i < _profile.length; i++)
    {
      ProfileEntryData entry = _profile[i];
      entry.orgValue = entry.value;
      if (entry.value == null && last != null)
      {
        entry.orgValue = last.orgValue;
        entry.value = entry.adjustedValue(last.orgValue);

        DateTime endTime = entry.time(date).add(Duration(minutes: entry.duration));
        if (i < _profile.length - 1 && endTime.isBefore(_profile[i + 1].time(date)))
        {
          ProfileEntryData temp = ProfileEntryData(basalData.store.timezone, endTime);
          temp.value = last.orgValue;
          temp.orgValue = last.orgValue;
          _profile.insert(i + 1, temp);
        }
        else if (i == _profile.length - 1 && endTime.isBefore(
          DateTime(lastTime.year, lastTime.month, lastTime.day, 23, 59, 59)))
        {
          ProfileEntryData temp = ProfileEntryData(basalData.store.timezone, endTime);
          temp.value = last.orgValue;
          temp.orgValue = last.orgValue;
          _profile.add(temp);
        }
      }
      if (last != null)last.duration = entry
        .time(date)
        .difference(lastTime)
        .inMinutes;
      last = entry;
      lastTime = last.time(date);
    }
    if (last != null)last.duration = (23 - lastTime.hour) * 60 + (60 - lastTime.minute);
    return _profile;
  }

  init()
  {
    min = 10000.0;
    max = -10000.0;
    mid = 0.0;
    entryCount = 0;
    normCount = 0;
    highCount = 0;
    lowCount = 0;
    int midCount = 0;
    for (EntryData entry in entries)
    {
      if (entry.gluc != 0)
      {
        entryCount++;
        if (entry.gluc < basalData.targetLow)lowCount++;
        else if (entry.gluc > basalData.targetHigh)highCount++;
        else
          normCount++;
        midCount++;
        mid += entry.gluc;
        min = math.min(min, entry.gluc);
        max = math.max(max, entry.gluc);
      }
    }
    mid = midCount == 0 ? 0 : mid / midCount;
    varianz = 0.0;
    for (EntryData entry in entries)
    {
      if (entry.gluc != 0)varianz += ((entry.gluc - mid) * (entry.gluc - mid));
    }
    for (TreatmentData t in treatments)
    {
      if (t.carbs > 0)
      {
        carbCount++;
        carbs += t.carbs;
      }
    }
    varianz /= midCount;
  }

  dynamic findNearest(List<EntryData> eList, List<TreatmentData> tList, DateTime check,
                      {String glucoseType: null, int maxMinuteDiff: 30})
  {
    eList ??= List<EntryData>();
    tList ??= List<TreatmentData>();
    if (eList.length == 0 && tList.length == 0)return null;

    dynamic ret = null;
    int retDiff = 10000;
    for (EntryData entry in eList)
    {
      if (entry.gluc < 0)continue;
      DateTime time = DateTime(check.year, check.month, check.day, entry.time.hour, entry.time.minute);
      if (time == check)return entry;
      int diff = time
        .difference(check)
        .inMinutes
        .abs();

      if (diff < retDiff && diff <= maxMinuteDiff)
      {
        ret = entry;
        retDiff = diff;
      }
    }
    List<TreatmentData> list = tList.where((t)
    => t.glucoseType.toLowerCase() == "finger").toList();
    for (TreatmentData treat in list)
    {
      DateTime time = DateTime(check.year, check.month, check.day, treat.createdAt.hour, treat.createdAt.minute);
      if (time == check)return treat;
      int diff = time
        .difference(check)
        .inMinutes
        .abs();

      if (diff < retDiff && diff <= maxMinuteDiff)
      {
        ret = treat;
        retDiff = diff;
      }
    }

    return ret;
  }
}

class ListData
{
  List<DayData> days = List<DayData>();
  List<EntryData> entries = List<EntryData>();
  List<EntryData> bloody = List<EntryData>();
  List<TreatmentData> treatments = List<TreatmentData>();
  int catheterCount = 0;
  int ampulleCount = 0;
  int sensorCount = 0;
  double khCount = 0.0;
  double khAdjust = 0.0;
  int khAdjustCount = 0;
  int normCount = 0;
  int highCount = 0;
  int lowCount = 0;
  double ieBolusSum = 0.0;
  double ieBasalSum = 0.0;
  double ieMicroBolusSum = 0.0;
  double get ieBolusPrz
  =>
    ieBolusSum + ieBasalSum + ieMicroBolusSum > 0
      ? ieBolusSum / (ieBolusSum + ieBasalSum + ieMicroBolusSum) * 100
      : 0.0;
  double get ieBasalPrz
  =>
    ieBolusSum + ieBasalSum + ieMicroBolusSum > 0
      ? ieBasalSum / (ieBolusSum + ieBasalSum + ieMicroBolusSum) * 100
      : 0.0;
  double get ieMicroBolusPrz
  =>
    ieBolusSum + ieBasalSum + ieMicroBolusSum > 0
      ? ieMicroBolusSum / (ieBolusSum + ieBasalSum + ieMicroBolusSum) * 100
      : 0.0;
  int get count
  =>
    entries.where((entry)
    => !entry.isInvalid && entry.gluc != null && entry.gluc != 0).length;
  int entriesIn(int min, int max)
  =>
    entries.where((entry)
    => !entry.isInvalid && entry.gluc >= min && entry.gluc <= max).length;
  int entriesBelow(int min)
  =>
    entries.where((entry)
    => !entry.isInvalid && entry.gluc < min).length;
  int entriesAbove(int min)
  =>
    entries.where((entry)
    => !entry.isInvalid && entry.gluc > min).length;
  double get avgGluc
  {
    double ret = 0.0;
    int count = 0;
    for (var entry in entries)
    {
      if (entry.gluc > 0)
      {
        ret += entry.gluc;
        count++;
      }
    }
    return count > 0 ? ret / count : 0.0;
  }

  double min;
  double max;
  void extractData(ReportData data)
  {
    normCount = 0;
    highCount = 0;
    lowCount = 0;
    min = 999999.0;
    max = -1.0;
    DateTime lastDay = null;
    List<EntryData> allEntries = List<EntryData>();
    allEntries.addAll(entries);
    allEntries.addAll(bloody);
    allEntries.sort((a, b)
    => a.time.compareTo(b.time));
    for (var entry in allEntries)
    {
      if (entry.isInvalid)continue;

      ProfileGlucData glucData = data.profile(entry.time);
      if (lastDay == null || entry.time.day != lastDay.day)
      {
        days.add(DayData(entry.time, glucData));
        lastDay = entry.time;
      }
      if (entry.type == "mbg")
      {
        days.last.bloody.add(entry);
      }
      else
      {
        days.last.entries.add(entry);
        if (glucData != null)
        {
          double gluc = entry.gluc;
          if (gluc < glucData.targetLow)lowCount++;
          else if (gluc > glucData.targetHigh)highCount++;
          else
            normCount++;
          if (gluc < min)min = entry.gluc;
          if (gluc > max)max = entry.gluc;
        }
      }
    }

    khCount = 0.0;
    ieBolusSum = 0.0;
    catheterCount = 0;
    ampulleCount = 0;
    sensorCount = 0;
    double eCarbs = 0.0;
//    double duration = 0;
    double delay = 0;
    treatments.sort((a, b)
    => a.createdAt.compareTo(b.createdAt));
    for (int i = 0; i < treatments.length; i++)
    {
      TreatmentData t = treatments[i];
      String type = t.eventType.toLowerCase();
      if (type == "site change")catheterCount++;
      if (type == "insulin change")ampulleCount++;
      if (type == "sensor change")sensorCount++;
      if (type == "note" && t.notes.toLowerCase().startsWith("ecarb"))
      {
        RegExp rex = RegExp(r"[^0-9\-]*(-*\d*)[^0-9\-]*(-*\d*)[^0-9\-]*(-*\d*).*");
        Match match = rex.firstMatch(t.notes);
        if (match != null && match.groupCount == 3)
        {
          eCarbs = double.tryParse(match.group(1));
//          duration = double.tryParse(match.group(2));
          delay = double.tryParse(match.group(3));
          if (delay < 0)
          {
            for (int j = i - 1; j >= 0 && eCarbs > 0.0; j--)
            {
              TreatmentData t1 = treatments[j];
              if (t1.eventType.toLowerCase() == "meal bolus" && t1.carbs < 10.0)
              {
                eCarbs -= t1.carbs;
                t1.isECarb = true;
              }
            }
          }
        }
      }
      if (type == "meal bolus" && eCarbs > 0.0 && t.carbs < 10.0)
      {
        eCarbs -= t.carbs;
        t.isECarb = true;
      }

      int idx = days.indexWhere((d)
      => d.isSameDay(t.createdAt));
      if (idx >= 0)days[idx].treatments.add(t);
    }

    for (TreatmentData t in treatments)
    {
      khCount += t.carbs;
      ieBolusSum += t.bolusInsulin;
      ieMicroBolusSum += t.microbolus / 60 * t.duration;
    }

    ieBasalSum = 0.0;
    for (DayData day in days)
    {
      day.init();
      ieBasalSum += day.ieBasalSum;
    }
  }
}

class ReportData
{
  Error error = null;
  Date begDate;
  Date endDate;
  int dayCount = 0;
  List<ProfileData> profiles = List<ProfileData>();
  ListData ns = ListData();
  ListData calc = ListData();
  StatusData status;
  Globals globals;

  ProfileGlucData profile(DateTime time)
  {
//    DateTime check = DateTime(time.year, time.month, time.day);
    ProfileGlucData ret = ProfileGlucData(ProfileStoreData());
    int idx = -1;
    for (int i = 0; i < profiles.length; i++)
    {
      if (profiles[i].startDate
            .difference(time)
            .inDays <= 0)idx = i;
    }
    // found first profile for the start of the day
    if (idx >= 0)
    {
      ProfileData profile = profiles[idx];
//      ProfileStoreData p = profile.store[profile.defaultProfile];
      Date date = Date(time.year, time.month, time.day);
      ret = ProfileGlucData(profile.current);
      ret.basal = ret.find(date, time, ret.store.listBasal);
      ret.carbRatio = ret.find(date, time, ret.store.listCarbratio);
      ret.sens = ret.find(date, time, ret.store.listSens);
      ret.targetHigh = status.settings.thresholds.bgTargetTop.toDouble();
      ret.targetLow = status.settings.thresholds.bgTargetBottom.toDouble();
    }
    else
    {
      ret.targetHigh = 180.0;
      ret.targetLow = 70.0;
    }

    return ret;
  }

  double targetValue(DateTime time)
  {
    ProfileGlucData profile = this.profile(time);
    Date date = Date(time.year, time.month, time.day);
    double high = profile.store.listTargetHigh.lastWhere((tgt)
    =>
    tgt
      .time(date)
      .millisecondsSinceEpoch < time.millisecondsSinceEpoch)?.value ?? 180;
    double low = profile.store.listTargetLow.lastWhere((tgt)
    =>
    tgt
      .time(date)
      .millisecondsSinceEpoch < time.millisecondsSinceEpoch)?.value ?? 70;
    return (high + low) / 2;
  }

  ReportData(this.globals, this.begDate, this.endDate);
}
