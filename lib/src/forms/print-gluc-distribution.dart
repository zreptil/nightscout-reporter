import 'dart:math' as math;

import 'package:intl/intl.dart';

import '../globals.dart';
import 'base-print.dart';

class GlucDist {
  int count = 0;
  double from = 0.0;
  double to = 0.0;
  String color = '#ff0000';

  GlucDist(this.from, this.to, this.color);
}

class PrintGlucDistribution extends BasePrint {
  @override
  String help =
      Intl.message('''Dieses Formular zeig die Verteilung der Glukosewerte
im ausgewählten Zeitraum an.''', desc: 'help for template');

  @override
  String baseId = 'glucdist';

  @override
  String baseIdx = '15';

  @override
  String get title => Intl.message('Verteilung der Glukosewerte');

  bool startAt0;
  double glucSpan;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, msgParam1, boolValue: false, thumbValue: false),
    ParamInfo(1, msgParam2, list: ['5', '10', '20', '50'])
  ];

  @override
  bool get isPortrait => false;

  PrintGlucDistribution({suffix = null}) {
    init(suffix);
  }

  @override
  void extractParams() {
    startAt0 = params[0].boolValue;
    glucSpan = double.tryParse(params[1].listValue ?? '') ?? 10;
  }

  @override
  dynamic get estimatePageCount => {'count': 1, 'isEstimated': false};

  static String get msgParam1 => Intl.message('Bei 0 beginnen');
  static String get msgParam2 => Intl.message('Schritte');

  @override
  void fillPages(List<Page> pages) {
    pages.add(getPage());
    if (g.showBothUnits) {
      g.glucMGDLIdx = 1;
      pages.add(getPage());
      g.glucMGDLIdx = 2;
    }
  }

  double graphWidth;
  double graphHeight;

  dynamic getArea(dynamic points, String color) {
    return {
      'type': 'polyline',
      'lineWidth': cm(lw),
      'closePath': true,
      'lineColor': color,
      'color': color,
      'points': points
    };
  }

  Page getPage() {
    titleInfo = titleInfoBegEnd();
    var data = repData.data;

    graphWidth = 23.25;
    graphHeight = 12.5;
    var glucMax = 0.0;
    var glucMin = 100000.0;
//    var glucSpan = 1.0;
    var startDate = DateTime(
        repData.begDate.year, repData.begDate.month, repData.begDate.day);
    var endDate = DateTime(
        repData.endDate.year, repData.endDate.month, repData.endDate.day + 1);

    for (var day in data.days) {
      for (var entry in day.entries) {
        if (entry.gluc > 0) {
          glucMin = math.min(entry.gluc, glucMin);
          glucMax = math.max(entry.gluc, glucMax);
        }
      }
    }
    glucMin = startAt0 ? 0 : glucMin;
    glucMax = glucMax + glucSpan;
    var values = List<GlucDist>();
    //.filled((glucMax / glucSpan).toInt() + 1, null);
    var low = g.ppStandardLimits
        ? Globals.stdLow
        : repData.status.settings.thresholds.bgTargetBottom;
    var high = g.ppStandardLimits
        ? Globals.stdHigh
        : repData.status.settings.thresholds.bgTargetTop;
    var lowCount = 0;
    var highCount = 0;
    for (var g = 0.0; g <= glucMax; g += glucSpan) {
      var from = g;
      var to = g + glucSpan;
      if (from < low && to > low) {
        values.add(GlucDist(from, low.toDouble(), colLow));
        from = low.toDouble();
      }
      if (from < high && to > high) {
        values.add(GlucDist(from, high.toDouble(), colNorm));
        from = high.toDouble();
      }
      var color = from < low ? colLow : (from >= high ? colHigh : colNorm);
      values.add(GlucDist(from, to, color));
    }
    // values.clear();
    // values.add(GlucDist(0, 120, '#00ff00'));
    // values.add(GlucDist(120, 135, '#00ff00'));
    // values.add(GlucDist(135, 300, '#00ff00'));
    // values.add(GlucDist(300, 820, '#00ff00'));
    var count = 0;
    var countMax = 0;
    for (var day in data.days) {
      for (var entry in day.entries) {
        if (entry.gluc > 0) {
          var v = values
              .firstWhere((e) => e.from < entry.gluc && e.to >= entry.gluc);
          if (v != null) {
            v.count++;
            if (v.from < low) {
              lowCount++;
            } else if (v.from >= high) {
              highCount++;
            }
            countMax = math.max(countMax, v.count);
          }
          count++;
        }
      }
    }

    var xo = xorg;
    var yo = yorg;
    var vertLines = {
      'relativePosition': {'x': cm(xo), 'y': cm(yo)},
      'canvas': []
    };
    var horzLines = {
      'relativePosition': {'x': cm(xo), 'y': cm(yo)},
      'canvas': []
    };
    var horzLegend = {'stack': []};
    var vertLegend = {'stack': []};
    var vertCvs = vertLines['canvas'] as List;
    var horzCvs = horzLines['canvas'] as List;
    var horzStack = horzLegend['stack'];
    var vertStack = vertLegend['stack'];
    // var grid = drawGraphicGrid(glucMax, graphHeight, graphWidth, vertCvs,
    //     horzCvs, horzStack, vertStack,
    //     graphBottom: 0);

    var graphBottom = graphHeight;
    var horzfs = fs(8);
    var vertfs = fs(8);
    var valueMax = (countMax / count * 100).ceil() + 1;
    var xf = graphWidth / (glucMax);
    var yf = graphHeight / (valueMax / 100);

    dynamic points = [
      {'x': cm(0), 'y': cm(graphBottom)}
    ];
    var graphGluc = {
      'relativePosition': {'x': cm(xo), 'y': cm(yo)},
      'canvas': []
    };
    var idx = 0;
    var checks = [low, high - 1, 9999];
    var colors = [colLow, colNorm, colHigh];
    var lastX = -100.0;
    for (var i = 0; i < values.length; i++) {
      var x = values[i].from * xf;
      var y = graphBottom - values[i].count / count * yf;
      if (values[i].from >= checks[idx]) {
        points.add({'x': cm(x), 'y': cm(graphBottom)});
        (graphGluc['canvas'] as List).add(getArea(points, colors[idx]));
        points = [
          {'x': cm(x), 'y': cm(graphBottom)}
        ];
        idx++;
      }
      points.add({'x': cm(x), 'y': cm(y)});
      points.add({'x': cm(values[i].to * xf), 'y': cm(y)});
      vertCvs.add({
        'type': 'line',
        'x1': cm(x),
        'y1': cm(0),
        'x2': cm(x),
        'y2': cm(i > 0 ? graphBottom - lw / 2 : graphBottom + 0.4),
        'lineWidth': cm(lw),
        'lineColor': i > 0 ? lc : lcFrame
      });
      if (i < values.length && x - lastX > 1) {
        // legend at horizontal axis
        horzStack.add({
          'relativePosition': {
            'x': cm(xorg + x),
            'y': cm(yorg + graphBottom + 0.5)
          },
          'text': g.glucFromData(values[i].from),
          'fontSize': horzfs
        });
        lastX = x;
      }
    }

    horzStack.add({
      'relativePosition': {'x': cm(xorg), 'y': cm(yorg + graphBottom + 1.0)},
      'columns': [
        {
          'width': cm(graphWidth),
          'text': g.getGlucInfo()['unit'],
          'fontSize': horzfs * 2,
          'alignment': 'center'
        }
      ]
    });

    var lastY = 100.0;
    for (var i = 0.0; i < valueMax / 100; i += 0.01) {
      var y = graphBottom - i * yf;
      if (lastY - y > 0.5) {
        horzCvs.add({
          'type': 'line',
          'x1': cm(-0.1),
          'y1': cm(y),
          'x2': cm(graphWidth + 0.2),
          'y2': cm(y),
          'lineWidth': cm(lw),
          'lineColor': i == 0.0 ? lcFrame : lc
        });
        vertStack.add({
          'relativePosition': {'x': cm(xorg - 1.3), 'y': cm(yorg + y - 0.15)},
          'columns': [
            {
              'width': cm(1),
              'text': '${g.fmtNumber(i * 100)} %',
              'fontSize': vertfs,
              'alignment': 'right'
            }
          ]
        });
        // legend at vertical axis
        vertStack.add({
          'relativePosition': {
            'x': cm(xorg + graphWidth + 0.4),
            'y': cm(yorg + y - 0.15)
          },
          'columns': [
            {
              'width': cm(1),
              'text': '${g.fmtNumber(i * 100)} %',
              'fontSize': vertfs,
            }
          ]
        });
        lastY = y;
      }
    }

    points.add({'x': cm(graphWidth), 'y': cm(graphBottom)});
    (graphGluc['canvas'] as List).add(getArea(points, colors[idx]));

    // vertical line at the right side
    var x = graphWidth;
    vertCvs.add({
      'type': 'line',
      'x1': cm(x),
      'y1': cm(0),
      'x2': cm(x),
      'y2': cm(graphBottom + 0.4),
      'lineWidth': cm(lw),
      'lineColor': lcFrame
    });

    var bottomBar = {
      'stack': [
        {
          'relativePosition': {'x': cm(xorg), 'y': cm(yorg + graphBottom)},
          'columns': [
            {
              'canvas': [
                {
                  'type': 'rect',
                  'x': cm(0),
                  'y': cm(0),
                  'w': cm(low * xf),
                  'h': cm(0.4),
                  'color': colLowBack
                },
                {
                  'type': 'rect',
                  'x': cm(low * xf),
                  'y': cm(0),
                  'w': cm((high - low) * xf),
                  'h': cm(0.4),
                  'color': colNormBack
                },
                {
                  'type': 'rect',
                  'x': cm(high * xf),
                  'y': cm(0),
                  'w': cm(graphWidth - high * xf),
                  'h': cm(0.4),
                  'color': colHighBack
                }
              ]
            }
          ]
        },
        {
          'relativePosition': {
            'x': cm(xorg),
            'y': cm(yorg + graphBottom + 0.05)
          },
          'columns': [
            {
              'width': cm(low * xf),
              'text': '${g.fmtNumber(lowCount / count * 100, 1)} %',
              'alignment': 'center',
              'fontSize': vertfs,
              'bold': true
            },
            {
              'width': cm((high - low) * xf),
              'text':
                  '${g.fmtNumber((count - lowCount - highCount) / count * 100, 1)} %',
              'alignment': 'center',
              'fontSize': vertfs,
              'bold': true
            },
            {
              'width': cm((glucMax - high) * xf),
              'text': '${g.fmtNumber(highCount / count * 100, 1)} %',
              'alignment': 'center',
              'fontSize': vertfs,
              'bold': true
            }
          ]
        }
      ]
    };

    var ret = [
      headerFooter(),
      bottomBar,
      graphGluc,
      horzLines,
      vertLines,
      vertLegend,
      horzLegend
    ];

    // ret.add({'type': 'text', 'text': '${valueMax}'});

    return Page(isPortrait, ret);
  }
}
