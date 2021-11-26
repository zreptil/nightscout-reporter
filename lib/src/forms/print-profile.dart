import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/json_data.dart';

import 'base-print.dart';
import 'base-profile.dart';

class PrintProfile extends BaseProfile {
  @override
  String help =
  Intl.message('''Dieses Formular zeigt das Profil an. Es werden normalerweise alle Profile des ausgewählten
Zeitraums ausgegeben. Wenn sich in dem Zeitraum das Profil geändert hat, wird ein neues Blatt erzeugt.

Es gibt aber eine Option, welche nur das letzte Profil des Zeitraums ausgibt. Ausserdem gibt es eine Option,
mit der gleiche Zeilen zusammengefasst werden. Das führt zu einem kürzeren Profil, wenn mehrere Zeiten nacheinander
die gleichen Werte beinhalten.''', desc: 'help for profile');

  bool compressSameValues;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, msgParam1, boolValue: true),
    ParamInfo(1, msgParam2, boolValue: false),
    ParamInfo(2, BaseProfile.msgNamedProfile(BaseProfile.namedProfileName), boolValue: false),
  ];

  @override
  void extractParams() {
    compressSameValues = params[0].boolValue;
    onlyLast = params[1].boolValue;
    namedProfile = params[2].boolValue;
  }

  @override
  dynamic get estimatePageCount => {'count': 1, 'isEstimated': true};

  @override
  String baseId = 'profile';

  @override
  String baseIdx = '02';

  @override
  String get title => Intl.message('Profil');

  PrintProfile({suffix = null}) : super(suffix: suffix);

  static String get msgParam1 => Intl.message('Zeilen mit gleichen Werten zusammenfassen');

  static String get msgParam2 => Intl.message('Nur letztes Profil ausgeben');

  double _fontSize = 10;
  final double _fontSizeTables = 8;
  bool _hasFactors = false;

  @override
  bool hasData(ReportData src) {
    return src.profiles.isNotEmpty;
  }

  dynamic getFactorBody(int page, Date date, List<ProfileEntryData> list, Function(String a, String b) msg,
      {int precision = 1, double sum, String sumTitle}) {
    var currPage = 0;
    var pageEntries = 0;
    var pageSize = 27;
    if (page * pageSize >= list.length) {
      return [
        [
          {'text': '', 'style': 'infotitle', 'fontSize': fs(_fontSize)},
          {'text': '', 'style': 'infodata', 'fontSize': fs(_fontSize)},
        ]
      ];
    }

    dynamic ret = [];
    DateTime startTime;
    if (currPage == page && sum != null && sumTitle != null) {
      ret.add([
        {'text': sumTitle, 'style': 'infotitle', 'fontSize': fs(_fontSize), 'bold': true},
        {'text': g.fmtNumber(sum, precision, 0), 'style': 'infodata', 'fontSize': fs(_fontSize), 'bold': true},
      ]);
      _hasFactors = true;
    }
    for (var i = 0; i < list.length; i++) {
      var entry = list[i];
      var endTime = DateTime(date.year, date.month, date.day, 23, 59);
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
      var showValue = true;
//      if (isSingleDay)
//        showValue = isSingleDayRange(startTime, endTime);

      if (showValue && currPage == page) {
        ret.add([
          {
            'text': msg(fmtTime(startTime, withUnit: true), fmtTime(endTime, withUnit: true)),
            'style': 'infotitle',
            'fontSize': fs(_fontSize)
          },
          {
            'text': entry.forceText ?? g.fmtNumber(entry.value, precision, 0),
            'style': 'infodata',
            'fontSize': fs(_fontSize)
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
        {'text': msgTimezone, 'style': 'infotitle', 'alignment': 'right', 'fontSize': fs(_fontSize)},
        {'text': profile.store.timezone.name, 'style': 'infodata', 'alignment': 'left', 'fontSize': fs(_fontSize)},
        {'text': msgDIA, 'style': 'infotitle', 'alignment': 'right', 'fontSize': fs(_fontSize)},
        {'text': g.fmtNumber(profile.store.dia, 2, 0), 'style': 'infodata', 'fontSize': fs(_fontSize)},
        {'text': msgDIAUnit, 'style': 'infounit', 'fontSize': fs(_fontSize)},
      ],
      [
        {'text': '', 'style': 'infotitle', 'alignment': 'right', 'fontSize': fs(_fontSize)},
        {'text': '', 'style': 'infodata', 'alignment': 'left', 'fontSize': fs(_fontSize)},
        {'text': msgKHA, 'style': 'infotitle', 'alignment': 'right', 'fontSize': fs(_fontSize)},
        {'text': g.fmtNumber(profile.store.carbsHr, 0, 0), 'style': 'infodata', 'fontSize': fs(_fontSize)},
        {'text': msgKHAUnit, 'style': 'infounit', 'fontSize': fs(_fontSize)},
      ],
    ];
    _hasFactors = false;
    dynamic icrIsfBody = [];
    var date = g.date(profStartTime);
    dynamic bodyICR = getFactorBody(page, date, profile.store.listCarbratio, msgFactorEntry,
        sum: profile.store.icrSum / 24.0, sumTitle: msgICRSum);
    var listISF = <ProfileEntryData>[];
    for (var entry in profile.store.listSens) {
      listISF.add(entry.copy);
      // the values for isf are saved with the unit that the user uses for his glucose measurement
      listISF.last.forceText = fmtGluc(g.glucForSavedUnitValue(entry.value));
    }
    dynamic bodyISF = getFactorBody(page, date, listISF, msgFactorEntry,
        precision: g.glucMGDL ? 0 : 1, sum: g.glucForSavedUnitValue(profile.store.isfSum) / 24.0, sumTitle: msgISFSum);

    dynamic basalTargetBody = [];
    dynamic bodyBasal = getFactorBody(page, date, profile.store.listBasal, msgFactorEntry,
        precision: g.basalPrecision, sum: profile.store.ieBasalSum, sumTitle: msgBasalSum);
    var listTarget = <ProfileEntryData>[];
    if (profile.store.listTargetHigh.length == profile.store.listTargetLow.length) {
      for (var i = 0; i < profile.store.listTargetHigh.length; i++) {
        var high = profile.store.listTargetHigh[i];
        var low = profile.store.listTargetLow[i];
        if (high.time(date) != low.time(date)) continue;
        var entry = ProfileEntryData(profile.store.timezone, high.time(date));
        entry.forceText = '${fmtGluc(low.value)} - ${fmtGluc(high.value)}';
        listTarget.add(entry);
      }
    }
    dynamic bodyTarget = getFactorBody(page, date, listTarget, msgFactorEntry);
    if (!_hasFactors) return null;

    basalTargetBody.add([
      {'text': msgBasalProfile, 'fontSize': fs(8), 'color': '#606060', 'alignment': 'center'},
      {'text': msgTarget(g.getGlucInfo()['unit']), 'fontSize': fs(8), 'color': '#606060', 'alignment': 'center'}
    ]);

    _fontSize = 9;

    icrIsfBody.add([
      {'text': msgICR, 'fontSize': fs(8), 'color': '#606060', 'alignment': 'center'},
      {'text': msgISF(g.getGlucInfo()['unit']), 'fontSize': fs(8), 'color': '#606060', 'alignment': 'center'}
    ]);

    dynamic tmp = [];
    if (bodyICR.length > 0) {
      tmp.add({
        'margin': [cm(1.0), cm(0)],
        'layout': 'noBorders',
        'table': {
          'headerRows': 0,
          'widths': [cm(3.8), cm(1.0)],
          'body': bodyICR
        }
      });
    }

    if (bodyISF.length > 0) {
      tmp.add({
        'margin': [cm(1.0), cm(0)],
        'layout': 'noBorders',
        'table': {
          'headerRows': 0,
          'widths': [cm(3.9), cm(1.2)],
          'body': bodyISF
        }
      });
    }

    icrIsfBody.add(tmp);
    tmp = [];
    if (bodyBasal.length > 0) {
      tmp.add({
        'margin': [cm(1.0), cm(0)],
        'layout': 'noBorders',
        'table': {
          'headerRows': 0,
          'widths': [cm(3.8), cm(1.0)],
          'body': bodyBasal
        }
      });
    }
    if (bodyTarget.length > 0) {
      tmp.add({
        'margin': [cm(0.5), cm(0)],
        'layout': 'noBorders',
        'table': {
          'headerRows': 0,
          'widths': [cm(3.7), cm(2.1)],
          'body': bodyTarget
        }
      });
    }
    basalTargetBody.add(tmp);

    var colWidth = (width - 4.4) / 4;
    var ret = [
      headerFooter(),
      {
        'margin': [cm(1.6), cm(yorg - 0.5), cm(0), cm(0)],
        'layout': 'noBorders',
        'table': {'headerRows': 0, 'widths': tableWidths, 'body': tableBody}
      },
      {
        'margin': [cm(1.6), cm(0.2), cm(0), cm(0)],
        'layout': 'noBorders',
        'table': {
          'headerRows': 0,
          'widths': [cm(2 * colWidth), cm(2 * colWidth)],
          'body': [
            [
              {
                'margin': [cm(0), cm(0), cm(0), cm(0)],
                'layout': 'noBorders',
                'table': {
                  'headerRows': 1,
                  'widths': [cm(colWidth), cm(colWidth)],
                  'body': icrIsfBody
                }
              },
              {
                'margin': [cm(0), cm(0), cm(0), cm(0)],
                'layout': 'noBorders',
                'table': {
                  'headerRows': 1,
                  'widths': [cm(colWidth), cm(colWidth)],
                  'body': basalTargetBody
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
