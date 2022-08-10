import 'dart:math';

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart';
import 'package:nightscout_reporter/src/json_data.dart';

import 'base-print.dart';

class PrintInsulinStatistics extends BasePrint {
  @override
  String help = Intl.message(
      '''Dieses Formular zeigt die Insulinverteilung im ausgewählten Zeitraum.
''',
      desc: 'help for insulinstats');

  @override
  String baseId = 'insulinstats';

  @override
  String baseIdx = '17';

  String get _title => Intl.message('Insulinstatistik');

  String get msgGesamtInsulin => Intl.message('Gesamtinsulin');

  msgPerDay(name) =>
      Intl.message('${name} pro Tag', args: [name], name: 'msgPerDay');

  msgPerWeek(name) =>
      Intl.message('${name} pro Woche', args: [name], name: 'msgPerWeek');

  msgPerMonth(name) =>
      Intl.message('${name} pro Monat', args: [name], name: 'msgPerMonth');

  double _maxTDD = 0.0;
  double _basalSum = 0.0;

  @override
  List<ParamInfo> params = [];

  @override
  void checkValue(ParamInfo param, dynamic value) {}

  @override
  void extractParams() {}

  @override
  dynamic get estimatePageCount {
    return {'count': 1, 'isEstimated': false};
  }

  @override
  String get title => _title;

  @override
  bool get isPortrait => false;

  @override
  double get scale => 1.0;

  @override
  dynamic getTable(widths, body) {
    dynamic ret = {
      'columns': [
        {
          'margin': [cm(2.2), cmy(yorg - 0.6), cm(2.2), cmy(0.0)],
          'width': cm(width),
          'fontSize': fs(10),
          'table': {'widths': widths, 'body': body},
        }
      ],
      'pageBreak': ''
    };

    return ret;
  }

  PrintInsulinStatistics({suffix = null}) {
    init(suffix);
  }

  @override
  void fillPages(List<Page> pages) {
    var oldLength = pages.length;
    pages.add(getPage(repData));
    if (g.showBothUnits) {
      g.glucMGDLIdx = 1;
      pages.add(getPage(repData));
      g.glucMGDLIdx = 2;
    }
    if (repData.isForThumbs && pages.length - oldLength > 1) {
      pages.removeRange(oldLength + 1, pages.length);
    }
  }

  Page getPage(ReportData src) {
    List<String> xValuesDaily;
    List<String> xValuesWeekly;
    List<String> xValuesMonthly;
    var valuesDaily = <List<double>>[];
    var valuesWeekly = <List<double>>[];
    var valuesMonthly = <List<double>>[];
    var valueColor = <String>[];
    var valueLegendDay = <String>[];
    var valueLegendWeek = <String>[];
    var valueLegendMonth = <String>[];
    var dV = Map<String, InsulinInjectionList>();
    var wV = Map<String, InsulinInjectionList>();
    var wC = Map<String, int>();
    var mV = Map<String, InsulinInjectionList>();
    var mC = Map<String, int>();
    var insulinProfiles = Set<String>();
    for (var day in src.data.days) {
      var sum = InsulinInjectionList();
      for (var t in day.treatments) {
        sum = sum.add2List(t.multipleInsulin);
      }
      var dayStr = fmtDateShort(day.date, 'day');
      var weekStr = fmtDateShort(day.date, 'week');
      var monthStr = fmtDateShort(day.date, 'month');
      dV.update(dayStr, (InsulinInjectionList v) => v.add2List(sum),
          ifAbsent: () => sum.copy);
      wV.update(weekStr, (InsulinInjectionList v) => v.add2List(sum),
          ifAbsent: () => sum.copy);
      wC.update(weekStr, (int v) => v + 1, ifAbsent: () => 1);
      mV.update(monthStr, (InsulinInjectionList v) => v.add2List(sum),
          ifAbsent: () => sum.copy);
      mC.update(monthStr, (int v) => v + 1, ifAbsent: () => 1);
      insulinProfiles.addAll(sum.injections.keys);
    }
    xValuesDaily ??= dV.keys.toList();
    xValuesWeekly ??= wV.keys.toList();
    xValuesMonthly ??= mV.keys.toList();
    for (var insulin in insulinProfiles) {
      var name = msgGesamtInsulin;
      if (insulin == 'sum') {
        valueColor.add(colBasalFont);
      } else {
        name = insulin;
        if (insulin.toLowerCase() == 'novorapid') {
          valueColor.add("#FF0000");
        } else if (insulin.toLowerCase() == 'actrapid') {
          valueColor.add('#00FF00');
        } else if (insulin.toLowerCase() == 'insulatard') {
          valueColor.add('#0000FF');
        }
      }
      valueLegendDay.add(msgPerDay(name));
      valueLegendWeek.add(msgPerWeek(name));
      valueLegendMonth.add(msgPerMonth(name));
      var daily = <double>[];
      var weekly = <double>[];
      var monthly = <double>[];
      for (var s in xValuesDaily) {
        if (dV[s].injections.containsKey(insulin)) {
          daily.add(dV[s].injections[insulin]);
        } else {
          daily.add(0);
        }
      }
      for (String s in xValuesWeekly) {
        if (wV[s].injections.containsKey(insulin)) {
          weekly.add(wV[s].injections[insulin] / wC[s]);
        } else {
          weekly.add(0);
        }
      }
      for (String s in xValuesMonthly) {
        if (mV[s].injections.containsKey(insulin)) {
          monthly.add(mV[s].injections[insulin] / mC[s]);
        } else {
          monthly.add(0);
        }
      }
      valuesDaily.add(daily);
      valuesWeekly.add(weekly);
      valuesMonthly.add(monthly);
    }
    var contentWidth = Page(false, null).width - 1.5 * xorg; // 23.25 --> 29.7
    var contentHeight = Page(false, null).height - 1.5 * yorg; // 13 --> 21
    var weekly_monthly_distance = 1.5;
    var legendHeight = 1 + valueLegendDay.length * 0.5;
    var dailyWidth = contentWidth;
    var weeklyWidth = (contentWidth - weekly_monthly_distance) / 2;
    var monthlyWidth = weeklyWidth;
    var allGraphHeight = contentHeight / 2 - legendHeight;
    var xo = xorg * 0.75; // 3.35
    var yo = yorg; // 3.9
    var content = <dynamic>[headerFooter()];
    if (xValuesDaily.length > 1) {
      content.addAll(drawGraphicGridGeneric(allGraphHeight, dailyWidth, xo, yo,
          xValuesDaily, valuesDaily, valueColor, valueLegendDay,
          graphBottom: allGraphHeight));
    }
    if (xValuesWeekly.length > 1) {
      content.addAll(drawGraphicGridGeneric(
          allGraphHeight,
          weeklyWidth,
          xo,
          yo + allGraphHeight + legendHeight,
          xValuesWeekly,
          valuesWeekly,
          valueColor,
          valueLegendWeek,
          graphBottom: allGraphHeight));
    }
    if (xValuesMonthly.length > 1) {
      content.addAll(drawGraphicGridGeneric(
          allGraphHeight,
          monthlyWidth,
          xo + weeklyWidth + weekly_monthly_distance,
          yo + allGraphHeight + legendHeight,
          xValuesMonthly,
          valuesMonthly,
          valueColor,
          valueLegendMonth,
          graphBottom: allGraphHeight));
    }
    return Page(isPortrait, content);
  }
}
