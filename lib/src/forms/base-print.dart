import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'dart:math';
import 'dart:typed_data';

import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;

class PrintParams
{
  String key;
  var value;
  String desc;
  String type;

  PrintParams(this.key, this.value, this.desc)
  {
    if (value is bool)type = "bool";
    else if (value is String)type = "string";
  }
}

abstract class BasePrint
{
  globals.Globals g = new globals.Globals();

  String id;
  String name;
  String title;
  String titleInfo;
  bool get isDebugOnly
  => false;
  List<PrintParams> params = List<PrintParams>();

  String colText = "#008800";
  String colInfo = "#808080";
  String colLine = "#606060";
  String colValue = "#000000";
  String colBasal = "#0097a7";
  String colBasalFont = "#fff";
  String colLow = "#ff6666";
  String colNorm = "#00cc00";
  String colHigh = "#cccc00";
  String colTargetArea = "#00a000";
  String colTargetValue = "#3333aa";

  double xorg = 3.35;
  double yorg = 3.9;
  double lw = 0.03;
  String lc = "#a0a0a0";
  String lcFrame = "#000000";

  bool get isPortrait
  => true;
  double get width
  => isPortrait ? 21.0 : 29.7;
  double get height
  => isPortrait ? 29.7 : 21.0;

  get msgInsulinUnit
  => Intl.message("IE");
  get msgMedian
  => Intl.message("Median");
  get msgTargetArea
  => Intl.message("Zielbereich");
  String get msgTargetValue
  => Intl.message("Zielwert");
  String get msgGlucosekurve
  => Intl.message("Glukosekurve");
  String get msgBasalrate
  => Intl.message("Basalrate");

  Object get header
  {
    bool isInput = false;
    var ret = {"stack": []};
    if (isPortrait)
    {
      if (isInput)
      {
        ret["stack"].add({
          "absolutePosition": {"x": 0, "y": 0},
          "canvas": [
            {
              "type": "rect",
              "x": cm(0.0),
              "y": 0,
              "w": cm(1.6),
              "h": cm(0.55),
              "color": "#d69a2e"
            },
            {
              "type": "rect",
              "x": cm(1.6),
              "y": 0,
              "w": cm(1.6),
              "h": cm(0.55),
              "color": "#2e4736"
            },
            {
              "type": "rect",
              "x": cm(3.2),
              "y": 0,
              "w": cm(1.6),
              "h": cm(0.55),
              "color": "#662c40"
            },
            {
              "type": "rect",
              "x": cm(4.8),
              "y": 0,
              "w": cm(1.6),
              "h": cm(0.55),
              "color": "#343a49"
            },
            {
              "type": "rect",
              "x": cm(6.4),
              "y": 0,
              "w": cm(1.6),
              "h": cm(0.55),
              "color": "#528c8e"
            },
            {
              "type": "rect",
              "x": cm(8.0),
              "y": 0,
              "w": cm(1.6),
              "h": cm(0.55),
              "color": "#362946"
            },
            {
              "type": "rect",
              "x": cm(9.6),
              "y": 0,
              "w": cm(1.6),
              "h": cm(0.55),
              "color": "#6b8133"
            },
            {
              "type": "rect",
              "x": cm(11.2),
              "y": 0,
              "w": cm(1.6),
              "h": cm(0.55),
              "color": "#2a3b56"
            },
            {
              "type": "rect",
              "x": cm(12.8),
              "y": 0,
              "w": cm(1.6),
              "h": cm(0.55),
              "color": "#862d2e"
            },
            {
              "type": "rect",
              "x": cm(14.4),
              "y": 0,
              "w": cm(1.6),
              "h": cm(0.55),
              "color": "#607f6e"
            },
            {
              "type": "rect",
              "x": cm(16.0),
              "y": 0,
              "w": cm(1.6),
              "h": cm(0.55),
              "color": "#273d3f"
            },
            {
              "type": "rect",
              "x": cm(17.6),
              "y": 0,
              "w": cm(1.6),
              "h": cm(0.55),
              "color": "#a5916d"
            }
          ]
        });
      }
    }
    else
    {
      if (isInput)
      {
        ret["stack"].add({
          "absolutePosition": {"x": 0, "y": 0},
          "canvas": [
            {
              "type": "rect",
              "x": cm(0.0),
              "y": 0,
              "w": cm(2.2),
              "h": cm(0.55),
              "color": "#d69a2e"
            },
            {
              "type": "rect",
              "x": cm(2.2),
              "y": 0,
              "w": cm(2.3),
              "h": cm(0.55),
              "color": "#2e4736"
            },
            {
              "type": "rect",
              "x": cm(4.5),
              "y": 0,
              "w": cm(2.3),
              "h": cm(0.55),
              "color": "#662c40"
            },
            {
              "type": "rect",
              "x": cm(6.8),
              "y": 0,
              "w": cm(2.25),
              "h": cm(0.55),
              "color": "#343a49"
            },
            {
              "type": "rect",
              "x": cm(9.05),
              "y": 0,
              "w": cm(2.3),
              "h": cm(0.55),
              "color": "#528c8e"
            },
            {
              "type": "rect",
              "x": cm(11.35),
              "y": 0,
              "w": cm(2.25),
              "h": cm(0.55),
              "color": "#362946"
            },
            {
              "type": "rect",
              "x": cm(13.6),
              "y": 0,
              "w": cm(2.3),
              "h": cm(0.55),
              "color": "#6b8133"
            },
            {
              "type": "rect",
              "x": cm(15.9),
              "y": 0,
              "w": cm(2.25),
              "h": cm(0.55),
              "color": "#2a3b56"
            },
            {
              "type": "rect",
              "x": cm(18.15),
              "y": 0,
              "w": cm(2.3),
              "h": cm(0.55),
              "color": "#862d2e"
            },
            {
              "type": "rect",
              "x": cm(20.45),
              "y": 0,
              "w": cm(2.3),
              "h": cm(0.55),
              "color": "#607f6e"
            },
            {
              "type": "rect",
              "x": cm(22.75),
              "y": 0,
              "w": cm(2.3),
              "h": cm(0.55),
              "color": "#273d3f"
            },
            {
              "type": "rect",
              "x": cm(25.05),
              "y": 0,
              "w": cm(2.3),
              "h": cm(0.55),
              "color": "#a5916d"
            },
          ],
        });
      }
    }

    ret["stack"].add({
      "absolutePosition": {"x": cm(2.2), "y": cm(1.0)},
      "text": title,
      "fontSize": "36",
      "color": colText,
      "bold": true
    });
    ret["stack"].add({
      "absolutePosition": {"x": cm(2.2), "y": cm(1.85)},
      "columns": [ {
        "width": cm(width - 4.4),
        "text": titleInfo,
        "fontSize": "10",
        "color": colInfo,
        "bold": true,
        "alignment": "right"
      }
      ]
    });
    ret["stack"].add({
      "absolutePosition": {"x": cm(2.2), "y": cm(2.95)},
      "canvas": [ {
        "type": "line",
        "x1": 0,
        "y1": 0,
        "x2": cm(width - 4.4),
        "y2": 0,
        "lineWidth": cm(0.2),
        "lineColor": colText
      }
      ]
    });

    return ret;
  }

  Object footer({bool addPageBreak = false})
  {
    bool isInput = false;
    var ret;
    ret = {
      "stack": [
        {
          "absolutePosition": {"x": cm(2.2), "y": cm(height - 2.0)},
          "canvas": [ {
            "type": "line",
            "x1": 0,
            "y1": 0,
            "x2": cm(width - 4.4),
            "y2": 0,
            "lineWidth": cm(0.05),
            "lineColor": colText
          }
          ]
        },
        getImage("nightscout", x: 2.2, y: height - 1.7, width: 0.7),
        {
          "absolutePosition": {"x": cm(3.1), "y": cm(height - 1.7)},
          "text": "http://www.nightscout.info",
          "color": colInfo,
          "fontSize": "10"
        },
        isInput
          ? getImage("input", x: width - 5.6, y: height - 3.3, width: 4.0)
          : {},
        {
          "absolutePosition": {"x": cm(2.2), "y": cm(height - 1.7)},
          "columns": [ {
            "width": cm(width - 4.4),
            "text": "${g.userName}, *${fmtDate(g.birthDate)}",
            "color": colInfo,
            "alignment": "right",
            "fontSize": "10"
          }
          ]
        },
      ],
      "pageBreak": "",
    };

    if (addPageBreak)ret["pageBreak"] = "after";

    return ret;
  }

  var m0 = [0, 0, 0, 0];

  Map<String, String> images = Map<String, String>();
  List<String> get imgList
  => ["nightscout-pale", "nightscout",];

  bool _checked = false;

  bool get checked
  => _checked;
  set checked(bool value)
  {
    _checked = value;
    window.localStorage["form$id"] = _checked.toString();
  }

  void init()
  {
    checked = window.localStorage["form$id"] == "true";
  }

  Future<String> getBase64Image(String id)
  async {
    var response = await HttpRequest.request(
      "packages/nightscout_reporter/assets/img/$id.png",
      responseType: "arraybuffer");
    if (response.response is ByteBuffer)
    {
      String ret = base64.encode(
        (response.response as ByteBuffer).asUint8List());
      return "data:image/png;base64,${ret}";
    }

    return "";
  }

  prepareData_(globals.ReportData data);

  getImage(String id, {double x, double y, double width, double height = 0.0})
  {
    var ret = {"absolutePosition": {"x": cm(x), "y": cm(y)}, "image": id};

    if (images[id] != null)
    {
      if (width != 0 && height != 0)ret["fit"] = [cm(width), cm(height)];
      else if (width != 0)ret["width"] = cm(width);
      else if (height != 0)ret["height"] = cm(height);
    }
    else
    {
      ret = {
        "stack": [
          {
            "absolutePosition": {"x": cm(x), "y": cm(y)},
            "canvas": [ {
              "type": "rect",
              "x": cm(0),
              "y": cm(0),
              "w": cm(max(width, 0.01)),
              "h": cm(max(height, 0.01)),
              "lineWidth": cm(0.01),
              "lineColor": "#f00"
            }
            ]
          },
          {
            "absolutePosition": {"x": cm(x), "y": cm(y)},
            "text": "bild\n$id\nfehlt",
            "color": "#f00"
          }
        ]
      };
    }
    return ret;
  }

  getFormData(globals.ReportData data)
  async {
    for (String id in imgList)
    {
      try
      {
        images[id] = await getBase64Image(id);
      }
      catch (ex)
      {
        images[id] = await getBase64Image("nightscout");
      }
    }

    var ret;
    try
    {
      ret = await getFormData_(prepareData_(data));
    }
    catch (ex, s)
    {
      ret = {
        "pageSize": "a4",
        "pageOrientation": "portrait",
        "pageMargins": [cm(1), cm(1), cm(1), cm(1)],
        "content": [
          {
            "text": "Fehler bei Erstellung von \"${name}\"",
            "fontSize": 20,
            "alignment": "center",
            "color": "red"
          },
          { "text": "\n$ex", "fontSize": 10, "alignment": "left"},
          { "text": "\n$s", "fontSize": 10, "alignment": "left"}
        ]
      };
      ret = [
        {
          "margin": [cm(1.0), cm(0.5), cm(1.0), cm(0)],
          "text": "Fehler bei Erstellung von \"${name}\"",
          "fontSize": 20,
          "alignment": "center",
          "color": "red"
        },
        {
          "margin": [cm(1.0), cm(0.0), cm(1.0), cm(0)],
          "text": "\n$ex",
          "fontSize": 10,
          "alignment": "left"
        },
        {
          "margin": [cm(1.0), cm(0.5), cm(1.0), cm(0)],
          "text": "\n$s",
          "fontSize": 10,
          "alignment": "left"
        }
      ];
    }
    checked = window.localStorage["form$id"] == "true";
    return ret;
  }

  getFormData_(globals.ReportData src);

  num Num(var text)
  {
    if (!(text is String))return text;

    return num.tryParse(text.toString().replaceAll(",", "."));
  }

  num mm(pt)
  {
    return pt / 0.35277;
  }

  num cm(pt)
  {
    return pt / 0.035277;
  }

  String fmtNumber(num value, [num decimals = 0, bool fillfront0 = false])
  {
    String fmt = "#,##0";
    if (decimals > 0)fmt = "$fmt.".padRight(decimals + 6, "0");
    NumberFormat nf = NumberFormat(fmt, "de_DE");
    return nf.format(value);
  }

  String fmtTime(var date, [var def = null])
  {
    if (def == null)def = "";
    if (date == null)return def;

    if (date is DateTime)
      return "${(date.hour < 10 ? "0" : "")}${date.hour}:${(date.minute < 10
        ? "0"
        : "")}${date.minute}";

    if (date is int)
    {
      if (g.language.code == "de_DE")return "${fmtNumber(date, 0)}:00";

      if (date <= 12)return "${fmtNumber(date, 0)} am";
      else
        return "${fmtNumber(date - 12, 0)} pm";
    }

    return date;
  }

  String fmtDateTime(var date, [var def = null])
  {
    if (def == null)def = "";
    if (date == null)return def;

    if (date is DateTime)
      return "${(date.day < 10 ? "0" : "")}${date.day}.${(date.month < 10
        ? "0"
        : "")}${date.month}.${date.year} ${(date.hour < 10 ? "0" : "")}${date
        .hour}:${(date.minute < 10 ? "0" : "")}${date.minute} Uhr";

    return date;
  }

  String fmtDate(var date, [var def = null])
  {
    if (def == null)def = "";
    if (date == null)return def;

    if (date is Date || date is DateTime)
      return "${(date.day < 10 ? "0" : "")}${date.day}.${(date.month < 10
        ? "0"
        : "")}${date.month}.${date.year}";

    if (date is String && date.length >= 8)
      return "${date.substring(6, 8)}.${date.substring(4, 6)}.${date.substring(
        0, 4)}";

    return date;
  }

  String blendColor(String from, String to, num factor)
  {
    if (from.length == 7)from = from.substring(1);
    if (to.length == 7)to = to.substring(1);
    var rf = int.tryParse(from.substring(0, 2), radix: 16);
    var gf = int.tryParse(from.substring(2, 4), radix: 16);
    var bf = int.tryParse(from.substring(4, 6), radix: 16);
    var rt = int.tryParse(to.substring(0, 2), radix: 16);
    var gt = int.tryParse(to.substring(2, 4), radix: 16);
    var bt = int.tryParse(to.substring(4, 6), radix: 16);

    var r = (rf + (rt - rf) * factor).floor();
    var g = (gf + (gt - gf) * factor).floor();
    var b = (bf + (bt - bf) * factor).floor();

    return "#${radixString(r)}${radixString(g)}${radixString(b)}";
  }

  String radixString(int value)
  {
    String ret = value.toRadixString(16);
    while (ret.length < 2)ret = "0$ret";
    return ret;
  }

  getGlucInfo()
  {
    var ret = {"step": 1, "unit": "mg/dl"};
    if (!g.glucMGDL)ret = {"step": 0.1, "unit": "mmol/l"};

    return ret;
  }

  String glucFromData(var gluc)
  {
    if (gluc is String)gluc = double.tryParse(gluc);
    if (!(gluc is num) || gluc == 0)return "";

    if (!g.glucMGDL)return fmtNumber(gluc / 18.02, 1);

    return fmtNumber(gluc, 0);
  }

  addLegendEntry(var dst, String color, String text, [bool isArea = true])
  {
    if (isArea)(dst["stack"] as List).add({
      "columns": [ {
        "width": cm(0.8),
        "canvas": [
          {
            "type": "rect",
            "x": cm(0),
            "y": cm(0.1),
            "w": cm(0.5),
            "h": cm(0.3),
            "color": color,
            "fillOpacity": 0.3
          },
          {
            "type": "rect",
            "x": 0,
            "y": 0,
            "w": 0,
            "h": 0,
            "color": "#000",
            "fillOpacity": 1
          },
          {
            "type": "line",
            "x1": cm(0),
            "y1": cm(0.1),
            "x2": cm(0.5),
            "y2": cm(0.1),
            "lineWidth": cm(lw),
            "lineColor": color
          },
          {
            "type": "line",
            "x1": cm(0),
            "y1": cm(0.4),
            "x2": cm(0.5),
            "y2": cm(0.4),
            "lineWidth": cm(lw),
            "lineColor": color
          }
        ]
      }, {"text": text, "color": "black"}
      ]
    });
    else
      (dst["stack"] as List).add({
        "columns": [ {
          "width": cm(0.8),
          "canvas": [ {
            "type": "line",
            "x1": cm(0),
            "y1": cm(0.25),
            "x2": cm(0.5),
            "y2": cm(0.25),
            "lineWidth": cm(lw),
            "lineColor": color
          }
          ]
        }, {"text": text, "color": "black"}
        ]
      });
  }
}
