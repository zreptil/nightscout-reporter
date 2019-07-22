import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';
import 'base-profile.dart';

class PrintDailyLog extends BaseProfile
{
  @override
  String id = "daylog";

  bool showNotes, showCarbs, showIE, showSMB, showTempBasal, showProfileSwitch, showIESource, showTempTargets;
  int groupMinutes = 0;

  @override
  bool get isBetaOrLocal
  => true;

  @override
  List<ParamInfo> params = [
    ParamInfo(1, msgParam1, boolValue: true),
    ParamInfo(2, msgParam2, boolValue: true),
    ParamInfo(3, msgParam3, boolValue: true),
    ParamInfo(4, msgParam4, boolValue: true),
    ParamInfo(5, msgParam5, boolValue: true),
    ParamInfo(6, msgParam6, boolValue: true),
    ParamInfo(7, msgParam7, boolValue: true),
    ParamInfo(8, msgParam8, boolValue: true),
    ParamInfo(0, msgParam9, list: [
      Intl.message("Keine"),
      Intl.message("5 Minuten"),
      Intl.message("15 Minuten"),
      Intl.message("30 Minuten"),
      Intl.message("1 Stunde")
    ]),
  ];


  @override
  prepareData_(ReportData data)
  {
    showNotes = params[0].boolValue;
    showCarbs = params[1].boolValue;
    showIE = params[2].boolValue;
    showTempBasal = params[3].boolValue;
    showSMB = params[4].boolValue;
    showProfileSwitch = params[5].boolValue;
    showIESource = params[6].boolValue;
    showTempTargets = params[7].boolValue;

    switch (params[8].intValue)
    {
      case 1:
        groupMinutes = 5;
        break;
      case 2:
        groupMinutes = 15;
        break;
      case 3:
        groupMinutes = 30;
        break;
      case 4:
        groupMinutes = 60;
        break;
      default:
        groupMinutes = 0;
        break;
    }

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
  static String get msgParam4
  => Intl.message("Temporäre Basalraten");
  static String get msgParam5
  => Intl.message("SMB");
  static String get msgParam6
  => Intl.message("Profilwechsel");
  static String get msgParam7
  => Intl.message("Insulin-Quelle");
  static String get msgParam8
  => Intl.message("Temporäre Ziele");
  static String get msgParam9
  => Intl.message("Gruppierung der Zeiten");

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
  bool _hasData = false;
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
    _widths = [];
    _hasData = false;
    for (int i = 0; i < data.days.length; i++)
    {
      DayData day = data.days[i];
      fillTable(day, src, pages);
    }

    if (_hasData)
    {
      _page.add(headerFooter());
      _page.add(getTable(_widths, _body));
      pages.add(_page);
    }
  }

//  double _cellSpace = 0.11;
//  double _lineHeight = 0.34;
  double _lineHeight = 0.4;
  double _cellSpace = 0.12; //((23.59 / 70) - 0.3) / 2;
  double _maxY;

  double lineHeight(int lineCount)
  => 2 * _cellSpace + lineCount * (_lineHeight + _cellSpace);

  fillTable(DayData day, ReportData src, List<List<dynamic>> pages)
  {
    _maxY = height - 1.8;
    _headFilled = false;
    _headLine = [];
    _isFirstLine = true;

//    int groupMinutes = g.isLocal ? 60 : 0;
    DateTime nextTime = DateTime(day.date.year, day.date.month, day.date.day, 0, groupMinutes);

    List<String> list = List<String>();

    for (int i = 0; i < day.treatments.length; i++)
    {
      TreatmentData t = day.treatments[i];
      var row = [];

      bool wasAdded = false;
      if (groupMinutes == 0 || t.createdAt.isBefore(nextTime))
      {
        wasAdded = true;
        fillList(groupMinutes != 0, src, day, t, list);
      }

      if (groupMinutes == 0 || !t.createdAt.isBefore(nextTime))
      {
        DateTime time = t.createdAt;
        if (groupMinutes != 0)time = nextTime.add(Duration(minutes: -groupMinutes));
        while (list.length > 0)
        {
          _hasData = true;
          if (_isFirstLine)
          {
            _body.add(_headLine);
            _y += lineHeight(1);
            _isFirstLine = false;
          }
          list = fillRow(time, src, day, row, list, "row");
          row = [];
          if (list.length > 0 || _y + _lineHeight >= _maxY)
          {
            _page.add(headerFooter());
            _page.add(getTable(_widths, _body));
            pages.add(_page);
            _page = [];
            _body = [_headLine];
            _y = yorg - 0.3 + lineHeight(2);
            _isFirstLine = false;
          }
        }
        nextTime = nextTime.add(Duration(minutes: groupMinutes));
      }

      if (!wasAdded)i--;
    }
  }

  List<String> fillRow(DateTime time, ReportData src, DayData day, dynamic row, List<String> list, String style)
  {
    String ret = "";
    if (list.length > 0)
    {
      double oldY = _y;
      double size = fs(10);
      String text = list.join(", ");
      List<String> lines = text.split("\n");
      double y = _y;
      int idx = 0;
      if (lines.length > 1)y += 2 * _cellSpace;
      List<String> output = List<String>();
      while (idx < lines.length && y + _lineHeight * (lines[idx].length ~/ 85 + 1) < _maxY)
      {
        y += _lineHeight * (lines[idx].length ~/ 85 + 1);
        output.add(getText(y, "${lines[idx]}"));
        idx++;
      }
      _y = y;
      text = output.join("\n");
      if (text != "")
      {
        _y += 2 * _cellSpace;
        addRow(true, cm(1.8), row, {"text": msgTime, "style": "total", "fontSize": size, "alignment": "center"},
          {"text": fmtTime(time), "style": styleForTime(time), "fontSize": size, "alignment": "center"});
        addRow(true, cm(width - 1.8 - 5.1), row, {
          "text": getText(oldY, "${fmtDate(time, null, false, true)}"),
          "style": "total",
          "fontSize": size,
          "alignment": "left"
        }, {"text": text, "style": style, "fontSize": size, "alignment": "left"});
        _body.add(row);
        _headFilled = true;
      }

      lines.removeRange(0, idx);
      if (lines.length > 0 && lines[0] != "")list = lines.join("\n").split(", ");
      else
        list = List<String>();
    }
    return list;
  }

  String getText(double y, String text)
  {
    if (g.isLocal)return "${g.fmtNumber(y, 1)} - $text";
    return text;
  }

  String _fillRow(DateTime time, ReportData src, DayData day, dynamic row, List<String> list, String style)
  {
    String ret = "";
    if (list.length > 0)
    {
      double size = fs(10);
      addRow(true, cm(1.8), row, {"text": msgTime, "style": "total", "fontSize": size, "alignment": "center"},
        {"text": fmtTime(time), "style": styleForTime(time), "fontSize": size, "alignment": "center"});
      String text = list.join(", ");
      addRow(true, cm(width - 1.8 - 5.1), row,
        {"text": fmtDate(time, null, false, true), "style": "total", "fontSize": size, "alignment": "left"},
        {"text": text, "style": style, "fontSize": size, "alignment": "left"});

      _headFilled = true;
      List<String> lines = text.split("\n");
      int ret = lines.length;
      for (String line in lines)
        ret += line.length ~/ 85;
    }

    return ret;
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
      if ((check.hour == time.hour && time.minute == check.minute) || (check.isBefore(time) && time.add(
        Duration(minutes: ret.duration)).isBefore(check)))return ret;
    }

    return null;
  }

  fillList(bool showTime, ReportData src, DayData day, TreatmentData t, List<String> list)
  {
    int lastIdx = list.length;
    if (showNotes && t.notes != null && t.notes.isNotEmpty)list.add("${t.notes}");
    if (showCarbs && t.carbs != null && t.carbs != 0)list.add("${msgCarbs(t.carbs.toString())}");
    if (showIE && t.insulin != null && t.insulin != 0 && !t.isSMB)
    {
      if (showIESource)list.add("${t.eventType} ${t.insulin} ${msgInsulinUnit}");
      else
        list.add("${t.insulin} ${msgInsulinUnit}");
    }
    if (showSMB && t.insulin != null && t.insulin != 0 && t.isSMB)list.add("SMB ${t.insulin} ${msgInsulinUnit}");
    if (showTempBasal && t.eventType.toLowerCase() == "temp basal")
    {
      ProfileEntryData entry = basalFor(day, t.createdAt);
      if (entry != null)list.add("Temp Basal ${g.fmtNumber(entry.tempAdjusted * 100)}% / ${entry.duration} min");
    }
    if (showProfileSwitch && t.eventType.toLowerCase() == "profile switch")
    {
      list.add(getProfileSwitch(src, day, t));
    }

    if (showTempTargets && t.eventType.toLowerCase() == ("temporary target"))
    {
      String target;
      if (t.targetBottom == t.targetTop)target = "${g.glucFromData(t.targetBottom)} ${getGlucInfo()["unit"]}";
      else
        target = "${g.glucFromData(t.targetBottom)} - ${g.glucFromData(t.targetTop)} ${getGlucInfo()["unit"]}";
      list.add("Temp Target ${target} für ${t.duration} min, Grund: ${t.reason}");
    }

    if (list.length != lastIdx && showTime)list.insert(lastIdx, fmtTime(t.createdAt));
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
      "columns": [
        {
          "margin": [cm(2.2), cmy(yorg - 0.3), cm(2.2), cmy(0.0)],
          "width": cm(width),
          "table": {"widths": widths, "body": body}
        }
      ],
      "pageBreak": ""
    };

    return ret;
  }

  @override
  getPage(int page, ProfileGlucData profile, CalcData calc)
  {
    // TODO: implement getPage
    return null;
  }
}