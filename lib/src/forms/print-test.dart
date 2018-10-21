import '../globals.dart' as globals;
import 'base-print.dart';

class PrintTest extends BasePrint
{
  @override
  List<PrintParams> params = [
    PrintParams("tempbasal", true, "Temp Basal im Ausdruck anzeigen"),
    PrintParams("announcement", true, "Announcement im Ausdruck anzeigen"),
    PrintParams("boluswizard", true, "Bolus Wizard im Ausdruck anzeigen")
  ];

  @override
  bool get isDebugOnly
  => true;

  @override
  String get name
  => "Ausgabe der Treatment-Daten";
  @override
  String get title
  => "Debuginformationen";

  PrintTest()
  {
    init();
  }

  @override
  prepareData_(vars)
  {
    return vars;
  }

  createRoot(body)
  {
    String color = "#eee";
    body.add([
      {"text": "Uhrzeit", "fillColor": color},
      {"text": "Art", "fillColor": color},
      {"text": "%", "fillColor": color},
      {"text": "Dauer", "fillColor": color},
      {"text": "KH", "fillColor": color},
    ]);
    var widths = [];
    for (int i = 0; i < body[0].length; i++)
      widths.add("auto");
    var ret = {
      "absolutePosition": {"x": cm(2), "y": cm(3.5)},
      "columns": [
        {"width": cm(0), "text": ""},
        {
          "width": "auto",
          "table": {
            "dontBreakRows": true,
            "headerRows": 1,
            "layout": "noBorders",
            "widths": widths,
            "body": body
          }
        },
        { "width": cm(2), "text": ""},
      ]
    };
    return ret;
  }

  @override
  getFormData_(globals.ReportData src)
  {
    var ret = [header];
    var body = [];

    var root = createRoot(body);
    for (int i = 0; i < src.ns.entries.length; i++)
    {
      globals.EntryData entry = src.ns.entries[i];
      var row = [{"text": fmtDateTime(entry.time, '??.??.???? ??:?? Uhr'), "colspan": 4},{},{},{},{}];
      body.add(row);
    }
    var data = src.ns.treatments;
    for (int i = 0; i < data.length; i++)
    {
      globals.TreatmentData entry = data[i];
      var row = [{"text": fmtDateTime(entry.createdAt, '??.??.???? ??:?? Uhr')}
      ];
      row.add({"text": entry.eventType});
      row.add({"text": "${fmtNumber(entry.percent, 0)}", "alignment": "right"});
      row.add({"text": fmtNumber(entry.duration, 0), "alignment": "right"});
      row.add({
        "text": fmtNumber(
          entry.boluscalc != null ? entry.boluscalc.carbs : entry.carbs, 0),
        "alignment": "right"
      });
      switch (entry.eventType)
      {
        case "Temp Basal":
          row[1]["color"] = "#f00";
          break;
        case "Announcement":
          row[1]["text"] = "${row[1]["text"]}\n${entry.notes}";
          break;
      }
      body.add(row);
    }
    ret.add(root);
    return ret;
  }
}