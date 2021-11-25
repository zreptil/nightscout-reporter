import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/json_data.dart';

import 'base-print.dart';

class CalcData {
  double firstGluc = 0.0;
  int firstTime = 0;
  int lastTime = 0;
  int bolusTime = 0;
  int glucMax = 0;
  int brBolusTime;
  DateTime endDate;
  List<ProfileEntryData> nextBRTimes = <ProfileEntryData>[];
}

abstract class BaseProfile extends BasePrint {
  bool onlyLast;

  String msgProfileSwitch(String oldName, String newName) =>
      Intl.message('Profilwechsel - ${oldName} => ${newName}',
          args: [oldName, newName], name: 'msgProfileSwitch');

  String msgProfileSwitchDuration(
          String oldName, String newName, int duration) =>
      Intl.message(
          'Profilwechsel - ${oldName} => ${newName} für ${duration} Minuten',
          args: [oldName, newName, duration],
          name: 'msgProfileSwitchDuration');

  String msgChangedEntry(String name, String from, String to) =>
      Intl.message('${name} ${from} => ${to}',
          args: [name, from, to], name: 'msgChangedEntry');

  String get msgNoChange => Intl.message('Keine Änderung');

  @override
  List<ParamInfo> params = <ParamInfo>[];

  @override
  bool get isPortrait => false;

  bool mayShowBothUnits = true;

  BaseProfile({suffix = null}) {
    init(suffix);
  }

  @override
  bool hasData(ReportData src) {
    return src.profiles.isNotEmpty;
  }

  DateTime profStartTime;
  DateTime profEndTime;

  @override
  void fillPages(List<Page> pages) {
/*
    List<String> dbg = List<String>();
    for(ProfileData p in src.profiles)
      dbg.add("${fmtDateTime(p.startDate)} - ${p.duration}");
*/
    var startDate = DateTime(
        repData.begDate.year, repData.begDate.month, repData.begDate.day);
    var endDate = DateTime(
        repData.endDate.year, repData.endDate.month, repData.endDate.day + 1);
    var profiles = repData.profiles;
    var _alreadyDone = <String>[];
    var pageList = <Page>[];
    var lastIdx = -1;
    for (var i = 0; i < repData.profiles.length; i++) {
      profEndTime;
      profStartTime = repData.profiles[i].startDate;
      if (i < repData.profiles.length - 1) {
        profEndTime =
            repData.profiles[i + 1].startDate.add(Duration(minutes: -1));
      } else {
        profEndTime = null;
      }
      // if profileendtime is before reportstartdate then skip profile
      if (profEndTime != null && profEndTime.isBefore(startDate)) continue;
      // if profilestarttime is after reportenddate then skip profile
      if (profStartTime.isAfter(endDate)) continue;

      var done = false;
      var calc = CalcData();
      if (i < repData.profiles.length - 1) {
        calc.nextBRTimes = repData.profiles[i + 1].current.listBasal;
        calc.endDate =
            repData.profiles[i + 1].startDate.add(Duration(days: -1));
        if (startDate.difference(repData.profiles[i + 1].startDate).inHours >=
            0) continue;
      } else {
        calc.nextBRTimes = repData.profiles[i].current.listBasal;
        calc.endDate = null;
      }

      var hash = repData.profiles[i].current.hash;
      if (_alreadyDone.contains(hash)) {
        continue;
      }
      _alreadyDone.add(hash);

      lastIdx = pageList.length;
      for (var p = 0; !done; p++) {
        var page = getPage(
            p, repData.profile(profiles[i].startDate, null, false), calc);
        done = page == null;
        if (!done) {
          pageList.add(page);
          if (g.showBothUnits && mayShowBothUnits) {
            g.glucMGDLIdx = 1;
            pageList.add(getPage(
                p, repData.profile(profiles[i].startDate, null, false), calc));
            g.glucMGDLIdx = 2;
          }
        }
      }
    }

    if ((onlyLast || repData.isForThumbs) && pageList.isNotEmpty)
      pageList.removeRange(0, lastIdx);

    pages.addAll(pageList);
  }

  bool get isSingleDay =>
      profEndTime != null && profEndTime.difference(profStartTime).inHours < 24;

  bool isSingleDayRange(DateTime startTime, DateTime endTime) {
    if (startTime.isAfter(profEndTime)) {
      return false;
    } else if (endTime.isBefore(profStartTime)) {
      return false;
    }
    return true;
  }

  String getProfileSwitch(
      ReportData src, DayData day, TreatmentData t, bool showDetails) {
    var ret = <String>[];
    var before = src.profile(t.createdAt.add(Duration(days: -1)));
    var current = src.profile(t.createdAt);
    if (t.duration > 0) {
      ret.add(msgProfileSwitchDuration(
          before.store.name, current.store.name, t.duration ~/ 60));
    } else {
      ret.add(msgProfileSwitch(before.store.name, current.store.name));
    }

    if (!showDetails) return ret.join('\n');

    if (before.store.dia != current.store.dia) {
      ret.add(msgChangedEntry(
          msgDIA,
          '${g.fmtNumber(before.store.dia, 2)} ${msgDIAUnit}',
          '${g.fmtNumber(current.store.dia, 2)} ${msgDIAUnit}'));
    }
    if (before.store.carbsHr != current.store.carbsHr) {
      ret.add(msgChangedEntry(
          msgKHA,
          '${g.fmtNumber(before.store.carbsHr)} ${msgKHAUnit}',
          '${g.fmtNumber(current.store.carbsHr)} ${msgKHAUnit}'));
    }

    var temp = <String>[];
    temp.add(msgTargetTitle);
    if (current.store.listTargetHigh.length ==
        current.store.listTargetLow.length) {
      for (var i = 0; i < current.store.listTargetHigh.length; i++) {
        var currHigh = current.store.listTargetHigh[i];
        var currLow = current.store.listTargetLow[i];
        var highTime = currHigh.time(day.date);
        var lowTime = currLow.time(day.date);
        if (highTime != lowTime) continue;
        var lowChanged = false;
        var highChanged = false;

        double oldLow;
        double oldHigh;
        var idx = before.store.listTargetLow
            .indexWhere((entry) => entry.time(day.date) == lowTime);
        if (idx < 0) {
          lowChanged = true;
        } else {
          lowChanged = before.store.listTargetLow[idx].value != currLow.value;
        }
        if (lowChanged && idx >= 0)
          oldLow = before.store.listTargetLow[idx].value;
        idx = before.store.listTargetHigh
            .indexWhere((entry) => entry.time(day.date) == highTime);
        if (idx < 0) {
          highChanged = true;
        } else {
          highChanged =
              before.store.listTargetHigh[idx].value != currHigh.value;
        }
        if (highChanged && idx >= 0)
          oldHigh = before.store.listTargetHigh[idx].value;
        if (lowChanged || highChanged) {
          if (oldLow == null || oldHigh == null) {
            temp.add(
                'ab ${fmtTime(highTime, withUnit: true)} neuer Bereich ${g.fmtBasal(currLow.value)} - '
                '${g.fmtBasal(currHigh.value)}');
          } else {
            temp.add(
                'ab ${fmtTime(highTime, withUnit: true)} ${oldLow} - ${g.fmtBasal(oldHigh)} => '
                '${currLow.value} - ${g.fmtBasal(currHigh.value)}');
          }
        }
      }
      if (temp.length > 1) ret.addAll(temp);

      getProfileEntriesChanged(ret, day, msgBasalTitle, current.store.listBasal,
          before.store.listBasal);
      getProfileEntriesChanged(
          ret, day, msgISFTitle, current.store.listSens, before.store.listSens);
      getProfileEntriesChanged(ret, day, msgICRTitle,
          current.store.listCarbratio, before.store.listCarbratio);
    }

    if (ret.length == 1) ret.add(msgNoChange);

    return ret.join('\n');
  }

  void getProfileEntriesChanged(List<String> list, DayData day, String title,
      List<ProfileEntryData> current, List<ProfileEntryData> before) {
    var ret = <String>[];
    for (var i = 0; i < current.length; i++) {
      var entry = current[i];
      var time = current[i].time(day.date);
      var old = before.firstWhere((entry) => entry.time(day.date) == time,
          orElse: () => null);
      var hasChanged = false;
      if (old == null) {
        hasChanged = true;
      } else if (old.value != entry.value) hasChanged = true;
      if (hasChanged) {
        if (old == null) {
          ret.add(
              'ab ${fmtTime(time, withUnit: true)}: neuer Wert ${g.fmtBasal(entry?.value)}');
        } else if (entry == null) {
          ret.add(
              'ab ${fmtTime(time, withUnit: true)}: ${g.fmtBasal(old.value)} gelöscht');
        } else {
          ret.add(
              'ab ${fmtTime(time, withUnit: true)}: ${g.fmtBasal(old.value)} => ${g.fmtBasal(entry.value)}');
        }
      }
    }
    if (ret.isNotEmpty) {
      list.add(title);
      list.addAll(ret);
    }
  }

  Page getPage(int page, ProfileGlucData profile, CalcData calc);
}
