import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';

class PrintDailyLog extends BasePrint
{
  @override
  String id = "daylog";

  bool showNotes, showCarbs, showIE, showSMB, showTempBasal, showProfileSwitch;

  @override
  bool get isLocalOnly
  => true;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, msgParam1, boolValue: true),
    ParamInfo(1, msgParam2, boolValue: true),
    ParamInfo(2, msgParam3, boolValue: true),
    ParamInfo(3, msgParam4, boolValue: true),
    ParamInfo(4, msgParam5, boolValue: true),
    ParamInfo(5, msgParam6, boolValue: true),
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

  msgProfileSwitch(String oldName, String newName)
  => Intl.message("Profilwechsel - ${oldName} => ${newName}", args: [oldName, newName], name: "msgProfileSwitch");
  msgChangedEntry(String name, String from, String to)
  => Intl.message("${name} geändert von ${from} auf ${to}", args: [name, from, to], name: "msgChangedEntry");
  get msgNoChange
  => Intl.message("Keine Änderung");

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

  double _cellSpace = 0.13;
  double _lineHeight = 0.22;

  double lineHeight(int lineCount)
  => 2 * _cellSpace + lineCount * (_lineHeight + _cellSpace);

  fillTable(DayData day, ReportData src, List<List<dynamic>> pages)
  {
    _headFilled = false;
    _headLine = [];
    _isFirstLine = true;

    for (TreatmentData t in day.treatments)
    {
      var row = [];

      int lineCount = fillRow(src, day, row, t, "row");
      if (lineCount == 0)continue;

      _hasData = true;
      if (_isFirstLine)
      {
        _body.add(_headLine);
        _y += lineHeight(1);
        _isFirstLine = false;
      }

      _y += lineHeight(lineCount);
      if (_y > height - 1.7)
      {
        _page.add(headerFooter());
        _page.add(getTable(_widths, _body));
        pages.add(_page);
        _page = [];
        _body = [_headLine];
        _y = yorg - 0.3 + lineHeight(2);
        _isFirstLine = false;
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

  int fillRow(ReportData src, DayData day, dynamic row, TreatmentData t, String style)
  {
    List<String> list = List<String>();
    if (showNotes && t.notes != null && t.notes.isNotEmpty)list.add("${t.notes}");
    if (showCarbs && t.carbs != null && t.carbs != 0)list.add("${msgCarbs(t.carbs.toString())}");
    if (showIE && t.insulin != null && t.insulin != 0 && !t.isSMB)list.add(
      "${t.eventType} ${t.insulin} ${msgInsulinUnit}");
    if (showSMB && t.insulin != null && t.insulin != 0 && t.isSMB)list.add("SMB ${t.insulin} ${msgInsulinUnit}");
    if (showTempBasal && t.eventType.toLowerCase() == "temp basal")
    {
      ProfileEntryData entry = basalFor(day, t.createdAt);
      if (entry != null)list.add("Temp Basal ${g.fmtNumber(entry.tempAdjusted * 100)}%");
    }
    if (showProfileSwitch && t.eventType.toLowerCase() == "profile switch")
    {
      list.add(getProfileSwitch(src, day, t));
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

  getProfileSwitch(ReportData src, DayData day, TreatmentData t)
  {
    List<String> ret = List<String>();
    ProfileGlucData before = src.profile(t.createdAt.add(Duration(days: -1)));
    ProfileGlucData current = src.profile(t.createdAt);
    ret.add(msgProfileSwitch(before.store.name, current.store.name));

    if (before.store.dia != current.store.dia)ret.add(msgChangedEntry(
      msgDIA, "${g.fmtNumber(before.store.dia, 2)} ${msgDIAUnit}", "${g.fmtNumber(current.store.dia, 2)} ${msgDIAUnit}"));
    if (before.store.carbsHr != current.store.carbsHr)ret.add(msgChangedEntry(
      msgKHA, "${g.fmtNumber(before.store.carbsHr)} ${msgKHAUnit}", "${g.fmtNumber(current.store.carbsHr)} ${msgKHAUnit}"));

    List<String> temp = List<String>();
    temp.add(msgTargetTitle);
    if (current.store.listTargetHigh.length == current.store.listTargetLow.length)
    {
      for (int i = 0; i < current.store.listTargetHigh.length; i++)
      {
        ProfileEntryData currHigh = current.store.listTargetHigh[i];
        ProfileEntryData currLow = current.store.listTargetLow[i];
        var highTime = currHigh.time(day.date);
        var lowTime = currLow.time(day.date);
        if (highTime != lowTime)continue;
        bool lowChanged = false;
        bool highChanged = false;

        double oldLow = null;
        double oldHigh = null;
        int idx = before.store.listTargetLow.indexWhere((entry)
        => entry.time(day.date) == lowTime);
        if (idx < 0)lowChanged = true;
        else
          lowChanged = before.store.listTargetLow[idx].value != currLow.value;
        if (lowChanged && idx >= 0)oldLow = before.store.listTargetLow[idx].value;
        idx = before.store.listTargetHigh.indexWhere((entry)
        => entry.time(day.date) == highTime);
        if (idx < 0)highChanged = true;
        else
          highChanged = before.store.listTargetHigh[idx].value != currHigh.value;
        if (highChanged && idx >= 0)oldHigh = before.store.listTargetHigh[idx].value;
        if (lowChanged || highChanged)
        {
          if (oldLow == null || oldHigh == null)temp.add(
            "ab ${fmtTime(highTime, withUnit: true)} neuer Bereich ${currLow.value} - ${currHigh.value}");
          else
            temp.add(
              "ab ${fmtTime(highTime, withUnit: true)} ${oldLow} - ${oldHigh} geändert auf ${currLow.value} - ${currHigh
                .value}");
        }
      }
      if (temp.length > 1)ret.addAll(temp);

      getProfileEntriesChanged(ret, day, msgBasalTitle, current.store.listBasal, before.store.listBasal);
      getProfileEntriesChanged(ret, day, msgISFTitle, current.store.listSens, before.store.listSens);
      getProfileEntriesChanged(ret, day, msgICRTitle, current.store.listCarbratio, before.store.listCarbratio);
    }

    if (ret.length == 1)ret.add(msgNoChange);

    return ret.join("\n");
  }

  getProfileEntriesChanged(List<String> list, DayData day, String title, List<ProfileEntryData> current,
                           List<ProfileEntryData> before)
  {
    List<String> ret = List<String>();
    for (int i = 0; i < current.length; i++)
    {
      ProfileEntryData entry = current[i];
      var time = current[i].time(day.date);
      ProfileEntryData old = before.firstWhere((entry)
      => entry.time(day.date) == time, orElse: ()
      => null);
      bool hasChanged = false;
      if (old == null)hasChanged = true;
      else if (old.value != entry.value) hasChanged = true;
      if (hasChanged)
      {
        if (old == null)ret.add("ab ${fmtTime(time, withUnit: true)}: neuer Wert ${entry?.value ?? 'null'}");
        else if (entry == null)ret.add("ab ${fmtTime(time, withUnit: true)}: ${old.value} gelöscht");
        else
          ret.add("ab ${fmtTime(time, withUnit: true)}: ${old.value} geändert auf ${entry.value}");
      }
    }
    if (ret.length > 0)
    {
      list.add(title);
      list.addAll(ret);
    }
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