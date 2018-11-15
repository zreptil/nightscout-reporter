import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'dart:math';
import 'dart:typed_data';

import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

class LegendData
{
  List<dynamic> columns = List<dynamic>();
  double x;
  double y;
  double colWidth;
  int maxLines;

  List get current
  {
    if (columns.length == 0 || (columns.last["stack"] as List).length >= maxLines)
    {
      x += columns.length > 0 ? colWidth : 0.0;
      columns.add({"absolutePosition": {"x": x, "y": y}, "stack": []});
    }
    return columns.last["stack"];
  }

  dynamic get asOutput
  => {"stack": columns};

  LegendData(this.x, this.y, this.colWidth, this.maxLines);
}

enum ParamType
{
  none, bool, string, int
}

class ParamInfo
{
  ParamType type = ParamType.none;
  String title;
  bool boolValue;
  String stringValue;
  int intValue;

  int min;
  int max;

  int sort;

  ParamInfo(this.sort, this.title,
            {this.boolValue = null, this.stringValue = null, this.intValue = null, this.min = null, this.max = null})
  {
    if (boolValue != null)type = ParamType.bool;
    if (stringValue != null)type = ParamType.string;
    if (intValue != null)type = ParamType.int;
  }

  dynamic get asJson
  {
    return {"b": boolValue, "s": stringValue, "i": intValue};
  }

  fill(ParamInfo src)
  {
    boolValue = src.boolValue;
    stringValue = src.stringValue;
  }

  fillFromJson(dynamic value)
  {
    try
    {
      switch (type)
      {
        case ParamType.bool:
          boolValue = value["b"] ?? false;
          break;
        case ParamType.string:
          stringValue = value["s"] ?? "";
          break;
        case ParamType.int:
          intValue = value["i"] ?? 0;
          break;
        default:
          break;
      }
    }
    catch (ex)
    {
    }
  }
}

class FormConfig
{
  String id;
  bool checked = true;
  bool opened = false;
  BasePrint form = null;
  FormConfig(this.id, this.checked);

  dynamic get asJson
  {
    dynamic ret = {"c": checked, "p": []};

    if (form.params != null)
    {
      for (ParamInfo entry in form.params)
        ret["p"].add(entry.asJson);
    }
    return ret;
  }

  String get asString
  {
    return json.encode(asJson);
  }

  fill(FormConfig src)
  {
    for (int i = 0; i < src.form.params.length; i++)
    {
      if (i >= form.params.length)form.params.add(src.form.params[i]);
      form.params[i].fill(src.form.params[i]);
    }
  }

  fillFromJson(dynamic value)
  {
    try
    {
      checked = value["c"];
      for (int i = 0; i < value["p"].length && i < form.params.length; i++)
        form.params[i].fillFromJson(value["p"][i]);
    }
    catch (ex)
    {
    }
  }

  fillFromString(String value)
  {
    if (value != null)fillFromJson(json.decode(value));
  }
}

abstract class BasePrint
{
  Globals g = Globals();
  String id;
  String name;
  String title;
  String titleInfo;
  List<ParamInfo> params = List<ParamInfo>();
  List<ParamInfo> get sortedParams
  {
    List<ParamInfo> ret = List<ParamInfo>();
    ret.addAll(params);
    ret.sort((a, b)
    => a.sort.compareTo(b.sort));
    return ret;
  }

  bool get isDebugOnly
  => false;

  //String _hba1c(double avgGluc)
  //=> fmtNumber((avgGluc + 86) / 33.3, 1, false);

  String hba1c(double avgGluc)
  => fmtNumber((avgGluc + 46.7) / 28.7, 1, false);

  String colText = "#008800";
  String colInfo = "#606060";
  String colLine = "#606060";
  String colValue = "#000000";
  String colBasalProfile = "#0097a7";
  String get colBasalDay
  => blendColor(colBasalProfile, "#ffffff", 0.5);
  String colBasalFont = "#fff";
  String colBolus = "#0060c0";
  String colLow = "#ff6666";
  String colNorm = "#00cc00";
  String colHigh = "#cccc00";
  String colTargetArea = "#00a000";
  String colTargetValue = "#3333aa";
  String colCarbs = "#ffa050";
  String colDurationNotes = "#ff00ff";
  String colNotes = "#000000";

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

  msgValidRange(begDate, endDate)
  => Intl.message("gültig von $begDate bis $endDate", args: [begDate, endDate], name: "msgValidRange");
  msgValidFrom(begDate)
  => Intl.message("gültig ab $begDate", args: [begDate], name: "msgValidFrom");
  msgValidTo(endDate)
  => Intl.message("gültig bis $endDate", args: [endDate], name: "msgValidTo");
  get msgInsulinUnit
  => Intl.message("IE");
  get msgMedian
  => Intl.message("Median");
  get msgUntil
  => Intl.message("bis");
  String msgTargetArea(String min, String max, String units)
  {
    return Intl.message("Zielbereich ($min - $max $units)", args: [min, max, units], name: "msgTargetArea");
  }

  String msgTargetValue(String value)
  {
    return Intl.message("Zielwert", args: [value], name: "msgTargetValue");
  }

  String get msgGlucosekurve
  => Intl.message("Glukosekurve");
  String get msgCarbs
  => Intl.message("Kohlenhydrate");
  String msgBolusInsulin(String value)
  => Intl.message("Bolus Insulin ($value)", args: [value], name: "msgBolusInsulin");
  String get msgBasalrate
  => Intl.message("Basalrate");
  String msgBasalrateDay(String value)
  => Intl.message("Basalrate für den Tag ($value)", args: [value], name: "msgBasalrateDay");
  String msgBasalrateProfile(String value)
  => Intl.message("Basalrate aus dem Profil ($value)", args: [value], name: "msgBasalrateProfile");
  String get msgMissingData
  => Intl.message("Es sind keine Daten für den Ausdruck vorhanden");
  String get msgCatheterChange
  => Intl.message("Katheterwechsel");
  String get msgSensorChange
  => Intl.message("Sensorwechsel");
  msgKH(value)
  => Intl.message("${value}g KH", args: [value], name: "msgKH");

  String titleInfoForDates(DateTime startDate, DateTime endDate)
  {
    String ret;
    if (endDate == null)ret = msgValidFrom(fmtDate(startDate));
    else if (startDate.year == 1970)ret = msgValidTo(fmtDate(endDate));
    else
      ret = msgValidRange(fmtDate(startDate), fmtDate(endDate));
    return ret;
  }

  Object get header
  {
    bool isInput = false;
    var ret = {"stack": []};
    if (isPortrait)
    {
      if (isInput)
      {
        ret["stack"].add({
          "absolutePosition": {"x": cmx(0), "y": cmy(0)},
          "canvas": [
            {"type": "rect", "x": cmx(0.0), "y": cmy(0), "w": cm(1.6), "h": cm(0.55), "color": "#d69a2e"},
            {"type": "rect", "x": cmx(1.6), "y": cmy(0), "w": cm(1.6), "h": cm(0.55), "color": "#2e4736"},
            {"type": "rect", "x": cmx(3.2), "y": cmy(0), "w": cm(1.6), "h": cm(0.55), "color": "#662c40"},
            {"type": "rect", "x": cmx(4.8), "y": cmy(0), "w": cm(1.6), "h": cm(0.55), "color": "#343a49"},
            {"type": "rect", "x": cmx(6.4), "y": cmy(0), "w": cm(1.6), "h": cm(0.55), "color": "#528c8e"},
            {"type": "rect", "x": cmx(8.0), "y": cmy(0), "w": cm(1.6), "h": cm(0.55), "color": "#362946"},
            {"type": "rect", "x": cmx(9.6), "y": cmy(0), "w": cm(1.6), "h": cm(0.55), "color": "#6b8133"},
            {"type": "rect", "x": cmx(11.2), "y": cmy(0), "w": cm(1.6), "h": cm(0.55), "color": "#2a3b56"},
            {"type": "rect", "x": cmx(12.8), "y": cmy(0), "w": cm(1.6), "h": cm(0.55), "color": "#862d2e"},
            {"type": "rect", "x": cmx(14.4), "y": cmy(0), "w": cm(1.6), "h": cm(0.55), "color": "#607f6e"},
            {"type": "rect", "x": cmx(16.0), "y": cmy(0), "w": cm(1.6), "h": cm(0.55), "color": "#273d3f"},
            {"type": "rect", "x": cmx(17.6), "y": cmy(0), "w": cm(1.6), "h": cm(0.55), "color": "#a5916d"}
          ]
        });
      }
    }
    else
    {
      if (isInput)
      {
        ret["stack"].add({
          "absolutePosition": {"x": 0, "y": cmy(0)},
          "canvas": [
            {"type": "rect", "x": cmx(0.0), "y": cmy(0), "w": cm(2.2), "h": cm(0.55), "color": "#d69a2e"},
            {"type": "rect", "x": cmx(2.2), "y": cmy(0), "w": cm(2.3), "h": cm(0.55), "color": "#2e4736"},
            {"type": "rect", "x": cmx(4.5), "y": cmy(0), "w": cm(2.3), "h": cm(0.55), "color": "#662c40"},
            {"type": "rect", "x": cmx(6.8), "y": cmy(0), "w": cm(2.25), "h": cm(0.55), "color": "#343a49"},
            {"type": "rect", "x": cmx(9.05), "y": cmy(0), "w": cm(2.3), "h": cm(0.55), "color": "#528c8e"},
            {"type": "rect", "x": cmx(11.35), "y": cmy(0), "w": cm(2.25), "h": cm(0.55), "color": "#362946"},
            {"type": "rect", "x": cmx(13.6), "y": cmy(0), "w": cm(2.3), "h": cm(0.55), "color": "#6b8133"},
            {"type": "rect", "x": cmx(15.9), "y": cmy(0), "w": cm(2.25), "h": cm(0.55), "color": "#2a3b56"},
            {"type": "rect", "x": cmx(18.15), "y": cmy(0), "w": cm(2.3), "h": cm(0.55), "color": "#862d2e"},
            {"type": "rect", "x": cmx(20.45), "y": cmy(0), "w": cm(2.3), "h": cm(0.55), "color": "#607f6e"},
            {"type": "rect", "x": cmx(22.75), "y": cmy(0), "w": cm(2.3), "h": cm(0.55), "color": "#273d3f"},
            {"type": "rect", "x": cmx(25.05), "y": cmy(0), "w": cm(2.3), "h": cm(0.55), "color": "#a5916d"},
          ],
        });
      }
    }
    ret["stack"].add({
      "absolutePosition": {"x": cmx(2.2), "y": cmy(1.0)},
      "text": title,
      "fontSize": fs(36),
      "color": colText,
      "bold": true
    });
    if (!g.hideNightscoutInPDF)ret["stack"].add({
      "absolutePosition": {"x": cmx(2.2), "y": cmy(2.5)},
      "text": "nightscout reporter ${g.version}",
      "fontSize": fs(8),
      "color": "#a0a0a0",
    });
    ret["stack"].add({
      "absolutePosition": {"x": cmx(2.2), "y": cmy(2.4)},
      "columns": [ {
        "width": cm(width - 4.4),
        "text": titleInfo,
        "fontSize": fs(10),
        "color": colInfo,
        "bold": true,
        "alignment": "right"
      }
      ]
    });
    ret["stack"].add({
      "absolutePosition": {"x": cmx(2.2), "y": cmy(2.95)},
      "canvas": [ {
        "type": "line",
        "x1": cm(0),
        "y1": cm(0),
        "x2": cm(width - 4.4),
        "y2": cm(0),
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
    String rightText = "";
    if (g.user.name.isEmpty)
    {
      if (!g.user.birthDate.isEmpty)rightText = "*${g.user.birthDate}";
    }
    else
    {
      if (!g.user.birthDate.isEmpty)rightText = "${g.user.name}, *${g.user.birthDate}";
      else
        rightText = g.user.name;
    }
    var ret = {
      "stack": [
        {
          "absolutePosition": {"x": cmx(2.2), "y": cmy(height - 2.0)},
          "canvas": [ {
            "type": "line",
            "x1": cm(0),
            "y1": cm(0),
            "x2": cm(width - 4.4),
            "y2": cm(0),
            "lineWidth": cm(0.05),
            "lineColor": colText
          }
          ]
        },
        g.hideNightscoutInPDF ? null : getImage("nightscout", x: 2.2, y: height - 1.7, width: 0.7),
        g.hideNightscoutInPDF ? null : {
          "absolutePosition": {"x": cmx(3.1), "y": cmy(height - 1.7)},
          "text": "http://www.nightscout.info",
          "color": colInfo,
          "fontSize": fs(10)
        },
        isInput ? getImage("input", x: width - 5.6, y: height - 3.3, width: 4.0) : {},
        {
          "absolutePosition": {"x": cmx(2.2), "y": cmy(height - 1.7)},
          "columns": [
            {"width": cm(width - 4.4), "text": rightText, "color": colInfo, "alignment": "right", "fontSize": fs(10)}]
        },
      ],
      "pageBreak": "",
    };

    if (addPageBreak)ret["pageBreak"] = "after";

    return ret;
  }

  dynamic m0 = [];

  Map<String, String> images = Map<String, String>();
  List<String> get imgList
  =>
    ["nightscout-pale", "nightscout",
    ];

  void init()
  {
  }

  Future<String> getBase64Image(String id)
  async {
    var response = await HttpRequest.request(
      "packages/nightscout_reporter/assets/img/$id.png", responseType: "arraybuffer");
    if (response.response is ByteBuffer)
    {
      String ret = base64.encode((response.response as ByteBuffer).asUint8List());
      return "data:image/png;base64,${ret}";
    }

    return "";
  }

  String titleInfoBegEnd(ReportData src)
  {
    if (src.begDate == src.endDate)return "${fmtDate(src.begDate)}";
    return "${fmtDate(src.begDate)} ${msgUntil} ${fmtDate(src.endDate)}";
  }

  prepareData_(ReportData data);

  getImage(String id, {double x, double y, double width, double height = 0.0})
  {
    var ret = {"absolutePosition": {"x": cmx(x), "y": cmy(y)}, "image": id};

    if (images[id] != null)
    {
      if (width != 0 && height != 0)ret["fit"] = [cm(width), cm(height)];
      else if (width != 0)ret["width"] = cm(width);
      else if (height != 0)ret["height"] = cm(height);
    }
    else
    {
      ret = {
        "stack": [ {
          "absolutePosition": {"x": cmx(x), "y": cmy(y)},
          "canvas": [ {
            "type": "rect",
            "x": cmx(0),
            "y": cmy(0),
            "w": cm(max(width, 0.01)),
            "h": cm(max(height, 0.01)),
            "lineWidth": cm(0.01),
            "lineColor": "#f00"
          }
          ]
        }, {"absolutePosition": {"x": cmx(x), "y": cmy(y)}, "text": "bild\n$id\nfehlt", "color": "#f00"}
        ]
      };
    }
    return ret;
  }

  hasData(ReportData src)
  {
    return src.dayCount > 0 && src.ns.count > 0;
  }

  getEmptyForm(ReportData data)
  {
    return [
      header,
      {"margin": [cmx(2), cmy(3), cmx(2), cmy(0)], "text": msgMissingData, "fontSize": fs(10), "alignment": "center"},
      footer()
    ];
  }

  getFormData(ReportData data)
  async {
    m0 = [cm(0), cm(0), cm(0), cm(0)];
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

    if (!hasData(data))return getEmptyForm(data);

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
        "pageMargins": [cmx(1), cmy(1), cmx(1), cmy(1)],
        "content": [
          {"text": "Fehler bei Erstellung von \"${name}\"", "fontSize": fs(20), "alignment": "center", "color": "red"},
          {"text": "\n$ex", "fontSize": fs(10), "alignment": "left"},
          {"text": "\n$s", "fontSize": fs(10), "alignment": "left"}
        ]
      };
      ret = [
        {
          "margin": [cmx(1.0), cmy(0.5), cmx(1.0), cmy(0)],
          "text": "Fehler bei Erstellung von \"${name}\"",
          "fontSize": fs(20),
          "alignment": "center",
          "color": "red"
        },
        {"margin": [cmx(1.0), cmy(0.0), cmx(1.0), cmy(0)], "text": "\n$ex", "fontSize": fs(10), "alignment": "left"},
        {"margin": [cmx(1.0), cmy(0.5), cmx(1.0), cmy(0)], "text": "\n$s", "fontSize": fs(10), "alignment": "left"}
      ];
    }
    return ret;
  }

  getFormData_(ReportData src);

  double Num(var text)
  {
    if (!(text is String))return text;

    return num.tryParse(text.toString().replaceAll(",", "."));
  }

  double mm(pt)
  {
    return pt / 0.35277;
  }

  double scale = 1.0;
  double offsetX = 0.0;
  double offsetY = 0.0;

  double cm(pt)
  {
    return pt / 0.035277 * scale;
  }

  double cmx(pt)
  {
    return (offsetX + pt) / 0.035277 * scale;
  }

  double cmy(pt)
  {
    return (offsetY + pt) / 0.035277 * scale;
  }

  double fs(double size)
  => size * scale;

  String fmtNumber(num value, [num decimals = 0, bool fillfront0 = false, String nullText = "null"])
  {
    if (value == null)return nullText;

    String fmt = "#,##0";
    if (decimals > 0)fmt = "$fmt.".padRight(decimals + 6, "0");
    NumberFormat nf = NumberFormat(fmt, g.language.code);
    return nf.format(value);
  }

  String fmtTime(var date, {String def: null, bool withUnit: false})
  {
    if (def == null)def = "";
    if (date == null)return def;

    if (date is DateTime)
    {
      int hour = date.hour;
      if (g.language.code != "de_DE")hour = hour > 12 ? hour - 12 : hour;
      String ret = "${(hour < 10 ? "0" : "")}${hour}:${(date.minute < 10 ? "0" : "")}${date.minute}";
      if (withUnit)
      {
        switch (g.language.code)
        {
          case "de_DE":
            ret = "$ret Uhr";
            break;
          default:
            ret = date.hour > 12 ? "$ret pm" : "$ret am";
            break;
        }
      }
      return ret;
    }

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
      return "${(date.day < 10 ? "0" : "")}${date.day}.${(date.month < 10 ? "0" : "")}${date.month}.${date.year} ${(date
        .hour < 10 ? "0" : "")}${date.hour}:${(date.minute < 10 ? "0" : "")}${date.minute} Uhr";

    return date;
  }

  String fmtDate(var date, [var def = null])
  {
    if (def == null)def = "";
    if (date == null)return def;

    DateTime dt = null;

    try
    {
      if (date is Date)dt = DateTime(date.year, date.month, date.day);
      else if (date is DateTime)dt = date;
      else if (date is String && date.length >= 8)
      {
        int y = int.tryParse(date.substring(6, 8));
        int m = int.tryParse(date.substring(4, 6));
        int d = int.tryParse(date.substring(0, 4));
        dt = DateTime(y, m, d);
      }
    }
    catch (ex)
    {
    }

    if (dt == null)return date;

    DateFormat df = DateFormat(g.language.dateformat);
    return df.format(dt);
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
    var ret = {"step": 1, "unit": "mg/dL"};
    if (!g.glucMGDL)ret = {"step": 0.1, "unit": "mmol/L"};

    return ret;
  }

  String glucFromData(var gluc, [precision = null])
  {
    if (gluc is String)gluc = double.tryParse(gluc);
    if (!(gluc is num) || gluc == 0)return "";

    if (!g.glucMGDL)return fmtNumber(gluc / 18.02, precision == null ? 1 : precision);

    return fmtNumber(gluc, precision == null ? 0 : precision);
  }

  addLegendEntry(LegendData legend, String color, String text,
                 {bool isArea = true, String image = null, double imgWidth = 0.6, double imgOffsetY = 0.0, double lineWidth = 0.0})
  {
    List dst = legend.current;
    if (lineWidth == 0.0)lineWidth = lw;
    if (image != null)
    {
      dst.add({
        "columns": [ {
          "width": cm(0.8),
          "stack": [
            {"margin": [cm(0.4 - imgWidth / 2), cm(imgOffsetY), cmx(0), cmy(0)], "image": image, "width": cm(imgWidth)}
          ],
        }, {"text": text, "color": "black", "fontSize": fs(10)}
        ]
      });
    }
    else if (isArea)dst.add({
      "columns": [ {
        "width": cm(0.8),
        "canvas": [
          {"type": "rect", "x": cm(0), "y": cm(0.1), "w": cm(0.5), "h": cm(0.3), "color": color, "fillOpacity": 0.3},
          {"type": "rect", "x": 0, "y": 0, "w": 0, "h": 0, "color": "#000", "fillOpacity": 1},
          {
            "type": "line",
            "x1": cm(0),
            "y1": cm(0.1),
            "x2": cm(0.5),
            "y2": cm(0.1),
            "lineWidth": cm(lineWidth),
            "lineColor": color
          },
          {
            "type": "line",
            "x1": cm(0),
            "y1": cm(0.4),
            "x2": cm(0.5),
            "y2": cm(0.4),
            "lineWidth": cm(lineWidth),
            "lineColor": color
          }
        ]
      }, {"text": text, "color": "black", "fontSize": fs(10)}
      ]
    });
    else
      dst.add({
        "columns": [ {
          "width": cm(0.8),
          "canvas": [ {
            "type": "line",
            "x1": cm(0),
            "y1": cm(0.25),
            "x2": cm(0.5),
            "y2": cm(0.25),
            "lineWidth": cm(lineWidth),
            "lineColor": color
          }
          ]
        }, {"text": text, "color": "black", "fontSize": fs(10)}
        ]
      });
  }
}
