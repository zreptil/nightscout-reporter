import 'dart:math';

import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';

class CalcData
{
  double firstGluc = 0.0;
  int firstTime = 0;
  int lastTime = 0;
  int bolusTime = 0;
  int glucMax = 0;
  int brBolusTime = null;
  DateTime endDate = null;
  List<ProfileEntryData> nextBRTimes = List<ProfileEntryData>();
}

abstract class BaseProfile extends BasePrint
{
  @override
  List<ParamInfo> params = List<ParamInfo>();

  @override
  prepareData_(ReportData data)
  {
    return data;
  }

  @override
  bool get isPortrait
  => false;

  BaseProfile()
  {
    init();
  }

  @override
  hasData(ReportData src)
  {
    return src.profiles.length > 0;
  }

  DateTime profStartTime;
  DateTime profEndTime;

  @override
  void fillPages(ReportData src, List<List<dynamic>> pages)
  {
/*
    List<String> dbg = List<String>();
    for(ProfileData p in src.profiles)
      dbg.add("${fmtDateTime(p.startDate)} - ${p.duration}");
*/
    DateTime startDate = DateTime(src.begDate.year, src.begDate.month, src.begDate.day);
    DateTime endDate = DateTime(src.endDate.year, src.endDate.month, src.endDate.day + 1);
    List<ProfileData> profiles = src.profiles;
    for (int i = 0; i < src.profiles.length; i++)
    {
      profEndTime;
      profStartTime = src.profiles[i].startDate;
      if (i < src.profiles.length - 1)
      {
        profEndTime = src.profiles[i + 1].startDate.add(Duration(minutes: -1));
      }
      else
      {
        profEndTime = null;
      }
      // if profileendtime is before reportstartdate then skip profile
      if (profEndTime != null && profEndTime.isBefore(startDate))continue;
      // if profilestarttime is after reportenddate then skip profile
      if (profStartTime.isAfter(endDate))continue;

      bool done = false;
      CalcData calc = CalcData();
      if (i < src.profiles.length - 1)
      {
        calc.nextBRTimes = src.profiles[i + 1].current.listBasal;
        calc.endDate = src.profiles[i + 1].startDate.add(Duration(days: -1));
        if (startDate
              .difference(src.profiles[i + 1].startDate)
              .inDays >= 0)continue;
      }
      else
      {
        calc.nextBRTimes = src.profiles[i].current.listBasal;
        calc.endDate = null;
      }

      for (int p = 0; !done; p++)
      {
        dynamic page = getPage(p, src.profile(profiles[i].startDate), calc);
        done = page == null;
        if (!done)pages.add(page);
      }
    }
  }

  bool get isSingleDay
  =>
    profEndTime != null && profEndTime
                             .difference(profStartTime)
                             .inHours < 24;

  bool isSingleDayRange(DateTime startTime, DateTime endTime)
  {
    if (startTime.isAfter(profEndTime))return false;
    else if (endTime.isBefore(profStartTime))return false;
    return true;
  }

  dynamic getPage(int page, ProfileGlucData profile, CalcData calc);
}