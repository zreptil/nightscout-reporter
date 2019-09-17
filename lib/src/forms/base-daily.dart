import 'package:intl/intl.dart';

import 'base-print.dart';

abstract class BaseDaily extends BasePrint
{
  bool showSMB, showSMBAtGluc;

  double graphHeight;

  static String get msgDaily1
  => Intl.message("SMB Werte anzeigen");
  static String get msgDaily2
  => Intl.message("SMB an der Kurve platzieren");

  double smbY(double value)
  => graphHeight / 50 * value;

  paintSMB(double insulin, double x, double y, List cvs)
  {
    double h = smbY(insulin) * 2;
    cvs.add({
      "type": "polyline",
      "closePath": true,
      "_lineColor": "#000000",
      "color": colBolus,
      "lineWidth": cm(0),
      "points": [
        {"x": cm(x), "y": cm(y)},
        {"x": cm(x + 0.1), "y": cm(y - h - 0.1)},
        {"x": cm(x - 0.1), "y": cm(y - h - 0.1)}
      ],
    });
  }
}