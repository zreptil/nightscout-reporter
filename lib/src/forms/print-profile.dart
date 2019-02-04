import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';

class PrintProfile extends BasePrint
{
  bool compressSameValues;

  @override
  List<ParamInfo> params = [ParamInfo(0, msgParam1, boolValue: true),
  ];

  @override
  prepareData_(ReportData data)
  {
    compressSameValues = params[0].boolValue;
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
  => Intl.message("Zeilen mit gleichen Werten zusammenfassen");

  double _fontSize = 10;
  bool _hasFactors = false;

  getFactorBody(int page, Date date, List<ProfileEntryData> list, msg(String a, String b), {int precision: 1})
  {
    int currPage = 0;
    int pageEntries = 0;
    int pageSize = 24;
    if (page * pageSize >= list.length) return [ [
      {"text": "", "style": "infotitle", "fontSize": fs(_fontSize)},
      {"text": "", "style": "infodata", "fontSize": fs(_fontSize)},
    ]
    ];

    dynamic ret = [];
    DateTime startTime = null;
    for (int i = 0; i < list.length; i++)
    {
      ProfileEntryData entry = list[i];
      DateTime end = DateTime(date.year, date.month, date.day, 23, 59);
      startTime ??= entry.time(date);
      if (i < list.length - 1)
      {
        end = list[i + 1].time(date);

        if (compressSameValues)
        {
          if (entry.forceText != null)
          {
            if (entry.forceText == list[i + 1].forceText)continue;
          }
          else if (entry.value == list[i + 1].value)
          {
            continue;
          }
        }
      }
      if (currPage == page)
      {
        ret.add([
          {
            "text": msg(fmtTime(startTime, withUnit: true), fmtTime(end, withUnit: true)),
            "style": "infotitle",
            "fontSize": fs(_fontSize)
          },
          {
            "text": entry.forceText ?? fmtNumber(entry.value, precision, false),
            "style": "infodata",
            "fontSize": fs(_fontSize)
          },
        ]);
        _hasFactors = true;
      }
      pageEntries++;
      if (pageEntries >= pageSize)
      {
        currPage++;
        pageEntries = 0;
      }
      startTime = null;
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


      bool done = false;
      for (int p = 0; !done; p++)
      {
        dynamic page = getPage(p, src.profile(profiles[i].startDate), profStartDate, profEndDate);
        done = page == null;
        if (!done)pages.add(page);
      }
    }
  }

  getPage(int page, ProfileGlucData profile, DateTime startDate, DateTime endDate)
  {
    titleInfo = titleInfoForDates(startDate, endDate);
    dynamic tableBody = [
      [
        {"text": msgDIA, "style": "infotitle"},
        {"text": fmtNumber(profile.store.dia, 2, false), "style": "infodata"},
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
    _hasFactors = false;
    dynamic icrIsfBody = [];
    Date date = g.date(startDate);
    dynamic bodyICR = getFactorBody(page, date, profile.store.listCarbratio, msgFactorEntry);
    List<ProfileEntryData> listISF = List<ProfileEntryData>();
    for (ProfileEntryData entry in profile.store.listSens)
    {
      listISF.add(entry.copy);
      listISF.last.forceText = fmtGluc(entry.value);
    }
    dynamic bodyISF = getFactorBody(page, date, listISF, msgFactorEntry);

    dynamic basalTargetBody = [];
    dynamic bodyBasal = getFactorBody(page, date, profile.store.listBasal, msgFactorEntry, precision: 1);
    List<ProfileEntryData> listTarget = List<ProfileEntryData>();
    if (profile.store.listTargetHigh.length == profile.store.listTargetLow.length)
    {
      for (int i = 0; i < profile.store.listTargetHigh.length; i++)
      {
        ProfileEntryData high = profile.store.listTargetHigh[i];
        ProfileEntryData low = profile.store.listTargetLow[i];
        if (high.time(date) != low.time(date))continue;
        ProfileEntryData entry = ProfileEntryData(profile.store.timezone, high.time(date));
        entry.forceText = "${fmtGluc(low.value)} - ${fmtGluc(high.value)}";
        listTarget.add(entry);
      }
    }
    dynamic bodyTarget = getFactorBody(page, date, listTarget, msgFactorEntry);
    if (!_hasFactors)return null;

    basalTargetBody.add([
      {"text": msgBasalProfile, "fontSize": fs(8), "color": "#606060", "alignment": "center"},
      {"text": msgTarget(getGlucInfo()["unit"]), "fontSize": fs(8), "color": "#606060", "alignment": "center"}
    ]);

    _fontSize = 9;

    icrIsfBody.add([
      {"text": msgICR, "fontSize": fs(8), "color": "#606060", "alignment": "center"},
      {"text": msgISF(getGlucInfo()["unit"]), "fontSize": fs(8), "color": "#606060", "alignment": "center"}
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