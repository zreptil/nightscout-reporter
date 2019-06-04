import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';
import 'base-profile.dart';

class PrintProfile extends BaseProfile
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
  String title = Intl.message("Profil");

  PrintProfile() : super()
  {
  }

  static String get msgParam1
  => Intl.message("Zeilen mit gleichen Werten zusammenfassen");

  double _fontSize = 10;
  bool _hasFactors = false;

  @override
  hasData(ReportData src)
  {
    return src.profiles.length > 0;
  }

  getFactorBody(int page, Date date, List<ProfileEntryData> list, msg(String a, String b), {int precision: 1})
  {
    int currPage = 0;
    int pageEntries = 0;
    int pageSize = 24;
    if (page * pageSize >= list.length) return [
      [
        {"text": "", "style": "infotitle", "fontSize": fs(_fontSize)},
        {"text": "", "style": "infodata", "fontSize": fs(_fontSize)},
      ]
    ];

    dynamic ret = [];
    DateTime startTime = null;
    for (int i = 0; i < list.length; i++)
    {
      ProfileEntryData entry = list[i];
      DateTime endTime = DateTime(date.year, date.month, date.day, 23, 59);
      startTime ??= entry.time(date);
      if (i < list.length - 1)
      {
        endTime = list[i + 1].time(date);

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
      bool showValue = true;
//      if (isSingleDay)
//        showValue = isSingleDayRange(startTime, endTime);

      if (showValue && currPage == page)
      {
        ret.add([
          {
            "text": msg(fmtTime(startTime, withUnit: true), fmtTime(endTime, withUnit: true)),
            "style": "infotitle",
            "fontSize": fs(_fontSize)
          },
          {
            "text": entry.forceText ?? g.fmtNumber(entry.value, precision, false),
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
  dynamic getPage(int page, ProfileGlucData profile, CalcData calc)
  {
    _fontSize = 10;
    subtitle = profile.store.name;
    titleInfo = "";//titleInfoTimeRange(profStartTime, profEndTime);

    dynamic tableBody = [
      [
        {"text": msgDIA, "style": "infotitle", "alignment": "right"},
        {"text": g.fmtNumber(profile.store.dia, 2, false), "style": "infodata"},
        {"text": msgDIAUnit, "style": "infounit"},
        {"text": msgTimezone, "style": "infotitle", "alignment": "right"},
        {"text": profile.store.timezone.name, "style": "infodata", "alignment": "left"},
      ],
      [
        {"text": msgKHA, "style": "infotitle", "alignment": "right"},
        {"text": g.fmtNumber(profile.store.carbsHr, 0, false), "style": "infodata"},
        {"text": msgKHAUnit, "style": "infounit", "colSpan": 3},
      ],
    ];
    _hasFactors = false;
    dynamic icrIsfBody = [];
    Date date = g.date(profStartTime);
    dynamic bodyICR = getFactorBody(page, date, profile.store.listCarbratio, msgFactorEntry);
    List<ProfileEntryData> listISF = List<ProfileEntryData>();
    for (ProfileEntryData entry in profile.store.listSens)
    {
      listISF.add(entry.copy);
      listISF.last.forceText = fmtGluc(entry.value);
    }
    dynamic bodyISF = getFactorBody(page, date, listISF, msgFactorEntry);

    dynamic basalTargetBody = [];
    dynamic bodyBasal = getFactorBody(page, date, profile.store.listBasal, msgFactorEntry, precision: g.basalPrecision);
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
        "table": {"headerRows": 0, "widths": [cm(3.8), cm(1.0)], "body": bodyICR}
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
        "table": {"headerRows": 0, "widths": [cm(3.8), cm(1.0)], "body": bodyBasal}
      },
      {
        "margin": [cm(0.5), cm(0)],
        "layout": "noBorders",
        "table": {"headerRows": 0, "widths": [cm(3.7), cm(2.1)], "body": bodyTarget}
      }
    ]);

    double colWidth = (width - 4.4) / 4;
    var ret = [
      headerFooter(),
      {
        "margin": [cm(8), cm(yorg - 0.5), cm(0), cm(0)],
        "layout": "noBorders",
        "table": {"headerRows": 0, "widths": [cm(6.6), cm(1.0), cm(1.8), cm(2.0), cm(4.0)], "body": tableBody}
      },
      {
        "margin": [cm(1.2), cm(0.2), cm(0), cm(0)],
        "layout": "noBorders",
        "table": {
          "headerRows": 0,
          "widths": [cm(2 * colWidth), cm(2 * colWidth)],
          "body": [
            [
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