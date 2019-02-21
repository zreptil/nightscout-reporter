import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';

class PrintDailyLog extends BasePrint
{
  @override
  String id = "daylog";

  bool showNotes, showCarbs, showIE;

  @override
  bool get isLocalOnly
  => true;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, msgParam1, boolValue: true),
    ParamInfo(1, msgParam2, boolValue: true),
    ParamInfo(2, msgParam3, boolValue: true),
  ];


  @override
  prepareData_(ReportData data)
  {
    showNotes = params[0].boolValue;
    showCarbs = params[1].boolValue;
    showIE = params[2].boolValue;

    return data;
  }

  @override
  String title = Intl.message("Protokoll");

  static String get msgParam1
  => Intl.message("Notizen");
  static String get msgParam2
  => Intl.message("Kohlenhydrate");
  static String get msgParam3
  => Intl.message("Insulin");


  @override
  List<String> get imgList
  => ["nightscout", "katheter.print", "sensor.print", "ampulle.print"];

  @override
  bool get isPortrait
  => true;

  num lineWidth;

  PrintDailyLog()
  {
    init();
  }

  bool _isFirstLine = true;
  bool _headFilled = false;
  dynamic _headLine = [];
  dynamic _widths = [];
  var _body = [];
  var _page = [];
  double _y;

  @override
  void fillPages(ReportData src, List<List<dynamic>> pages)
  async {
    var data = src.calc;
    titleInfo = titleInfoBegEnd(src);

    lineWidth = cm(0.03);
    _y = yorg - 0.3;
    _body = [];
    _page = [];
    for (int i = 0; i < data.days.length; i++)
    {
      DayData day = data.days[i];
      fillTable(day, src, pages);
    }

    if (!_isFirstLine)
    {
      _page.add(headerFooter());
      _page.add(getTable(_widths, _body));
      pages.add(_page);
    }
  }

  fillTable(DayData day, ReportData src, List<List<dynamic>> pages)
  {
    _headFilled = false;
    _headLine = [];
    _widths = [];
    _isFirstLine = true;

    double ch = 0.2;
    double lh = 0.22;

    for (TreatmentData t in day.treatments)
    {
      var row = [];

      int lc = fillRow(day, row, t, "row");
      if (lc == 0)continue;

      if (_isFirstLine)
      {
        _body.add(_headLine);
        _y += 2 * ch + lh;
        _isFirstLine = false;
      }

      _y += 2 * ch + lc * (lh + ch);
      if (_y > height - 1.7)
      {
        _page.add(headerFooter());
        _page.add(getTable(_widths, _body));
        pages.add(_page);
        _y = yorg - 0.3 + 2 * ch + lh;
        _page = [];
        _body = [_headLine];
        _isFirstLine = true;
      }
      _body.add(row);
    }
  }

  String styleForTime(DateTime time)
  {
    if (time.hour < 6 || time.hour > 20)return "timeNight";
    if (time.hour < 8 || time.hour > 17)return "timeLate";
    return "timeDay";
//    return "total";
  }

  ProfileEntryData basalFor(DayData day, DateTime time)
  {
    ProfileEntryData ret = null;
    for (int i = 0; i < day.profile.length; i++)
    {
      ret = day.profile[i];
      DateTime check = ret.time(day.date, true);
      String t1 = fmtDateTime(time);
      String t2 = fmtDateTime(check);
      if ((check.hour == time.hour && time.minute == check.minute) || (check.isBefore(time) && time.add(
        Duration(minutes: ret.duration)).isBefore(check)))return ret;
    }

    return null;
  }

  int fillRow(DayData day, dynamic row, TreatmentData t, String style)
  {
    List<String> list = List<String>();
    if (showNotes && t.notes != null && t.notes.isNotEmpty)list.add("${t.notes}");
    if (showCarbs && t.carbs != null && t.carbs != 0)list.add("${msgCarbs(t.carbs.toString())}");
    if (showIE && t.insulin != null && t.insulin != 0)list.add(
      "${t.isSMB ? 'SMB ' : ''}${t.insulin} ${msgInsulinUnit}");
    if (t.eventType.toLowerCase() == "temp basal")
    {
      ProfileEntryData entry = basalFor(day, t.createdAt);
      if (entry != null)list.add("Temp Basal ${fmtBasal(entry.tempAdjusted)}");
    }
    if (list.length > 0)
    {
      addRow(true, cm(1.8), row, {"text": msgTime, "style": "total", "alignment": "center"},
        {"text": fmtTime(t.createdAt), "style": styleForTime(t.createdAt), "alignment": "center"});
      String text = list.join(", ");
      addRow(true, cm(width - 1.8 - 5.1), row,
        {"text": fmtDate(t.createdAt, null, false, true), "style": "total", "alignment": "left"},
        {"text": text, "style": style, "alignment": "left"});

      _headFilled = true;
      List<String> lines = text.split("\n");
      int ret = lines.length;
      for (String line in lines)
        if (line.length > 85)ret++;
      return ret;
    }

    return 0;
  }

  addRow(bool check, var width, dynamic dst, dynamic head, dynamic content)
  {
    if (!check)return;
    if (!_headFilled)
    {
      _headLine.add(head);
      _widths.add(width);
    }
    dst.add(content);
  }

  getTable(widths, body)
  {
    dynamic ret = {
      "columns": [ {
        "margin": [cm(2.2), cmy(yorg - 0.3), cm(2.2), cmy(0.0)],
        "width": cm(width),
        "table": {"widths": widths, "body": body},
      }
      ],
      "pageBreak": ""
    };

    return ret;
  }
}