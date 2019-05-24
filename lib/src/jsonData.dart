library diamant.jsonData;

import 'dart:math' as math;

import 'package:angular_components/angular_components.dart';
import 'package:nightscout_reporter/src/globals.dart';
import 'package:timezone/browser.dart' as tz;

// The uploaders that can be checked when neccessary
enum Uploader
{
  Unknown, XDrip, Tidepool, Minimed600, OpenAPS, AndroidAPS
}

class JsonData
{
  JsonData();

  static DateTime toTime(String value)
  {
    if (value == null)return DateTime(0, 1, 1);
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
  double targetLow = 70;
  double targetHigh = 180;
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

class ProfileTimezone
{
  String name;
  tz.Location location;
  int localDiff = 0;

  ProfileTimezone(String this.name, [bool isInitializing = false])
  {
    location = tz.getLocation(name);
    if (location != null)
    {
      tz.TZDateTime d = tz.TZDateTime(
        location,
        0,
        1,
        1,
        0,
        0,
        0);
      localDiff = d
        .difference(DateTime(0))
        .inHours;
    }
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
  double get tempAdjusted
  => orgValue == null || orgValue == 0 ? 0 : (value - orgValue) / orgValue;
  int duration = 60;
  double orgValue;
  int timeAsSeconds;
  ProfileTimezone _timezone;
  int get localDiff
  => _timezone.localDiff;

  DateTime endTime(Date date, [bool adjustLocalForTime = false])
  {
    DateTime ret = time(date, adjustLocalForTime);
    ret.add(Duration(minutes: duration - 1));
    return ret;
  }

  int get timeForCalc
  => _time.hour * 60 + _time.minute;

  DateTime time(Date date, [bool adjustLocalForTime = false])
  {
    int hour = _time.hour;
    if (adjustLocalForTime)hour += _timezone.localDiff;

    while (hour < 0)hour += 24;
    while (hour >= 24)hour -= 24;

    return DateTime(
      date.year,
      date.month,
      date.day,
      hour,
      _time.minute,
      _time.second,
      _time.millisecond,
      _time.microsecond);
  }

  ProfileEntryData get copy
  =>
    ProfileEntryData(null)
      .. value = value
      .. duration = duration
      .. timeAsSeconds = timeAsSeconds
      .. _absoluteRate = _absoluteRate
      .. _timezone = _timezone
      .. _percentAdjust = _percentAdjust
      .. _time = _time
      .. forceText = forceText
      .. orgValue = orgValue
      .. _timezone = _timezone;

  ProfileEntryData clone(DateTime time)
  {
    ProfileEntryData ret = copy;
    ret._time = time;
    return ret;
  }

  ProfileEntryData(ProfileTimezone timezone, [DateTime src = null])
  {
    if (timezone != null)_timezone = timezone;
    _time = src ?? DateTime(0);
  }

  bool get isCalculated
  => _percentAdjust != null || _absoluteRate != null;

  transferCalcValues(ProfileEntryData src)
  {
    _percentAdjust = src._percentAdjust;
    _absoluteRate = src._absoluteRate;
  }

  double adjustedValue(double v)
  {
    if (_percentAdjust != null)return v + (v * _percentAdjust) / 100.0;
    if (_absoluteRate != null)return _absoluteRate;
    return v;
  }

  factory ProfileEntryData.fromTreatment(ProfileTimezone timezone, TreatmentData src){
    ProfileEntryData ret = ProfileEntryData(timezone, src.createdAt);
    if (src._percent != null)ret.percentAdjust = src._percent.toDouble();
    else if (src._rate != null)ret.absoluteRate = src._rate;

    if ((src.from == Uploader.Minimed600 || src.from == Uploader.Tidepool) && src._absolute != null)
      ret.absoluteRate = src._absolute;
    ret.duration = src.duration;

    return ret;
  }

  factory ProfileEntryData.fromJson(Map<String, dynamic> json, ProfileTimezone timezone, int timeshift,
                                    [double percentage = 1.0]){
    ProfileEntryData ret = ProfileEntryData(timezone);
    if (json == null)return ret;
    ret._time = JsonData.toTime(json["time"]);
    if (ret._time.hour < 24 - timeshift)ret._time = ret._time.add(Duration(hours: timeshift));
    else
      ret._time = ret._time.add(Duration(hours: timeshift - 24));
    ret.value = JsonData.toDouble(json["value"]);
    if (ret.value != null)ret.value *= percentage;
    ret.timeAsSeconds = JsonData.toInt(json["timeAsSeconds"]);
    return ret;
  }
}

class ProfileStoreData extends JsonData
{
  String name;
  double dia;
  List<ProfileEntryData> listCarbratio = List<ProfileEntryData>();
  int carbsHr;
  int delay;
  int maxPrecision = 0;
  List<ProfileEntryData> listSens = List<ProfileEntryData>();
  ProfileTimezone timezone;
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

  ProfileStoreData get copy
  {
    ProfileStoreData ret = ProfileStoreData(name)
      .. dia = dia
      .. carbsHr = carbsHr
      ..delay = delay
      ..startDate = startDate
      ..maxPrecision = maxPrecision
      ..timezone = timezone
      ..units = units;
    ret.listBasal = List<ProfileEntryData>();
    for (ProfileEntryData entry in listBasal)
      ret.listBasal.add(entry.copy);
    ret.listCarbratio = List<ProfileEntryData>();
    for (ProfileEntryData entry in listCarbratio)
      ret.listCarbratio.add(entry.copy);
    ret.listSens = List<ProfileEntryData>();
    for (ProfileEntryData entry in listSens)
      ret.listSens.add(entry.copy);
    ret.listTargetLow = List<ProfileEntryData>();
    for (ProfileEntryData entry in listTargetLow)
      ret.listTargetLow.add(entry.copy);
    ret.listTargetHigh = List<ProfileEntryData>();
    for (ProfileEntryData entry in listTargetHigh)
      ret.listTargetHigh.add(entry.copy);
    return ret;
  }

  ProfileStoreData(String name)
  {
    this.name = name;
    timezone = ProfileTimezone(Globals.refTimezone);
  }

  static _adjust(List<ProfileEntryData> list)
  {
    list.sort((a, b)
    => a._time.compareTo(b._time));
    if(list.length > 0 && list.first._time.hour != 0)
      {
        ProfileEntryData first = list.last.copy;
        if(first.value == list.first.value)
        {
          list.first._time = list.first._time.add(Duration(hours: -first._time.hour));
        }
        else
        {
          first._time = first._time.add(Duration(hours: -first._time.hour));
          list.insert(0, first);
        }
      }
  }

  factory ProfileStoreData.fromJson(String name, Map<String, dynamic> json, double percentage, int timeshift){
    ProfileStoreData ret = ProfileStoreData(name);
    if (json == null)return ret;
    ret.dia = JsonData.toDouble(json["dia"]);
    ret.carbsHr = JsonData.toInt(json["carbs_hr"]);
    ret.delay = JsonData.toInt(json["delay"]);
    try
    {
      ret.timezone = ProfileTimezone(JsonData.toText(json["timezone"]));
    }
    catch (ex)
    {
      ret.timezone = ProfileTimezone(Globals.refTimezone);
    }
    ret.startDate = JsonData.toDate(json["startDate"]);
    ret.units = JsonData.toText(json["units"]);
    for (dynamic entry in json["carbratio"])
      ret.listCarbratio.add(ProfileEntryData.fromJson(entry, ret.timezone, timeshift));
    _adjust(ret.listCarbratio);
    for (dynamic entry in json["sens"])
      ret.listSens.add(ProfileEntryData.fromJson(entry, ret.timezone, timeshift));
    _adjust(ret.listSens);
    ret.maxPrecision = 0;
    for (dynamic entry in json["basal"])
    {
      ret.listBasal.add(ProfileEntryData.fromJson(entry, ret.timezone, timeshift, percentage));
      ret.maxPrecision = math.max(ret.maxPrecision, Globals.decimalPlaces(ret.listBasal.last.value));
    }
    _adjust(ret.listBasal);
    for (dynamic entry in json["target_low"])
      ret.listTargetLow.add(ProfileEntryData.fromJson(entry, ret.timezone, timeshift));
    _adjust(ret.listTargetLow);
    for (dynamic entry in json["target_high"])
      ret.listTargetHigh.add(ProfileEntryData.fromJson(entry, ret.timezone, timeshift));
    _adjust(ret.listTargetHigh);

    return ret;
  }

  _importFromTime(DateTime time, List<ProfileEntryData> listSrc, List<ProfileEntryData> listDst)
  {
    Date date = Date(time.year, time.month, time.day);
    listSrc = listSrc.where((p)
    => p.endTime(date).isAfter(time)).toList();
    if (listSrc.length == 0)return;
    listDst = listDst.where((p)
    => p.time(date).isBefore(time)).toList();
    if (listDst.length == 0)listDst.add(listSrc.last.copy);
    listDst.last.duration = time
      .difference(listDst.last.time(date))
      .inMinutes;
    listSrc.first.duration = time
      .difference(listSrc.first._time)
      .inMinutes;
    listSrc.first._time = time;
    listDst.addAll(listSrc);
  }

  importFromTime(DateTime time, ProfileStoreData src)
  {
    _importFromTime(time, src.listCarbratio, listCarbratio);
    _importFromTime(time, src.listSens, listSens);
    _importFromTime(time, src.listBasal, listBasal);
    _importFromTime(time, src.listTargetLow, listTargetLow);
    _importFromTime(time, src.listTargetHigh, listTargetHigh);
  }

  // remove all settings from given time up to duration.
  // if duration is 0 then remove all after given time.
  void removeFrom(int hour, int minute, int duration)
  {
    _removeFrom(listCarbratio, hour * 60 + minute, duration);
    _removeFrom(listSens, hour * 60 + minute, duration);
    _removeFrom(listBasal, hour * 60 + minute, duration);
    _removeFrom(listTargetLow, hour * 60 + minute, duration);
    _removeFrom(listTargetHigh, hour * 60 + minute, duration);
  }

  void _removeFrom(List<ProfileEntryData> list, int time, int duration)
  {
    for (int i = 0; i < list.length; i++)
    {
      int check = list[i].timeForCalc;
      if (check >= time && (duration == 0 || check < time + duration))
      {
        if (i > 0)
        {
          list[i - 1].duration =
          duration == 0 ? 24 * 60 - list[i - 1].timeForCalc : duration + list[i].timeForCalc - list[i - 1].timeForCalc;
        }
        list.removeAt(i);
        i--;
      }
    }
  }

  // remove all settings from given time up to duration.
  // if duration is 0 then remove all after given time.
  void addFrom(ProfileData src, ProfileStoreData srcStore)
  {
    _addFrom(listCarbratio, src, srcStore.listCarbratio);
    _addFrom(listSens, src, srcStore.listSens);
    _addFrom(listBasal, src, srcStore.listBasal);
    _addFrom(listTargetLow, src, srcStore.listTargetLow);
    _addFrom(listTargetHigh, src, srcStore.listTargetHigh);
  }

  void _addFrom(List<ProfileEntryData> list, ProfileData src, List<ProfileEntryData> srcList)
  {
    int time = src.startDate.hour * 60 + src.startDate.minute;
    for (int i = 0; i < srcList.length; i++)
    {
      int check = srcList[i].timeForCalc;
      if (check >= time && (src.duration == 0 || check < time + src.duration))
      {
        if (list.length > 0)list.last.duration = srcList[i].timeForCalc - list.last.timeForCalc;
        srcList[i].duration = 24 * 60 - srcList[i].timeForCalc;
        list.add(srcList[i]);
      }
    }
  }
}

class ProfileData extends JsonData
{
  dynamic raw;
  String id;
  String defaultProfile;
  int duration;
  Map<String, ProfileStoreData> store = Map<String, ProfileStoreData>();
  DateTime startDate;
  String units;
  DateTime createdAt;
  int maxPrecision = 0;

  ProfileData get copy
  {
    ProfileData ret = ProfileData()
      .. raw = raw
      .. duration = duration
      .. id = id
      .. defaultProfile = defaultProfile
      .. startDate = startDate
      .. units = units
      .. createdAt = createdAt
      .. maxPrecision = maxPrecision;

    ret.store = Map<String, ProfileStoreData>();
    for (String key in store.keys)
      ret.store[key] = store[key].copy;

    return ret;
  }

  int get mills
  => startDate.millisecondsSinceEpoch ?? 0;

  ProfileStoreData get current
  => store[defaultProfile];

  ProfileData();

  factory ProfileData.fromJson(Map<String, dynamic> json){
    ProfileData ret = ProfileData();
    ret.raw = json;
    if (json == null)return ret;
    ret.id = json["int"];
    ret.defaultProfile = json["defaultProfile"];
    ret.startDate = JsonData.toDate(json["startDate"]);
    int timeshift = JsonData.toInt(json["timeshift"]);
    ret.units = JsonData.toText(json["units"]);
    ret.createdAt = JsonData.toDate(json["created_at"]);
    ret.duration = JsonData.toInt(json["duration"]);
    Map<String, dynamic> src = json["store"];
    ret.maxPrecision = 0;
    for (String key in src.keys)
    {
      dynamic temp = src.entries.firstWhere((e)
      => e.key == key);
      if (temp != null)
      {
        double percentage = JsonData.toDouble(json["percentage"]);
        if (percentage == null || percentage == 0.0)percentage = 1.0;
        else
          percentage /= 100.0;
        ret.store[key] = ProfileStoreData.fromJson(key, temp.value, percentage, timeshift);
        ret.maxPrecision = math.max(ret.maxPrecision, ret.store[key].maxPrecision);
      }
    }
    return ret;
  }

  // include data from src in current profile
  void mixWith(ProfileData src)
  {
    for (String key in store.keys)
    {
      // the store will be mixed with the same store from the source,
      // unless the key of the store is unknown. In this case the store
      // "default" is used, if available.
      String srcKey = key;
      if (!src.store.containsKey(srcKey))srcKey = src.defaultProfile;

      if (src.store.containsKey(srcKey))
      {
        // remove all settings from given time up to duration.
        // if duration is 0 then remove all after given time.
        store[key].removeFrom(src.startDate.hour, src.startDate.minute, src.duration);
        // add all settings after the given time from src.
        store[key].addFrom(src, src.store[srcKey]);
      }
    }
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
    if (ret.insulin == 0.0)ret.insulin = JsonData.toDouble(json["enteredinsulin"]);
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
  int timeshift;
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
  Uploader _from = Uploader.Unknown;
  Uploader get from
  {
    if (_from == Uploader.Unknown)
    {
      String check = enteredBy.toLowerCase() ?? "";
      if (check == "openaps")_from = Uploader.OpenAPS;
      else if (check == "tidepool")_from = Uploader.Tidepool;
      else if (check.contains("androidaps"))_from = Uploader.AndroidAPS;
      else if (check.startsWith("xdrip"))_from = Uploader.XDrip;
    }
    return _from;
  }

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
/*
    switch (eventType.toLowerCase())
    {
      case "bolus wizard":
      case "meal bolus":
      case "carb correction":
      case "carbs":
        if (_carbs != null && !isECarb)return _carbs;
        break;
      case "<none>":
        if (enteredBy.startsWith("xdrip") && _carbs != null && !isECarb)return _carbs;
        break;
    }
*/
    if (_carbs != null && !isECarb)return _carbs;
    return 0.0;
  }

  bool get isCarbBolus
  {
    String type = eventType.toLowerCase();
    if (type == "meal bolus")return true;
    if (type == "bolus wizard" && carbs > 0)return true;

    return false;
  }

  double get bolusInsulin
  {
    if (insulin != null)return insulin;
    return 0.0;
  }

  void carbo(double value)
  {
    _carbs = value;
  }

  TreatmentData();

  TreatmentData get copy
  =>
    TreatmentData()
      ..id = id
      .. eventType = eventType
      .. duration = duration
      .. timeshift = timeshift
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
    ret.timeshift = JsonData.toInt(json["timeshift"]);
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
      ret._from = Uploader.Minimed600;
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
  bool get isInvalidOrGluc0
  => (type != "mbg" && direction != null && direction.toLowerCase() == "none") || gluc == null || gluc == 0;
  double get gluc
  {
    return isGap ? -1 : (type == "sgv" ? sgv : rawbg) ?? 0;
  }

  double get bloodGluc
  {
    return isGap ? -1 : (type == "mbg" ? mbg : 0) ?? 0;
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
  double stdAbw(bool isMGDL)
  {
    double ret = math.sqrt(varianz);
    if (!isMGDL)ret = ret / 18.02;
    return ret;
  }

  double get varK
  => (mid ?? 0) != 0 ? stdAbw(true) / mid * 100 : 0;
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

  double get ieCorrectionSum
  {
    double ret = 0.0;
    for (TreatmentData entry in treatments)
      if (!entry.isCarbBolus && !entry.isSMB)ret += entry.bolusInsulin;
    return ret;
  }

  double get ieCarbSum
  {
    double ret = 0.0;
    for (TreatmentData entry in treatments)
      if (entry.isCarbBolus && !entry.isSMB)ret += entry.bolusInsulin;
    return ret;
  }

  double get ieSMBSum
  {
    double ret = 0.0;
    for (TreatmentData entry in treatments)
      if (entry.isSMB)ret += entry.bolusInsulin;
    return ret;
  }

  double getBolusSum(bool isCarbBolus)
  {
    double ret = 0.0;
    for (TreatmentData entry in treatments)
    {
      if (entry.isCarbBolus == isCarbBolus)ret += entry.bolusInsulin;
    }
    return ret;
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
    entry.time = Globals.now;
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
      ProfileEntryData temp = ProfileEntryData(basalData.store.timezone, entry.time(date, true));
      temp.value = entry.value;
      temp.orgValue = entry.value;
      _profile.add(temp);
    }
    if (_profile.first
          .time(date, false)
          .hour > 0)
    {
      ProfileEntryData clone = _profile.first.clone(DateTime(date.year, date.month, date.day, 0, 0));
      _profile.insert(0, clone);
    }
    // fill profile with treatments of type "temp basal" to get the actual basalrate
    for (TreatmentData treat in treatments)
    {
      if (treat.eventType.toLowerCase() == "temp basal" && treat.duration > 0)
      {
        ProfileEntryData entry = ProfileEntryData.fromTreatment(basalData.store.timezone, treat);
        // value null means this value has to be calculated in the next loop
        entry.value = null;
        _profile.add(entry);
      }
    }
    // sort the profile to have the entries in the correct order
    _profile.sort((a, b)
    => a.time(date).compareTo(b.time(date)));
    ProfileEntryData last = null;
    DateTime lastTime = null;
    // calculate the values based on the profile data
    for (int i = 0; i < _profile.length; i++)
    {
      ProfileEntryData entry = _profile[i];
      entry.orgValue = entry.value;
      // only work on entry-values that are null (inserted by the code above)
      if (entry.value == null && last != null)
      {
        // entry has to be calculated and has a preceding entry
        entry.orgValue = last.orgValue;
        entry.value = entry.adjustedValue(last.orgValue);

        DateTime endTime = entry.time(date).add(Duration(minutes: entry.duration));
        if (i < _profile.length - 1 && endTime.isBefore(_profile[i + 1].time(date)))
        {
          ProfileEntryData temp = ProfileEntryData(basalData.store.timezone, endTime);
          temp.transferCalcValues(last);
          temp.value = last.orgValue;
          temp.orgValue = last.orgValue;
          _profile.insert(i + 1, temp);
        }
        else if (i == _profile.length - 1 && endTime.isBefore(
          DateTime(lastTime.year, lastTime.month, lastTime.day, 23, 59, 59)))
        {
          ProfileEntryData temp = ProfileEntryData(basalData.store.timezone, endTime);
          temp.transferCalcValues(last);
          temp.value = last.orgValue;
          temp.orgValue = last.orgValue;
          _profile.add(temp);
        }
      }
      else if (entry.value != null && last != null)
      {
        // entry is from the base profile
        if (last.isCalculated)
        {
          // if the last value was calculated check if the duration is still running
          DateTime endTime = lastTime.add(Duration(minutes: last.duration));
          if (endTime.isAfter(entry.time(date)))
          {
            // transfer the calculationdata from the last entry
            entry.transferCalcValues(last);
            // recalculate the value based on the value from the profile
            entry.value = entry.adjustedValue(entry.orgValue);
            entry.duration = endTime
              .difference(entry.time(date))
              .inMinutes;
          }
        }
      }
      // finalize the last entry by setting its duration to fit the start of the current entry
      if (last != null)
      {
        last.duration = entry
          .time(date)
          .difference(lastTime)
          .inMinutes;
      }
      last = entry;
      lastTime = last.time(date);
    }

    if (last != null) last.duration = (23 - lastTime.hour) * 60 + (60 - lastTime.minute);
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
    for (EntryData entry in entries)
    {
      if (entry.gluc != 0)
      {
        entryCount++;
        if (entry.gluc < basalData.targetLow)lowCount++;
        else if (entry.gluc > basalData.targetHigh)highCount++;
        else
          normCount++;
        mid += entry.gluc;
        min = math.min(min, entry.gluc);
        max = math.max(max, entry.gluc);
      }
    }

    mid = entryCount == 0 ? 0 : mid / entryCount;
    varianz = 0.0;
    for (EntryData entry in entries)
    {
      if (entry.gluc != 0)varianz += math.pow(entry.gluc - mid, 2);
    }
    varianz /= entryCount;

    for (TreatmentData t in treatments)
    {
      if (t.carbs > 0)
      {
        carbCount++;
        carbs += t.carbs;
      }
    }
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

class StatisticData
{
  double min, max;
  List<double> values = List<double>();
  double sum = 0.0;
  double varianz = 0.0;
  double median;
  double get mid
  => values.length == 0 ? 0 : sum / values.length;
  double get stdAbw
  => math.sqrt(varianz);
  StatisticData(this.min, this.max);

  add(double value)
  {
    values.add(value);
    sum += value;
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
  Map<String, StatisticData> stat = {
    "low": StatisticData(0, 0),
    "norm": StatisticData(0, 0),
    "high": StatisticData(0, 0),
    "stdLow": StatisticData(1, 69.9999),
    "stdNorm": StatisticData(70, 179.9999),
    "stdHigh": StatisticData(180, 9999)
  };
  double ieBolusSum = 0.0;
  double ieBasalSum = 0.0;
  double ieMicroBolusSum = 0.0;
  double gvi = 0.0;
  double gviIdeal = 0.0;
  double gviTotal = 0.0;
  double rms = 0.0;
  double pgs = 0.0;
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
    => !entry.isInvalidOrGluc0).length;
  int entriesIn(int min, int max)
  =>
    entries.where((entry)
    => !entry.isInvalidOrGluc0 && entry.gluc >= min && entry.gluc <= max).length;
  int entriesBelow(int min)
  =>
    entries.where((entry)
    => !entry.isInvalidOrGluc0 && entry.gluc < min).length;
  int entriesAbove(int min)
  =>
    entries.where((entry)
    => !entry.isInvalidOrGluc0 && entry.gluc > min).length;
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
    stat["norm"].values.clear();
    stat["high"].values.clear();
    stat["low"].values.clear();
    min = 999999.0;
    max = -1.0;
    DateTime lastDay = null;
    List<EntryData> allEntries = List<EntryData>();
    allEntries.addAll(entries);
    allEntries.addAll(bloody);
    allEntries.sort((a, b)
    => a.time.compareTo(b.time));
/*
    allEntries.removeWhere((e)
    => e.isGap);
// */
    var last = null;
    // calculation of gvi and rms based on
    // https://github.com/nightscout/cgm-remote-monitor/blob/master/lib/report_plugins/glucosedistribution.js#L150
    double glucTotal = 0.0;
    double rmsTotal = 0.0;
    int usedRecords = 0;
    double deltaTotal = 0.0;
    double total = 0.0;
    double t1 = 6;
    double t2 = 11;
    int t1Count = 0;
    int t2Count = 0;
    int fullCount = 0;
    for (var entry in allEntries)
    {
      if (entry.isInvalid)continue;

      ProfileGlucData glucData = data.profile(entry.time);
      stat["low"].max = glucData.targetLow - 0.0001;
      stat["norm"].min = glucData.targetLow;
      stat["norm"].max = glucData.targetHigh + 0.0001;
      stat["high"].min = glucData.targetHigh;
      stat["high"].max = 9999.9999;
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
          if (gluc > 0)
          {
            for (String key in stat.keys)
            {
              if (gluc >= stat[key].min && gluc < stat[key].max)stat[key].add(gluc);
            }
/*
            if (gluc < glucData.targetLow)stat["low"].add(gluc);
            else if (gluc > glucData.targetHigh)stat["high"].add(gluc);
            else
              stat["norm"].add(gluc);
            if (gluc < 70)stat["stdLow"].add(gluc);
            else if (gluc > 180)stat["stdHigh"].add(gluc);
            else
              stat["stdNorm"].add(gluc);
*/
            fullCount++;
            if (gluc < min)min = entry.gluc;
            if (gluc > max)max = entry.gluc;
          }
        }
      }

      if (last == null)
      {
        glucTotal += entry.gluc;
      }
      else
      {
        int timeDelta = entry.time
          .difference(last.time)
          .inMilliseconds;

        if (timeDelta <= 6 * 60000 && entry.gluc > 0 && last.gluc > 0)
        {
          usedRecords++;
          double delta = entry.gluc - last.gluc;
          deltaTotal += delta;
          total += delta;
          if (delta >= t1)t1Count++;
          if (delta >= t2)t2Count++;
          gviTotal += math.sqrt(25 + math.pow(delta, 2));
          glucTotal += entry.gluc;
          if (entry.gluc < glucData.targetLow)rmsTotal += math.pow(glucData.targetLow - entry.gluc, 2);
          if (entry.gluc > glucData.targetHigh)rmsTotal += math.pow(entry.gluc - glucData.targetHigh, 2);
        }
      }
      last = entry;
    }

    double gviDelta = allEntries.last.gluc - allEntries.first.gluc;
    gviIdeal = math.sqrt(math.pow(usedRecords * 5, 2) + math.pow(gviDelta, 2));
    gvi = gviIdeal != 0 ? gviTotal / gviIdeal : 0.0;
    rms = math.sqrt(rmsTotal / usedRecords);
    double tirMultiplier = fullCount == 0 ? 0.0 : stat["norm"].values.length / fullCount;
    pgs = gvi * (glucTotal / usedRecords) * (1.0 - tirMultiplier);

    for (String key in stat.keys)
    {
      stat[key].varianz = 0.0;
      for (double v in stat[key].values)
        stat[key].varianz += math.pow(v - stat[key].mid, 2);
      stat[key].varianz /= stat[key].values.length;
    }

    khCount = 0.0;
    ieBolusSum = 0.0;
    catheterCount = 0;
    ampulleCount = 0;
    sensorCount = 0;
    double eCarbs = 0.0;
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
          eCarbs = double.tryParse(match.group(1)) ?? 0;
          delay = double.tryParse(match.group(3)) ?? 0;
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

      if (type == "meal bolus" && eCarbs != null && eCarbs > 0.0 && t.carbs < 10.0)
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

  // get profile for a specific time
  ProfileGlucData profile(DateTime time)
  {
//    DateTime check = DateTime(time.year, time.month, time.day);
    ProfileGlucData ret = ProfileGlucData(ProfileStoreData("${time.toIso8601String()}"));
    ProfileData profile = null;
    int idx = -1;
    // find last profile that starts before the given time
    for (int i = 0; i < profiles.length; i++)
    {
      if (profiles[i].startDate
            .difference(time)
            .inMinutes <= 0)idx = i;
    }

    if (idx >= 0)
    {
      profile = profiles[idx].copy;
      idx++;
      // mix following profiles in
      while (idx < profiles.length)
      {
        DateTime d = profiles[idx].startDate;
        // only profiles with same day as requested
        if (d.year == time.year && d.month == time.month && d.day == time.day)profile.mixWith(profiles[idx]);
        idx++;
      }
    }
    else
    {
      ret.targetHigh = 180.0;
      ret.targetLow = 70.0;
    }

    if (profile != null)
    {
      Date date = Date(time.year, time.month, time.day);
      ret = ProfileGlucData(profile.current);
      ret.basal = ret.find(date, time, ret.store.listBasal);
      ret.carbRatio = ret.find(date, time, ret.store.listCarbratio);
      ret.sens = ret.find(date, time, ret.store.listSens);
      ret.targetHigh = status.settings.thresholds.bgTargetTop.toDouble();
      ret.targetLow = status.settings.thresholds.bgTargetBottom.toDouble();
    }

    return ret;
  }

  double targetValue(DateTime time)
  {
    ProfileGlucData profile = this.profile(time);
    Date date = Date(time.year, time.month, time.day);
    double high = 180;
    if (profile.store.listTargetHigh.length > 0)
    {
      for (int i = profile.store.listTargetHigh.length - 1; i >= 0; i--)
      {
        var tgt = profile.store.listTargetHigh[i];
        if (tgt
              .time(date)
              .millisecondsSinceEpoch < time.millisecondsSinceEpoch)
        {
          high = tgt.value;
          break;
        }
      }
    }
    double low = 70;
    if (profile.store.listTargetLow.length > 0)
    {
      for (int i = profile.store.listTargetLow.length - 1; i >= 0; i--)
      {
        var tgt = profile.store.listTargetLow[i];
        if (tgt
              .time(date)
              .millisecondsSinceEpoch < time.millisecondsSinceEpoch)
        {
          low = tgt.value;
          break;
        }
      }
    }
    return (high + low) / 2;
  }

  ReportData(this.globals, this.begDate, this.endDate);
}
