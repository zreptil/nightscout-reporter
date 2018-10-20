library diamant.globals;

import 'dart:async';
import 'dart:html' as html;
import 'dart:math' as math;

import 'package:angular_components/angular_components.dart';
import 'package:angular_components/material_datepicker/comparison.dart';
import 'package:angular_components/material_datepicker/comparison_option.dart';
import 'package:angular_components/material_datepicker/range.dart';
import 'package:intl/intl.dart';

class JsonData
{
  DateTime toTime(String value)
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

  DateTime toDate(String value)
  {
    return DateTime.tryParse(value).toLocal() ?? DateTime(0, 1, 1);
  }

  String toText(value)
  => value is String ? value : "${value}";

  bool toBool(value)
  => value is bool ? value : value == "true";

  double toDouble(value)
  =>
    value == null ? 0 : value is double || value is int ? value : double
      .tryParse(value) ?? 0;

  int toInt(value)
  =>
    value == null ? 0 : value is int ? value : value is double
      ? value.toInt()
      : int.tryParse(value) ?? 0;
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
    ret.bgHigh = ret.toInt(json["bgHigh"]);
    ret.bgTargetTop = ret.toInt(json["bgTargetTop"]);
    ret.bgTargetBottom = ret.toInt(json["bgTargetBottom"]);
    ret.bgLow = ret.toInt(json["bgLow"]);
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
    ret.units = json["units"];
    ret.timeFormat = ret.toInt(json["timeFormat"]);
    ret.nightMode = ret.toBool(json["nightMode"]);
    ret.editMode = ret.toBool(json["editMode"]);
    ret.showRawbg = json["showRawbg"];
    ret.customTitle = json["customTitle"];
    ret.theme = json["theme"];
    ret.alarmUrgentHigh = ret.toBool(json["alarmUrgentHigh"]);
    for (dynamic entry in json["alarmUrgentHighMins"])
      ret.alarmUrgentHighMins.add(ret.toInt(entry));
    ret.alarmHigh = ret.toBool(json["alarmHigh"]);
    for (dynamic entry in json["alarmHighMins"])
      ret.alarmHighMins.add(ret.toInt(entry));
    ret.alarmLow = ret.toBool(json["alarmLow"]);
    for (dynamic entry in json["alarmLowMins"])
      ret.alarmLowMins.add(ret.toInt(entry));
    ret.alarmUrgentLow = ret.toBool(json["alarmUrgentLow"]);
    for (dynamic entry in json["alarmUrgentLowMins"])
      ret.alarmUrgentLowMins.add(ret.toInt(entry));
    for (dynamic entry in json["alarmUrgentMins"])
      ret.alarmUrgentMins.add(ret.toInt(entry));
    for (dynamic entry in json["alarmWarnMins"])
      ret.alarmWarnMins.add(ret.toInt(entry));
    ret.alarmTimeagoWarn = ret.toBool(json["alarmTimeagoWarn"]);
    ret.alarmTimeagoWarnMins = ret.toInt(json["alarmTimeagoWarnMins"]);
    ret.alarmTimeagoUrgent = ret.toBool(json["alarmTimeagoUrgent"]);
    ret.alarmTimeagoUrgent = ret.toBool(json["alarmTimeagoUrgent"]);
    ret.alarmTimeagoUrgentMins = ret.toInt(json["alarmTimeagoUrgentMins"]);
    ret.language = json["language"];
    ret.scaleY = json["scaleY"];
    for (String entry in json["showPlugins"].toString().split(" "))
    {
      if (entry != "")ret.showPlugins.add(entry);
    }
    ret.showForecast = json["showForecast"];
    ret.focusHours = ret.toInt(json["focusHours"]);
    ret.heartbeat = ret.toInt(json["heartbeat"]);
    ret.baseURL = json["baseURL"];
    ret.authDefaultRoles = json["authDefaultRoles"];
    if (json["thresholds"] != null)
      ret.thresholds = ThresholdData.fromJson(json["thresholds"]);
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
  bool enableAlerts;
  int info;

  AgeData();

  factory AgeData.fromJson(Map<String, dynamic> json){
    AgeData ret = AgeData();
    ret.display = json["display"];
    ret.warn = ret.toInt(json["warn"]);
    ret.urgent = ret.toInt(json["urgent"]);
    ret.info = ret.toInt(json["info"]);
    ret.enableAlerts = ret.toBool(json["enableAlerts"]);
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
    for (dynamic entry in json["pump"]["fields"].toString().split(" "))
      ret.pumpFields.add(entry);
    ret.upbatEnableAlerts = ret.toBool(json["upbat"]["enableAlerts"]);
    ret.upbatWarn = ret.toInt(json["upbat"]["warn"]);
    ret.cage = AgeData.fromJson(json["cage"]);
    ret.cage = AgeData.fromJson(json["sage"]);
    ret.advancedDeviceStatus = ret.toBool(json["advancedDeviceStatus"]);
    return ret;
  }
}

class StatusData extends JsonData
{
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
    ret.status = json["status"];
    ret.name = json["name"];
    ret.version = json["version"];
    ret.serverTime = ret.toDate(json["serverTime"]);
    ret.serverTimeEpoch = ret.toInt(json["serverTimeEpoch"]);
    ret.apiEnabled = ret.toBool("apiEnabled");
    ret.careportalEnabled = ret.toBool("careportalEnabled");
    ret.boluscalcEnabled = ret.toBool("boluscalcEnabled");
    ret.head = json["head"];
    if (json["settings"] != null)
      ret.settings = SettingsData.fromJson(json["settings"]);
    if (json["extendedSettings"] != null) ret.extendedSettings =
      ExtendedSettingsData.fromJson(json["extendedSettings"]);
    return ret;
  }
}

class ProfileGlucData
{
  double targetLow;
  double targetHigh;
  ProfileEntryData sens = ProfileEntryData();
  ProfileEntryData carbRatio = ProfileEntryData();
  ProfileEntryData basal = ProfileEntryData();
  ProfileStoreData store = ProfileStoreData();

  ProfileEntryData find(DateTime time, List<ProfileEntryData> list)
  {
    ProfileEntryData ret = ProfileEntryData();
    DateTime check = DateTime(0, 1, 1, time.hour, time.minute, time.second);
    for (ProfileEntryData entry in list)
    {
      if (!entry.time.isAfter(check))ret = entry;
    }
    return ret;
  }
}

class ProfileEntryData extends JsonData
{
  DateTime time;
  double value;
  int percentAdjust = 0;
  int duration = 60;
  double orgValue;
  int get timeAsSeconds
  => time.hour * 3600 + time.minute * 60;

  ProfileEntryData();

  factory ProfileEntryData.fromJson(Map<String, dynamic> json){
    ProfileEntryData ret = ProfileEntryData();
    ret.time = ret.toTime(json["time"]);
    ret.value = ret.toDouble(json["value"]);
    return ret;
  }
}

class ProfileStoreData extends JsonData
{
  int dia;
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

  ProfileStoreData();

  factory ProfileStoreData.fromJson(Map<String, dynamic> json){
    ProfileStoreData ret = ProfileStoreData();
    ret.dia = ret.toInt(json["dia"]);
    ret.carbsHr = ret.toInt(json["carbs_hr"]);
    ret.delay = ret.toInt(json["delay"]);
    ret.timezone = json["timezone"];
    ret.startDate = ret.toDate(json["startDate"]);
    ret.units = json["units"];
    for (dynamic entry in json["carbratio"])
      ret.listCarbratio.add(ProfileEntryData.fromJson(entry));
    for (dynamic entry in json["sens"])
      ret.listSens.add(ProfileEntryData.fromJson(entry));
    for (dynamic entry in json["basal"])
      ret.listBasal.add(ProfileEntryData.fromJson(entry));
    for (dynamic entry in json["target_low"])
      ret.listTargetLow.add(ProfileEntryData.fromJson(entry));
    for (dynamic entry in json["target_high"])
      ret.listTargetHigh.add(ProfileEntryData.fromJson(entry));
    return ret;
  }
}

class ProfileData extends JsonData
{
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
    ret.id = json["int"];
    ret.defaultProfile = json["defaultProfile"];
    ret.startDate = ret.toDate(json["startDate"]);
    ret.units = json["units"];
    ret.createdAt = ret.toDate(json["created_at"]);
    Map<String, dynamic> src = json["store"];
    for (String entry in src.keys)
      ret.store.putIfAbsent(entry, ()
      => ProfileStoreData.fromJson(src[entry]));
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
    ret.profile = json["profile"];
    ret.notes = json["notes"];
    ret.eventTime = ret.toDate(json["eventTime"]);
    ret.targetBGLow = ret.toInt(json["targetBGLow"]);
    ret.targetBGHigh = ret.toInt(json["targetBGHigh"]);
    ret.isf = ret.toInt(json["isf"]);
    ret.ic = ret.toInt(json["ic"]);
    ret.iob = ret.toDouble(json["iob"]);
    ret.bolusIob = ret.toDouble(json["bolusIob"]);
    ret.basalIob = ret.toDouble(json["basalIob"]);
    ret.bolusIobUsed = ret.toBool(json["bolusIobUsed"]);
    ret.basalIobUsed = ret.toBool(json["basalIobUsed"]);
    ret.bg = ret.toInt(json["bg"]);
    ret.insulinBg = ret.toDouble(json["insulinBg"]);
    ret.insulinBgUsed = ret.toBool(json["insulinBgUsed"]);
    ret.bgDiff = ret.toInt(json["bgdiff"]);
    ret.insulinCarbs = ret.toDouble(json["insulincarbs"]);
    ret.carbs = ret.toDouble(json["carbs"]);
    ret.cob = ret.toDouble(json["cob"]);
    ret.cobUsed = ret.toBool(json["cobused"]);
    ret.insulinCob = ret.toDouble(json["insulincob"]);
    ret.otherCorrection = ret.toDouble(json["othercorrection"]);
    ret.insulinSuperBolus = ret.toDouble(json["insulinsuperbolus"]);
    ret.insulinTrend = ret.toDouble(json["insulintrend"]);
    ret.insulin = ret.toDouble(json["insulin"]);
    ret.superBolusUsed = ret.toBool(json["superbolusused"]);
    ret.trendUsed = ret.toBool(json["trendused"]);
    ret.trend = json["trend"];
    ret.ttUsed = ret.toBool(json["ttused"]);
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
    bgDiff =
      Globals.calc(src?.bgDiff?.toDouble(), dst?.bgDiff?.toDouble(), f).toInt();
    insulinCarbs = Globals.calc(src?.insulinCarbs, dst?.insulinCarbs, f);
    carbs = Globals.calc(src?.carbs, dst?.carbs, f);
    cob = Globals.calc(src?.cob, dst?.cob, f);
    insulinCob = Globals.calc(src?.insulinCob, dst?.insulinCob, f);
    otherCorrection =
      Globals.calc(src?.otherCorrection, dst?.otherCorrection, f);
    insulinSuperBolus =
      Globals.calc(src?.insulinSuperBolus, dst?.insulinSuperBolus, f);
    insulinTrend = Globals.calc(src?.insulinTrend, dst?.insulinTrend, f);
    insulin = Globals.calc(src?.insulin, dst?.insulin, f);
  }
}

class TreatmentData extends JsonData
{
  String id;
  String eventType;
  int duration;
  int percent;
  double rate;
  DateTime createdAt;
  String enteredBy;
  String NSClientId;
  double carbs;
  double insulin;
  bool isSMB;
  String pumpId;
  double glucose;
  String glucoseType;
  BoluscalcData boluscalc = null;
  String notes;

  TreatmentData();

  TreatmentData get copy
  =>
    TreatmentData()
      ..id = id
      .. eventType = eventType
      .. duration = duration
      .. percent = percent
      .. rate = rate
      .. createdAt = createdAt
      .. enteredBy = enteredBy
      .. NSClientId = NSClientId
      .. carbs = carbs
      .. insulin = insulin
      .. isSMB = isSMB
      .. pumpId = pumpId
      .. glucose = glucose
      .. glucoseType = glucoseType
      .. boluscalc = boluscalc == null ? null : boluscalc.copy
      .. notes = notes;

  factory TreatmentData.fromJson(Map<String, dynamic> json){
    TreatmentData ret = TreatmentData();
    ret.id = ret.toText(json["_id"]);
    ret.eventType = ret.toText(json["eventType"]);
    ret.duration = ret.toInt(json["duration"]);
    ret.percent = ret.toInt(json["percent"]);
    ret.rate = ret.toDouble(json["rate"]);
    ret.createdAt = ret.toDate(json["created_at"]);
    ret.enteredBy = ret.toText(json["enteredBy"]);
    ret.NSClientId = ret.toText(json["NSCLIENT_ID"]);
    ret.carbs = ret.toDouble(json["carbs"]);
    ret.insulin = ret.toDouble(json["insulin"]);
    ret.isSMB = ret.toBool(json["isSMB"]);
    ret.pumpId = ret.toText(json["pumpId"]);
    ret.glucose = ret.toDouble(json["glucose"]);
    ret.glucoseType = ret.toText(json["glucoseType"]);
    if (json["boluscalc"] != null)
      ret.boluscalc = BoluscalcData.fromJson(json["boluscalc"]);
    ret.notes = ret.toText(json["notes"]);
    return ret;
  }

  void slice(TreatmentData src, TreatmentData dst, double f)
  {
    carbs = Globals.calc(src.carbs, dst.carbs, f);
    glucose = Globals.calc(src.glucose, dst.glucose, f);
    if (boluscalc != null)boluscalc.slice(src.boluscalc, dst.boluscalc, f);
  }
}

class EntryData extends JsonData
{
  String id;
  DateTime time;
  int rssi;
  String device;
  String direction;
  double rawbg;
  double sgv;
  String type;
  double get gluc
  {
    return type == "sgv" ? sgv : rawbg;
  }

  EntryData();

  EntryData get copy
  =>
    EntryData()
      ..time = time
      ..sgv = sgv
      ..device = device
      ..direction = direction
      ..id = id
      ..rawbg = rawbg
      ..sgv = sgv
      ..type = type;

  factory EntryData.fromJson(Map<String, dynamic> json){
    EntryData ret = EntryData();
    ret.id = json["_id"];
    ret.time = ret.toDate(json["dateString"]);
    ret.rssi = ret.toInt(json["rssi"]);
    ret.device = json["device"];
    ret.direction = json["direction"];
    ret.rawbg = ret.toDouble(json["rawbg"]);
    ret.sgv = ret.toDouble(json["sgv"]);
    ret.type = json["type"];
    return ret;
  }

  void slice(EntryData src, EntryData dst, double f)
  {
    sgv = Globals.calc(src.sgv, dst.sgv, f);
    rawbg = Globals.calc(src.rawbg, dst.rawbg, f);
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
  double min;
  double max;
  double mid;
  double varianz = 0.0;
  double get stdAbw
  => math.sqrt(varianz);
  double get lowPrz
  => entryCount == 0 ? 0 : lowCount / entryCount * 100;
  double get normPrz
  => entryCount == 0 ? 0 : normCount / entryCount * 100;
  double get highPrz
  => entryCount == 0 ? 0 : highCount / entryCount * 100;
  bool isSameDay(DateTime time)
  {
    if (date.year != time.year)return false;
    if (date.month != time.month)return false;
    return date.day == time.day;
  }

  double get ieBasalSum
  {
    double ret = 0.0;
    for (ProfileEntryData entry in profile)
      ret += (entry.value / 60.0) * entry.duration;
    return ret;
  }

  DayData(date, this.basalData)
  {
    this.date = Date(date.year, date.month, date.day);
  }

  List<EntryData> entries = List<EntryData>();
  List<TreatmentData> treatments = List<TreatmentData>();
  List<ProfileEntryData> _profile = null;
  List<ProfileEntryData> get profile
  {
    if (_profile != null)return _profile;
    _profile = List<ProfileEntryData>();
    // fill profile with datasets representing the profile for that day
    _profile.clear();
    for (ProfileEntryData entry in basalData.store.listBasal)
    {
      ProfileEntryData temp = ProfileEntryData();
      temp.time = DateTime(
        date.year, date.month, date.day, entry.time.hour, entry.time.minute);
      temp.value = entry.value;
      temp.orgValue = entry.value;
      _profile.add(temp);
    }
    for (TreatmentData treat in treatments)
    {
      if (treat.eventType.toLowerCase() == "temp basal")
      {
        ProfileEntryData entry = ProfileEntryData();
        entry.time = treat.createdAt;
        entry.percentAdjust = treat.percent;
        entry.duration = treat.duration;
        entry.value = null;
        _profile.add(entry);
      }
    }
    _profile.sort((a, b)
    => a.time.compareTo(b.time));
    ProfileEntryData last = null;
    for (int i = 0; i < _profile.length; i++)
    {
      ProfileEntryData entry = _profile[i];
      entry.orgValue = entry.value;
      if (entry.value == null)
      {
        entry.orgValue = last.orgValue;
        entry.value =
          last.orgValue + (last.orgValue * entry.percentAdjust) / 100.0;
        DateTime endTime = entry.time.add(Duration(minutes: entry.duration));
        if (i < _profile.length - 1 && endTime.isBefore(_profile[i + 1].time))
        {
          ProfileEntryData temp = ProfileEntryData();
          temp.time = endTime;
          temp.value = last.orgValue;
          temp.orgValue = last.orgValue;
          _profile.insert(i + 1, temp);
        }
      }
      if (last != null)last.duration = entry.time
        .difference(last.time)
        .inMinutes;
      last = entry;
    }
    if (last != null) last.duration =
      DateTime(last.time.year, last.time.month, last.time.day, 23, 59, 59)
        .difference(last.time)
        .inMinutes;

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
    varianz /= midCount;
  }
}

class ListData
{
  List<DayData> days = List<DayData>();
  List<EntryData> entries = List<EntryData>();
  List<TreatmentData> treatments = List<TreatmentData>();
  int catheterCount = 0;
  int ampulleCount = 0;
  double khCount = 0.0;
  double khAdjust = 0.0;
  int khAdjustCount = 0;
  int normCount = 0;
  int highCount = 0;
  int lowCount = 0;
  double ieBolusSum = 0.0;
  double ieBasalSum = 0.0;
  double get ieBolusPrz
  =>
    ieBolusSum + ieBasalSum > 0
      ? ieBolusSum / (ieBolusSum + ieBasalSum) * 100
      : 0.0;
  double get ieBasalPrz
  =>
    ieBolusSum + ieBasalSum > 0
      ? ieBasalSum / (ieBolusSum + ieBasalSum) * 100
      : 0.0;
  int get count
  =>
    entries.where((entry)
    => entry.gluc != null && entry.gluc != 0).length;
  int entriesIn(int min, int max)
  =>
    entries.where((entry)
    => entry.gluc >= min && entry.gluc <= max).length;
  int entriesBelow(int min)
  =>
    entries.where((entry)
    => entry.gluc < min).length;
  int entriesAbove(int min)
  =>
    entries.where((entry)
    => entry.gluc > min).length;
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
    for (var entry in entries)
    {
      ProfileGlucData glucData = data.profile(data, entry.time);
      if (lastDay == null || entry.time.day != lastDay.day)
      {
        days.add(DayData(entry.time, glucData));
        lastDay = entry.time;
      }
      days.last.entries.add(entry);

      if (glucData != null)
      {
        if (entry.gluc < glucData.targetLow)lowCount++;
        else if (entry.gluc > glucData.targetHigh)highCount++;
        else
          normCount++;
        if (entry.gluc < min)min = entry.gluc;
        if (entry.gluc > max)max = entry.gluc;
      }
    }

    khCount = 0.0;
    ieBolusSum = 0.0;
    catheterCount = 0;
    ampulleCount = 0;
    for (TreatmentData t in treatments)
    {
      String type = t.eventType.toLowerCase();
      if (type == "bolus wizard")
      {
        if (t.carbs != null)khCount += t.carbs;
        if (t.insulin != null)ieBolusSum += t.insulin;
      }
      if (type == "site change")catheterCount++;
      if (type == "insulin change")ampulleCount++;

      int idx = days.indexWhere((d)
      => d.isSameDay(t.createdAt));
      if (idx >= 0)days[idx].treatments.add(t);
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

  ProfileGlucData profile(ReportData data, DateTime time)
  {
    ProfileGlucData ret = ProfileGlucData();
    ProfileData profile = null;
    for (int i = 0; i < profiles.length; i++)
    {
      if (profiles[i].startDate
        .difference(time)
        .inDays <= 0)profile = profiles[i];
    }
    if (profile != null)
    {
      ret.store = profile.store[profile.defaultProfile];
      ret.basal = ret.find(time, ret.store.listBasal);
      ret.carbRatio = ret.find(time, ret.store.listCarbratio);
      ret.sens = ret.find(time, ret.store.listSens);
      ret.targetHigh = data.status.settings.thresholds.bgTargetTop.toDouble();
      ret.targetLow = data.status.settings.thresholds.bgTargetBottom.toDouble();
    }
    return ret;
  }

  ReportData(this.globals, this.begDate, this.endDate);
}

class Msg
{
  String okText = "Ja";
  String cancelText = "Nein";
  String text;
  String type = "msg";
  var ok = null;
  var cancel = null;
  var links = [];
  bool get isEmpty
  => (text == null || text == "") && links.length == 0;

  void clear()
  {
    text = null;
    links = [];
  }

  void dismiss(call)
  {
    call();
    text = null;
    links = [];
  }
}

class LangData
{
  String code;
  String name;
  String img;
  String get imgPath
  => "https://findicons.com/files/icons/2758/flag_icons/32/${img}.png";

  LangData(this.code, this.name, this.img);
}

class Globals
{
  static final Globals _globals = Globals._internal();

  static double calc(double a, double b, double factor)
  {
    if (a != null && a > 0)
    {
      if (b != null && b > 0)return a + ((b - a) * factor).toInt();
      else
        return a;
    }
    return b;
  }

  String title = "Nightscout Reporter";
  String userName = "?";
  Date birthDate = Date(2000, 1, 1);
  Date diaStartDate = Date(2000, 1, 1);
  Date minBirthDate = Date(1900, 1, 1);
  DateFormat dateFormat = DateFormat("dd.mm.yyyy", "de_DE");
  String insulin = null;
  String storageApiUrl = null;
  List<LangData> languageList = [
    LangData("de_DE", Intl.message("Deutsch"), "de"),
    LangData("en_US", Intl.message("English"), "us")
  ];
  LangData language;
  String get apiUrl
  {
    if (storageApiUrl != null && !storageApiUrl.endsWith("/"))
      return "$storageApiUrl/";
    return storageApiUrl;
  }

  String get reportUrl
  {
    if (storageApiUrl == null || !storageApiUrl.contains("herokuapp"))
      return null;

    return storageApiUrl.substring(0, storageApiUrl.indexOf("/api"));
  }

  bool glucMGDL = true;
  DatepickerComparison dateRange = DatepickerComparison(
    DatepickerDateRange(Intl.message("Zeitraum"), null, null),
    ComparisonOption.custom);
  DateFormat fmtDateForData;
  DateFormat fmtDateForDisplay;
  bool canDebug = false;
  bool isBeta = false;
  bool pdfSameWindow = true;
  bool isConfigured = false;

  String get pdfTarget
  {
    if (!pdfSameWindow)return "_target";
    return "";
  }

  Future<String> checkSetup()
  async {
    if (storageApiUrl == null || apiUrl == null)
      return Intl.message("Die URL wurde noch nicht festgelegt.");
    String ret = null;
    String check = "${apiUrl}status";

    await html.HttpRequest.getString(check).then((String status)
    {
      if (status != "<h1>STATUS OK</h1>")
        ret = Intl.message("Die angegebene URL ist nicht korrekt.");
    }).catchError((err)
    {
//      ret = err.currentTarget.responseText;
//      if (ret == null || ret == "")
      ret = Intl.message("Die angegebene URL konnte nicht erreicht werden.");
    });

    return ret;
  }

  factory Globals(){
    return _globals;
  }

  Globals._internal(){
    load();
  }

  changeLanguage(LangData value, {bool saveImmediate: false})
  async {
    language = value;
    dateFormat = DateFormat("dd.mm.yyyy", language.code);
    if (saveImmediate)save();
  }

  void load()
  {
    String langId = html.window.localStorage["language"];
    int idx = languageList.indexWhere((v)
    => v.code == langId);
    language = languageList[idx >= 0 ? idx : 0];

    fmtDateForData = DateFormat("yyyy-MM-dd");
    fmtDateForDisplay = DateFormat("dd.MM.yyyy");
    storageApiUrl = html.window.localStorage["apiUrl"];
    if (storageApiUrl == "null")storageApiUrl = null;
    glucMGDL = html.window.localStorage["glucMGDL"] != "false";
    userName = html.window.localStorage["userName"];
    if (userName == null || userName.isEmpty)userName = "?";
    insulin = html.window.localStorage["insulin"] ?? "";
    birthDate = Date.parse(
      html.window.localStorage["birthDate"] ?? "2000-01-01", fmtDateForData);
    diaStartDate = Date.parse(
      html.window.localStorage["diaStartDate"] ?? "2000-01-01", fmtDateForData);
    canDebug = html.window.localStorage["debug"] == "yes";
    isBeta = html.window.localStorage["beta"] == "yes";
    pdfSameWindow = html.window.localStorage["pdfSameWindow"] != "no";

    Date start = Date.today();
    Date end = Date.today();
    try
    {
      start = Date.parse(html.window.localStorage["startDate"] ??
        Date.today().add(days: -7).format(fmtDateForData), fmtDateForData);
      end = Date.parse(html.window.localStorage["endDate"] ??
        Date.today().format(fmtDateForData), fmtDateForData);
    }
    catch (ex)
    {}
    DatepickerDateRange dr = DatepickerDateRange(
      dateRange.range.title, start, end);
    dateRange = DatepickerComparison(dr, ComparisonOption.custom);
    changeLanguage(language);
  }

  void save()
  {
    bool doReload = language.code != html.window.localStorage["language"] &&
      language.code != null && html.window.localStorage["language"] != null;
    html.window.localStorage["apiUrl"] = storageApiUrl ?? "";
    html.window.localStorage["glucMGDL"] = glucMGDL.toString();
    html.window.localStorage["userName"] = userName ?? "?";
    html.window.localStorage["insulin"] = insulin ?? "";
    html.window.localStorage["birthDate"] = birthDate.format(fmtDateForData);
    html.window.localStorage["diaStartDate"] =
      diaStartDate.format(fmtDateForData);
    html.window.localStorage["language"] = language.code ?? "de_DE";
    html.window.localStorage["beta"] = isBeta ? "yes" : "no";
    html.window.localStorage["pdfSameWindow"] = pdfSameWindow ? "yes" : "no";
    if (dateRange.range != null)
    {
      if (dateRange.range.start != null) html.window.localStorage["startDate"] =
        dateRange.range.start.format(fmtDateForData);
      if (dateRange.range.end != null) html.window.localStorage["endDate"] =
        dateRange.range.end.format(fmtDateForData);
    }
    if (doReload)html.window.location.reload();
  }

  static double percentile(List entries, int value)
  {
    double v = value / 100;
    List temp = List();
    // The entries must not be rearranged,
    // so we need a copy of this list
    for (var entry in entries)
      temp.add(entry);
    temp.sort((a, b)
    => a.gluc.compareTo(b.gluc));
    int N = temp.length;
    double n = (N - 1) * v + 1;
    if (n == 1)
    {
      return temp[0].gluc;
    }
    else if (n == N)
    {
      return temp[N - 1].gluc;
    }
    else
    {
      int k = n.toInt();
      double d = n - k;
      if (k > 0 && k < temp.length)return temp[k - 1].gluc +
        d * (temp[k].gluc - temp[k - 1].gluc);
      else
        return 0.0;
    }
  }
}
