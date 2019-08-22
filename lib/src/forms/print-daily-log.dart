import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'base-print.dart';
import 'base-profile.dart';

class Flags
{
  bool hasKatheter = false;
  bool hasSensor = false;
  bool hasAmpulle = false;
}

class PrintDailyLog extends BaseProfile
{
  @override
  String id = "daylog";

  bool showNotes, showCarbs, showIE, showSMB, showTempBasal, showProfileSwitch, showIESource, showTempTargets, showGluc,
    showChanges, showChangesColumn, showCalibration, showProfileSwitchDetails;
  int groupMinutes = 0;

  @override
  bool get isBetaOrLocal
  => false;

  @override
  List<ParamInfo> params = [
    ParamInfo(2, msgParam1, boolValue: true),
    ParamInfo(3, msgParam2, boolValue: true),
    ParamInfo(4, msgParam3, boolValue: true, subParams: [ParamInfo(0, msgParam7, boolValue: true)]),
    ParamInfo(10, msgParam4, boolValue: true, isLoopValue: true),
    ParamInfo(9, msgParam5, boolValue: true, isLoopValue: true),
    ParamInfo(5, msgParam6, boolValue: true, subParams: [ParamInfo(0, msgParam14, boolValue: true)]),
    ParamInfo(8, msgParam8, boolValue: true, isLoopValue: true),
    ParamInfo(0, msgParam9, list: [
      Intl.message("Keine"),
      Intl.message("1 Minute"),
      Intl.message("5 Minuten"),
      Intl.message("15 Minuten"),
      Intl.message("30 Minuten"),
      Intl.message("1 Stunde")
    ]),
    ParamInfo(1, msgParam10, boolValue: true),
    ParamInfo(6, msgParam11, boolValue: true, subParams: [ParamInfo(0, msgParam12, boolValue: true)]),
    ParamInfo(7, msgParam13, boolValue: true),
  ];

  @override
  extractParams()
  {
    showNotes = params[0].boolValue;
    showCarbs = params[1].boolValue;
    showIE = params[2].boolValue;
    showIESource = params[2].subParams[0].boolValue;
    showTempBasal = params[3].boolValue;
    showSMB = params[4].boolValue;
    showProfileSwitch = params[5].boolValue;
    showProfileSwitchDetails = params[5].subParams[0].boolValue;
    showTempTargets = params[6].boolValue;

    switch (params[7].intValue)
    {
      case 1:
        groupMinutes = 1;
        break;
      case 2:
        groupMinutes = 5;
        break;
      case 3:
        groupMinutes = 15;
        break;
      case 4:
        groupMinutes = 30;
        break;
      case 5:
        groupMinutes = 60;
        break;
      default:
        groupMinutes = 0;
        break;
    }

    showGluc = params[8].boolValue;
    showChanges = params[9].boolValue;
    showChangesColumn = params[9].subParams[0].boolValue;
    showCalibration = params[10].boolValue;
  }

  @override
  dynamic get estimatePageCount
  => {"count": 0, "isEstimated": true};

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
  static String get msgParam10
  => Intl.message("Glukosewert");
  static String get msgParam11
  => Intl.message("Wechsel (Katheter etc.)");
  static String get msgParam12
  => Intl.message("Zusätzliche Spalte anzeigen");
  static String get msgParam13
  => Intl.message("Kalibrierung und blutige Messungen");
  static String get msgParam14
  => Intl.message("Details des Profilwechsels");

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
  double _bloodValue = null;

  String get msgDay
  => Intl.message("Tag (08:00 - 18:00)");
  String get msgDawn
  => Intl.message("Dämmerung (06:00 - 08:00, 18:00 - 20:00)");
  String get msgNight
  => Intl.message("Nacht (20:00 - 08:00)");

  @override
  dynamic get footerText
  =>
    [
      {
        "table": {
          "widths": [cm(6.0)],
          "body": [
            [{"text": msgDay, "style": "timeDay", "alignment": "center"}],
            [{"text": msgDawn, "style": "timeLate", "alignment": "center"}],
            [{"text": msgNight, "style": "timeNight", "alignment": "center"}]
          ]
        },
        "fontSize": fs(7),
        "layout": "noBorders"
      }
    ];

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
    Flags flags = Flags();
    List<TreatmentData> treatments = List<TreatmentData>();

    for (TreatmentData t in day.treatments)
      treatments.add(t);

    for (EntryData e in day.bloody)
    {
      TreatmentData t = TreatmentData();
      t.createdAt = e.time;
      t.eventType = "nr-${e.type}";
      t.glucoseType = "finger";
      t.glucose = e.bloodGluc;
      t.notes = msgMBG(glucFromData(e.bloodGluc), getGlucInfo()["unit"]);
      treatments.add(t);
    }

    for (EntryData e in day.entries)
    {
      if (e.type == "cal")
      {
        TreatmentData t = TreatmentData();
        t.createdAt = e.time;
        t.eventType = "nr-${e.type}";
        t.notes =
        "Kalibrierung - scale ${g.fmtNumber(e.scale, 2)}, intercept ${g.fmtNumber(e.intercept, 0)}, slope ${g.fmtNumber(
          e.slope, 2)}";
        treatments.add(t);
      }
    }
    treatments.sort((t1, t2)
    => t1.createdAt.compareTo(t2.createdAt));

    for (int i = 0; i < treatments.length; i++)
    {
      TreatmentData t = treatments[i];
      var row = [];

      bool wasAdded = false;
      if (groupMinutes == 0 || t.createdAt.isBefore(nextTime))
      {
        wasAdded = true;
        fillList(groupMinutes != 0, src, day, t, list, flags);
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
          list = fillRow(
            time,
            src,
            day,
            row,
            day.findNearest(day.entries, null, time),
            list,
            flags,
            "row");
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
          else
            flags = Flags();
        }
        nextTime = nextTime.add(Duration(minutes: groupMinutes));
      }

      if (!wasAdded)i--;
    }
  }

  List<String> fillRow(DateTime time, ReportData src, DayData day, dynamic row, EntryData glucEntry, List<String> list,
                       Flags flags, String style)
  {
    if (list.length > 0)
    {
      double oldY = _y;
      double size = fs(10);
      String text = list[0];
      for (int i = 1; i < list.length; i++)
      {
        String line = list[i];
        if (text.endsWith("]"))text = "${text} ${line}";
        else
          text = "${text}, ${line}";
      }
      List<String> lines = text.split("\n");
      double y = _y;
      int idx = 0;
      if (lines.length > 1)y += 2 * _cellSpace;
      List<String> output = List<String>();
      double wid = width - 1.8 - 5.1;
      if (showGluc)wid -= 1.6;
      if (showChanges && showChangesColumn)wid -= 1.7;
      int charsPerLine = wid ~/ 0.165;
      while (idx < lines.length && y + _lineHeight * (lines[idx].length ~/ charsPerLine + 1) < _maxY)
      {
        y += _lineHeight * (lines[idx].length ~/ charsPerLine + 1);
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
        if (showGluc)
        {
          double gluc = glucEntry?.gluc;
          if (_bloodValue == null)
          {
            addRow(true, cm(1.3), row,
              {"text": getGlucInfo()["unit"], "style": "total", "fontSize": size, "alignment": "center"}, {
                "text": glucFromData(gluc),
                "style": style,
                "fontSize": size,
                "alignment": "center",
                "fillColor": colForGluc(day, gluc)
              });
          }
          else
          {
            addRow(true, cm(1.3), row,
              {"text": getGlucInfo()["unit"], "style": "total", "fontSize": size, "alignment": "center"}, {
                "stack": [
                  {"text": glucFromData(gluc), "style": style, "fontSize": size, "alignment": "center"},
                  {
                    "text": glucFromData(_bloodValue),
                    "style": style,
                    "fontSize": size,
                    "alignment": "center",
                    "color": colBloodValues
                  },
                ],
                "fillColor": colForGluc(day, gluc)
              });
          }
        }
        if (showChanges && showChangesColumn)
        {
          dynamic stack = [];
          double x = -0.5;
          if (flags.hasKatheter)stack.add(
            {"relativePosition": {"x": cm(x += 0.5), "y": cm(0.1)}, "image": "katheter.print", "width": cm(0.4)});
          if (flags.hasSensor)stack.add(
            {"relativePosition": {"x": cm(x += 0.5), "y": cm(0)}, "image": "sensor.print", "width": cm(0.4)});
          if (flags.hasAmpulle)stack.add(
            {"relativePosition": {"x": cm(x += 0.5), "y": cm(0.1)}, "image": "ampulle.print", "width": cm(0.4)});
          addRow(true, cm(1.4), row, {"text": "Wechsel", "style": "total", "fontSize": size, "alignment": "center"},
            {"stack": stack});
        }
        addRow(true, cm(wid), row, {
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
    _bloodValue = null;
    return list;
  }

  String getText(double y, String text)
  {
//    if (g.isLocal)return "${g.fmtNumber(y, 1)} - $text";
    return text;
  }

  String styleForTime(DateTime time)
  {
    if (time.hour < 6 || time.hour > 20)return "timeNight";
    if (time.hour < 8 || time.hour > 17)return "timeLate";
    return "timeDay";
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

  String msgLogTempTarget(target, duration, reason)
  =>
    Intl.message("temp. Ziel ${target} für ${duration} min, Grund: ${reason}", args: [target, duration, reason],
      name: "msgLogTempTarget");
  String msgLogTempBasal(percent, duration)
  => Intl.message("temp. Basal ${percent}% / ${duration} min", args: [percent, duration], name: "msgLogTempBasal");
  String msgLogSMB(insulin, unit)
  => Intl.message("SMB ${insulin} ${unit}", args: [insulin, unit], name: "msgLogSMB");
  String get msgChangeSite
  => Intl.message("Katheterwechsel");
  String get msgChangeSensor
  => Intl.message("Sensorwechsel");
  String get msgChangeInsulin
  => Intl.message("Ampullenwechsel");
  String msgMBG(gluc, unit)
  => Intl.message("Blutige Messung ${gluc} ${unit}", args: [gluc, unit], name: "msgMBG");


  fillList(bool showTime, ReportData src, DayData day, TreatmentData t, List<String> list, Flags flags)
  {
    int lastIdx = list.length;
    String type = t.eventType.toLowerCase();
    if (showNotes && t.notes != null && t.notes.isNotEmpty && !type.startsWith("nr-"))list.add("${t.notes}");
    if (showCarbs && t.carbs != null && t.carbs != 0)list.add("${msgCarbs(t.carbs.toString())}");
    if (showIE && t.insulin != null && t.insulin != 0 && !t.isSMB)
    {
      if (showIESource)list.add("${t.eventType} ${t.insulin} ${msgInsulinUnit}");
      else
        list.add("${t.insulin} ${msgInsulinUnit}");
    }
    if (showSMB && t.insulin != null && t.insulin != 0 && t.isSMB)list.add(msgLogSMB(t.insulin, msgInsulinUnit));
    if (showTempBasal && type == "temp basal")
    {
      ProfileEntryData entry = basalFor(day, t.createdAt);
      if (entry != null)list.add(msgLogTempBasal(g.fmtNumber(entry.tempAdjusted * 100), entry.duration));
    }
    if (showProfileSwitch && type == "profile switch")
    {
      list.add(getProfileSwitch(src, day, t, showProfileSwitchDetails));
    }

    if (showTempTargets && type == ("temporary target"))
    {
      String target;
      if (t.targetBottom == t.targetTop)target = "${g.glucFromData(t.targetBottom)} ${getGlucInfo()["unit"]}";
      else
        target = "${g.glucFromData(t.targetBottom)} - ${g.glucFromData(t.targetTop)} ${getGlucInfo()["unit"]}";
      list.add(msgLogTempTarget(target, t.duration, t.reason));
    }
    if (showChanges)
    {
      if (type == "site change")
      {
        list.add(msgChangeSite);
        flags.hasKatheter = true;
      }
      if (type == "sensor change")
      {
        list.add(msgChangeSensor);
        flags.hasSensor = true;
      }
      if (type == "insulin change")
      {
        list.add(msgChangeInsulin);
        flags.hasAmpulle = true;
      }
    }

    if (type.startsWith("nr-"))
    {
      if (showCalibration)
      {
        if (type == "nr-cal" || type == "nr-mbg")list.add("${t.notes}");
      }
    }

    if (t.isBloody)_bloodValue = t.glucose;

    if (list.length != lastIdx && showTime && groupMinutes > 1)
    {
      String time = "[${fmtTime(t.createdAt)}]";
      if (lastIdx < 2 || list[lastIdx - 2] != time)list.insert(lastIdx, time);
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