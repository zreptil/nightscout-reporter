import 'dart:math' as math;

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/json_data.dart';

import 'base-print.dart';

class PrintDailyProfile extends BasePrint {
  bool showSeconds;
  bool showBasalLine;
  int showValPrz;
  bool showMaxArrows;

  @override
  String help =
      Intl.message('''Dieses Formular zeigt die tatsächliche Basalrate, die während des Tages gelaufen ist unter
Berücksichtigung aller temporären Basalratenanpassungen. Zusätzlich kann noch die im Profil hinterlegte
Basalrate angezeigt werden. Die Basalrate kann als Wert, als prozentuale Änderung in Bezug auf die Profilbasalrate
oder mit beidem angezeigt werden. Die Summenspalte zeigt die bis zur entsprechenden Uhrzeit abgegebene Basalrate
an. Es ist auch möglich, die Uhrzeit mit Sekunden anzeigen zu lassen. Damit kann man die angezeigten Werte
rechnerisch überprüfen.

Wenn die Basalrate aus dem Profil angezeigt wird, wird das Maximum für die Darstellung der Balken anhand des
maximalen Wertes der Profilbasalrate ermittelt. Dadurch werden bei Werten über 100% des Maximalwerts der 
Profilbasalrate die Balken über die Spalte hinaus verlängert. Es gibt aber eine Option, um diese Balken abzuschneiden 
und als Pfeile darstellen zu lassen.''', desc: 'help for dayprofile');

  @override
  String id = 'dayprofile';

  @override
  String idx = '11';

  @override
  String get title => Intl.message('Tagesprofil');

  @override
  List<ParamInfo> params = [
    ParamInfo(2, msgParam1, boolValue: false),
    ParamInfo(3, msgParam2, boolValue: true, subParams: [ParamInfo(0, msgParam4, boolValue: true)]),
    ParamInfo(1, msgParam3, list: [Intl.message('Prozent'), Intl.message('Wert'), Intl.message('Wert & Prozent')])
  ];

  @override
  bool get isPortrait => true;

  static String get msgParam1 => Intl.message('Sekunden anzeigen');

  static String get msgParam2 => Intl.message('Basal aus Profil anzeigen');

  static String get msgParam3 => Intl.message('IE-Anzeige');

  static String get msgParam4 => Intl.message('Werte über dem Maximum als Pfeile darstellen');

  PrintDailyProfile() {
    init();
  }

  @override
  void extractParams() {
    showSeconds = params[0].boolValue;
    showBasalLine = params[1].boolValue;
    showMaxArrows = params[1].subParams[0].boolValue;
    showValPrz = params[2].intValue;
  }

  @override
  dynamic get estimatePageCount {
    var count = g?.period?.dayCount ?? 0;
    return {'count': count, 'isEstimated': true};
  }

  @override
  void fillPages(List<Page> pages) {
    var data = repData.data;
    var oldLength = pages.length;
    for (var day in data.days) {
      getPage(day, pages);
      if (repData.isForThumbs) break;
    }
    if (repData.isForThumbs && pages.length - oldLength > 1) pages.removeRange(oldLength + 1, pages.length);
  }

  void getPage(DayData day, List<Page> pages) {
    titleInfo = fmtDate(day.date, null, false, true);

    var tables = <List<Object>>[];

    var space = 0.4;
    var count = day.profile.length;
    var columns = (count ~/ 37) + 1;
    columns = math.min(columns, 3);

    var wid = (width - 2 * xframe) / columns;
    wid -= space * (columns - 1) / columns;
    var widths = [
      cm(wid / (columns == 3 ? 3 : 2) - 0.34),
      cm(wid / (columns == 3 ? 3 : 4) - 0.34),
      cm(wid / (columns == 3 ? 3 : 4) - 0.34)
    ];

    var sum = 0.0;
    var idx = 0;
    var lines = 0;
    var max = 0.0;
    for (var entry in day.profile) {
      max = math.max(entry.value, max);
    }
    if (showBasalLine) {
      max = 0.0;
      for (var entry in day.profile) {
        max = math.max(entry.orgValue, max);
      }
    }

    for (var entry in day.profile) {
      if (idx >= tables.length) {
        tables.add([
          [
            {'text': msgTime, 'style': 'total', 'alignment': 'center'},
            {'text': msgIEHr, 'style': 'total', 'alignment': 'center'},
            {'text': msgSum, 'style': 'total', 'alignment': 'center'}
          ]
        ]);
      }

      sum += entry.value * entry.duration / 3600;
      var w = entry.value * (widths[1] + cm(0.1)) / max;
      var text = '${fmtTime(entry.time(day.date), withSeconds: showSeconds, withUnit: !showSeconds && columns < 3)}';
      if (columns < 3) {
        var time = entry.time(day.date).add(Duration(seconds: entry.duration));
        text = '${text} - ${fmtTime(time, withSeconds: showSeconds, withUnit: !showSeconds && columns < 3)}';
      }
      var canvas = [];
      if (w > 0) {
        if (entry.value > max && showMaxArrows) {
          canvas.add({
            'type': 'polyline',
            'closePath': true,
            'color': colBasalDay,
            'points': [
              {'x': cm(0), 'y': cm(0.05)},
              {'x': widths[1] - cm(0.1), 'y': cm(0.05)},
              {'x': widths[1] - cm(0.1), 'y': cm(-0.05)},
              {'x': widths[1] + cm(0.1), 'y': cm(0.2)},
              {'x': widths[1] - cm(0.1), 'y': cm(0.45)},
              {'x': widths[1] - cm(0.1), 'y': cm(0.35)},
              {'x': cm(0), 'y': cm(0.35)}
            ]
          });
        } else {
          canvas.add({
            'type': 'rect',
            'x': cm(0),
            'y': cm(showBasalLine ? 0.05 : 0),
            'w': w,
            'h': cm(showBasalLine ? 0.3 : 0.4),
            'color': colBasalDay
          });
        }
      }
      var prz = '${g.fmtNumber(entry.value / entry.orgValue * 100, 0)}%';
      var val = g.fmtNumber(entry.value, g.basalPrecision);
      var colValue = [
        {
          'width': widths[1] / (showValPrz == 2 ? 2 : 1) + cm(0.1),
          'text': showValPrz == 0 ? prz : val,
          'alignment': 'left',
          'fontSize': fs(showValPrz == 2 ? 8 : 10)
        }
      ];

      if (showBasalLine) {
        w = entry.orgValue * (widths[1] + cm(0.1)) / max;
/*
        canvas.add({
          'type': 'line',
          'x1': w,
          'y1': cm(-0.05),
          'x2': w,
          'y2': cm(0.45),
          'lineColor': colBasalProfile,
          'lineWidth': cm(lw)
        });
// */
        canvas.add({
          'type': 'rect',
          'x': cm(0),
          'y': cm(-0.05),
          'w': w,
          'h': cm(0.5),
          'color': colBasalProfile,
          'fillOpacity': 0.25
        });
      }

      if (showValPrz == 2) {
        colValue.add({'width': widths[1] / 2, 'text': prz, 'alignment': 'right', 'fontSize': fs(8)});
      }
      tables[idx].add([
        {'text': text, 'alignment': 'center'},
        {
          'stack': [
            {
              'relativePosition': {'x': cm(-0.05), 'y': cm(0)},
              'canvas': canvas
            },
            {'columns': colValue}
          ]
        },
        {'text': g.fmtNumber(sum, g.basalPrecision), 'alignment': 'right'}
      ]);

      lines++;
      if (lines > 37) {
        lines = 0;
        idx++;
      }
    }

    var ret = [headerFooter()];
    var x = xframe;
    var doAdd = false;
    idx = 0;
    for (var table in tables) {
      ret.add({
        'absolutePosition': {'x': cm(x), 'y': cm(yorg)},
        'margin': [cm(0), cm(0), cm(0), cm(wid)],
        'fontSize': fs(10),
        'table': {'headerRows': 0, 'widths': widths, 'body': table}
      });

      doAdd = true;
      idx++;
      if (idx < columns) {
        x += wid + space;
      } else {
        x = xframe;
        idx = 0;
        pages.add(Page(isPortrait, ret));
        ret = [headerFooter()];
        doAdd = false;
      }
    }

    if (doAdd) pages.add(Page(isPortrait, ret));
  }
}
