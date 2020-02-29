import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';
import 'base-profile.dart';

class PrintProfile extends BaseProfile {
  bool compressSameValues;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, msgParam1, boolValue: true),
    ParamInfo(1, msgParam2, boolValue: false),
  ];

  @override
  extractParams() {
    compressSameValues = params[0].boolValue;
    onlyLast = params[1].boolValue;
  }

  @override
  dynamic get estimatePageCount => {"count": 1, "isEstimated": true};

  @override
  String id = "profile";

  @override
  String get title => Intl.message("Profil");

  PrintProfile() : super() {}

  static String get msgParam1 => Intl.message("Zeilen mit gleichen Werten zusammenfassen");

  static String get msgParam2 => Intl.message("Nur letztes Profil ausgeben");

  double _fontSize = 10;
  double _fontSizeTables = 8;
  bool _hasFactors = false;

  @override
  hasData(ReportData src) {
    return src.profiles.length > 0;
  }

  getFactorBody(int page, Date date, List<ProfileEntryData> list, msg(String a, String b),
      {int precision: 1, double sum: null, String sumTitle: null}) {
    int currPage = 0;
    int pageEntries = 0;
    int pageSize = 27;
    if (page * pageSize >= list.length)
      return [
        [
          {"text": "", "style": "infotitle", "fontSize": fs(_fontSize)},
          {"text": "", "style": "infodata", "fontSize": fs(_fontSize)},
        ]
      ];

    dynamic ret = [];
    DateTime startTime = null;
    if (currPage == page && sum != null && sumTitle != null) {
      ret.add([
        {"text": sumTitle, "style": "infotitle", "fontSize": fs(_fontSize), "bold": true},
        {"text": g.fmtNumber(sum, precision, 0), "style": "infodata", "fontSize": fs(_fontSize), "bold": true},
      ]);
      _hasFactors = true;
    }
    for (int i = 0; i < list.length; i++) {
      ProfileEntryData entry = list[i];
      DateTime endTime = DateTime(date.year, date.month, date.day, 23, 59);
      startTime ??= entry.time(date);
      if (i < list.length - 1) {
        endTime = list[i + 1].time(date);

        if (compressSameValues) {
          if (entry.forceText != null) {
            if (entry.forceText == list[i + 1].forceText) continue;
          } else if (entry.value == list[i + 1].value) {
            continue;
          }
        }
      }
      bool showValue = true;
//      if (isSingleDay)
//        showValue = isSingleDayRange(startTime, endTime);

      if (showValue && currPage == page) {
        ret.add([
          {
            "text": msg(fmtTime(startTime, withUnit: true), fmtTime(endTime, withUnit: true)),
            "style": "infotitle",
            "fontSize": fs(_fontSize)
          },
          {
            "text": entry.forceText ?? g.fmtNumber(entry.value, precision, 0),
            "style": "infodata",
            "fontSize": fs(_fontSize)
          },
        ]);
        _hasFactors = true;
      }
      pageEntries++;
      if (pageEntries >= pageSize) {
        currPage++;
        pageEntries = 0;
      }
      startTime = null;
    }

    if (ret.length == 0) ret.add([]);

    return ret;
  }

  @override
  Page getPage(int page, ProfileGlucData profile, CalcData calc) {
    _fontSize = _fontSizeTables;
    subtitle = profile.store.name;
    // titleInfo = titleInfoTimeRange(profStartTime, profEndTime);
    titleInfo = msgValidFrom(fmtDateTime(profile.store.startDate));

    dynamic tableWidths = [cm(2.6), cm(6.0), cm(6.1), cm(1.0), cm(1.8)];
    dynamic tableBody = [
      [
        {"text": msgTimezone, "style": "infotitle", "alignment": "right", "fontSize": fs(_fontSize)},
        {"text": profile.store.timezone.name, "style": "infodata", "alignment": "left", "fontSize": fs(_fontSize)},
        {"text": msgDIA, "style": "infotitle", "alignment": "right", "fontSize": fs(_fontSize)},
        {"text": g.fmtNumber(profile.store.dia, 2, 0), "style": "infodata", "fontSize": fs(_fontSize)},
        {"text": msgDIAUnit, "style": "infounit", "fontSize": fs(_fontSize)},
      ],
      [
        {"text": "", "style": "infotitle", "alignment": "right", "fontSize": fs(_fontSize)},
        {"text": "", "style": "infodata", "alignment": "left", "fontSize": fs(_fontSize)},
        {"text": msgKHA, "style": "infotitle", "alignment": "right", "fontSize": fs(_fontSize)},
        {"text": g.fmtNumber(profile.store.carbsHr, 0, 0), "style": "infodata", "fontSize": fs(_fontSize)},
        {"text": msgKHAUnit, "style": "infounit", "fontSize": fs(_fontSize)},
      ],
    ];
    _hasFactors = false;
    dynamic icrIsfBody = [];
    Date date = g.date(profStartTime);
    dynamic bodyICR = getFactorBody(page, date, profile.store.listCarbratio, msgFactorEntry,
        sum: profile.store.icrSum / 24.0, sumTitle: msgICRSum);
    List<ProfileEntryData> listISF = List<ProfileEntryData>();
    for (ProfileEntryData entry in profile.store.listSens) {
      listISF.add(entry.copy);
      listISF.last.forceText = fmtGluc(entry.value);
    }
    dynamic bodyISF = getFactorBody(page, date, listISF, msgFactorEntry,
        precision: 0, sum: profile.store.isfSum / 24.0, sumTitle: msgISFSum);

    dynamic basalTargetBody = [];
    dynamic bodyBasal = getFactorBody(page, date, profile.store.listBasal, msgFactorEntry,
        precision: g.basalPrecision, sum: profile.store.ieBasalSum, sumTitle: msgBasalSum);
    List<ProfileEntryData> listTarget = List<ProfileEntryData>();
    if (profile.store.listTargetHigh.length == profile.store.listTargetLow.length) {
      for (int i = 0; i < profile.store.listTargetHigh.length; i++) {
        ProfileEntryData high = profile.store.listTargetHigh[i];
        ProfileEntryData low = profile.store.listTargetLow[i];
        if (high.time(date) != low.time(date)) continue;
        ProfileEntryData entry = ProfileEntryData(profile.store.timezone, high.time(date));
        entry.forceText = "${fmtGluc(low.value)} - ${fmtGluc(high.value)}";
        listTarget.add(entry);
      }
    }
    dynamic bodyTarget = getFactorBody(page, date, listTarget, msgFactorEntry);
    if (!_hasFactors) return null;

    basalTargetBody.add([
      {"text": msgBasalProfile, "fontSize": fs(8), "color": "#606060", "alignment": "center"},
      {"text": msgTarget(g.getGlucInfo()["unit"]), "fontSize": fs(8), "color": "#606060", "alignment": "center"}
    ]);

    _fontSize = 9;

    icrIsfBody.add([
      {"text": msgICR, "fontSize": fs(8), "color": "#606060", "alignment": "center"},
      {"text": msgISF(g.getGlucInfo()["unit"]), "fontSize": fs(8), "color": "#606060", "alignment": "center"}
    ]);

    dynamic tmp = [];
    if (bodyICR.length > 0)
      tmp.add({
        "margin": [cm(1.0), cm(0)],
        "layout": "noBorders",
        "table": {
          "headerRows": 0,
          "widths": [cm(3.8), cm(1.0)],
          "body": bodyICR
        }
      });

    if (bodyISF.length > 0)
      tmp.add({
        "margin": [cm(1.0), cm(0)],
        "layout": "noBorders",
        "table": {
          "headerRows": 0,
          "widths": [cm(3.9), cm(1.2)],
          "body": bodyISF
        }
      });

    icrIsfBody.add(tmp);
    tmp = [];
    if (bodyBasal.length > 0)
      tmp.add({
        "margin": [cm(1.0), cm(0)],
        "layout": "noBorders",
        "table": {
          "headerRows": 0,
          "widths": [cm(3.8), cm(1.0)],
          "body": bodyBasal
        }
      });
    if (bodyTarget.length > 0)
      tmp.add({
        "margin": [cm(0.5), cm(0)],
        "layout": "noBorders",
        "table": {
          "headerRows": 0,
          "widths": [cm(3.7), cm(2.1)],
          "body": bodyTarget
        }
      });
    basalTargetBody.add(tmp);

    double colWidth = (width - 4.4) / 4;
    var ret = [
      headerFooter(),
      {
        "margin": [cm(1.6), cm(yorg - 0.5), cm(0), cm(0)],
        "layout": "noBorders",
        "table": {"headerRows": 0, "widths": tableWidths, "body": tableBody}
      },
      {
        "margin": [cm(1.6), cm(0.2), cm(0), cm(0)],
        "layout": "noBorders",
        "table": {
          "headerRows": 0,
          "widths": [cm(2 * colWidth), cm(2 * colWidth)],
          "body": [
            [
              {
                "margin": [cm(0), cm(0), cm(0), cm(0)],
                "layout": "noBorders",
                "table": {
                  "headerRows": 1,
                  "widths": [cm(colWidth), cm(colWidth)],
                  "body": icrIsfBody
                }
              },
              {
                "margin": [cm(0), cm(0), cm(0), cm(0)],
                "layout": "noBorders",
                "table": {
                  "headerRows": 1,
                  "widths": [cm(colWidth), cm(colWidth)],
                  "body": basalTargetBody
                }
              }
            ]
          ]
        }
      }
    ];
    return Page(isPortrait, ret);
  }
}
