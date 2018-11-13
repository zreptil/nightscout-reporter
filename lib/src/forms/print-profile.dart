import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';

class PrintProfile extends BasePrint
{
  bool isPrecise;
  int get _precision => isPrecise ? 2 : 1;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, msgParam1, boolValue: false),
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
  => true;

  PrintProfile()
  {
    init();
  }

  static String get msgParam1
  => Intl.message("Zwei Nachkommastellen");
  get msgICR
  => Intl.message("Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE");
  get msgISF
  => Intl.message("Insulin Sensitivitäts Faktoren (ISF)\n1 IE senkt BG um X mg/dl");
  get msgBasal
  => Intl.message("Basalrate\nIE / Stunde");
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
  get msgKHAUnit
  => Intl.message("g / Stunde");

  getFactorBody(List<ProfileEntryData> list, msg(String a, String b), {int precision: 1})
  {
    dynamic ret = [];
    for (int i = 0; i < list.length; i++)
    {
      ProfileEntryData entry = list[i];
      DateTime end = DateTime(0, 1, 1, 23, 59);
      if (i < list.length - 1)end = list[i + 1].time;
      ret.add([
        {"text": msg(fmtTime(entry.time, withUnit: true), fmtTime(end, withUnit: true)), "style": "infotitle"},
        {"text": entry.forceText ?? fmtNumber(entry.value, precision, false), "style": "infodata"},
      ]);
    }
    return ret;
  }

  @override
  getFormData_(ReportData src)
  {
    titleInfo = titleInfoBegEnd(src);
    var ret = [];
    var data = src.ns;
    DateTime startDate = DateTime(src.begDate.year, src.begDate.month, src.begDate.day);
    DateTime endDate = DateTime(src.endDate.year, src.endDate.month, src.endDate.day);
    List<ProfileData> profiles = src.profiles;
    for (int i = 0; i < src.profiles.length; i++)
    {
//      calc = calcDay(src.profiles[i], calc);
      DateTime profEndDate;
      DateTime profStartDate = src.profiles[i].startDate;
//*
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
// */
      if (endDate
        .difference(profiles[i].startDate)
        .inDays < 0)continue;

      var page = getPage(src.profile(profiles[i].startDate), profStartDate, profEndDate);
      if (ret.length > 0)ret.last["pageBreak"] = "after";
      for (var j = 0; j < page.length; j++)
        ret.add(page[j]);

//      ret.add(getFooter(true, i < profiles.length - 1));
//      calc.firstTime -= 24 * 60;
//      calc.bolusTime -= 24 * 60;
//      if(calc.brBolusTime)
//        calc.brBolusTime -= 24*60;
    }
    return ret;
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
    dynamic bodyICR = getFactorBody(profile.store.listCarbratio, msgFactorEntry);
    dynamic bodyISF = getFactorBody(profile.store.listSens, msgFactorEntry);

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

    dynamic basalTargetBody = [];
    dynamic bodyBasal = getFactorBody(profile.store.listBasal, msgFactorEntry, precision: _precision);
    List<ProfileEntryData> listTarget = List<ProfileEntryData>();
    if(profile.store.listTargetHigh.length == profile.store.listTargetLow.length)
      {
        for(int i=0; i<profile.store.listTargetHigh.length; i++)
        {
          ProfileEntryData high = profile.store.listTargetHigh[i];
          ProfileEntryData low = profile.store.listTargetLow[i];
          if(high.time != low.time)
            continue;
          ProfileEntryData entry = ProfileEntryData();
          entry.time = high.time;
          entry.forceText = "${fmtNumber(low.value,0)} - ${fmtNumber(high.value,0)}";
          listTarget.add(entry);
        }
      }
    dynamic bodyTarget = getFactorBody(listTarget, msgFactorEntry);
    basalTargetBody.add([
      {"text": msgBasal, "fontSize": fs(8), "color": "#606060", "alignment": "center"},
      {"text": msgTarget(getGlucInfo()["unit"]), "fontSize": fs(8), "color": "#606060", "alignment": "center"}
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

    var ret = [
      header,
      {
        "margin": [cmx(6.3), cm(3.0), cm(0), cm(0)],
        "layout": "noBorders",
        "table": {"headerRows": 0, "widths": [cm(5.2), cm(0.2), cm(1.5)], "body": tableBody}
      },
      {
        "margin": [cmx(3.7), cmy(0.5), cm(0), cm(0)],
        "layout": "noBorders",
        "table": {"headerRows": 1, "widths": [cm(6.8), cm(6.8)], "body": icrIsfBody}
      },
      {
        "margin": [cmx(3.7), cmy(0.5), cm(0), cm(0)],
        "layout": "noBorders",
        "table": {"headerRows": 1, "widths": [cm(6.8), cm(6.8)], "body": basalTargetBody}
      },
      footer(),
    ];
    return ret;
  }
}