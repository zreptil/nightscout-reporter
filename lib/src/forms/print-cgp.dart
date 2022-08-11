import 'dart:math' as math;

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart';
import 'package:nightscout_reporter/src/json_data.dart';

import 'base-print.dart';

class PentagonScaleData {
  String name;
  double beg, end, nameX, nameY, valueX, valueY;
  List<double> values;
  var _scaleMethod;
  double legendFactor;

  double scaleMethod(v) => _scaleMethod(v) / 76;

  PentagonScaleData(this.values, this.legendFactor,
      {this.name,
      this.beg = 0.0,
      this.end = 1.0,
      this.nameX = 0.0,
      this.nameY = 0.0,
      this.valueX = 0.0,
      this.valueY = 0.0,
      scaleMethod}) {
    _scaleMethod = scaleMethod;
  }
}

class PentagonData {
  bool showAreaLines = true;

  static String msgTOR([value = '']) {
    if (value != '') value = '${value} ';
    return Intl.message('ToR [${value}min/d]', args: [value], name: 'msgTOR');
  }

  static String msgCV([value = '']) {
    if (value != '') value = '${value} ';
    return Intl.message('VarK [${value}%]',
        args: [value], name: 'msgCV'); //Intl.message('CV [%]');
  }

  static String msgHYPO(unit, [value = '']) {
    if (value != '') unit = '${value} ${unit}';
    return Intl.message('Intensität HYPO\n[${unit} x min²]',
        args: [unit, value],
        name:
            'msgHYPO'); //Intl.message('Intensity HYPO\n[${unit} x min²]', args: [unit], name: 'msgHYPO');
  }

  static String msgHYPER(unit, [value = '']) {
    if (value != '') unit = '${value} ${unit}';
    return Intl.message('Intensität HYPER\n[${unit} x min²]',
        args: [unit, value],
        name:
            'msgHYPER'); //Intl.message('Intensity HYPER\n[${unit} x min²]', args: [unit], name: 'msgHYPER');
  }

  static String msgMEAN(unit, [value = '']) {
    if (value != '') unit = '${value} ${unit}';
    return Intl.message('Mittlere Glukose\n[${unit}]',
        args: [unit, value],
        name:
            'msgMEAN'); //Intl.message('Mean glucose\n[${unit}]', args: [unit], name: 'msgMEAN');
  }

  static String get msgPGR => Intl.message('PGR');

  static String get msgGreen => Intl.message(
      'Das grüne Fünfeck stellt den Wertebereich eines gesunden Menschen ohne Diabetes dar.');

  static String get msgYellow => Intl.message(
      'Das gelbe Fünfeck stellt den Wertebereich des angegebenen Zeitraums dar.');

  static String get msgYellowCircle => Intl.message(
      'Gelbe Kreise zeigen an, dass der entsprechende Wert die Skala überschreitet.');

  static String msgTORInfo(min, max) {
    return Intl.message(
        'Die Zeit pro Tag in Minuten, in denen die Werte ausserhalb des Bereichs ${min} bis ${max} liegen.',
        args: [min, max],
        name: 'msgTORInfo');
  }

  static String get msgCVInfo => Intl.message(
      'Die glykämische Variabilität stellt die Streuung der Werte um den'
      ' glykämischen Mittelwert herum in Prozent dar.');

  static String msgHYPOInfo(unit) {
    return Intl.message(
        'Die Intensität von Hypoglykämien pro Tag (Werte kleiner oder gleich ${unit}).',
        args: [unit],
        name: 'msgHYPOInfo');
  }

  static String msgHYPERInfo(unit) {
    return Intl.message(
        'Die Intensität von Hyperglykämien pro Tag (Werte grösser oder gleich ${unit}).',
        args: [unit],
        name: 'msgHYPERInfo');
  }

  static String msgMEANInfo(hba1c) {
    return Intl.message('Der glykämische Mittelwert im betrachteten Zeitraum.',
        args: [hba1c], name: 'msgMEANInfo');
  }

  static String get msgPGRInfo => Intl.message(
      'Der prognostische glykämische Risikoparameter stellt das Risiko von Langzeitkomplikationen'
      ' dar (bisher nicht durch Studien belegt).');

  static String get msgPGR02 => Intl.message('0,0 bis 2,0');

  static String get msgPGR02Info => Intl.message('sehr geringes Risiko');

  static String get msgPGR23 => Intl.message('2,1 bis 3,0');

  static String get msgPGR23Info => Intl.message('geringes Risiko');

  static String get msgPGR34 => Intl.message('3,1 bis 4,0');

  static String get msgPGR34Info => Intl.message('moderates Risiko');

  static String get msgPGR45 => Intl.message('4,1 bis 4,5');

  static String get msgPGR45Info => Intl.message('hohes Risiko');

  static String get msgPGR5 => Intl.message('ab 4,6');

  static String get msgPGR5Info => Intl.message('extrem hohes Risiko');

  List<PentagonScaleData> axis;
  double defFontSize = 6;
  double xm, ym, scale, fontsize;
  double axisLength;
  double deg;
  var glucInfo;
  var cm, fs;
  var outputCvs = [];
  var outputText = [];
  Globals g;
  bool hasLimitBreakers = false;

  PentagonData(this.g, this.glucInfo, this.cm, this.fs,
      {this.xm,
      this.ym,
      this.scale,
      this.fontsize = -1,
      this.showAreaLines = true}) {
    axis = [
      PentagonScaleData([0, 300, 480, 720, 900, 1080, 1200, 1440], 1,
          scaleMethod: (v) => math.pow(v * 0.00614, 1.581) + 14,
          name: msgTOR(),
          nameX: -2.5,
          nameY: -0.4,
          valueX: 0.15,
          valueY: -0.11),
      PentagonScaleData([16.7, 20, 30, 40, 50, 60, 70, 80], 1,
          scaleMethod: (v) => (v >= 17 ? v - 17 : 0) * 0.92 + 14,
          name: msgCV(),
          nameX: -2.3,
          nameY: -0.4,
          valueX: -0.1,
          valueY: 0.1),
      PentagonScaleData([0, 3, 4, 5, 6, 7, 7.2], g.glucFactor,
          scaleMethod: (v) => math.exp(v * 0.57) + 13,
          name: msgHYPO(glucInfo['unit']),
          end: 0.25,
          nameX: -2.5,
          nameY: 0.1,
          valueX: -0.2,
          valueY: 0.1),
      PentagonScaleData(
          [0, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130], g.glucFactor,
          scaleMethod: (v) => math.pow(v * 0.115, 1.51) + 14,
          name: msgHYPER(glucInfo['unit']),
          beg: 0.25,
          nameX: -2.5,
          nameY: 0.1,
          valueX: 0.1,
          valueY: 0.1),
      PentagonScaleData([130, 190, 220, 250, 280, 310], g.glucFactor,
          scaleMethod: (v) =>
              math.pow((v >= 90 ? v - 90 : 0.0) * 0.0217, 2.63) + 14,
          name: msgMEAN(glucInfo['unit']),
          nameX: -2.5,
          nameY: -0.73,
          valueX: -0.2,
          valueY: 0.1),
    ];

    deg = (360.0 / axis.length) * math.pi / 180.0;
    var h = 7.6;
    var a = h / math.sqrt(5 + 2 * math.sqrt(5)) * 2;
    axisLength = math.sqrt(50 + 10 * math.sqrt(5)) / 10 * a;
    if (fontsize == -1) fontsize = defFontSize;
    fontsize *= scale;
  }

  void paintPentagon(double factor, double lw,
      {String colLine, String colFill, double opacity = 1.0}) {
    lw *= scale;
    var points = [];
    for (var i = 0; i < axis.length; i++) {
      points.add(_point(i, factor));
    }
    outputCvs.add({
      'type': 'polyline',
      'lineWidth': cm(lw),
      'closePath': true,
      'points': points,
      'fillOpacity': opacity
    });
    if (colLine != null) outputCvs.last['lineColor'] = colLine;
    if (colFill != null) outputCvs.last['color'] = colFill;
  }

  void paintAxis(double lw, {String colLine}) {
    lw *= scale;
    for (var i = 0; i < axis.length; i++) {
      if (i > 11) continue;
      var pt = _point(i, 1.10);
      outputCvs.add({
        'type': 'line',
        'x1': cm(xm),
        'y1': cm(ym),
        'x2': pt['x'],
        'y2': pt['y'],
        'lineWidth': cm(lw)
      });
      if (colLine != null) outputCvs.last['lineColor'] = colLine;
      outputText.add({
        'relativePosition': {
          'x': pt['x'] + cm(axis[i].nameX * fontsize / defFontSize),
          'y': pt['y'] + cm(axis[i].nameY * fontsize / defFontSize)
        },
        'columns': [
          {
            'width': cm(5 * fontsize / defFontSize),
            'text': axis[i].name,
            'fontSize': fs(fontsize),
            'alignment': 'center'
          }
        ]
      });
      pt = _point(i, 1.0);
      double dx = pt['x'] - cm(xm);
      double dy = pt['y'] - cm(ym);
      var lastNumber = '';
      var lastValue = 0.0;
      for (var value in axis[i].values) {
        pt = _point(i, axis[i].scaleMethod(value)); // * axis[i].legendFactor
        double x = pt['x'];
        double y = pt['y'];
        var f = 0.05;
        var x1 = x + 0.5 * dy * f;
        var y1 = y - 0.5 * dx * f;
        var x2 = x - 0.5 * dy * f;
        var y2 = y + 0.5 * dx * f;
        outputCvs.add({
          'type': 'line',
          'x1': x1,
          'y1': y1,
          'x2': x2,
          'y2': y2,
          'lineWidth': cm(lw)
        });
        if (colLine != null) outputCvs.last['lineColor'] = colLine;
        var precision = axis[i].legendFactor == 1 ? 0 : 1;
        var number = g.fmtNumber(value / axis[i].legendFactor, precision);
        while (number == lastNumber) {
          number = g.fmtNumber(value / axis[i].legendFactor, ++precision);
          lastNumber = g.fmtNumber(
              lastValue / axis[i].legendFactor, precision, 0, 'null', true);
        }
        if (i > 0) outputText.last['text'] = lastNumber;
        outputText.add({
          'relativePosition': {
            'x': x + cm(axis[i].valueX * fontsize / defFontSize),
            'y': y + cm(axis[i].valueY * fontsize / defFontSize)
          },
          'text': number,
          'fontSize': fs(fontsize * 0.7)
        });
        lastNumber = number;
        lastValue = value;
      }
    }
  }

  double paintValues(List<double> values, double lw,
      {String colLine,
      String colFill,
      double opacity = 1.0,
      bool showLimitBreaks = true,
      bool limitValues = true}) {
    lw *= scale;
    var points = [];
    hasLimitBreakers = false;
    for (var i = 0; i < values.length && i < axis.length; i++) {
      var y;
      if (limitValues) {
        y = g.limitValue(values[i], axis[i].values.first, axis[i].values.last);
      } else {
        y = g.limitValue(values[i], 0, axis[i].values.last);
      }
      points.add(_point(i, axis[i].scaleMethod(y)));
      if (values[i] > axis[i].values.last && showLimitBreaks) {
        dynamic pt = _point(i, 1.1);
        hasLimitBreakers = true;
        outputCvs.add({
          'type': 'ellipse',
          'x': pt['x'],
          'y': pt['y'],
          'r1': cm(0.3),
          'r2': cm(0.3),
          'color': colFill,
//          'lineColor': colLine,
          'fillOpacity': 0.75
        });
      }
    }
    outputCvs.add({
      'type': 'polyline',
      'lineWidth': cm(lw),
      'closePath': true,
      'points': points,
      'fillOpacity': opacity
    });
    if (colLine != null && showAreaLines) outputCvs.last['lineColor'] = colLine;
    if (colFill != null) outputCvs.last['color'] = colFill;

    return calcArea(values);
  }

  dynamic _point(int idx, double factor) {
    var x = xm + math.sin(idx * deg) * axisLength * scale * factor;
    var y = ym - math.cos(idx * deg) * axisLength * scale * factor;
    if (x.isNaN) x = 0;
    if (y.isNaN) y = 0;
    return {'x': cm(x), 'y': cm(y)};
  }

  double calcArea(List<double> values) {
    var ret = 0.0;

    for (var i = 0; i < values.length && i < axis.length; i++) {
      double a = axis[i]._scaleMethod(values[i]);
      double b = axis[i < axis.length - 1 ? i + 1 : 0]
          ._scaleMethod(values[i < values.length - 1 ? i + 1 : 0]);
      ret += a * b / 2 * math.sin(deg);
    }

    return ret;
  }
}

class PrintCGP extends BasePrint {
  @override
  String help = Intl.message(
      '''Dieses Formular zeigt das Comprehensive Glucose Pentagon an, welches die Qualität der 
Glukoseeinstellung in einer schnell zu erfassenden Weise darstellt. Es wird für den ausgewählten Zeitraum angezeigt
wie lange der Glukosewert im Schnitt während des Tages ausserhalb des Zielbereichs war, wie hoch die Intensität
der Überzuckerungen und der Unterzuckerungen war, wie hoch der Mittelwert war und wie hoch die Variabilität der
Werte war.

Diese Grafik kann auch bei @05@ und @08@ ausgegeben werden. 
''',
      desc: 'help for cgp');

  static String get msgParamAreaLines => Intl.message('Linien um Bereiche');

  @override
  String baseId = 'cgp';

  @override
  String baseIdx = '10';

  @override
  String get title => Intl.message('CGP');

  @override
  String get subtitle => Intl.message('Comprehensive Glucose Pentagon');

  bool _isPortrait = true;
  bool showAreaLines;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, BasePrint.msgOrientation,
        list: [Intl.message('Hochformat'), Intl.message('Querformat')]),
    ParamInfo(1, msgParamAreaLines, boolValue: true),
  ];

  @override
  bool get isPortrait => _isPortrait;

  PrintCGP({suffix = null}) {
    footerTextAboveLine = {'x': 0, 'y': 1.2, 'fs': 8, 'text': '${msgSource}'};
    init(suffix);
  }

  @override
  dynamic get estimatePageCount => {'count': 1, 'isEstimated': false};

  @override
  String get backsuffix => isPortraitParam ? '' : 'landscape';

  @override
  void extractParams() {
    switch (params[0].intValue) {
      case 0:
        isPortraitParam = true;
        break;
      case 1:
        isPortraitParam = false;
        break;
    }
    showAreaLines = params[1].boolValue;
  }

  @override
  void fillPages(List<Page> pages) {
    _isPortrait = isPortraitParam;
    pages.add(getPage());
    if (g.showBothUnits) {
      g.glucMGDLIdx = 1;
      pages.add(getPage());
      g.glucMGDLIdx = 2;
    }
  }

  Page getPage() {
    titleInfo = titleInfoBegEnd();
    if (!isPortrait) return getCGPPage(repData.data.days, showAreaLines);

    var cgpSrc =
        calcCGP(repData.data.days, scale, width / 2 - xorg, 0, showAreaLines);
    PentagonData cgp = cgpSrc['cgp'];
    var ret = [
      headerFooter(),
      {
        'relativePosition': {'x': cm(xorg), 'y': cm(yorg)},
        'canvas': cgp.outputCvs
      },
      {
        'relativePosition': {'x': cm(xorg), 'y': cm(yorg)},
        'stack': cgp.outputText
      },
      infoTable(
          cgpSrc,
          cgp.glucInfo['unit'],
          xorg,
          yorg + cgp.ym + cgp.axisLength * cgp.scale + 1.0,
          2.5,
          width - 2 * xorg - 2.5)
    ];
    return Page(isPortrait, ret);
  }

  dynamic infoTable(dynamic cgp, String unit, double x, double y,
      double widthId, double widthText) {
    double pgr = cgp['pgr'];
    return {
      'relativePosition': {'x': cm(x), 'y': cm(y)},
//        'margin': [cm(xorg), cm(0)],
      'layout': 'noBorders',
      'fontSize': fs(8),
      'table': {
        'headerRows': 0,
        'widths': [cm(widthId), cm(widthText)],
        'body': [
          [
            {'text': PentagonData.msgGreen, 'colSpan': 2},
            {}
          ],
          [
            {'text': PentagonData.msgYellow, 'colSpan': 2}, {}
//            {'text': '${cgp['countValid']}'}
          ],
          [
            {
              'text': cgp['cgp'].hasLimitBreakers
                  ? PentagonData.msgYellowCircle
                  : null,
              'colSpan': 2
            }
          ],
          [
            {'text': PentagonData.msgTOR(g.fmtNumber(cgp['tor']))},
            {
              'text': PentagonData.msgTORInfo(
                  '${g.glucFromData(cgp['low'])} ${unit}',
                  '${g.glucFromData(cgp['high'])} ${unit}')
            },
          ],
          [
            {'text': PentagonData.msgCV(g.fmtNumber(cgp['vark']))},
            {'text': PentagonData.msgCVInfo}
          ],
          [
            {'text': PentagonData.msgHYPO(unit, g.glucFromData(cgp['hypo']))},
            {
              'text': PentagonData.msgHYPOInfo(
                  '${g.glucFromData(cgp['low'])} ${unit}')
            }
          ],
          [
            {'text': PentagonData.msgHYPER(unit, g.glucFromData(cgp['hyper']))},
            {
              'text': PentagonData.msgHYPERInfo(
                  '${g.glucFromData(cgp['high'])} ${unit}')
            }
          ],
          [
            {'text': PentagonData.msgMEAN(unit, g.glucFromData(cgp['mean']))},
            {
              'text': PentagonData.msgMEANInfo(
                  hba1c(double.tryParse(g.glucFromData(cgp['mean']))))
            }
          ],
          [
            {
              'margin': [cm(0), cm(0.5), cm(0), cm(0)],
              'text': PentagonData.msgPGR
            },
            {
              'margin': [cm(0), cm(0.5), cm(0), cm(0)],
              'text': PentagonData.msgPGRInfo
            }
          ],
          [
            {'text': PentagonData.msgPGR02, 'bold': pgr != null && pgr < 2.1},
            {
              'text': PentagonData.msgPGR02Info,
              'bold': pgr != null && pgr < 2.1
            }
          ],
          [
            {
              'text': PentagonData.msgPGR23,
              'bold': pgr != null && pgr >= 2.1 && pgr < 3.1
            },
            {
              'text': PentagonData.msgPGR23Info,
              'bold': pgr != null && pgr >= 2.1 && pgr < 3.1
            }
          ],
          [
            {
              'text': PentagonData.msgPGR34,
              'bold': pgr != null && pgr >= 3.1 && pgr < 4.1
            },
            {
              'text': PentagonData.msgPGR34Info,
              'bold': pgr != null && pgr >= 3.1 && pgr < 4.1
            }
          ],
          [
            {
              'text': PentagonData.msgPGR45,
              'bold': pgr != null && pgr >= 4.1 && pgr < 4.6
            },
            {
              'text': PentagonData.msgPGR45Info,
              'bold': pgr != null && pgr >= 4.1 && pgr < 4.6
            }
          ],
          [
            {'text': PentagonData.msgPGR5, 'bold': pgr != null && pgr >= 4.6},
            {
              'text': PentagonData.msgPGR5Info,
              'bold': pgr != null && pgr >= 4.6
            }
          ],
        ]
      }
    };
  }

  dynamic _calcAUC(var data, int low, int high) {
    var hyperAUC = 0.0;
    var hypoAUC = 0.0;

    if (data is DayData) {
      return _calcAUCForDay(data, low, high);
    } else if (data is List<DayData>) {
      // calculate area under curve for values >= 180 mg/dl and values <= 70 mg/dl
      // loop through every day in period
      for (var day in data) {
        var auc = _calcAUCForDay(day, low, high);
        hyperAUC += auc['hyper'];
        hypoAUC += auc['hypo'];
      }

      hyperAUC /= data.length;
      hypoAUC /= data.length;
    }

    return {'hyper': hyperAUC, 'hypo': hypoAUC};
  }

  dynamic _calcAUCForDay(DayData day, int low, int high) {
    var hyperTime = 0.0;
    var hyper = 0.0;
    var hypoTime = 0.0;
    var hypo = 0.0;
    // loop through every entry in the day
    for (var entry in day.entries) {
      if (entry.isGap) continue;
      // if gluc is 180 or above
      // add area under curve for 5 minutes
      if (entry.gluc >= high) {
        hyper += entry.gluc * 5;
        hyperTime += 5;
      }

      // if gluc is 70 or below
      // add area under curve for 5 minutes
      if (entry.gluc <= low) {
        hypo += (70 - entry.gluc) * 5;
        hypoTime += 5;
      }
    }
    // calculate value for hyper
    hyper = math.sqrt(hyper * hyper + hyperTime * hyperTime) / 1000;
    // calculate value for hypo
    hypo = math.sqrt(hypo * hypo + hypoTime * hypoTime) / 1000;

    return {'hyper': hyper, 'hypo': hypo};
  }

  dynamic calcCGP(
      var dayData, double scale, double xm, double ym, bool showAreaLines) {
    var cgp = PentagonData(g, g.getGlucInfo(), cm, fs,
        xm: xm, ym: ym, scale: scale, showAreaLines: showAreaLines);
    cgp.ym += cgp.axisLength * 1.1 * cgp.scale;
    cgp.paintPentagon(1.0, lw, colLine: colCGPLine);
    cgp.paintAxis(lw, colLine: colValue);

    var low = Globals.stdLow;
    var high = Globals.stdHigh;

    if (!g.ppStandardLimits && !g.ppCGPAlwaysStandardLimits) {
      low = repData.status.settings.thresholds.bgTargetBottom;
      high = repData.status.settings.thresholds.bgTargetTop;
    }

    var areaHealthy = cgp.paintValues([0, 16.7, 0, 0, 90], lw,
        colLine: colCGPHealthyLine,
        colFill: colCGPHealthyFill,
        opacity: 0.4,
        showLimitBreaks: false,
        limitValues: false);

    var data = repData.data;
    var totalDay = DayData(null, ProfileGlucData(ProfileStoreData('Intern')));
    totalDay.entries.addAll(data.entries);
    totalDay.init();
    var avgGluc = 0.0;
    var varK = 0.0;
    var countValid = data.countValid;
    var countTiR = data.entries
        .where((entry) =>
            !entry.isGlucInvalid && entry.gluc >= low && entry.gluc <= high)
        .length;
    // ignore: unused_local_variable
    var countAll = data.entries.length;

    if (dayData is DayData) {
      avgGluc = dayData.avgGluc;
      varK = dayData.varK;
      countValid = dayData.entryCountValid;
      countTiR = dayData.entries
          .where((entry) =>
              !entry.isGlucInvalid && entry.gluc >= low && entry.gluc <= high)
          .length;
      countAll = dayData.entries.length;
    } else if (dayData is List<DayData>) {
      countValid = 0;
      countTiR = 0;
      for (var day in dayData) {
        countTiR += day.entries
            .where((entry) =>
                !entry.isGlucInvalid && entry.gluc >= low && entry.gluc <= high)
            .length;
        for (var entry in day.entries) {
          if (!entry.isGlucInvalid) {
            avgGluc += entry.gluc;
            countValid++;
          }
        }
      }
      if (countValid > 0) {
        avgGluc /= countValid;
        var varianz = 0.0;
        for (var day in dayData) {
          for (var entry in day.entries) {
            if (!entry.isGlucInvalid)
              varianz += math.pow(entry.gluc - avgGluc, 2);
          }
        }
        varianz /= countValid;
        if (avgGluc > 0) varK = math.sqrt(varianz) / avgGluc * 100;
      }
    }

    if (countValid > 0 && areaHealthy > 0) {
      var tor = 1440 - countTiR / countValid * 1440;
      var auc = _calcAUC(dayData, low, high);
      double hyperAUC = auc['hyper'];
      double hypoAUC = auc['hypo'];
//*
      var areaPatient = cgp.paintValues(
          [tor, varK, hypoAUC, hyperAUC, avgGluc], lw,
          colLine: colCGPPatientLine, colFill: colCGPPatientFill, opacity: 0.4);
// */
//    double areaPatient = 1.0;
      var pgr = areaPatient / areaHealthy;

      cgp.outputText.add({
        'relativePosition': {
          'x': cm(cgp.xm - 2.5),
          'y': cm(cgp.ym + cgp.axisLength * cgp.scale * 0.9)
        },
        'columns': [
          {
            'width': cm(5.0),
            'text': '${PentagonData.msgPGR} = ${g.fmtNumber(pgr, 1)}',
            'color': colCGPPatientLine,
            'fontSize': fs(12 * cgp.scale),
            'alignment': 'center'
          }
        ]
      });
      return {
        'cgp': cgp,
        'pgr': pgr,
        'mean': avgGluc,
        'hypo': hypoAUC,
        'hyper': hyperAUC,
        'tor': tor,
        'vark': varK,
        'low': low,
        'high': high,
        'countValid': countValid
      };
    }
    return {
      'cgp': cgp,
      'pgr': null,
      'mean': avgGluc,
      'hypo': null,
      'hyper': null,
      'tor': null,
      'vark': varK,
      'low': low,
      'high': high,
      'countValid': countValid
    };
  }
}
