import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';

class PrintProfile extends BasePrint
{
  bool isPrecise;
  int get _precision
  => isPrecise ? 2 : 1;

  @override
  List<ParamInfo> params = [ParamInfo(0, msgParam1, boolValue: false),
  ];

  @override
  prepareData_(ReportData data)
  {
    isPrecise = params[0].boolValue;
    return data;
  }

  @override
  String id = "profile";

  @override
  String name = Intl.message("Profil");

  @override
  String title = Intl.message("Profil");

  @override
  bool get isPortrait
  => false;

  PrintProfile()
  {
    init();
  }

  static String get msgParam1
  => Intl.message("Basalrate mit zwei Nachkommastellen");

  double _fontSize = 10;

  getFactorBody(Date date, List<ProfileEntryData> list, msg(String a, String b), {int precision: 1})
  {
    dynamic ret = [];
    for (int i = 0; i < list.length; i++)
    {
      ProfileEntryData entry = list[i];
      DateTime end = DateTime(date.year, date.month, date.day, 23, 59);
      if (i < list.length - 1)end = list[i + 1].time(date);
      ret.add([
        {
          "text": msg(fmtTime(entry.time(date), withUnit: true), fmtTime(end, withUnit: true)),
          "style": "infotitle",
          "fontSize": fs(_fontSize)
        },
        {
          "text": entry.forceText ?? fmtNumber(entry.value, precision, false),
          "style": "infodata",
          "fontSize": fs(_fontSize)
        },
      ]);
    }
    return ret;
  }

  @override
  void fillPages(ReportData src, List<List<dynamic>> pages)
  {
    titleInfo = titleInfoBegEnd(src);
    DateTime startDate = DateTime(src.begDate.year, src.begDate.month, src.begDate.day);
    DateTime endDate = DateTime(src.endDate.year, src.endDate.month, src.endDate.day);
    List<ProfileData> profiles = src.profiles;
    for (int i = 0; i < src.profiles.length; i++)
    {
      DateTime profEndDate;
      DateTime profStartDate = src.profiles[i].startDate;
      if (i < src.profiles.length - 1)
      {
        profEndDate = src.profiles[i + 1].startDate.add(Duration(days: -1));
        if (startDate
              .difference(src.profiles[i + 1].startDate)
              .inDays >= 0)continue;
      }
      else
      {
        profEndDate = null;
      }
      if (endDate
            .difference(profiles[i].startDate)
            .inDays < 0)continue;

      pages.add(getPage(src.profile(profiles[i].startDate), profStartDate, profEndDate));
    }
  }

  getPage(ProfileGlucData profile, DateTime startDate, DateTime endDate)
  {
    titleInfo = titleInfoForDates(startDate, endDate);
    dynamic tableBody = [
      [
        {"text": msgDIA, "style": "infotitle"},
        {"text": fmtNumber(profile.store.dia, 0, false), "style": "infodata"},
        {"text": msgDIAUnit, "style": "infounit"},
      ],
      [
        {"text": msgKHA, "style": "infotitle"},
        {"text": fmtNumber(profile.store.carbsHr, 0, false), "style": "infodata"},
        {"text": msgKHAUnit, "style": "infounit"},
      ],
    ];
/*
    tableBody.add([ {
      "canvas": [ {"type": "line", "x1": cm(0), "y1": cm(0.2), "x2": cm(13.5), "y2": cm(0.2), "lineWidth": cm(0.01)}],
      "colSpan": 5
    }
    ]);
// */
    dynamic icrIsfBody = [];
    Date date = g.date(startDate);
    dynamic bodyICR = getFactorBody(date, profile.store.listCarbratio, msgFactorEntry);
    dynamic bodyISF = getFactorBody(date, profile.store.listSens, msgFactorEntry);

    dynamic basalTargetBody = [];
    dynamic bodyBasal = getFactorBody(date, profile.store.listBasal, msgFactorEntry, precision: _precision);
    List<ProfileEntryData> listTarget = List<ProfileEntryData>();
    if (profile.store.listTargetHigh.length == profile.store.listTargetLow.length)
    {
      for (int i = 0; i < profile.store.listTargetHigh.length; i++)
      {
        ProfileEntryData high = profile.store.listTargetHigh[i];
        ProfileEntryData low = profile.store.listTargetLow[i];
        if (high.time(date) != low.time(date))continue;
        ProfileEntryData entry = ProfileEntryData(profile.store.timezone, high.time(date));
        entry.forceText = "${fmtNumber(low.value, 0)} - ${fmtNumber(high.value, 0)}";
        listTarget.add(entry);
      }
    }
    dynamic bodyTarget = getFactorBody(date, listTarget, msgFactorEntry);
    basalTargetBody.add([
      {"text": msgBasalProfile, "fontSize": fs(8), "color": "#606060", "alignment": "center"},
      {"text": msgTarget(getGlucInfo()["unit"]), "fontSize": fs(8), "color": "#606060", "alignment": "center"}
    ]);

    _fontSize = 9;

    icrIsfBody.add([
      {"text": msgICR, "fontSize": fs(8), "color": "#606060", "alignment": "center"},
      {"text": msgISF, "fontSize": fs(8), "color": "#606060", "alignment": "center"}
    ]);

    icrIsfBody.add([
      {
        "margin": [cm(1.0), cm(0)],
        "layout": "noBorders",
        "table": {"headerRows": 0, "widths": [cm(3.4), cm(1.2)], "body": bodyICR}
      },
      {
        "margin": [cm(1.0), cm(0)],
        "layout": "noBorders",
        "table": {"headerRows": 0, "widths": [cm(3.9), cm(1.2)], "body": bodyISF}
      }
    ]);

    basalTargetBody.add([
      {
        "margin": [cm(1.0), cm(0)],
        "layout": "noBorders",
        "table": {"headerRows": 0, "widths": [cm(3.4), cm(1.2)], "body": bodyBasal}
      },
      {
        "margin": [cm(1.0), cm(0)],
        "layout": "noBorders",
        "table": {"headerRows": 0, "widths": [cm(3.4), cm(2.2)], "body": bodyTarget}
      }
    ]);

    double colWidth = (width - 4.4) / 4;
    var ret = [
      headerFooter(),
      {
        "margin": [cm(11), cm(yorg - 0.5), cm(0), cm(0)],
        "layout": "noBorders",
        "table": {"headerRows": 0, "widths": [cm(5.2), cm(1.0), cm(1.5)], "body": tableBody}
      },
      {
        "margin": [cm(1.2), cm(0.2), cm(0), cm(0)],
        "layout": "noBorders",
        "table": {
          "headerRows": 0,
          "widths": [cm(2 * colWidth), cm(2 * colWidth)],
          "body": [ [
            {
              "margin": [cm(0), cm(0), cm(0), cm(0)],
              "layout": "noBorders",
              "table": {"headerRows": 1, "widths": [cm(colWidth), cm(colWidth)], "body": icrIsfBody}
            },
            {
              "margin": [cm(0), cm(0), cm(0), cm(0)],
              "layout": "noBorders",
              "table": {"headerRows": 1, "widths": [cm(colWidth), cm(colWidth)], "body": basalTargetBody}
            }
          ]
          ]
        }
      }
    ];
    return ret;
  }
}