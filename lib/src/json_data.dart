library diamant.json_data;

import 'dart:convert' as convert;
import 'dart:convert';
import 'dart:math' as math;

import 'package:angular_components/angular_components.dart';
import 'package:crypto/crypto.dart' as crypto;
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart';
import 'package:timezone/browser.dart' as tz;

// The uploaders that can be checked when neccessary
enum Uploader { Unknown, XDrip, Tidepool, Minimed600, OpenAPS, AndroidAPS, Spike }

class JsonData {
  JsonData();

  static DateTime toTime(String value) {
    if (value == null) return DateTime(0, 1, 1);
    var hour = 0;
    var minute = 0;
    var second = 0;
    var parts = value.split(':');
    if (parts.isNotEmpty) hour = int.tryParse(parts[0]) ?? 0;
    if (parts.length >= 2) minute = int.tryParse(parts[1]) ?? 0;
    if (parts.length >= 3) second = int.tryParse(parts[2]) ?? 0;
    return DateTime(0, 1, 1, hour, minute, second);
  }

  static DateTime toDate(value) {
    if (value == null) return DateTime(0, 1, 1);
    if (value is int) return DateTime.fromMillisecondsSinceEpoch(value);
    if (value is double) return DateTime.fromMillisecondsSinceEpoch(value.toInt());
    return DateTime.tryParse(value).toLocal() ?? DateTime(0, 1, 1);
  }

  static String toText(value, [String def = '']) {
    if (value == null) return def;
    if (value is String) return value;
    return '${value}';
  }

  static bool toBool(value, {bool ifEmpty}) {
    if (value == null) return false;
    if (value is bool) return value;
    if (value is String) {
      if (ifEmpty != null && value == '') {
        return ifEmpty;
      }
      return (value == 'true' || value == 'yes');
    }
    return false;
  }

  static double toDouble(value, [def = 0.0]) {
    if (value == null || value == 'NaN') return def;
    if (value is double || value is int) return value;
    return double.tryParse(value) ?? def;
  }

  static int toInt(value, [int def = 0]) {
    if (value == null) return def;
    if (value is int) return value;
    if (value is double) return value.toInt();
    if (value is String) return int.tryParse(value) ?? def;
    return def;
  }
}

class ThresholdData extends JsonData {
  int bgHigh;
  int bgTargetTop;
  int bgTargetBottom;
  int bgLow;

  ThresholdData();

  factory ThresholdData.fromJson(Map<String, dynamic> json) {
    var ret = ThresholdData();
    if (json == null) return ret;
    ret.bgHigh = JsonData.toInt(json['bgHigh']);
    ret.bgTargetTop = JsonData.toInt(json['bgTargetTop']);
    ret.bgTargetBottom = JsonData.toInt(json['bgTargetBottom']);
    ret.bgLow = JsonData.toInt(json['bgLow']);
    return ret;
  }
}

class SettingsData extends JsonData {
  String units;
  int timeFormat;
  bool nightMode;
  bool editMode;
  String showRawbg;
  String customTitle;
  String theme;
  bool alarmUrgentHigh;
  List<int> alarmUrgentHighMins = <int>[];
  bool alarmHigh;
  List<int> alarmHighMins = <int>[];
  bool alarmLow;
  List<int> alarmLowMins = <int>[];
  bool alarmUrgentLow;
  List<int> alarmUrgentLowMins = <int>[];
  List<int> alarmUrgentMins = <int>[];
  List<int> alarmWarnMins = <int>[];
  bool alarmTimeagoWarn;
  int alarmTimeagoWarnMins;
  bool alarmTimeagoUrgent;
  int alarmTimeagoUrgentMins;
  String language;
  String scaleY;
  List<String> showPlugins = <String>[];
  String showForecast;
  int focusHours;
  int heartbeat;
  String baseURL;
  String authDefaultRoles;
  ThresholdData thresholds;
  List<String> defaultFeatures = <String>[];
  List<String> alarmTypes = <String>[];
  List<String> enable = <String>[];

  SettingsData();

  factory SettingsData.fromJson(Map<String, dynamic> json) {
    var ret = SettingsData();
    if (json == null) return ret;
    ret.units = JsonData.toText(json['units']);
    ret.timeFormat = JsonData.toInt(json['timeFormat']);
    ret.nightMode = JsonData.toBool(json['nightMode']);
    ret.editMode = JsonData.toBool(json['editMode']);
    ret.showRawbg = JsonData.toText(json['showRawbg']);
    ret.customTitle = JsonData.toText(json['customTitle']);
    ret.theme = JsonData.toText(json['theme']);
    ret.alarmUrgentHigh = JsonData.toBool(json['alarmUrgentHigh']);
    for (dynamic entry in json['alarmUrgentHighMins']) {
      ret.alarmUrgentHighMins.add(JsonData.toInt(entry));
    }
    ret.alarmHigh = JsonData.toBool(json['alarmHigh']);
    for (dynamic entry in json['alarmHighMins']) {
      ret.alarmHighMins.add(JsonData.toInt(entry));
    }
    ret.alarmLow = JsonData.toBool(json['alarmLow']);
    for (dynamic entry in json['alarmLowMins']) {
      ret.alarmLowMins.add(JsonData.toInt(entry));
    }
    ret.alarmUrgentLow = JsonData.toBool(json['alarmUrgentLow']);
    for (dynamic entry in json['alarmUrgentLowMins']) {
      ret.alarmUrgentLowMins.add(JsonData.toInt(entry));
    }
    for (dynamic entry in json['alarmUrgentMins']) {
      ret.alarmUrgentMins.add(JsonData.toInt(entry));
    }
    for (dynamic entry in json['alarmWarnMins']) {
      ret.alarmWarnMins.add(JsonData.toInt(entry));
    }
    ret.alarmTimeagoWarn = JsonData.toBool(json['alarmTimeagoWarn']);
    ret.alarmTimeagoWarnMins = JsonData.toInt(json['alarmTimeagoWarnMins']);
    ret.alarmTimeagoUrgent = JsonData.toBool(json['alarmTimeagoUrgent']);
    ret.alarmTimeagoUrgent = JsonData.toBool(json['alarmTimeagoUrgent']);
    ret.alarmTimeagoUrgentMins = JsonData.toInt(json['alarmTimeagoUrgentMins']);
    ret.language = json['language'];
    ret.scaleY = json['scaleY'];
    for (var entry in json['showPlugins'].toString().split(' ')) {
      if (entry != '') ret.showPlugins.add(entry);
    }
    ret.showForecast = json['showForecast'];
    ret.focusHours = JsonData.toInt(json['focusHours']);
    ret.heartbeat = JsonData.toInt(json['heartbeat']);
    ret.baseURL = json['baseURL'];
    ret.authDefaultRoles = json['authDefaultRoles'];
    if (json['thresholds'] != null) ret.thresholds = ThresholdData.fromJson(json['thresholds']);
    for (String entry in json['DEFAULT_FEATURES']) {
      ret.defaultFeatures.add(entry);
    }
    for (String entry in json['alarmTypes']) {
      ret.alarmTypes.add(entry);
    }
    for (String entry in json['enable']) {
      ret.enable.add(entry);
    }
    return ret;
  }
}

class AgeData extends JsonData {
  String display;
  int warn;
  int urgent;
  int info;
  bool enableAlerts;

  AgeData();

  factory AgeData.fromJson(Map<String, dynamic> json) {
    var ret = AgeData();
    if (json == null) return ret;
    ret.display = JsonData.toText(json['display']);
    ret.warn = JsonData.toInt(json['warn']);
    ret.urgent = JsonData.toInt(json['urgent']);
    ret.info = JsonData.toInt(json['info']);
    ret.enableAlerts = JsonData.toBool(json['enableAlerts']);
    return ret;
  }
}

class ExtendedSettingsData extends JsonData {
  bool upbatEnableAlerts;
  int upbatWarn;
  AgeData cage;
  AgeData sage;
  List<String> pumpFields = <String>[];
  bool advancedDeviceStatus;

  ExtendedSettingsData();

  factory ExtendedSettingsData.fromJson(Map<String, dynamic> json) {
    var ret = ExtendedSettingsData();
    if (json == null) return ret;
    if (json['pump'] != null) {
      for (dynamic entry in json['pump']['fields'].toString().split(' ')) {
        ret.pumpFields.add(entry);
      }
    }
    if (json['upbat'] != null) {
      ret.upbatEnableAlerts = JsonData.toBool(json['upbat']['enableAlerts']);
      ret.upbatWarn = JsonData.toInt(json['upbat']['warn']);
    }
    ret.cage = AgeData.fromJson(json['cage']);
    ret.cage = AgeData.fromJson(json['sage']);
    ret.advancedDeviceStatus = JsonData.toBool(json['advancedDeviceStatus']);
    return ret;
  }
}

class StatusData extends JsonData {
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

  factory StatusData.fromJson(Map<String, dynamic> json) {
    var ret = StatusData();
    ret.raw = json;
    ret.settings = SettingsData();
    ret.extendedSettings = ExtendedSettingsData();
    if (json == null) return ret;
    ret.status = JsonData.toText(json['status']);
    if (ret.status == '401') return ret;
    ret.name = JsonData.toText(json['name']);
    ret.version = JsonData.toText(json['version']);
    ret.serverTime = JsonData.toDate(json['serverTime']);
    ret.serverTimeEpoch = JsonData.toInt(json['serverTimeEpoch']);
    ret.apiEnabled = JsonData.toBool('apiEnabled');
    ret.careportalEnabled = JsonData.toBool('careportalEnabled');
    ret.boluscalcEnabled = JsonData.toBool('boluscalcEnabled');
    ret.head = JsonData.toText(json['head']);
    if (json['settings'] != null) ret.settings = SettingsData.fromJson(json['settings']);
    if (json['extendedSettings'] != null) {
      ret.extendedSettings = ExtendedSettingsData.fromJson(json['extendedSettings']);
    }
    return ret;
  }
}

class ProfileGlucData {
  DateTime day;
  double targetLow = 70;
  double targetHigh = 180;
  ProfileEntryData sens;
  ProfileEntryData carbRatio;
  ProfileEntryData basal;
  ProfileStoreData store;

  ProfileGlucData(this.store) {
    sens = ProfileEntryData(store.timezone);
    carbRatio = ProfileEntryData(store.timezone);
    basal = ProfileEntryData(store.timezone);
  }

  ProfileEntryData find(Date date, DateTime time, List<ProfileEntryData> list) {
    var ret = ProfileEntryData(store.timezone);
    var check = DateTime(date.year, date.month, date.day, time.hour, time.minute, time.second);
    for (var entry in list) {
      if (!entry.time(date).isAfter(check)) ret = entry;
    }
    return ret;
  }
}

class ProfileTimezone {
  String name;
  tz.Location location;
  int localDiff = 0;

  ProfileTimezone(this.name, [bool isInitializing = false]) {
    location = tz.getLocation(name);
    if (location != null) {
      var d = tz.TZDateTime(location, 0, 1, 1, 0, 0, 0);
      localDiff = d.difference(DateTime(0)).inHours;
    }
  }
}

class ProfileEntryData extends JsonData {
  DateTime _time;
  String forceText;
  double value;
  double _percentAdjust;
  double _absoluteRate;

  set percentAdjust(double value) => _percentAdjust = value;

  set absoluteRate(double value) => _absoluteRate = value;

  double get tempAdjusted =>
      _absoluteRate != null ? 0 : (orgValue == null || orgValue == 0 ? 0 : (value - orgValue) / orgValue);
  int duration = 3600; // duration in seconds
  double orgValue;
  int timeAsSeconds;
  ProfileTimezone _timezone;

  int get localDiff => _timezone.localDiff;
  Uploader from = Uploader.Unknown;

  String get hash => '${_time.hour}:${_time.minute}=${value}';

  DateTime endTime(Date date, [bool adjustLocalForTime = false]) {
    var ret = time(date, adjustLocalForTime);
    ret.add(Duration(seconds: duration - 1));
    return ret;
  }

  int get timeForCalc => _time.hour * 3600 + _time.minute * 60 + _time.second;

  set timeForCalc(int value) {
    var h = value ~/ 3600;
    var m = (value % 3600) ~/ 60;
    var s = value % 60;
    _time = DateTime(_time.year, _time.month, _time.day, h, m, s);
  }

  DateTime time(Date date, [bool adjustLocalForTime = false]) {
    var hour = _time.hour;
    if (adjustLocalForTime) hour += _timezone.localDiff;

    while (hour < 0) {
      hour += 24;
    }
    while (hour >= 24) {
      hour -= 24;
    }

    return DateTime(date.year, date.month, date.day, hour, _time.minute, _time.second);
    /*
      _time.millisecond,
      _time.microsecond); */
  }

  ProfileEntryData get copy => ProfileEntryData(null)
    ..value = value
    ..duration = duration
    ..timeAsSeconds = timeAsSeconds
    .._absoluteRate = _absoluteRate
    .._timezone = _timezone
    .._percentAdjust = _percentAdjust
    .._time = _time
    ..forceText = forceText
    ..orgValue = orgValue
    .._timezone = _timezone
    ..from = from;

  ProfileEntryData clone(DateTime time) {
    var ret = copy;
    ret._time = time;
    return ret;
  }

  ProfileEntryData(ProfileTimezone timezone, [DateTime src]) {
    if (timezone != null) _timezone = timezone;
    _time = src ?? DateTime(0);
  }

  bool get isCalculated => _percentAdjust != null || _absoluteRate != null;

  void transferCalcValues(ProfileEntryData src) {
    _percentAdjust = src._percentAdjust;
    _absoluteRate = src._absoluteRate;
  }

  double adjustedValue(double v) {
    if (_percentAdjust != null) return v + (v * _percentAdjust) / 100.0;
    if (_absoluteRate != null) {
      // spike needs a special handling, since the value seems to be the amount given over
      // the duration, not the amount given in one hour.
      if (from == Uploader.Spike) return _absoluteRate / (duration / 3600);
      return _absoluteRate;
    }
    return v;
  }

  factory ProfileEntryData.fromTreatment(ProfileTimezone timezone, TreatmentData src) {
    var ret = ProfileEntryData(timezone, src.createdAt);
    if (src._percent != null) {
      ret.percentAdjust = src._percent.toDouble();
    } else if (src._rate != null) ret.absoluteRate = src._rate;

    ret.from = src.from;
    if ((src.from == Uploader.Minimed600 ||
            src.from == Uploader.Tidepool ||
            src.from == Uploader.Spike ||
            src.from == Uploader.Unknown) &&
        src._absolute != null) ret.absoluteRate = src._absolute;
    ret.duration = src.duration;

    return ret;
  }

  factory ProfileEntryData.fromJson(Map<String, dynamic> json, ProfileTimezone timezone, int timeshift,
      [double percentage = 1.0, bool isReciprocal = false]) {
    var ret = ProfileEntryData(timezone);
    if (json == null) return ret;
    ret._time = JsonData.toTime(json['time']);
    if (ret._time.hour < 24 - timeshift) {
      ret._time = ret._time.add(Duration(hours: timeshift));
    } else {
      ret._time = ret._time.add(Duration(hours: timeshift - 24));
    }
    ret.value = JsonData.toDouble(json['value']);
    if (ret.value != null) {
      if (isReciprocal) {
        if (percentage > 0) {
          ret.value /= percentage;
        } else {
          ret.value = 0;
        }
      } else {
        ret.value *= percentage;
      }
    }
    ret.timeAsSeconds = JsonData.toInt(json['timeAsSeconds']);
    return ret;
  }
}

class ProfileStoreData extends JsonData {
  String name;
  double dia;
  var listCarbratio = <ProfileEntryData>[];
  int carbsHr;
  int delay;
  int maxPrecision = 0;
  var listSens = <ProfileEntryData>[];
  ProfileTimezone timezone;
  var listBasal = <ProfileEntryData>[];
  var listTargetLow = <ProfileEntryData>[];
  var listTargetHigh = <ProfileEntryData>[];
  DateTime startDate;
  String units;

  double get ieBasalSum => _listSum(listBasal);

  double get icrSum => _listSum(listCarbratio);

  double get isfSum => _listSum(listSens);

  int get carbRatioPerHour => (carbsHr ?? 0) > 0 ? carbsHr : 12;

  double _listSum(List<ProfileEntryData> list) {
    var ret = 0.0;
    for (var entry in list) {
      ret += (entry.value ?? 0) * (entry.duration ?? 0) / 3600;
    }
    return ret;
  }

  String list2String(List<ProfileEntryData> list) {
    var dst = <String>[];
    for (var entry in list) {
      dst.add(entry.hash);
    }
    return dst.join('|');
  }

  String get hash {
    var temp = '${dia}-${carbsHr}-${list2String(listCarbratio)}-${list2String(listBasal)}-${list2String(listSens)}-'
        '${list2String(listTargetHigh)}-${list2String(listTargetLow)}';
    var bytes = convert.utf8.encode(temp);
    return '${crypto.sha1.convert(bytes)}';
  }

  ProfileStoreData get copy {
    var ret = ProfileStoreData(name)
      ..dia = dia
      ..carbsHr = carbsHr
      ..delay = delay
      ..startDate = startDate
      ..maxPrecision = maxPrecision
      ..timezone = timezone
      ..units = units;
    ret.listBasal = <ProfileEntryData>[];
    for (var entry in listBasal) {
      ret.listBasal.add(entry.copy);
    }
    ret.listCarbratio = <ProfileEntryData>[];
    for (var entry in listCarbratio) {
      ret.listCarbratio.add(entry.copy);
    }
    ret.listSens = <ProfileEntryData>[];
    for (var entry in listSens) {
      ret.listSens.add(entry.copy);
    }
    ret.listTargetLow = <ProfileEntryData>[];
    for (var entry in listTargetLow) {
      ret.listTargetLow.add(entry.copy);
    }
    ret.listTargetHigh = <ProfileEntryData>[];
    for (var entry in listTargetHigh) {
      ret.listTargetHigh.add(entry.copy);
    }
    return ret;
  }

  ProfileStoreData(String name) {
    this.name = name;
    timezone = ProfileTimezone(Globals.refTimezone);
  }

  static void _adjust(List<ProfileEntryData> list) {
    list.sort((a, b) => a._time.compareTo(b._time));
    if (list.isNotEmpty && list.first._time.hour != 0) {
      var first = list.last.copy;
      if (first.value == list.first.value) {
        list.first._time = list.first._time.add(Duration(hours: -first._time.hour));
      } else {
        first._time = first._time.add(Duration(hours: -first._time.hour));
        list.insert(0, first);
      }
    }
    _adjustDuration(list);
  }

  void adjustDurations() {
    ProfileStoreData._adjustDuration(listCarbratio);
    ProfileStoreData._adjustDuration(listBasal);
    ProfileStoreData._adjustDuration(listTargetHigh);
    ProfileStoreData._adjustDuration(listTargetLow);
    ProfileStoreData._adjustDuration(listSens);
  }

  static void _adjustDuration(List<ProfileEntryData> list) {
    // calculate the duration of the entries
    for (var i = 0; i < list.length; i++) {
      var end = 86400;
      if (i < list.length - 1) end = list[i + 1].timeForCalc;
      list[i].duration = end - list[i].timeForCalc;
    }
  }

  factory ProfileStoreData.fromJson(
      String name, Map<String, dynamic> json, double percentage, int timeshift, DateTime startDate) {
    var ret = ProfileStoreData(name);
    if (json == null) return ret;
    ret.dia = JsonData.toDouble(json['dia']);
    ret.carbsHr = JsonData.toInt(json['carbs_hr']);
    ret.delay = JsonData.toInt(json['delay']);
    try {
      ret.timezone = ProfileTimezone(JsonData.toText(json['timezone']));
    } catch (ex) {
      ret.timezone = ProfileTimezone(Globals.refTimezone);
    }
    if (startDate.year != 1970 || startDate.day != 1 || startDate.month != 1) {
      ret.startDate = startDate;
    } else {
      ret.startDate = JsonData.toDate(json['startDate']);
    }
    ret.units = JsonData.toText(json['units']);
    for (dynamic entry in json['carbratio']) {
      ret.listCarbratio.add(ProfileEntryData.fromJson(entry, ret.timezone, timeshift, percentage, true));
    }
    _adjust(ret.listCarbratio);
    for (dynamic entry in json['sens']) {
      ret.listSens.add(ProfileEntryData.fromJson(entry, ret.timezone, timeshift, percentage, true));
    }
    _adjust(ret.listSens);
    ret.maxPrecision = 0;
    for (dynamic entry in json['basal']) {
      ret.listBasal.add(ProfileEntryData.fromJson(entry, ret.timezone, timeshift, percentage));
      ret.maxPrecision = math.max(ret.maxPrecision, Globals.decimalPlaces(ret.listBasal.last.value));
    }
    _adjust(ret.listBasal);
    for (dynamic entry in json['target_low']) {
      ret.listTargetLow.add(ProfileEntryData.fromJson(entry, ret.timezone, timeshift));
    }
    _adjust(ret.listTargetLow);
    for (dynamic entry in json['target_high']) {
      ret.listTargetHigh.add(ProfileEntryData.fromJson(entry, ret.timezone, timeshift));
    }
    _adjust(ret.listTargetHigh);

    return ret;
  }

  void _importFromTime(DateTime time, List<ProfileEntryData> listSrc, List<ProfileEntryData> listDst) {
    var date = Date(time.year, time.month, time.day);
    listSrc = listSrc.where((p) => p.endTime(date).isAfter(time)).toList();
    if (listSrc.isEmpty) return;
    listDst = listDst.where((p) => p.time(date).isBefore(time)).toList();
    if (listDst.isEmpty) listDst.add(listSrc.last.copy);
    listDst.last.duration = time.difference(listDst.last.time(date)).inSeconds;
    listSrc.first.duration = time.difference(listSrc.first._time).inSeconds;
    listSrc.first._time = time;
    listDst.addAll(listSrc);
  }

  // ignore: always_declare_return_types
  importFromTime(DateTime time, ProfileStoreData src) {
    _importFromTime(time, src.listCarbratio, listCarbratio);
    _importFromTime(time, src.listSens, listSens);
    _importFromTime(time, src.listBasal, listBasal);
    _importFromTime(time, src.listTargetLow, listTargetLow);
    _importFromTime(time, src.listTargetHigh, listTargetHigh);
  }

  // remove all settings from given time up to duration.
  // if duration is 0 then remove all after given time.
  void removeFrom(int hour, int minute, int second, int duration) {
    _removeFrom(listCarbratio, hour * 3600 + minute * 60 + second, duration);
    _removeFrom(listSens, hour * 3600 + minute * 60 + second, duration);
    _removeFrom(listBasal, hour * 3600 + minute * 60 + second, duration);
    _removeFrom(listTargetLow, hour * 3600 + minute * 60 + second, duration);
    _removeFrom(listTargetHigh, hour * 3600 + minute * 60 + second, duration);
  }

  void _removeFrom(List<ProfileEntryData> list, int time, int duration) {
    for (var i = 0; i < list.length; i++) {
      var check = list[i].timeForCalc;
      if (check >= time && (duration == 0 || check < time + duration)) {
        if (i > 0) {
          list[i - 1].duration = duration == 0
              ? 24 * 60 * 60 - list[i - 1].timeForCalc
              : duration + list[i].timeForCalc - list[i - 1].timeForCalc;
        }
        list.removeAt(i);
        i--;
      }
    }
  }

  // remove all settings from given time up to duration.
  // if duration is 0 then remove all after given time.
  void addFrom(ProfileData src, ProfileStoreData srcStore) {
    _addFrom(listCarbratio, src, srcStore.listCarbratio);
    _addFrom(listSens, src, srcStore.listSens);
    _addFrom(listBasal, src, srcStore.listBasal);
    _addFrom(listTargetLow, src, srcStore.listTargetLow);
    _addFrom(listTargetHigh, src, srcStore.listTargetHigh);
  }

  void _addFrom(List<ProfileEntryData> list, ProfileData srcProfile, List<ProfileEntryData> srcList) {
    var timeOfProfile =
        srcProfile.startDate.hour * 3600 + srcProfile.startDate.minute * 60 + srcProfile.startDate.second;
    for (var i = 0; i < srcList.length; i++) {
      var src = srcList[i].copy;
      var check = src.timeForCalc;
      if (srcProfile.duration == 0 || check < timeOfProfile + srcProfile.duration) {
        var duration = 86400 - check;
        if (i < srcList.length - 1) duration = srcList[i + 1].timeForCalc - check;
        if (check >= timeOfProfile) {
          if (list.isNotEmpty) list.last.duration = src.timeForCalc - list.last.timeForCalc;
          src.duration = 86400 - src.timeForCalc;
          list.add(src);
        } else if (check + duration > timeOfProfile) {
          src.duration -= timeOfProfile - src.timeForCalc;
          src.timeForCalc = timeOfProfile;
          list.add(src);
        }
      }
    }
  }
}

class ProfileData extends JsonData {
  dynamic raw;
  String id;
  String defaultProfile;
  int duration; // duration in seconds
  Map<String, ProfileStoreData> store = <String, ProfileStoreData>{};
  DateTime startDate;
  String units;
  DateTime createdAt;
  int maxPrecision = 0;
  bool isFromNS = false;

  String get storeHash => store.keys.reduce((value, element) => value + store[element].hash);

  ProfileData get copy {
    var ret = ProfileData()
      ..raw = raw
      ..duration = duration
      ..id = id
      ..defaultProfile = defaultProfile
      ..startDate = startDate
      ..units = units
      ..createdAt = createdAt
      ..maxPrecision = maxPrecision
      ..isFromNS = false;

    ret.store = <String, ProfileStoreData>{};
    for (var key in store.keys) {
      ret.store[key] = store[key].copy;
    }

    return ret;
  }

  int get mills => startDate.millisecondsSinceEpoch ?? 0;

  ProfileStoreData get current => store[defaultProfile];

  ProfileData();

  factory ProfileData.fromJson(Map<String, dynamic> json, {bool isFromNS = false}) {
    var ret = ProfileData();
    ret.raw = json;
    ret.isFromNS = isFromNS;
    if (json == null) return ret;
    ret.id = json['int'];
    ret.defaultProfile = json['defaultProfile'];
    ret.startDate = JsonData.toDate(json['startDate']);
    var timeshift = JsonData.toInt(json['timeshift']);
    ret.units = JsonData.toText(json['units']);
    ret.createdAt = JsonData.toDate(json['created_at']);
    ret.duration = JsonData.toInt(json['duration']) * 60; // duration is saved as minutes
    Map<String, dynamic> src = json['store'];
    ret.maxPrecision = 0;
    for (var key in src.keys) {
      dynamic temp = src.entries.firstWhere((e) => e.key == key, orElse: () => null);
      if (temp != null) {
        var percentage = JsonData.toDouble(json['percentage']);
        if (percentage == null || percentage == 0.0) {
          percentage = 1.0;
        } else {
          percentage /= 100.0;
        }
        ret.store[key] = ProfileStoreData.fromJson(key, temp.value, percentage, timeshift, ret.startDate);
        ret.maxPrecision = math.max(ret.maxPrecision, ret.store[key].maxPrecision);
      }
    }
    return ret;
  }

  void includeTreatment(TreatmentData t) {
    if (t.isTempTarget) {
      var time = ((t.createdAt.hour + t.timeshift) * 60 + t.createdAt.minute) * 60;
      for (var data in store.values) {
        _mixStore(data.listTargetHigh, data.timezone, time, t.duration, t.targetTop);
        _mixStore(data.listTargetLow, data.timezone, time, t.duration, t.targetBottom);
        data.listTargetHigh.sort((a, b) => a.timeForCalc.compareTo(b.timeForCalc));
        data.listTargetLow.sort((a, b) => a.timeForCalc.compareTo(b.timeForCalc));
      }
    }
  }

  void _mixStore(List<ProfileEntryData> list, ProfileTimezone timezone, int time, int duration, double value) {
    var entry = ProfileEntryData(timezone);
    entry.timeForCalc = time;
    entry.duration = duration;
    entry.value = value;

    if (list.isEmpty) {
      var e = ProfileEntryData(timezone);
      e.timeForCalc = 0;
      e.duration = time;
      list.add(e);
      list.add(entry);
      e = ProfileEntryData(timezone);
      e.timeForCalc = time + duration;
      e.duration = 86400 - e.timeForCalc;
      list.add(e);
      return;
    }

    var idx = list.indexWhere((e) => e.timeForCalc >= time);
    if (idx < 0) {
      idx = list.indexWhere((e) => e.timeForCalc + e.duration >= time);
      if (idx < 0) {
        list.last.duration = time - list.last.timeForCalc;
        if (list.last.duration < 0) list.removeLast();
        entry.duration = 86400 - entry.timeForCalc;
        list.add(entry);
        return;
      }
      list.insert(idx, entry);
      // if the nextentry begins before the inserted entry the next entry
      // is copied before the current entry.
      if (list[idx + 1].timeForCalc < entry.timeForCalc) {
        var e = list[idx + 1].copy;
        e.duration = entry.timeForCalc - e.timeForCalc;
        list.insert(idx, e);
        idx++;
      }
      // if the inserted entry ends before the next entry starts
      // add the same entry before the inserted entry after the entry
      if (entry.timeForCalc + entry.duration < list[idx + 1].timeForCalc) {
        var e = list[idx - 1].copy;
        e.timeForCalc = entry.timeForCalc + entry.duration;
        e.duration = list[idx + 1].timeForCalc - e.timeForCalc;
        list.insert(idx + 1, e);
        return;
      }
      // if the inserted entry ends after the next entry starts
      // change the start of the next entry
      else if (entry.timeForCalc + entry.duration > list[idx + 1].timeForCalc) {
        list[idx + 1].duration -= entry.timeForCalc + entry.duration - list[idx + 1].timeForCalc;
        list[idx + 1].timeForCalc = entry.timeForCalc + entry.duration;
      }
    }
  }

  // include data from src in current profile
  void mixWith(ProfileData src) {
    for (var key in store.keys) {
      // the store will be mixed with the same store from the source,
      // unless the key of the store is unknown. In this case the store
      // 'default' is used, if available.
      var srcKey = key;
      if (!src.store.containsKey(srcKey)) srcKey = src.defaultProfile;
//      store[key].name = 'Hurz';

      if (src.store.containsKey(srcKey)) {
        // remove all settings from given time up to duration.
        // if duration is 0 then remove all after given time.
        store[key].removeFrom(src.startDate.hour, src.startDate.minute, src.startDate.second, src.duration);
        // add all settings after the given time from src.
        store[key].addFrom(src, src.store[srcKey]);
//        store[key].name = '${store[key].name} - ${src.store[srcKey].name}';
      }
    }
  }
}

class BoluscalcData extends JsonData {
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

  BoluscalcData get copy => BoluscalcData()
    ..profile = profile
    ..notes = notes
    ..eventTime = eventTime
    ..targetBGLow = targetBGLow
    ..targetBGHigh = targetBGHigh
    ..isf = isf
    ..ic = ic
    ..iob = iob
    ..bolusIob = bolusIob
    ..basalIob = basalIob
    ..bolusIobUsed = bolusIobUsed
    ..basalIobUsed = basalIobUsed
    ..bg = bg
    ..insulinBg = insulinBg
    ..insulinBgUsed = insulinBgUsed
    ..bgDiff = bgDiff
    ..insulinCarbs = insulinCarbs
    ..carbs = carbs
    ..cob = cob
    ..cobUsed = cobUsed
    ..insulinCob = insulinCob
    ..otherCorrection = otherCorrection
    ..insulinSuperBolus = insulinSuperBolus
    ..insulinTrend = insulinTrend
    ..insulin = insulin
    ..superBolusUsed = superBolusUsed
    ..trendUsed = trendUsed
    ..trend = trend
    ..ttUsed = ttUsed
    ..NSClientId = NSClientId;

  factory BoluscalcData.fromJson(Map<String, dynamic> json) {
    // ignore: omit_local_variable_types
    BoluscalcData ret = BoluscalcData();
    if (json == null) return ret;
    ret.profile = json['profile'];
    ret.notes = json['notes'];
    ret.eventTime = JsonData.toDate(json['eventTime']);
    ret.targetBGLow = JsonData.toInt(json['targetBGLow']);
    ret.targetBGHigh = JsonData.toInt(json['targetBGHigh']);
    ret.isf = JsonData.toInt(json['isf']);
    ret.ic = JsonData.toInt(json['ic']);
    ret.iob = JsonData.toDouble(json['iob']);
    ret.bolusIob = JsonData.toDouble(json['bolusIob']);
    ret.basalIob = JsonData.toDouble(json['basalIob']);
    ret.bolusIobUsed = JsonData.toBool(json['bolusIobUsed']);
    ret.basalIobUsed = JsonData.toBool(json['basalIobUsed']);
    ret.bg = JsonData.toInt(json['bg']);
    ret.insulinBg = JsonData.toDouble(json['insulinBg']);
    ret.insulinBgUsed = JsonData.toBool(json['insulinBgUsed']);
    ret.bgDiff = JsonData.toInt(json['bgdiff']);
    ret.insulinCarbs = JsonData.toDouble(json['insulincarbs']);
    ret.carbs = JsonData.toDouble(json['carbs']);
    ret.cob = JsonData.toDouble(json['cob']);
    ret.cobUsed = JsonData.toBool(json['cobused']);
    ret.insulinCob = JsonData.toDouble(json['insulincob']);
    ret.otherCorrection = JsonData.toDouble(json['othercorrection']);
    ret.insulinSuperBolus = JsonData.toDouble(json['insulinsuperbolus']);
    ret.insulinTrend = JsonData.toDouble(json['insulintrend']);
    ret.insulin = JsonData.toDouble(json['insulin']);
    if (ret.insulin == 0.0) ret.insulin = JsonData.toDouble(json['enteredinsulin']);
    ret.superBolusUsed = JsonData.toBool(json['superbolusused']);
    ret.trendUsed = JsonData.toBool(json['trendused']);
    ret.trend = JsonData.toText(json['trend']);
    ret.ttUsed = JsonData.toBool(json['ttused']);
    ret.NSClientId = JsonData.toText(json['NSCLIENT_ID']);
    return ret;
  }

  void slice(BoluscalcData src, BoluscalcData dst, double f) {
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

class InsulinInjectionData extends JsonData {
  String insulin;
  double units;

  InsulinInjectionData();

  InsulinInjectionData get copy => InsulinInjectionData()
    ..insulin = insulin
    ..units = units;

  factory InsulinInjectionData.fromJson(Globals g, Map<String, dynamic> json) {
    var ret = InsulinInjectionData();
    if (json == null) return ret;
    ret.insulin = JsonData.toText(json['insulin']);
    ret.units = JsonData.toDouble(json['units']);
    return ret;
  }
}

class InsulinInjectionList {
  Map<String, double> injections = Map();

  InsulinInjectionList get copy => InsulinInjectionList()
    ..injections = new Map.from(injections);

  fromJsonString(String json)
  {
    injections = Map();
    List<dynamic> decoded = JsonCodec().decode(json);
    double sum = 0;
    for (dynamic inj in decoded) {
      double u = JsonData.toDouble(inj["units"]);
      sum += u;
      injections.update(JsonData.toText(inj["insulin"]), (double v) => v + u, ifAbsent: () => u);
    }
    injections.update("sum", (double v) => v + sum, ifAbsent: () => sum);
  }
  fromSumValue(double sum)
  {
    injections = Map();
    injections.update("sum", (double v) => v + sum, ifAbsent: () => sum);
  }

  InsulinInjectionList add2List(InsulinInjectionList l)
  {
    InsulinInjectionList ret = this.copy;
    for (String insulin in l.injections.keys)
    {
      double sum = l.injections[insulin];
      ret.injections.update(insulin, (double v) => v + sum, ifAbsent: () => sum);
    }
    return ret;
  }
}

class TreatmentData extends JsonData {
  dynamic raw;
  String id;
  String eventType;
  int duration; // duration in seconds
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
  List<InsulinInjectionData> insulinInjections = List<InsulinInjectionData>();
  InsulinInjectionList multipleInsulin;
  List<InsulinData> insulinProfiles;

  int splitExt;
  int splitNow;
  bool isSMB;
  int duplicates = 1;
  String pumpId;
  double glucose;
  String glucoseType;
  BoluscalcData boluscalc;
  String notes;
  String reason;
  double targetTop;
  double targetBottom;
  String _key600;

  String get key600 => _key600 ?? '';

  bool get isBloody => glucoseType?.toLowerCase() == 'finger' || eventType.toLowerCase() == 'bg check';
  Uploader _from = Uploader.Unknown;

  int get timeForCalc => createdAt.hour * 3600 + createdAt.minute * 60 + createdAt.second;

  Uploader get from {
    if (_from == Uploader.Unknown) {
      var check = enteredBy.toLowerCase() ?? '';
      if (check == 'openaps') {
        _from = Uploader.OpenAPS;
      } else if (check == 'tidepool') {
        _from = Uploader.Tidepool;
      } else if (check.contains('androidaps')) {
        _from = Uploader.AndroidAPS;
      } else if (check.startsWith('xdrip')) {
        _from = Uploader.XDrip;
      } else if (check == 'spike') _from = Uploader.Spike;
    }
    return _from;
  }

  String get _t => eventType.toLowerCase();

  bool get hasNoType => _t == '<none>' || _t == '';

  bool get isSiteChange => _t == 'site change';

  bool get isInsulinChange => _t == 'insulin change';

  bool get isSensorChange => _t == 'sensor change' || _t == 'sensor start';

  bool get isPumpBatteryChange => _t == 'pump battery change';

  bool get isProfileSwitch => _t == 'profile switch';

  bool get isTempTarget => _t == 'temporary target';

  bool get isTempBasal => _t == 'temp basal';

  bool get isExercise => _t == 'exercise';

  bool get isBGCheck => _t == 'bg check';

  bool get isMealBolus => _t == 'meal bolus';

  bool get isBolusWizard => _t == 'bolus wizard';

  bool isECarb = false;

  double get absoluteTempBasal => _absolute;

  double adjustedValue(double v) {
    if (_percent != null) return v + (v * _percent) / 100.0;

    if (_rate != null) return _rate;

    return v;
  }

  double get eCarbs => isECarb ? _carbs : 0.0;

  double get carbs {
/*
    switch (eventType.toLowerCase())
    {
      case 'bolus wizard':
      case 'meal bolus':
      case 'carb correction':
      case 'carbs':
        if (_carbs != null && !isECarb)return _carbs;
        break;
      case '<none>':
        if (enteredBy.startsWith('xdrip') && _carbs != null && !isECarb)return _carbs;
        break;
    }
*/
    if (_carbs != null && !isECarb) return _carbs;
    return 0.0;
  }

  bool get isCarbBolus {
    if (isMealBolus) return true;
    if (isBolusWizard && carbs > 0) return true;

    return false;
  }

  double get bolusInsulin {
    if (insulin != null) return insulin;
    return 0.0;
  }

  void carbo(double value) {
    _carbs = value;
  }

  TreatmentData();

  TreatmentData get copy {
    var ret = TreatmentData()
      ..id = id
      ..eventType = eventType
      ..duration = duration
      ..timeshift = timeshift
      .._percent = _percent
      .._absolute = _absolute
      .._rate = _rate
      ..createdAt = createdAt.add(Duration(minutes: 0))
      ..enteredBy = enteredBy
      ..NSClientId = NSClientId
      .._carbs = _carbs
      ..insulin = insulin
      ..multipleInsulin = multipleInsulin.copy
      ..splitExt = splitExt
      ..splitNow = splitNow
      ..microbolus = microbolus
      ..isSMB = isSMB
      ..pumpId = pumpId
      ..glucose = glucose
      ..glucoseType = glucoseType
      ..boluscalc = boluscalc == null ? null : boluscalc.copy
      ..notes = notes
      ..reason = reason
      ..targetTop = targetTop
      ..targetBottom = targetBottom
      .._from = _from
      .._key600 = _key600
      ..isECarb = isECarb
      ..raw = raw;
    ret.insulinInjections = <InsulinInjectionData>[];
    for (var entry in insulinInjections) {
      ret.insulinInjections.add(entry.copy);
    }
    ret.insulinProfiles = insulinProfiles;
    return ret;
  }

  bool equals(TreatmentData t) {
//    return NSClientId == t.NSClientId;
//*
    return createdAt.millisecondsSinceEpoch == t.createdAt.millisecondsSinceEpoch &&
        eventType == t.eventType &&
        duration == t.duration &&
        notes == t.notes;
    // */
  }

  factory TreatmentData.fromJson(Globals g, Map<String, dynamic> json, List<InsulinData> insulinProfiles) {
    var ret = TreatmentData();
    if (json == null) return ret;
    ret.raw = json;
    ret.id = JsonData.toText(json["_id"]);
    ret.eventType = JsonData.toText(json["eventType"]);
    ret.duration = JsonData.toInt(json["duration"]) * 60; // duration is saved in minutes
    ret.timeshift = JsonData.toInt(json["timeshift"]);
    ret._percent = JsonData.toInt(json["percent"], null);
    ret._absolute = JsonData.toDouble(json["absolute"], null);
    ret._rate = JsonData.toDouble(json["rate"]);
    ret.createdAt = JsonData.toDate(json["created_at"]);
    ret.enteredBy = JsonData.toText(json["enteredBy"]);
    ret.NSClientId = JsonData.toText(json["NSCLIENT_ID"]);
    ret._carbs = JsonData.toDouble(json["carbs"]);
    ret.insulin = JsonData.toDouble(json["insulin"]);
    ret.multipleInsulin = InsulinInjectionList();
    if (json.containsKey("insulinInjections"))
      ret.multipleInsulin.fromJsonString(json["insulinInjections"]);
    else ret.multipleInsulin.fromSumValue(ret.insulin);   // falls wir an dem Tag keine insulinInjections haben
    ret.insulinProfiles = insulinProfiles;
    if (ret.insulin == 0.0) ret.insulin = JsonData.toDouble(json["enteredinsulin"]);
    ret.splitExt = JsonData.toInt(json["splitExt"]);
    ret.splitNow = JsonData.toInt(json["splitNow"]);
    ret.isSMB = JsonData.toBool(json["isSMB"]);
    ret.pumpId = JsonData.toText(json["pumpId"]);
    ret.glucoseType = JsonData.toText(json["glucoseType"]);
    if (json["boluscalc"] != null) ret.boluscalc = BoluscalcData.fromJson(json["boluscalc"]);
    ret.notes = JsonData.toText(json["notes"]);
    ret.reason = JsonData.toText(json["reason"]);
    ret.targetTop = JsonData.toDouble(json["targetTop"]);
    ret.targetBottom = JsonData.toDouble(json["targetBottom"]);
    ret.microbolus = 0.0;
    var temp = JsonData.toText(json['insulinInjections']);
    var list = <dynamic>[];
    try {
      list = convert.json.decode(temp);
      // ignore: empty_catches
    } catch (ex) {}
    for (dynamic entry in list) {
      ret.insulinInjections.add(InsulinInjectionData.fromJson(g, entry));
    }

    ret.glucose = JsonData.toDouble(json['glucose']);
    if (json['units'] != null) {
      if (json['units'].toLowerCase() == g.msgUnitMGDL.toLowerCase() && g.getGlucInfo()['unit'] == g.msgUnitMMOL) {
        ret.glucose = ret.glucose / 18.02;
      } else if (json['units'].toLowerCase() == g.msgUnitMMOL.toLowerCase() &&
          g.getGlucInfo()['unit'] == g.msgUnitMGDL) {
        ret.glucose = ret.glucose * 18.02;
      }
    }

    // Specialhandling for strange datamanagement of Uploader for Minimed 600-series
    if (json['key600'] != null) {
      ret._from = Uploader.Minimed600;
      ret._key600 = JsonData.toText(json['key600']);
      var reg = RegExp(r'microbolus (.*)U');
      Match m = reg.firstMatch(ret.notes);
      if (m != null && m.groupCount == 1) {
        if ((ret._absolute ?? 0) > 0) {
          ret.microbolus = ret._absolute / 3600 * ret.duration;
        } else {
          ret.microbolus = double.tryParse(m.group(1)) ?? 0.0;
        }
//        if(ret.microbolus > 0 && ret.eventType.toLowerCase() == 'temp basal')
//          ret.eventType = 'microbolus';
      }
    }

    return ret;
  }

  void slice(TreatmentData src, TreatmentData dst, double f) {
    _carbs = Globals.calc(src._carbs, dst._carbs, f);
    glucose = Globals.calc(src.glucose, dst.glucose, f);
    if (boluscalc != null) boluscalc.slice(src.boluscalc, dst.boluscalc, f);
  }

  double calcIOB1Min(InsulinData insulin, double time)
  {
    if (time < 0) {
      return 1;
    }
    var index = time.toInt();
    var remaining = time - index;
    if (index+1 >= insulin.IOB1Min.length) {
      return insulin.IOB1Min[insulin.IOB1Min.length-1];
    }
    var valueIndex = insulin.IOB1Min[index];
    var valueNextIndex = insulin.IOB1Min[index + 1];
    var ret = valueIndex;
    ret += (valueNextIndex - valueIndex) * remaining;
    return ret;
  }

  CalcIOBData calcIOB(ProfileGlucData profile, DateTime time) {
    var dia = 3.0;
    var sens = 0.0;
    var check = time.hour * 3600 + time.minute * 60 + time.second;

    if (profile != null) {
      dia = profile.store?.dia ?? dia;
      sens = profile.store?.listSens?.lastWhere((e) => e.timeForCalc <= check, orElse: () => null)?.value ?? sens;
    }

    var scaleFactor = 3.0 / dia;
    var peak = 75.0;
    var ret = CalcIOBData(0.0, 0.0, this);

    if (insulin != null) {
      var bolusTime = createdAt.millisecondsSinceEpoch;
      var minAgo = scaleFactor * (time.millisecondsSinceEpoch - bolusTime) / 1000 / 60;

      if (insulinProfiles != null)
      {
        for (String injected in multipleInsulin.injections.keys) {
          if (injected.toLowerCase() != 'sum') {
            InsulinData insulin = null;
            for (var entry in insulinProfiles) {
              if (entry.name.toLowerCase() == injected.toLowerCase()) {
                insulin = entry;
              }
            }
            if (insulin == null) {
              throw Exception(
                  "kann Insulin mit Name " + injected + " nicht finden!");
            }
            ret.iob += multipleInsulin.injections[injected] *
                calcIOB1Min(insulin, minAgo);
            var iob1 = multipleInsulin.injections[injected] *
                calcIOB1Min(insulin, minAgo - 1);
            var iob2 = multipleInsulin.injections[injected] *
                calcIOB1Min(insulin, minAgo + 1);
            if (iob1 > iob2)
              ret.activity += sens * (iob1 - iob2) / 2.0;
          }
        }
      } else {
        if (minAgo < peak) {
          var x1 = minAgo / 5 + 1;
          ret.iob = insulin * (1 - 0.001852 * x1 * x1 + 0.001852 * x1);
          // units: BG (mg/dl)  = (BG/U) *    U insulin     * scalar
          ret.activity = sens * insulin * (2 / dia / 60 / peak) * minAgo;
        } else if (minAgo < 180) {
          var x2 = (minAgo - peak) / 5;
          ret.iob = insulin * (0.001323 * x2 * x2 - 0.054233 * x2 + 0.55556);
          ret.activity = sens * insulin *
              (2 / dia / 60 - (minAgo - peak) * 2 / dia / 60 / (60 * 3 - peak));
        }
      }
    }

    return ret;
  }

  dynamic calcCOB(ProfileGlucData profile, DateTime time, int lastDecayedBy) {
    var delay = 20;
    var isDecaying = false;
    var initialCarbs;

    if (carbs != null) {
      var carbTime = createdAt;

      var carbs_hr = profile.store.carbRatioPerHour;
      if (carbs_hr == 0) carbs_hr = 12;
      var carbs_min = carbs_hr / 60;

      var decayedBy = carbTime;
      var minutesleft = (lastDecayedBy - carbTime.millisecondsSinceEpoch) / 1000 ~/ 60;
      decayedBy = decayedBy.add(Duration(minutes: math.max(delay, minutesleft) + carbs ~/ carbs_min));
      if (delay > minutesleft) {
        initialCarbs = carbs;
      } else {
        initialCarbs = carbs + minutesleft * carbs_min;
      }
      var startDecay = carbTime.add(Duration(minutes: delay));
      if (time.millisecondsSinceEpoch < lastDecayedBy ||
          time.millisecondsSinceEpoch > startDecay.millisecondsSinceEpoch) {
        isDecaying = true;
      } else {
        isDecaying = false;
      }

      return {'initialCarbs': initialCarbs, 'decayedBy': decayedBy, 'isDecaying': isDecaying, 'carbTime': carbTime};
    }
    return null;
  }

  void calcTotalCOB(ReportData data, DayData yesterday, dynamic ret, ProfileGlucData profile, DateTime time, var iob) {
    // TODO: figure out the liverSensRatio that gives the most accurate purple line predictions
    var liverSensRatio = 8.0;
    var sens = profile.store.listSens.lastWhere((e) => e.timeForCalc <= timeForCalc, orElse: () => null)?.value ?? 0.0;
    var carbRatio =
        profile.store.listCarbratio.lastWhere((e) => e.timeForCalc <= timeForCalc, orElse: () => null)?.value ?? 0.0;
    var cCalc = calcCOB(profile, time, ret['lastDecayedBy']?.millisecondsSinceEpoch ?? 0);
    if (cCalc != null) {
      double decaysin_hr = (cCalc['decayedBy'].millisecondsSinceEpoch - time.millisecondsSinceEpoch) / 1000 / 60 / 60;
      if (decaysin_hr > -10) {
        // units: BG
        var actStart = iob(data, ret['lastDecayedBy'], yesterday).activity;
        var actEnd = iob(data, cCalc['decayedBy'], yesterday).activity;
        var avgActivity = (actStart + actEnd) / 2;
        // units:  g = BG * scalar / BG / U * g / U
        if (sens == 0.0) sens = 1.0;
        if (carbRatio == 0.0) carbRatio = 1.0;
        var delayedCarbs = (avgActivity * liverSensRatio / sens) * carbRatio;
        int delayMinutes = delayedCarbs ~/ profile.store.carbRatioPerHour * 60;
        if (delayMinutes > 0) {
          cCalc['decayedBy'] = cCalc['decayedBy'].add(Duration(minutes: delayMinutes));
          decaysin_hr = (cCalc['decayedBy'].millisecondsSinceEpoch - time.millisecondsSinceEpoch) / 1000 / 60 / 60;
        }
      }

      ret['lastDecayedBy'] = cCalc['decayedBy'];
      if (decaysin_hr > 0) {
        //console.info('Adding ' + delayMinutes + ' minutes to decay of ' + treatment.carbs +
        // 'g bolus at ' + treatment.mills);
        ret['totalCOB'] += math.min(carbs, decaysin_hr * profile.store.carbRatioPerHour);
        //console.log('cob:', Math.min(cCalc.initialCarbs,
        // decaysin_hr * profile.getCarbAbsorptionRate(treatment.mills)),
        // cCalc.initialCarbs,decaysin_hr,profile.getCarbAbsorptionRate(treatment.mills));
        ret['isDecaying'] = cCalc['isDecaying'];
      }
    } else {
      ret['totalCOB'] = 0;
    }
  }
}

class EntryData extends JsonData {
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
  double slope;
  double intercept;
  double scale;
  bool isGap = false;
  bool isCopy = false;

  bool get isInvalid => false; //type != 'mbg' && direction != null && direction.toLowerCase() == 'none';
  bool get isInvalidOrGluc0 => isInvalid || gluc == null || gluc == 0;

  bool get isGlucInvalid => gluc == null || gluc <= 0;

  double get gluc {
    return isGap ? -1 : (type == 'sgv' ? sgv : rawbg) ?? 0;
  }

  double get bloodGluc {
    return (type == 'mbg' ? mbg : 0) ?? 0;
  }

  double get fullGluc {
    return isGap ? -1 : (type == 'mbg' ? mbg : gluc) ?? 0;
  }

  EntryData();

  EntryData get copy => EntryData()
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
    ..isCopy = true
    ..slope = slope
    ..intercept = intercept
    ..scale = scale;

  factory EntryData.fromJson(Map<String, dynamic> json) {
    var ret = EntryData();
    ret.raw = json;
    if (json == null) return ret;
    ret.id = json['_id'];
    ret.time = JsonData.toDate(json['date']);
    ret.rssi = JsonData.toInt(json['rssi']);
    ret.device = json['device'];
    ret.direction = json['direction'];
    ret.rawbg = JsonData.toDouble(json['rawbg']);
    ret.type = json['type'];
    ret.sgv = JsonData.toDouble(json['sgv']);
    ret.mbg = JsonData.toDouble(json['mbg']);
    if (ret.type == null && ret.sgv > 0) ret.type = 'sgv';
    if (ret.type == null && ret.mbg > 0) ret.type = 'mbg';
    if (ret.sgv < 20) {
      ret.sgv = 0;
      ret.isGap = true;
    }
    ret.slope = JsonData.toDouble(json['slope']);
    ret.intercept = JsonData.toDouble(json['intercept']);
    ret.scale = JsonData.toDouble(json['scale']);
    return ret;
  }

  void slice(EntryData src, EntryData dst, double f) {
    sgv = Globals.calc(src.sgv, dst.sgv, f);
    rawbg = Globals.calc(src.rawbg, dst.rawbg, f);
    mbg = Globals.calc(src.mbg, dst.mbg, f);
  }
}

class PumpStatusData extends JsonData {
  String status;
  bool bolusing;
  bool suspended;
  DateTime timestamp;

  PumpStatusData get copy => PumpStatusData()
    ..status = status
    ..bolusing = bolusing
    ..suspended = suspended
    ..timestamp = timestamp.add(Duration(days: 0));

  PumpStatusData();

  factory PumpStatusData.fromJson(Map<String, dynamic> json) {
    var ret = PumpStatusData();
    if (json == null) return ret;
    ret.status = JsonData.toText(json['status']);
    ret.bolusing = JsonData.toBool(json['bolusing']);
    ret.suspended = JsonData.toBool(json['suspended']);
    ret.timestamp = JsonData.toDate(json['timestamp']);
    return ret;
  }
}

class PumpBatteryData extends JsonData {
  String status;
  double voltage;

  PumpBatteryData get copy => PumpBatteryData()
    ..status = status
    ..voltage = voltage;

  PumpBatteryData();

  factory PumpBatteryData.fromJson(Map<String, dynamic> json) {
    var ret = PumpBatteryData();
    if (json == null) return ret;
    ret.status = JsonData.toText(json['status']);
    ret.voltage = JsonData.toDouble(json['voltage']);
    return ret;
  }
}

class PumpData extends JsonData {
  DateTime clock;
  PumpBatteryData pumpBattery;
  double reservoir;
  PumpStatusData pumpStatus;

  PumpData get copy => PumpData()
    ..clock = clock.add(Duration(days: 0))
    ..pumpBattery = pumpBattery.copy
    ..reservoir = reservoir
    ..pumpStatus = pumpStatus.copy;

  PumpData();

  factory PumpData.fromJson(Map<String, dynamic> json) {
    var ret = PumpData();
    if (json == null) return ret;
    ret.clock = JsonData.toDate(json['clock']);
    ret.pumpBattery = PumpBatteryData.fromJson(json['pumpbattery']);
    ret.reservoir = JsonData.toDouble(json['reservoir']);
    ret.pumpStatus = PumpStatusData.fromJson(json['pumpstatus']);
    return ret;
  }
}

class UploaderData extends JsonData {
  double batteryVoltage;
  double batteryPercentageRemaining;

  UploaderData get copy => UploaderData()
    ..batteryVoltage = batteryVoltage
    ..batteryPercentageRemaining = batteryPercentageRemaining;

  UploaderData();

  factory UploaderData.fromJson(Map<String, dynamic> json) {
    var ret = UploaderData();
    if (json == null) return ret;
    ret.batteryVoltage = JsonData.toDouble(json['batteryVoltage']);
    ret.batteryPercentageRemaining = JsonData.toDouble(json['battery']);
    return ret;
  }
}

class XDripJSData extends JsonData {
  int state;
  String stateString;
  String stateStringShort;
  String txId;
  int txStatus;
  String txStatusString;
  String txStatusStringShort;
  DateTime txActivation;
  String mode;
  DateTime timestamp;
  double rssi;
  double unfiltered;
  double filtered;
  double noise;
  double noiseString;
  double slope;
  double intercept;
  String calType;
  DateTime lastCalibrationDate;
  DateTime sessionStart;
  DateTime batteryTimestamp;
  double voltageA;
  double voltageB;
  double temperature;
  double resistance;

  XDripJSData get copy => XDripJSData()
    ..state = state
    ..stateString = stateString
    ..stateStringShort = stateStringShort
    ..txId = txId
    ..txStatus = txStatus
    ..txStatusString = txStatusString
    ..txStatusStringShort = txStatusStringShort
    ..txActivation = txActivation.add(Duration(days: 0))
    ..mode = mode
    ..timestamp = timestamp.add(Duration(days: 0))
    ..rssi = rssi
    ..unfiltered = unfiltered
    ..filtered = filtered
    ..noise = noise
    ..noiseString = noiseString
    ..slope = slope
    ..intercept = intercept
    ..calType = calType
    ..lastCalibrationDate = lastCalibrationDate.add(Duration(days: 0))
    ..sessionStart = sessionStart.add(Duration(days: 0))
    ..batteryTimestamp = batteryTimestamp.add(Duration(days: 0))
    ..voltageA = voltageA
    ..voltageB = voltageB
    ..temperature = temperature
    ..resistance = resistance;

  XDripJSData();

  factory XDripJSData.fromJson(Map<String, dynamic> json) {
    var ret = XDripJSData();
    if (json == null) return ret;
    ret.state = JsonData.toInt(json['state']);
    ret.stateString = JsonData.toText(json['stateString']);
    ret.stateStringShort = JsonData.toText(json['stateStringShort']);
    ret.txId = JsonData.toText(json['txId']);
    ret.txStatus = JsonData.toInt(json['txStatus']);
    ret.txStatusString = JsonData.toText(json['txStatusString']);
    ret.txStatusStringShort = JsonData.toText(json['txStatusStringShort']);
    ret.txActivation = JsonData.toDate(json['txActivation']);
    ret.mode = JsonData.toText(json['mode']);
    ret.timestamp = JsonData.toDate(json['timestamp']);
    ret.rssi = JsonData.toDouble(json['rssi']);
    ret.unfiltered = JsonData.toDouble(json['unfiltered']);
    ret.filtered = JsonData.toDouble(json['filtered']);
    ret.noise = JsonData.toDouble(json['noise']);
    ret.noiseString = JsonData.toDouble(json['noiseString']);
    ret.slope = JsonData.toDouble(json['slope']);
    ret.intercept = JsonData.toDouble(json['intercept']);
    ret.calType = JsonData.toText(json['calType']);
    ret.lastCalibrationDate = JsonData.toDate(json['lastCalibrationDate']);
    ret.sessionStart = JsonData.toDate(json['sessionStart']);
    ret.batteryTimestamp = JsonData.toDate(json['batteryTimestamp']);
    ret.voltageA = JsonData.toDouble(json['voltagea']);
    ret.voltageB = JsonData.toDouble(json['voltageb']);
    ret.temperature = JsonData.toDouble(json['temperature']);
    ret.resistance = JsonData.toDouble(json['resistance']);
    return ret;
  }
}

class IOBData extends JsonData {
  double iob;
  double basalIob;
  double activity;
  DateTime time;

  IOBData get copy => IOBData()
    ..iob = iob
    ..basalIob = basalIob
    ..activity = activity
    ..time = time.add(Duration(days: 0));

  IOBData();

  factory IOBData.fromJson(Map<String, dynamic> json) {
    // ignore: omit_local_variable_types
    IOBData ret = IOBData();
    if (json == null) return ret;
    ret.iob = JsonData.toDouble(json['iob']);
    ret.basalIob = JsonData.toDouble(json['basaliob']);
    ret.activity = JsonData.toDouble(json['activity']);
    ret.time = JsonData.toDate(json['time']);
    return ret;
  }
}

class LoopData extends JsonData {
  IOBData iob;

  LoopData get copy => LoopData()..iob = iob;

  LoopData();

  factory LoopData.fromJson(Map<String, dynamic> json) {
    var ret = LoopData();
    if (json == null) return ret;
    ret.iob = IOBData.fromJson(json['iob']);
    return ret;
  }
}

class DeviceStatusData extends JsonData {
  String device;
  DateTime createdAt;
  LoopData openAPS;
  LoopData loop;
  PumpData pump;
  UploaderData uploader;
  XDripJSData xdripjs;

  DeviceStatusData();

  factory DeviceStatusData.fromJson(Map<String, dynamic> json) {
    var ret = DeviceStatusData();
    if (json == null) return ret;
    ret.device = JsonData.toText(json['device']);
    ret.createdAt = JsonData.toDate(json['created_at']);
    ret.openAPS = LoopData.fromJson(json['openaps']);
    ret.loop = LoopData.fromJson(json['loop']);
    ret.pump = PumpData.fromJson(json['pump']);
    ret.uploader = UploaderData.fromJson(json['uploader']);
    ret.xdripjs = XDripJSData.fromJson(json['xdripjs']);
    return ret;
  }
}

class CalcIOBData {
  double iob, activity;
  TreatmentData lastBolus;

  CalcIOBData(this.iob, this.activity, this.lastBolus);
}

class CalcCOBData {
  DateTime decayedBy;
  bool isDecaying;
  int carbs_hr;
  double rawCarbImpact;
  double cob, cActivity;
  TreatmentData lastCarbs;

  CalcCOBData(this.decayedBy, this.isDecaying, this.carbs_hr, this.rawCarbImpact, this.cob, this.cActivity, this.lastCarbs);
}

class DayData {
  var prevDay;
  Date date;
  ProfileGlucData basalData;
  int lowCount = 0;
  int normCount = 0;
  int highCount = 0;
  int stdLowCount = 0;
  int stdNormCount = 0;
  int stdHighCount = 0;
  int entryCountValid = 0;
  int entryCountInvalid = 0;
  int carbCount = 0;
  double carbs = 0;
  double min;
  double max;

  String get minText => min == 10000 ? '' : '$min';

  String get maxText => max == -10000 ? '' : '$max';
  double mid;
  double varianz = 0.0;

  double stdAbw(bool isMGDL) {
    var ret = math.sqrt(varianz);
    if (!isMGDL) ret = ret / 18.02;
    return ret;
  }

  double get avgGluc {
    var ret = 0.0;
    var count = 0;
    for (var entry in entries) {
      if (!entry.isGlucInvalid) {
        ret += entry.gluc;
        count++;
      }
    }
    return count > 0 ? ret / count : 0.0;
  }

  double get varK => (mid ?? 0) != 0 ? stdAbw(true) / mid * 100 : 0;

  double lowPrz(Globals g) =>
      entryCountValid == 0 ? 0 : (g.ppStandardLimits ? stdLowCount : lowCount) / entryCountValid * 100;

  double normPrz(Globals g) =>
      entryCountValid == 0 ? 0 : (g.ppStandardLimits ? stdNormCount : normCount) / entryCountValid * 100;

  double highPrz(Globals g) =>
      entryCountValid == 0 ? 0 : (g.ppStandardLimits ? stdHighCount : highCount) / entryCountValid * 100;

  double get avgCarbs => carbCount > 0 ? carbs / carbCount : 0;

  bool isSameDay(DateTime time) {
    if (date.year != time.year) return false;
    if (date.month != time.month) return false;
    return date.day == time.day;
  }

  bool isSameDay_(DateTime d1, DateTime d2) => d1.year == d2.year && d1.month == d2.month && d1.day == d2.day;

  double get ieCorrectionSum {
    var ret = 0.0;
    for (var entry in treatments) {
      if (!entry.isCarbBolus && !entry.isSMB) {
        ret += entry.bolusInsulin;
      }
    }
    return ret;
  }

  double get ieCarbSum {
    var ret = 0.0;
    for (var entry in treatments) {
      if (entry.isCarbBolus && !entry.isSMB) {
        ret += entry.bolusInsulin;
      }
    }
    return ret;
  }

  double get ieSMBSum {
    var ret = 0.0;
    for (var entry in treatments) {
      if (entry.isSMB) ret += entry.bolusInsulin;
//      if (entry.microbolus > 0) ret += entry.microbolus;
    }
    return ret;
  }

  double getBolusSum(bool isCarbBolus) {
    var ret = 0.0;
    for (var entry in treatments) {
      if (entry.isCarbBolus == isCarbBolus) ret += entry.bolusInsulin;
    }
    return ret;
  }

  double get ieBolusSum {
    var ret = 0.0;
    for (var entry in treatments) {
      ret += (entry.bolusInsulin ?? 0);
//      ret += (entry.microbolus ?? 0);
    }
    return ret;
  }

  double get ieBasalSum {
    var ret = 0.0;
    for (var entry in profile) {
      ret += (entry.value ?? 0) * (entry.duration ?? 0) / 3600.0;
    }
    return ret;
  }

  int get basalZeroDuration {
    var ret = 0;
    for (var entry in profile) {
      if (entry.value == 0 && entry.duration != null) ret += entry.duration;
    }
    return ret;
  }

  DayData(date, this.basalData) {
    if (date == null) {
      this.date = Date(0);
    } else {
      this.date = Date(date.year, date.month, date.day);
    }

    var entry = EntryData();
    entry.type = 'mbg';
    entry.mbg = 123.0;
    entry.time = Globals.now;
//    bloody.add(entry);
  }

  var entries = <EntryData>[];
  final _bloody = <EntryData>[];

  List<EntryData> get bloody => _bloody;
  List<TreatmentData> treatments = <TreatmentData>[];
  List<DeviceStatusData> devicestatusList = <DeviceStatusData>[];
  List<ProfileEntryData> _profile;

  List<ProfileEntryData> get profile {
    if (_profile != null) return _profile;
    _profile = <ProfileEntryData>[];
    if (basalData.store.listBasal.isEmpty) return _profile;

    // fill profile with datasets representing the profile for that day
    for (var entry in basalData.store.listBasal) {
      var temp = ProfileEntryData(basalData.store.timezone, entry.time(date, true));
      temp.value = entry.value;
      temp.orgValue = entry.value;
      _profile.add(temp);
    }
    if (_profile.first.time(date, false).hour > 0) {
      var clone = _profile.first.clone(DateTime(date.year, date.month, date.day, 0, 0));
      _profile.insert(0, clone);
    }

    // sort the profile to have the entries in the correct order
    _profile.sort((a, b) => a.time(date).compareTo(b.time(date)));
    var last = _profile.first.copy;
    var lastTime = last.time(date);
    // fill profile with treatments of type 'temp basal' to get the actual basalrate
    for (var t in treatments) {
      if (!t.isTempBasal) continue;
      var doAdd = true;
      if (t.duration <= 0) {
        if (t.key600.toLowerCase().startsWith('resume')) {
          t.duration = 86399 - t.timeForCalc;
          t._percent = 0;
        } else {
          doAdd = false;
        }
      }

      if (doAdd) {
        var entry = ProfileEntryData.fromTreatment(basalData.store.timezone, t);
        // value null means this value has to be calculated in the next loop
        entry.value = null;
        _profile.add(entry);
      }
    }
    // sort the profile to have the entries in the correct order
    _profile.sort((a, b) => a.time(date).compareTo(b.time(date)));

    var isInserted = false;
    // calculate the values based on the profile data
    for (var i = 0; i < _profile.length; i++) {
      var entry = _profile[i];
      entry.orgValue = entry.value;
      // only work on entry-values that are null (inserted by the code above)
      if (entry.value == null) {
        // entry has to be calculated and has a preceding entry
        entry.orgValue = last.orgValue;
        entry.value = entry.adjustedValue(last.orgValue);

        var endTime = entry.time(date).add(Duration(seconds: entry.duration));
        if (i < _profile.length - 1) {
          if (endTime.isBefore(_profile[i + 1].time(date))) {
            // entry ends before next entry starts
            var temp = ProfileEntryData(basalData.store.timezone, endTime);
            if (i < _profile.length - 2) temp.duration = _profile[i + 2]._time.difference(endTime).inSeconds;
            temp.value = last.orgValue;
            temp.orgValue = last.orgValue;
            _profile.insert(i + 1, temp);
          }
        } else if (i == _profile.length - 1 &&
            endTime.isBefore(DateTime(lastTime.year, lastTime.month, lastTime.day, 23, 59, 59))) {
          var temp = ProfileEntryData(basalData.store.timezone, endTime);
          temp.transferCalcValues(last);
          temp.value = last.orgValue;
          temp.orgValue = last.orgValue;
          _profile.add(temp);
        }
        isInserted = false;
      } else {
        // entry is from the base profile
        if (last.isCalculated && !isInserted) {
          isInserted = false;
          // if the last value was calculated check if the duration is still running
          var endTime = lastTime.add(Duration(seconds: last.duration));
          if (endTime.isAfter(entry.time(date))) {
            var duration = endTime.difference(entry.time(date)).inSeconds;
            var clone = entry.clone(entry.time(date).add(Duration(seconds: duration)));
            // transfer the calculationdata from the last entry
            entry.transferCalcValues(last);
            // recalculate the value based on the value from the profile
            entry.value = entry.adjustedValue(entry.orgValue);
            var currDuration = entry.duration;
            if (i < _profile.length - 1) {
              currDuration = _profile[i + 1].time(date).difference(entry.time(date)).inSeconds;
            }
            if (duration < currDuration) {
              clone.duration = currDuration - duration;
              _profile.insert(i + 1, clone);
              isInserted = true;
            }
            entry.duration = duration;
          }
        }
      }
      last = entry;
      lastTime = last.time(date);
    }

    // finalize the entries by recalculating their duration
    for (var i = 1; i < _profile.length; i++) {
      _profile[i - 1].duration = _profile[i].time(date).difference(_profile[i - 1].time(date)).inSeconds;
    }
    _profile.last.duration = 86399 - _profile.last.timeForCalc;

    _profile.removeWhere((p) => p.duration == 0);

    // join all entries that have the same value to one entry
    var ret = <ProfileEntryData>[];
    for (var i = 1; i < _profile.length; i++) {
      var prev = _profile[i - 1];
      var curr = _profile[i];
      if (prev.value == curr.value) {
        curr.duration += prev.duration;
        curr._time = prev._time;
      } else {
        ret.add(prev);
      }
    }
    ret.add(_profile.last);
    _profile = ret;

    return _profile;
  }

  void init([DayData nextDay]) {
    min = 10000.0;
    max = -10000.0;
    mid = 0.0;
    entryCountValid = 0;
    entryCountInvalid = 0;
    normCount = 0;
    highCount = 0;
    lowCount = 0;
    stdNormCount = 0;
    stdHighCount = 0;
    stdLowCount = 0;
    carbCount = 0;
    carbs = 0;
    for (var entry in entries) {
      if (!entry.isGlucInvalid) {
        entryCountValid++;
        if (entry.gluc < basalData.targetLow) {
          lowCount++;
        } else if (entry.gluc > basalData.targetHigh) {
          highCount++;
        } else {
          normCount++;
        }

        if (entry.gluc < Globals.stdLow) {
          stdLowCount++;
        } else if (entry.gluc > Globals.stdHigh) {
          stdHighCount++;
        } else {
          stdNormCount++;
        }
        mid += entry.gluc;
        min = math.min(min, entry.gluc);
        max = math.max(max, entry.gluc);
      } else {
        entryCountInvalid++;
      }
    }

    mid = entryCountValid == 0 ? 0 : mid / entryCountValid;
    varianz = 0.0;
    for (var entry in entries) {
      if (!entry.isGlucInvalid) varianz += math.pow(entry.gluc - mid, 2);
    }
    varianz /= entryCountValid;

    for (var t in treatments) {
      if (t.carbs > 0) {
        carbCount++;
        carbs += t.carbs;
      }
    }
    _profile = null;
  }

  dynamic findNearest(List<EntryData> eList, List<TreatmentData> tList, DateTime check,
      {String glucoseType, int maxMinuteDiff = 30}) {
    eList ??= <EntryData>[];
    tList ??= <TreatmentData>[];
    if (eList.isEmpty && tList.isEmpty) {
      return null;
    }

    dynamic ret;
    var retDiff = 10000;
    for (var entry in eList) {
      if (entry.gluc <= 0) continue;
      var time = DateTime(check.year, check.month, check.day, entry.time.hour, entry.time.minute);
      if (time == check) return entry;
      var diff = time.difference(check).inSeconds.abs();

      if (diff < retDiff && diff <= maxMinuteDiff * 60) {
        ret = entry;
        retDiff = diff;
      }
    }
    var list = tList.where((t) => t.isBloody).toList();
    for (var treat in list) {
      var time = DateTime(check.year, check.month, check.day, treat.createdAt.hour, treat.createdAt.minute);
      if (time == check) return treat;
      var diff = time.difference(check).inSeconds.abs();

      if (diff < retDiff && diff <= maxMinuteDiff * 60) {
        ret = treat;
        retDiff = diff;
      }
    }

    return ret;
  }

  CalcIOBData iob(ReportData data, DateTime time, DayData yesterday) {
    var totalIOB = 0.0;
    var totalActivity = 0.0;
    var lastBolus;

    if (time == null) return CalcIOBData(0, 0, null); //time = DateTime(0);

    var check = time.millisecondsSinceEpoch;
    var profile = data.profile(time);

    var list = <TreatmentData>[];
    if (yesterday != null) {
      var temp = yesterday.iob(
          data, DateTime(yesterday.date.year, yesterday.date.month, yesterday.date.day, 23, 59, 59), null);
      var t = TreatmentData();
      t.insulin = temp.iob;
      t.createdAt = DateTime(time.year, time.month, time.day, 0, 0, 0);
      list.add(t);
    }
    list.addAll(treatments);

    var totalSave = totalIOB;
    for (var t in list) {
      if (!isSameDay_(t.createdAt, time) || t.createdAt.millisecondsSinceEpoch > check) continue;
      var tIOB = t.calcIOB(profile, time);
      if (tIOB != null && tIOB.iob != null) {
        if (tIOB.iob != 0) lastBolus = t;
        totalIOB += tIOB.iob;
      }

      // units: BG (mg/dl or mmol/l)
      if (tIOB != null && tIOB.activity != null) totalActivity += tIOB.activity;
    }

    if (totalIOB == totalSave) {
//        totalIOB = 20;
    }

    return CalcIOBData(totalIOB, totalActivity, lastBolus);
  }

  CalcIOBData calcIobTotal(ReportData data, DateTime time, DayData yesterday) {
    time ??= DateTime.now();

    return iob(data, time, yesterday);
  }

  CalcCOBData cob(ReportData data, DateTime time, DayData yesterday) {
    var totalCOB = 0.0;
    TreatmentData lastCarbs;

    var isDecaying = false;
    DateTime lastDecayedBy;

    var check = time.hour * 3600 + time.minute * 60 + time.second;
    var profile = data.profile(time);

    var list = <TreatmentData>[];
    if (yesterday != null) {
      var prev = yesterday.cob(
          data, DateTime(yesterday.date.year, yesterday.date.month, yesterday.date.day, 23, 59, 59), null);
      lastCarbs = prev.lastCarbs;
      var t = TreatmentData();
      t._carbs = prev.cob;
      t.isECarb = false;
      t.createdAt = DateTime(time.year, time.month, time.day, 0, 0, 0);
      list.add(t);
    }
    list.addAll(treatments);

    for (var t in list) {
      if (!isSameDay_(t.createdAt, time) || t.timeForCalc > check) continue;

      if (t.carbs != null && t.carbs > 0) {
        dynamic temp = {'totalCOB': totalCOB, 'isDecaying': isDecaying, 'lastDecayedBy': lastDecayedBy};
        t.calcTotalCOB(data, yesterday, temp, profile, time, iob);
        totalCOB = temp['totalCOB'];
        isDecaying = temp['isDecaying'];
        lastDecayedBy = temp['lastDecayedBy'];
        lastCarbs = t;
      }
    }

    var t = TreatmentData();
    t.createdAt = time;
    dynamic temp = {'totalCOB': totalCOB, 'isDecaying': isDecaying, 'lastDecayedBy': lastDecayedBy};
    t.calcTotalCOB(data, yesterday, temp, profile, time, iob);
    totalCOB = temp['totalCOB'];
    isDecaying = temp['isDecaying'];
    lastDecayedBy = temp['lastDecayedBy'];

    var sens = profile.store.listSens.lastWhere((e) => e.timeForCalc <= check, orElse: () => null)?.value ?? 0.0;
    var carbRatio =
        profile.store.listCarbratio.lastWhere((e) => e.timeForCalc <= check, orElse: () => null)?.value ?? 0.0;
    var rawCarbImpact = (isDecaying ? 1 : 0) * sens / carbRatio * profile.store.carbRatioPerHour / 60;

    return CalcCOBData(lastDecayedBy, isDecaying, profile.store.carbRatioPerHour, rawCarbImpact, totalCOB, 0, lastCarbs);
  }
}

class StatisticData {
  double min, max;
  List<double> values = <double>[];
  List<EntryData> entries = <EntryData>[];
  double sum = 0.0;
  double varianz = 0.0;
  double median;

  double get mid => values.isEmpty ? 0 : sum / values.length;

  double get stdAbw => math.sqrt(varianz);

  StatisticData(this.min, this.max);

  void add(EntryData entry, double value) {
    values.add(value);
    entries.add(entry);
    sum += value;
  }
}

class ListData {
  List<DayData> days = <DayData>[];
  List<EntryData> entries = <EntryData>[];
  List<EntryData> bloody = <EntryData>[];
  List<EntryData> remaining = <EntryData>[];
  List<TreatmentData> treatments = <TreatmentData>[];
  List<DeviceStatusData> devicestatusList = <DeviceStatusData>[];
  int catheterCount = 0;
  int ampulleCount = 0;
  int sensorCount = 0;
  double khCount = 0.0;
  double khAdjust = 0.0;
  int khAdjustCount = 0;
  Map<String, StatisticData> stat = {
    'low': StatisticData(0, 0),
    'norm': StatisticData(0, 0),
    'high': StatisticData(0, 0),
    'stdLow': StatisticData(1, 70),
    'stdNorm': StatisticData(70, 180),
    'stdHigh': StatisticData(180, 9999),
    'stdVeryHigh': StatisticData(250, 9999),
    'stdNormHigh': StatisticData(180, 250),
    'stdNormLow': StatisticData(54, 70),
    'stdVeryLow': StatisticData(0, 54),
  };
  double ieBolusSum = 0.0;
  double ieBasalSum = 0.0;
  double ieMicroBolusSum = 0.0;
  double gvi = 0.0;
  double gviIdeal = 0.0;
  double gviTotal = 0.0;
  double rms = 0.0;
  double pgs = 0.0;

  double get TDD => ieBolusSum + ieBasalSum; // + ieMicroBolusSum;
  double get ieBolusPrz => ieBolusSum + ieBasalSum > 0 ? ieBolusSum / (ieBolusSum + ieBasalSum) * 100 : 0.0;

  double get ieBasalPrz => ieBolusSum + ieBasalSum > 0 ? ieBasalSum / (ieBolusSum + ieBasalSum) * 100 : 0.0;

  double get ieMicroBolusPrz => ieBolusSum + ieBasalSum > 0 ? ieMicroBolusSum / (ieBolusSum + ieBasalSum) * 100 : 0.0;

  int get countValid => entries.where((entry) => !entry.isGlucInvalid).length;

  int get countInvalid => entries.where((entry) => entry.isGlucInvalid).length;

  int entriesIn(int min, int max) =>
      entries.where((entry) => !entry.isGlucInvalid && entry.gluc >= min && entry.gluc <= max).length;

  int entriesBelow(int min) => entries.where((entry) => !entry.isGlucInvalid && entry.gluc < min).length;

  int entriesAbove(int min) => entries.where((entry) => !entry.isGlucInvalid && entry.gluc > min).length;

  double get avgGluc {
    var ret = 0.0;
    var count = 0;
    for (var entry in entries) {
      if (!entry.isGlucInvalid) {
        ret += entry.gluc;
        count++;
      }
    }
    return count > 0 ? ret / count : 0.0;
  }

  double min;
  double max;
  int validCount;
  List<TreatmentData> addList = <TreatmentData>[];

  void extractData(ReportData data, TreatmentData lastTempBasal) {
    stat['norm'].values.clear();
    stat['high'].values.clear();
    stat['low'].values.clear();
    min = 999999.0;
    max = -1.0;
    var lastDay;
    var allEntries = <EntryData>[];
    allEntries.addAll(entries);
    allEntries.addAll(bloody);
    allEntries.addAll(remaining);

    allEntries.sort((a, b) => a.time.compareTo(b.time));
/*
    allEntries.removeWhere((e)
    => e.isGap);
// */
    var last;
    // calculation of gvi and rms based on
    // https://github.com/nightscout/cgm-remote-monitor/blob/master/lib/report_plugins/glucosedistribution.js#L150
    var glucTotal = 0.0;
    var rmsTotal = 0.0;
    var firstGluc;
    var lastGluc;
    var usedRecords = 0;
//    double deltaTotal = 0.0;
//    double total = 0.0;
//    double t1 = 6;
//    double t2 = 11;
//    int t1Count = 0;
//    int t2Count = 0;
    validCount = 0;
    if (allEntries.isEmpty) return;

    for (var entry in allEntries) {
      if (entry.isInvalidOrGluc0) continue;

      var glucData = data.profile(entry.time);
      stat['low'].max = glucData.targetLow; // - 0.0001;
      stat['norm'].min = glucData.targetLow;
      stat['norm'].max = glucData.targetHigh; // + 0.0001;
      stat['high'].min = glucData.targetHigh;
      stat['high'].max = 9999.9999;
      if (lastDay == null || entry.time.day != lastDay.day) {
        days.add(DayData(entry.time, glucData));
        lastDay = entry.time;
      }
      if (entry.type == 'mbg') {
        days.last.bloody.add(entry);
      } else {
        days.last.entries.add(entry);
        if (glucData != null) {
          var gluc = entry.gluc;
          // first day must be ignored for statistics
          if (gluc > 0 && days.length > 1) {
            for (var key in stat.keys) {
              if (gluc >= stat[key].min && gluc < stat[key].max) stat[key].add(entry, gluc);
            }
            validCount++;
            if (gluc < min) min = entry.gluc;
            if (gluc > max) max = entry.gluc;
          }
        }
      }

      if (data.isInPeriod(entry.time)) {
        firstGluc ??= entry.gluc;
        lastGluc = entry.gluc;
        if (last == null) {
          glucTotal += entry.gluc;
        } else {
          var timeDelta = entry.time.difference(last.time).inMilliseconds;

          if (timeDelta <= 6 * 60000 && entry.gluc > 0 && last.gluc > 0) {
            usedRecords++;
            var delta = entry.gluc - last.gluc;
//          deltaTotal += delta;
//          total += delta;
//          if (delta >= t1)t1Count++;
//          if (delta >= t2)t2Count++;
            gviTotal += math.sqrt(25 + math.pow(delta, 2));
            glucTotal += entry.gluc;
            if (entry.gluc < glucData.targetLow) rmsTotal += math.pow(glucData.targetLow - entry.gluc, 2);
            if (entry.gluc > glucData.targetHigh) rmsTotal += math.pow(entry.gluc - glucData.targetHigh, 2);
          }
        }
      }
      last = entry;
    }

    var check = DateTime(days.first.date.year, days.first.date.month, days.first.date.day + 1);
    entries.removeWhere((e) => e.time.isBefore(check));
    bloody.removeWhere((e) => e.time.isBefore(check));
    remaining.removeWhere((e) => e.time.isBefore(check));

    double gviDelta = lastGluc - firstGluc;
    gviIdeal = math.sqrt(math.pow(usedRecords * 5, 2) + math.pow(gviDelta, 2));
    gvi = gviIdeal != 0 ? gviTotal / gviIdeal : 0.0;
    rms = math.sqrt(rmsTotal / usedRecords);
    var tirMultiplier = validCount == 0 ? 0.0 : stat['stdNorm'].values.length / validCount;
    pgs = gvi * (glucTotal / usedRecords) * (1.0 - tirMultiplier);

    for (var key in stat.keys) {
      stat[key].varianz = 0.0;
      for (var v in stat[key].values) {
        stat[key].varianz += math.pow(v - stat[key].mid, 2);
      }
      stat[key].varianz /= stat[key].values.length;
    }

    khCount = 0.0;
    ieBolusSum = 0.0;
    catheterCount = 0;
    ampulleCount = 0;
    sensorCount = 0;
    var eCarbs = 0.0;
    var delay = 0;
    treatments.sort((a, b) => a.createdAt.compareTo(b.createdAt));

//*
    if (addList.isEmpty) {
      var lastIdx = -1;
      for (var i = 0; i < treatments.length; i++) {
        var t1 = treatments[i];
        if (!t1.isTempBasal) continue;
        var t = lastIdx == -1 ? lastTempBasal : treatments[lastIdx];
        if (t == null) continue;
        lastIdx = i;

        var duration = t1.createdAt.difference(t.createdAt).inSeconds;
        // if duration of current treatment is longer than the difference between
        // next treatment and current treatment then cut the duration of current
        // treatment to the difference
        if (duration < t.duration) t.duration = duration;

        // if next treatment is in the next day, cut current duration so that the
        // end is at end of the day and insert a new treatment with the duration
        // up to the next treatment
        var date = t.createdAt.add(Duration(days: 1));
        if (date.day == t1.createdAt.day && date.month == t1.createdAt.month && date.year == t1.createdAt.year) {
          var newTreat = t.copy;
          newTreat.createdAt = DateTime(date.year, date.month, date.day, 0, 0);
          var duration = 86399 - t.timeForCalc;
          newTreat.duration -= duration;
          if (newTreat.duration > 0) {
            t.duration = duration;
            addList.add(newTreat);
          }
        }
      }
      if (addList.isNotEmpty) {
        treatments.addAll(addList);
        treatments.sort((a, b) => a.createdAt.compareTo(b.createdAt));
      }
    }
// */
    for (var i = 0; i < treatments.length; i++) {
      var t = treatments[i];
      var type = t.eventType.toLowerCase();
      if (t.isSiteChange) catheterCount++;
      if (t.isInsulinChange) ampulleCount++;
      if (t.isSensorChange) sensorCount++;
      if (type == 'note' && t.notes.toLowerCase().startsWith('ecarb')) {
        var rex = RegExp(r'[^0-9\-]*(-*\d*)[^0-9\-]*(-*\d*)[^0-9\-]*(-*\d*).*');
        Match match = rex.firstMatch(t.notes);
        if (match != null && match.groupCount == 3) {
          eCarbs = double.tryParse(match.group(1)) ?? 0;
          delay = double.tryParse(match.group(3)) ?? 0;
          if (delay < 0) {
            for (var j = i - 1; j >= 0 && eCarbs > 0.0; j--) {
              var t1 = treatments[j];
              if (t1.isMealBolus && t1.carbs < 10.0) {
                eCarbs -= t1.carbs;
                t1.isECarb = true;
              }
            }
          }
        }
      }

      if (t.isMealBolus && eCarbs != null && eCarbs > 0.0 && t.carbs < 10.0) {
        eCarbs -= t.carbs;
        t.isECarb = true;
      }

      var idx = days.indexWhere((d) => d.isSameDay(t.createdAt.toLocal()));
      if (idx >= 0) days[idx].treatments.add(t);

      if (!data.isInPeriod(t.createdAt)) continue;

      khCount += t.carbs;
      ieBolusSum += t.bolusInsulin;
      ieMicroBolusSum += t.microbolus; // / 3600 * t.duration;
    }
    ieBasalSum = 0.0;
    for (var i = 1; i < days.length; i++) {
      var day = days[i];
      day.prevDay = i > 0 ? days[i - 1] : null;
      day.init(i < days.length - 1 ? days[i + 1] : null);
      ieBasalSum += day.ieBasalSum;
      day.devicestatusList.clear();
      day.devicestatusList.addAll(devicestatusList.where((ds) => day.isSameDay(ds.createdAt.toLocal())));
    }
    // the last day before the period was added at the beginning. Now it has to be removed.
    if (days.isNotEmpty && days[0].date.isBefore(data.begDate)) days.removeAt(0);
  }
}

class ReportData {
  Error error;
  Date begDate;
  Date endDate;
  int dayCount = -1;
  List<ProfileData> profiles = <ProfileData>[];
  UserData user;
  ListData ns = ListData();
  ListData calc = ListData();
  List<InsulinData> insulinProfiles = null;

  ListData get data => globals == null ? calc : globals.isDataSmoothing ? calc : ns;
  StatusData status;
  Globals globals;
  bool isForThumbs = false;

  bool isInPeriod(DateTime check) {
    if (check.isBefore(DateTime(begDate.year, begDate.month, begDate.day))) return false;
    return check.isBefore(DateTime(endDate.year, endDate.month, endDate.day + 1));
  }

  // get profile for a specific time
  ProfileGlucData profile(DateTime time, [List<TreatmentData> treatments, bool doMix = true]) {
//    DateTime check = DateTime(time.year, time.month, time.day);
    var ret = ProfileGlucData(ProfileStoreData('${time.toIso8601String()}'));
    ProfileData profile;
    var idx = -1;
    // find last profile that starts before the given time
    for (var i = 0; i < profiles.length; i++) {
      if (profiles[i].startDate.difference(time).inSeconds <= 0) idx = i;
    }

    if (idx >= 0) {
      profile = profiles[idx].copy;
      idx++;
      // mix following profiles in
      while (idx < profiles.length && doMix) {
        var d = profiles[idx].startDate;
        // only profiles with same day as requested
        if (d.year == time.year && d.month == time.month && d.day == time.day) profile.mixWith(profiles[idx]);
        idx++;
      }
      if (treatments != null) {
        for (var t in treatments) {
          if (t.createdAt.year == time.year && t.createdAt.month == time.month && t.createdAt.day == time.day) {
            profile.includeTreatment(t);
          }
        }
      }
    } else {
      ret.targetHigh = 180.0;
      ret.targetLow = 70.0;
    }

    if (profile != null) {
      var date = Date(time.year, time.month, time.day);
      ret = ProfileGlucData(profile.current);
      ret.basal = ret.find(date, time, ret.store.listBasal);
      ret.carbRatio = ret.find(date, time, ret.store.listCarbratio);
      ret.sens = ret.find(date, time, ret.store.listSens);
      ret.targetHigh = status.settings.thresholds.bgTargetTop.toDouble();
      ret.targetLow = status.settings.thresholds.bgTargetBottom.toDouble();
      for (var data in profile.store.values) {
        data.adjustDurations();
      }
    }

    return ret;
  }

  double targetValue(DateTime time) {
    var profile = this.profile(time);
    var date = Date(time.year, time.month, time.day);
    var high = 180.0;
    if (profile.store.listTargetHigh.isNotEmpty) {
      for (var i = profile.store.listTargetHigh.length - 1; i >= 0; i--) {
        var tgt = profile.store.listTargetHigh[i];
        if (tgt.time(date).millisecondsSinceEpoch < time.millisecondsSinceEpoch) {
          high = tgt.value;
          break;
        }
      }
    }
    var low = 70.0;
    if (profile.store.listTargetLow.isNotEmpty) {
      for (var i = profile.store.listTargetLow.length - 1; i >= 0; i--) {
        var tgt = profile.store.listTargetLow[i];
        if (tgt.time(date).millisecondsSinceEpoch < time.millisecondsSinceEpoch) {
          low = tgt.value;
          break;
        }
      }
    }
    return (high + low) / 2;
  }

  ReportData(this.globals, this.begDate, this.endDate);
}

class InsulinData extends JsonData {
  dynamic raw;
  String _id;
  String displayName;
  String name;
  List<String> pharmacyProductNumber;
  bool enabled;
  String type;
  List<double> IOB1Min;

  InsulinData();

  factory InsulinData.fromJson(Map<String, dynamic> json) {
    var ret = InsulinData();
    ret.raw = json;
    if (json == null) return ret;
    ret._id = JsonData.toText(json['_id']);
    ret.name = JsonData.toText(json['name']);
    ret.displayName = JsonData.toText(json['displayName']);
    ret.enabled = (JsonData.toText(json['enabled']) == "true" ? true : false);
    ret.type = JsonData.toText(json['type']);
    ret.pharmacyProductNumber = List<String>();
    for (dynamic entry in json['pharmacyProductNumber']) {
      ret.pharmacyProductNumber.add(JsonData.toText(entry));
    }
    ret.IOB1Min = List<double>();
    for (dynamic entry in json['IOB1Min']) {
      ret.IOB1Min.add(JsonData.toDouble(entry));
    }
    return ret;
  }
}
