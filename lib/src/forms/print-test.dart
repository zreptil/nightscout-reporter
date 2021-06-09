import 'dart:convert';
import 'dart:math' as math;

import 'package:nightscout_reporter/src/json_data.dart';

import 'base-print.dart';

class PrintTest extends BasePrint {
  @override
  String id = 'test';

  @override
  String idx = '00';

  bool showEntries = false;
  bool showTreatments = true;
  bool showRawStatus = false;
  bool showRawEntries = false;
  bool showRawTreatments = false;
  bool showRawProfiles = false;
  bool showDayProfile = false;
  int rawCols = 3;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, 'Einträge', boolValue: false),
    ParamInfo(1, 'Behandlungen', boolValue: false),
    ParamInfo(2, 'Rohdaten Status', boolValue: true, thumbValue: false),
    ParamInfo(3, 'Rohdaten Einträge', boolValue: false),
    ParamInfo(4, 'Rohdaten Behandlungen', boolValue: false, thumbValue: true),
    ParamInfo(5, 'Rohdaten Profile', boolValue: false),
    ParamInfo(7, 'Rohdaten Spalten', intValue: 2, min: 1, max: 3),
    ParamInfo(6, 'Tagesprofil', boolValue: false),
  ];

  @override
  extractParams() {
    showEntries = params[0].boolValue;
    showTreatments = params[1].boolValue;
    showRawStatus = params[2].boolValue;
    showRawEntries = params[3].boolValue;
    showRawTreatments = params[4].boolValue;
    showRawProfiles = params[5].boolValue;
    rawCols = params[6].intValue;
    showDayProfile = params[7].boolValue;
  }

  @override
  dynamic get estimatePageCount => {'count': 0, 'isEstimated': true};

  @override
  bool get isDebugOnly => true;

  @override
  String get title => 'Datensätze';

  PrintTest() {
    init();
  }

  bool _isFirst = true;
  dynamic _body;
  dynamic _root;
  String _lastRootTitle = null;
  String _lastRootType = null;
  dynamic createRoot(type, {String title: null}) {
    String color = '#eee';
    if (type == null) type = _lastRootType;
    _lastRootType = type;
    if (title == null) title = _lastRootTitle;
    _lastRootTitle = title;

    switch (type) {
      case 'entries':
        _body.add([
          {'text': 'Uhrzeit', 'fillColor': color},
          {'text': 'Art', 'fillColor': color},
          {'text': 'sgv', 'fillColor': color},
          {'text': 'gluc', 'fillColor': color},
        ]);
        break;
      case 'treatments':
        _body.add([
          {'text': 'Uhrzeit', 'fillColor': color},
          {'text': 'Art', 'fillColor': color},
          {'text': 'Anpassung', 'fillColor': color},
          {'text': 'Dauer', 'fillColor': color},
          {'text': 'KH', 'fillColor': color},
          {'text': 'IE', 'fillColor': color},
        ]);
        break;
      case 'profiles':
        _body.add([
          {'text': title, 'fillColor': color}
        ]);
        break;
      case 'raw':
        _rawLineCount += 6;
        _body.add([
          {'text': title, 'fontSize': fs(12), 'colSpan': rawCols}
        ]);
        for (int i = 0; i < rawCols - 1; i++) _body[0].add({'text': ''});
        _body.add([]);
        break;
    }

    var widths = [];
    for (int i = 0; i < _body[0].length; i++) widths.add(cm((width - 4.0) / _body[0].length));
    var ret = {
      'margin': [cm(2.0), cm(_isFirst ? yorg : 0.5), cm(2.0), cm(0.5)],
      'layout': type == 'raw' ? '' : 'noBorders',
      'table': {'headerRows': 1, 'widths': widths, 'body': _body}
    };
    _isFirst = false;
    return ret;
  }

  int _rawLineCount = 0;
  int _rawCurrLines = 0;
  Page _page;
  List<Page> _pages;

  @override
  void fillPages(List<Page> pages) {
    _rawLineCount = 0;
    _rawCurrLines = 0;
    _pages = pages;
    _page = Page(isPortrait, [headerFooter(skipFooter: true)]);
    _body = [];
    _isFirst = true;
    int oldLength = pages.length;
    if (showEntries) {
      _root = createRoot('entries');
      for (int i = 0; i < repData.ns.entries.length; i++) {
        EntryData entry = repData.ns.entries[i];
        var row = [
          {'text': fmtDateTime(entry.time, '??.??.???? ??:?? Uhr'), 'colspan': 4},
          {'text': entry.type},
          {'text': g.fmtNumber(entry.sgv)},
          {'text': g.fmtNumber(entry.gluc)},
        ];
/*      if(entry.direction != null && entry.direction.toLowerCase() == 'none')
      {
        for(dynamic c in row)
          c['color'] = '#f00';
      }*/

        _body.add(row);
        if (_body.length > 35) addPage();
      }
      if (_body.length > 0) addPage();
//      _page.add(root);
    }

    if (showTreatments) {
      _body = [];
      _root = createRoot('treatments');
      var data = repData.ns.treatments;
      int lines = _body.length;
      for (int i = 0; i < data.length; i++) {
        TreatmentData entry = data[i];
        lines += 2;
        var row = [
          {'text': fmtDateTime(entry.createdAt, '??.??.???? ??:?? Uhr')}
        ];
        row.add({'text': entry.eventType});
        row.add({'text': '${g.fmtNumber(entry.adjustedValue(1), 0, 0, '')}', 'alignment': 'right'});
        row.add({'text': entry.duration > 0 ? g.fmtNumber(entry.duration, 0, 0, ' ') : ' ', 'alignment': 'right'});
        double carbs = entry.isECarb ? entry.eCarbs : entry.carbs;
        String text = carbs > 0.0 ? g.fmtNumber(carbs, 0, 0, ' ') : ' ';
        if (entry.isECarb) text = 'e${text}';
        row.add({'text': text, 'alignment': 'right'});
        text = entry.insulin > 0.0 ? g.fmtNumber(entry.insulin, 1, 0, ' ') : ' ';
        row.add({'text': text, 'alignment': 'right'});
        switch (entry.eventType.toLowerCase()) {
          case 'temp basal':
            row[1]['color'] = '#f00';
            break;
          case 'announcement':
          case 'note':
            row[1]['text'] = '${row[1]['text']}\n${entry.notes}';
            lines += entry.notes != null ? (entry.notes.split('\n').length - 1) : 0;
            break;
        }
        _body.add(row);
        if (lines > 35) {
          addPage();
          lines = 0;
        }
      }
      if (_body.length > 0) addPage();
//      _page.add(root);
    }

    if (showRawStatus) {
      _body = [];
      _root = createRoot('raw', title: 'Status');
      addRawData(repData.status.raw);
      finalizeRawData();
    }
    if (showRawEntries) {
      _body = [];
      _root = createRoot('raw', title: 'Entries (sgv)');
      for (EntryData entry in repData.ns.entries) addRawData(entry.raw, fmtDateTime(entry.time.toLocal()));
      finalizeRawData();
      _body = [];
      _root = createRoot('raw', title: 'Entries (mbg)');
      for (EntryData entry in repData.ns.bloody) addRawData(entry.raw, fmtDateTime(entry.time.toLocal()));
      finalizeRawData();
      _body = [];
      _root = createRoot('raw', title: 'Entries (remaining)');
      for (EntryData entry in repData.ns.remaining) addRawData(entry.raw, fmtDateTime(entry.time.toLocal()));
      finalizeRawData();
    }
    if (showRawTreatments) {
      _body = [];
      _root = createRoot('raw', title: 'Treatments');
      for (TreatmentData entry in repData.ns.treatments)
        addRawData(entry.raw, fmtDateTime(entry.createdAt.toLocal(), null, true));
      finalizeRawData();
    }
    if (showRawProfiles) {
      _body = [];
      _root = createRoot('raw', title: 'Profiles');
      for (ProfileData entry in repData.profiles) addRawData(entry.raw, fmtDateTime(entry.createdAt.toLocal()));
      finalizeRawData();
// */
    }
    if (showDayProfile) {
      for (var day in repData.data.days) {
        _body = [];
        _root = createRoot('profiles', title: 'Tagesprofil für ${fmtDate(day.date)}');
        var text = '';
        for (var entry in day.profile) {
          text = '${text}${fmtTime(entry.time(day.date), withSeconds: true)} '
              '${g.fmtNumber(entry.tempAdjusted * 100, 0, 3, 'null', false, true)} / ${entry.duration} min\n';
        }
        var row = [
          {'text': text, 'fontSize': fs(8)}
        ];
        _body.add(row);
        _page.content.add(_root);
      }
    }

    _pages.add(_page);
    if (repData.isForThumbs && pages.length - oldLength > 1) pages.removeRange(oldLength + 1, pages.length);
  }

  void addRawData(dynamic raw, [String title]) {
    var text = json.encode(raw);
    text = text.substring(1, text.length - 1);
    text = text.replaceAll(',\'', ',\n\'');
    text = text.replaceAll('},', '},\n');
    if (title != null) text = '${title}\n${text}';
    var parts = text.split('\n');
    _rawCurrLines = math.max(_rawCurrLines, parts.length + 1);
    for(var part in parts) {
      _rawCurrLines += (part.length / (400 / rawCols)).toInt();
    }
    _body.last.add({'text': text, 'fontSize': fs(8)});
    if (_body.last.length >= rawCols) {
      _rawLineCount += _rawCurrLines;
      if (_rawLineCount > 66) {
        while (_rawLineCount > 66) {
          int maxLines = 66 - (_rawLineCount - _rawCurrLines);
          var newRow = [];
          int lineCount = 0;
          for (var cell in _body.last) {
            newRow.add({'text': '', 'fontSize': fs(8)});
            List<String> lines = cell['text'].split('\n');
            List<String> oldText = List<String>();
            List<String> newText = List<String>();
            if (lines.length > maxLines && maxLines > 0) {
              for (int i = 0; i < maxLines; i++) oldText.add(lines[i]);
              for (int i = maxLines; i < lines.length; i++) newText.add(lines[i]);
            } else {
              oldText = lines;
            }
            String text = oldText.join('\n');
            cell['text'] = text;
            newRow.last['text'] = newText.join('\n');
            lineCount = math.max(lineCount, newText.length + 1);
          }
          addPage();
          _body.last = newRow;
          _rawLineCount += lineCount;
          _rawCurrLines = lineCount;
        }
        _body.add([]);
      } else {
        _body.add([]);
      }
    }
/*
    if (body.length > 7)
    {
      finalizeRawData(pages);
      pages.add(page);
      ret = [headerFooter(skipFooter: true)];
      body = [];
      root = createRoot('raw');
    }*/
  }

  addPage() {
    _rawLineCount = 0;
    _rawCurrLines = 0;
    _page.content.add(_root);
    _pages.add(_page);
    _isFirst = true;
    _page = Page(isPortrait, [headerFooter(skipFooter: true)]);
    _body = [];
    _root = createRoot(null);
  }

  finalizeRawData() {
//    if (body.last.length < rawCols)body.last.last['colSpan'] = rawCols - body.last.length + 1;
    while (_body.last.length < rawCols) _body.last.add({'text': ''});
    _page.content.add(_root);
//    pages.add(body);
  }
}
