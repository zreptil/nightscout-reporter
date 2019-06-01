import 'dart:math' as math;

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';

class PentagonScaleData
{
  String name;
  double beg, end, nameX, nameY, valueX, valueY;
  List<double> values;
  var _scaleMethod = null;
  double scaleMethod(v)
  => _scaleMethod(v) / 76;

  PentagonScaleData(this.values,
                    {this.name, this.beg = 0.0, this.end = 1.0, this.nameX = 0.0, this.nameY = 0.0, this.valueX = 0.0, this.valueY = 0.0, scaleMethod = null})
  {
    _scaleMethod = scaleMethod;
  }
}

class PentagonData
{
  /*
    Quellangabe:

    Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018).
    The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing
    Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology,
    12(1), 114–123.

    https://doi.org/10.1177/1932296817718561
   */
  List<PentagonScaleData> axis = [PentagonScaleData([0, 300, 480, 720, 900, 1080, 1200, 1440], scaleMethod: (v)
  => math.pow(v * 0.00614, 1.581) + 14,
    name: "ToR [min/d]",
    nameX: -2.5,
    nameY: -0.4,
    valueX: 0.15,
    valueY: -0.11), PentagonScaleData([16.7, 20, 30, 40, 50, 60, 70, 80], scaleMethod: (v)
  => (v - 17) * 0.92 + 14,
    name: "CV [%]",
    nameX: -2.5,
    nameY: -0.4,
    valueX: -0.1,
    valueY: 0.1), PentagonScaleData([0, 3, 4, 5, 6, 7, 7.2], scaleMethod: (v)
  => math.exp(v * 0.57) + 13,
    name: "Intensity HYPO\n[mg/dl x min²]",
    end: 0.25,
    nameX: -2.5,
    nameY: 0.0,
    valueX: -0.2,
    valueY: 0.1), PentagonScaleData([0, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130], scaleMethod: (v)
  => math.pow(v * 0.115, 1.51) + 14,
    name: "Intensity HYPER\n[mg/dl x min²]",
    beg: 0.25,
    nameX: -2.5,
    nameY: 0.0,
    valueX: 0.1,
    valueY: 0.1), PentagonScaleData([130, 190, 220, 250, 280, 310], scaleMethod: (v)
  => math.pow((v - 90) * 0.0217, 2.63) + 14,
    name: "Mean glucose\n[mg/dl]",
    nameX: -2.5,
    nameY: -0.73,
    valueX: -0.2,
    valueY: 0.1),
  ];
  double defFontSize = 6;
  double xm, ym, scale, fontsize;
  double _axisLength;
  double deg;
  var cm, fs;
  var outputCvs = [];
  var outputText = [];

  PentagonData(this.cm, this.fs, {this.xm, this.ym, this.scale, this.fontsize = -1})
  {
    deg = (360.0 / axis.length) * math.pi / 180.0;
    double h = 7.6;
    double a = h / math.sqrt(5 + 2 * math.sqrt(5)) * 2;
    _axisLength = math.sqrt(50 + 10 * math.sqrt(5)) / 10 * a;
    if (fontsize == -1)fontsize = defFontSize;
    fontsize *= scale;
  }

  paintPentagon(double factor, double lw, {String colLine = null, String colFill = null, double opacity: 1.0})
  {
    var points = [];
    for (int i = 0; i < axis.length; i++)
      points.add(_point(i, factor));
    outputCvs.add(
      {"type": "polyline", "lineWidth": cm(lw), "closePath": true, "points": points, "fillOpacity": opacity});
    if (colLine != null)outputCvs.last["lineColor"] = colLine;
    if (colFill != null)outputCvs.last["color"] = colFill;
  }

  paintAxis(double lw, {String colLine = null})
  {
    for (int i = 0; i < axis.length; i++)
    {
      if (i > 11)continue;
      var pt = _point(i, 1.10);
      outputCvs.add({"type": "line", "x1": cm(xm), "y1": cm(ym), "x2": pt["x"], "y2": pt["y"], "lineWidth": cm(lw)});
      if (colLine != null)outputCvs.last["lineColor"] = colLine;
      outputText.add({
        "relativePosition": {
          "x": pt["x"] + cm(axis[i].nameX * fontsize / defFontSize),
          "y": pt["y"] + cm(axis[i].nameY * fontsize / defFontSize)
        },
        "columns": [
          {
            "width": cm(5 * fontsize / defFontSize),
            "text": axis[i].name,
            "fontSize": fs(fontsize),
            "alignment": "center"
          }
        ]
      });
      pt = _point(i, 1.0);
      double dx = pt["x"] - cm(xm);
      double dy = pt["y"] - cm(ym);
      for (double value in axis[i].values)
      {
        pt = _point(i, axis[i].scaleMethod(value));
        double x = pt["x"];
        double y = pt["y"];
        double f = 0.05;
        double x1 = x + 0.5 * dy * f;
        double y1 = y - 0.5 * dx * f;
        double x2 = x - 0.5 * dy * f;
        double y2 = y + 0.5 * dx * f;
        outputCvs.add({"type": "line", "x1": x1, "y1": y1, "x2": x2, "y2": y2, "lineWidth": cm(lw)});
        if (colLine != null)outputCvs.last["lineColor"] = colLine;
        outputText.add({
          "relativePosition": {
            "x": x + cm(axis[i].valueX * fontsize / defFontSize),
            "y": y + cm(axis[i].valueY * fontsize / defFontSize)
          },
          "text": value,
          "fontSize": fs(fontsize * 0.7)
        });
      }
    }
  }

  double paintValues(List<double> values, double lw,
                     {String colLine = null, String colFill = null, double opacity: 1.0})
  {
    var points = [];
    for (int i = 0; i < values.length && i < axis.length; i++)
    {
      points.add(_point(i, axis[i].scaleMethod(values[i])));
    }
    outputCvs.add(
      {"type": "polyline", "lineWidth": cm(lw), "closePath": true, "points": points, "fillOpacity": opacity});
    if (colLine != null)outputCvs.last["lineColor"] = colLine;
    if (colFill != null)outputCvs.last["color"] = colFill;

    return calcArea(values);
  }

  _point(int idx, double factor)
  {
    double x = xm + math.sin(idx * deg) * _axisLength * scale * factor;
    double y = ym - math.cos(idx * deg) * _axisLength * scale * factor;
    return {"x": cm(x), "y": cm(y)};
  }

  double calcArea(List<double> values)
  {
    double ret = 0.0;

    for (int i = 0; i < values.length && i < axis.length; i++)
    {
      double a = axis[i]._scaleMethod(values[i]);
      double b = axis[i < axis.length - 1 ? i + 1 : 0]._scaleMethod(values[i < values.length - 1 ? i + 1 : 0]);
      ret += a * b / 2 * math.sin(deg);
    }

    return ret;
  }
}

class PrintCGP extends BasePrint
{
  @override
  String id = "cgp";

  @override
  String title = Intl.message("CGP");

  @override
  String subtitle = Intl.message("Comprehensive Glucose Pentagon");

  @override
  List<ParamInfo> params = [];

  @override
  bool get isPortrait
  => true;

  PrintCGP()
  {
    init();
  }

  @override
  prepareData_(ReportData data)
  {
//    isPreciseMaterial = params[0].boolValue;

    return data;
  }

  @override
  void fillPages(ReportData src, List<List<dynamic>> pages)
  {
    pages.add(getPage(src));
  }

  getPage(ReportData src)
  {
    titleInfo = titleInfoBegEnd(src);

    PentagonData cgp = PentagonData(cm, fs, xm: width / 2 - xorg, ym: 0, scale: 1.0);
    cgp.ym += cgp._axisLength * 1.1 * cgp.scale;

    cgp.paintPentagon(1.0, lw, colLine: colCGPLine);
    cgp.paintAxis(lw, colLine: colValue);
    double areaHealthy = cgp.paintValues(
      [0, 16.7, 0, 0, 90], lw, colLine: colCGPHealthyLine, colFill: colCGPHealthyFill, opacity: 0.4);
//    cgp.paint(0.54, lw, colLine: colValue);
//    cgp.paint(0.28, lw, colLine: colValue);
//    cgp.paint(0.20, lw, colLine: colValue, colFill: "#00ff00", opacity: 0.4);
//    cgp.paint(0.18, lw, colLine: colValue);

    var data = src.ns;
    DayData totalDay = DayData(null, ProfileGlucData(ProfileStoreData("Intern")));
    totalDay.entries.addAll(data.entries);
    totalDay.init();
    double tor = 1440 - data.stat["norm"].values.length / data.count * 1440;

    double hyperAUC = 0.0;
    double hypoAUC = 0.0;

    // calculate area under curve for values >= 160 mg/dl and values <= 54 mg/dl
    // loop through every day in period
    for (DayData day in src.calc.days)
    {
      double hyperDay = 0.0;
      double hyperDayTime = 0.0;
      double hypoDay = 0.0;
      double hypoDayTime = 0.0;
      // loop through every entry in the day
      for (EntryData entry in day.entries)
      {
        // if gluc is 160 or above
        // add area under curve for 5 minutes
        if (entry.gluc >= 160)
        {
          hyperDay += entry.gluc * 5;
          hyperDayTime += 5;
        }

        // if gluc is 54 or below
        // add area under curve for 5 minutes
        if (entry.gluc <= 54)
        {
          hypoDay += entry.gluc * 5;
          hypoDayTime += 5;
        }
      }
      // calculate value for hyper
      double h = math.sqrt(hyperDay * hyperDay + hyperDayTime * hyperDayTime) / 1000;
      // calculate mean value of this value and last value
      hyperAUC = hyperAUC == 0.0 ? h : (hyperAUC + h) / 2;
      // calculate value for hypo
      h = math.sqrt(hypoDay * hypoDay + hypoDayTime * hypoDayTime) / 1000;
      // calculate mean value of this value and last value
      hypoAUC = (hypoAUC == 0.0) ? h : (hypoAUC + h) / 2;
    }

    double areaPatient = cgp.paintValues(
      [tor, totalDay.varK, hypoAUC, hyperAUC, data.avgGluc], lw, colLine: colCGPPatientLine,
      colFill: colCGPPatientFill,
      opacity: 0.4);

    cgp.outputText.add({
      "relativePosition": {"x": cm(cgp.xm + cgp._axisLength / 2), "y": cm(cgp.ym - cgp._axisLength)},
      "text": "PGR = ${g.fmtNumber(areaPatient / areaHealthy, 1)}",
      "color": colCGPPatientLine,
      "fontSize": fs(12)
    });

    cgp.outputText.add({
      "absolutePosition": {"x": cm(xframe), "y": cm(height - 3.3)},
      "columns": [
        {
          "width": cm(width - 2 * xframe),
          "text": "${msgSource}: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon:\nA Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)",
          "color": colValue,
          "fontSize": fs(8),
          "alignment": "justify"
        }
      ]
    });

// */
    var ret = [
      headerFooter(),
      {"relativePosition": {"x": cm(xorg), "y": cm(yorg)}, "canvas": cgp.outputCvs},
      {"relativePosition": {"x": cm(xorg), "y": cm(yorg)}, "stack": cgp.outputText}
    ];
    return ret;
  }
}