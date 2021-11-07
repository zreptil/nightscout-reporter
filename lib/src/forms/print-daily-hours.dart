import 'dart:math';

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/json_data.dart';

import 'base-print.dart';

class PrintDailyHours extends BasePrint {
  @override
  String help = Intl.message('''Dieses Formular zeigt eine Übersicht über die 
Stunden der Tage des ausgewählten Zeitraums an. Die angezeigten Werte sind die
Mittelwerte der innerhalb der entsprechenden Stunde gemessenen Werte. Sie
werden anhand des ausgewählten Zielbereichs eingefärbt. In den Formularoptionen
kann man die Startstunde festlegen. Die Datumsspalte befindet sich immer links
von 0 Uhr und zeigt an, wo ein neuer Tag beginnt.''',
      desc: 'help for dayhours');

  @override
  String id = 'dayhours';

  @override
  String idx = '13';

  int startHour = 0;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, msgStartHour, list: [
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '10',
      '11',
      '12',
      '13',
      '14',
      '15',
      '16',
      '17',
      '18',
      '19',
      '20',
      '21',
      '22',
      '23'
    ]),
  ];

  static String msgStartHour = Intl.message('Startstunde');

  @override
  void extractParams() {
    startHour = params[0].intValue;
  }

  @override
  dynamic get estimatePageCount {
    var count = g?.period?.dayCount ?? 0;
    count = (count / 30).ceil();
    return {'count': count, 'isEstimated': false};
  }

  @override
  String get title => Intl.message('Tagesstunden');

  @override
  bool get isPortrait => false;

  @override
  double get scale => 1.0;

  @override
  dynamic get footerText => footerTextDayTimes;

  PrintDailyHours() {
    init();
  }

  void fillRow(
      dynamic row, double f, String firstCol, DayData day, String style) {
    var wid = cm((width - 4.4 - 2.1) / 24 - 0.33);
    var hour = startHour ?? 0;
    var orgDay = day;
    if (hour != 0 && day.prevDay != null) day = day.prevDay;

    for (var i = 0; i < 24; i++) {
      var time = DateTime(0, 1, 1, hour, 0);
      var gluc = 0.0;
      var count = 0;

      if (hour == 0) {
        // erste Spalte
        addTableRow(
            true,
            cm(2.0),
            row,
            {'text': msgDate, 'style': 'total', 'alignment': 'center'},
            {'text': firstCol, 'style': 'total', 'alignment': 'center'});
        day = orgDay;
      }

      for (var entry in day.entries) {
        if (entry.gluc > 0 && entry.time.hour == hour) {
          count++;
          gluc += entry.gluc;
        }
      }
      if (count > 0) gluc = gluc / count;

      if (gluc == 0) gluc = null;
/*
      EntryData entry = day.findNearest(day.entries, null, check, maxMinuteDiff: 15);
      double gluc = entry?.gluc ?? null;
*/
      // Stundenspalte
      addTableRow(true, wid, row, {
        'text': fmtTime(time),
        'style': styleForTime(time),
        'alignment': 'center'
      }, {
        'text': '${g.glucFromData(gluc)}',
        'style': style,
        'alignment': 'right',
        'fillColor': colForGlucBack(day, gluc)
      });
      hour++;
      if (hour == 24) hour = 0;
    }
    tableHeadFilled = true;
  }

  String percentileFor(double value) {
    if (value == -1) return '';
    return g.glucFromData(value, 1);
  }

  @override
  dynamic getTable(widths, body) {
    dynamic ret = {
      'columns': [
        {
          'margin': [cm(2.2), cmy(yorg - 0.5), cm(2.2), cmy(0.0)],
          'width': cm(width),
          'fontSize': fs(7),
          'table': {'widths': widths, 'body': body},
        }
      ],
      'pageBreak': ''
    };

    return ret;
  }

  @override
  void fillPages(List<Page> pages) {
    var oldLength = pages.length;
    _fillPages(pages);
    if (g.showBothUnits) {
      g.glucMGDLIdx = 1;
      _fillPages(pages);
      g.glucMGDLIdx = 2;
    }
    if (repData.isForThumbs && pages.length - oldLength > 1)
      pages.removeRange(oldLength + 1, pages.length);
  }

  void _fillPages(List<Page> pages) {
    tableHeadFilled = false;
    tableHeadLine = [];
    tableWidths = [];
    titleInfo = titleInfoBegEnd();
    var f = 3.3;
    var body = [];
    f /= 100;

    ProfileGlucData prevProfile;
    var lineCount = 0;
    var page = [];
    var totalDay = DayData(null, ProfileGlucData(ProfileStoreData('Intern')));
    totalDay.basalData.targetHigh = 0;
    totalDay.basalData.targetLow = 1000;
    // ignore: unused_local_variable
    var totalDays = 0;
    for (var day in repData.data.days) {
      day.init();
      if (day.entryCountValid == 0) continue;
      totalDays++;
      totalDay.entries.addAll(day.entries);
      totalDay.bloody.addAll(day.bloody);
      totalDay.treatments.addAll(day.treatments);
      totalDay.basalData.targetHigh =
          max(totalDay.basalData.targetHigh, day.basalData.targetHigh);
      totalDay.basalData.targetLow =
          min(totalDay.basalData.targetLow, day.basalData.targetLow);
      var row = [];
      fillRow(row, f, fmtDate(day.date, null, true), day, 'row');
      var profile = repData
          .profile(DateTime(day.date.year, day.date.month, day.date.day));
      if (prevProfile == null ||
          profile.targetLow != prevProfile.targetLow ||
          profile.targetHigh != prevProfile.targetHigh) {
        body.add(tableHeadLine);
        lineCount += 2;
      }
      prevProfile = profile;

      body.add(row);
      lineCount++;
      if (lineCount == 33) {
        page.add(headerFooter());
        page.add(getTable(tableWidths, body));
        lineCount = 0;
        pages.add(Page(isPortrait, page));
        page = [];
        body = [];
        prevProfile = null;
      }
    }

/*
    var row = [];
    totalDay.init();
    fillRow(row, f, msgDaySum(totalDays), totalDay, 'total');
    body.add(row);
*/
    if (prevProfile != null) {
      page.add(headerFooter());
      page.add(getTable(tableWidths, body));
      pages.add(Page(isPortrait, page));
    } else {
      var test = pages.last.content.last as Map;
      if (body.isNotEmpty) test['columns'].last['table']['body'].add(body.last);
    }
  }
}
