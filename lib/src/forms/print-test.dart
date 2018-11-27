import 'dart:convert';

import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';

class PrintTest extends BasePrint
{
  @override
  String id = "test";

  bool showEntries = false;
  bool showTreatments = true;
  bool showRawStatus = false;
  bool showRawEntries = false;
  bool showRawTreatments = false;
  bool showRawProfiles = false;
  int rawCols = 3;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, "Einträge", boolValue: false),
    ParamInfo(1, "Behandlungen", boolValue: false),
    ParamInfo(2, "Rohdaten Status", boolValue: true),
    ParamInfo(3, "Rohdaten Einträge", boolValue: false),
    ParamInfo(4, "Rohdaten Behandlungen", boolValue: false),
    ParamInfo(5, "Rohdaten Profile", boolValue: false),
    ParamInfo(6, "Rohdaten Spalten", intValue: 2, min: 1, max: 3)
  ];

  @override
  prepareData_(ReportData data)
  {
    showEntries = params[0].boolValue;
    showTreatments = params[1].boolValue;
    showRawStatus = params[2].boolValue;
    showRawEntries = params[3].boolValue;
    showRawTreatments = params[4].boolValue;
    showRawProfiles = params[5].boolValue;
    rawCols = params[6].intValue;
    return data;
  }

  @override
  bool get isDebugOnly
  => true;

  @override
  String get name
  => "Ausgabe der Datensätze";
  @override
  String get title
  => "Datensätze";
  dynamic body;
  dynamic root;

  PrintTest()
  {
    init();
  }

  bool isFirst = true;
  dynamic createRoot(type, {String title: null})
  {
    String color = "#eee";
    switch (type)
    {
      case "entries":
        body.add([
          {"text": "Uhrzeit", "fillColor": color},
          {"text": "Art", "fillColor": color},
          {"text": "sgv", "fillColor": color},
          {"text": "gluc", "fillColor": color},
        ]);
        break;
      case "treatments":
        body.add([
          {"text": "Uhrzeit", "fillColor": color},
          {"text": "Art", "fillColor": color},
          {"text": "Anpassung", "fillColor": color},
          {"text": "Dauer", "fillColor": color},
          {"text": "KH", "fillColor": color},
          {"text": "IE", "fillColor": color},
        ]);
        break;
      case "raw":
        body.add([{"text": title, "fontSize": fs(12), "colSpan": rawCols}]);
        for (int i = 0; i < rawCols - 1; i++)
          body[0].add({"text": ""});
        body.add([]);
        break;
    }

    var widths = [];
    for (int i = 0; i < body[0].length; i++)
      widths.add(cm((width - 4.0) / body[0].length));
    var ret = {
      "margin": [cm(2.0), cm(isFirst ? yorg : 0.5), cm(2.0), cm(0.5)],
      "layout": type == "raw" ? "" : "noBorders",
      "table": {"headerRows": 1, "widths": widths, "body": body}
    };
    isFirst = false;
    return ret;
  }

  @override
  void fillPages(ReportData src, List<List<dynamic>> pages)
  {
    var ret = [headerFooter(skipFooter: true)];
    body = [];
    isFirst = true;
    if (showEntries)
    {
      root = createRoot("entries");
      for (int i = 0; i < src.ns.entries.length; i++)
      {
        EntryData entry = src.ns.entries[i];
        var row = [
          {"text": fmtDateTime(entry.time, '??.??.???? ??:?? Uhr'), "colspan": 4},
          {"text": entry.type},
          {"text": fmtNumber(entry.sgv)},
          {"text": fmtNumber(entry.gluc)},
        ];
/*      if(entry.direction != null && entry.direction.toLowerCase() == "none")
      {
        for(dynamic c in row)
          c["color"] = "#f00";
      }*/

        body.add(row);
      }
      ret.add(root);
    }

    if (showTreatments)
    {
      body = [];
      root = createRoot("treatments");
      var data = src.ns.treatments;
      for (int i = 0; i < data.length; i++)
      {
        TreatmentData entry = data[i];
        var row = [{"text": fmtDateTime(entry.createdAt, '??.??.???? ??:?? Uhr')}];
        row.add({"text": entry.eventType});
        row.add({"text": "${fmtNumber(entry.adjustedValue(1), 0, false, "")}", "alignment": "right"});
        row.add({"text": entry.duration > 0 ? fmtNumber(entry.duration, 0, false, " ") : " ", "alignment": "right"});
        double carbs = entry.isECarb ? entry.eCarbs : entry.carbs;
        String text = carbs > 0.0 ? fmtNumber(carbs, 0, false, " ") : " ";
        if (entry.isECarb)text = "e${text}";
        row.add({"text": text, "alignment": "right"});
        text = entry.insulin > 0.0 ? fmtNumber(entry.insulin, 1, false, " ") : " ";
        row.add({"text": text, "alignment": "right"});
        switch (entry.eventType.toLowerCase())
        {
          case "temp basal":
            row[1]["color"] = "#f00";
            break;
          case "announcement":
          case "note":
            row[1]["text"] = "${row[1]["text"]}\n${entry.notes}";
            break;
        }
        body.add(row);
      }
      ret.add(root);
    }

    if (showRawStatus)
    {
      body = [];
      root = createRoot("raw", title: "Status");
      addRawData(src.status.raw, ret);
      finalizeRawData(ret);
    }
    if (showRawEntries)
    {
      body = [];
      root = createRoot("raw", title: "Entries");
      for (EntryData entry in src.ns.entries)
        addRawData(entry.raw, ret, fmtDateTime(entry.time.toLocal()));
      finalizeRawData(ret);
    }
    if (showRawTreatments)
    {
      body = [];
      root = createRoot("raw", title: "Treatments");
      for (TreatmentData entry in src.ns.treatments)
        addRawData(entry.raw, ret, fmtDateTime(entry.createdAt.toLocal()));
      finalizeRawData(ret);
    }
    if (showRawProfiles)
    {
      body = [];
      root = createRoot("raw", title: "Profiles");
      for (ProfileData entry in src.profiles)
        addRawData(entry.raw, ret, fmtDateTime(entry.createdAt.toLocal()));
      finalizeRawData(ret);
// */
    }

    pages.add(ret);
//    return ret;
  }

  addRawData(dynamic raw, dynamic ret, [String title = null])
  {
    String text = json.encode(raw);
    text = text.substring(1, text.length - 1);
    text = text.replaceAll(",\"", ",\n\"");
    if(title != null)
      text = "${title}\n${text}";
    if (body.last.length >= rawCols)body.add([]);
    body.last.add({"text": text, "fontSize": fs(8)});
    if (body.length > 10000)
    {
      finalizeRawData(ret);
      body = [];
      root = createRoot("raw");
    }
  }

  finalizeRawData(dynamic ret)
  {
    if (body.last.length < rawCols)body.last.last["colSpan"] = rawCols - body.last.length + 1;
    while (body.last.length < rawCols)body.last.add({"text": ""});
    ret.add(root);
  }
}