import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/material_input/material_input.dart';
import 'package:angular_components/material_toggle/material_toggle.dart';
import 'package:intl/intl.dart';

import 'month_component.dart';

class DatepickerEntry {
  String key;
  String title;
  var _fill = null;
  var _shift = null;

  fill(DatepickerPeriod data) {
    data.entryKey = key;
    _fill(data);
  }

  shift(Date date, int shift) {
    return date.add(months: -shift);
/*
    while (shift > 0) {
      date = _shift(date).add(months: -shift);
      shift--;
    }
    return date;
 */
  }

  DatepickerEntry(this.key, this.title, this._fill, this._shift);
}

class DatepickerPeriod {
  static List<String> monthNames = Intl.message('Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober'
          '|November|Dezember')
      .split('|');
  static List<String> monthShortNames = Intl.message('Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez').split('|');
  static List<String> dowNames = Intl.message('Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|Sonntag').split('|');
  static List<String> dowShortNames = Intl.message('Mo|Di|Mi|Do|Fr|Sa|So').split('|');
  static List<String> shiftNames = Intl.message('Bis heute|Bis gestern|Bis Wochenende').split('|');

  String emptyReason;
  String fmtDate = 'dd.MM.yyyy';
  int shiftDate = 0;

  Date get baseDate {
    switch (shiftDate) {
      case 0:
        return Date.today();
      case 1:
        return Date.today().add(days: -1);
      case 2:
        var diff = -(Date.today().weekday - firstDayOfWeek + 1);
        while (diff > 0) {
          diff -= 7;
        }
        return Date.today().add(days: diff);
    }
    return null;
  }

  DateFormat get dateFormat => DateFormat(fmtDate);

  int firstDayOfWeek = 1;

  static String monthName(Date date) => date != null ? monthNames[date.month - 1] : '';

  static String dowName(Date date) => date != null ? dowNames[date.weekday - 1] : '';

  static String monthShortName(Date date) => date != null ? monthShortNames[date.month - 1] : '';

  static String dowShortName(Date date) => date != null ? dowShortNames[date.weekday - 1] : '';

  Date _shiftBy(Date ret, int months) => Date(ret.year, ret.month - months, ret.day);

  Date shiftStartBy(int months) {
    if (entryKey != null && entry != null) return entry.shift(start, months);
    return _shiftBy(start, months);
  }

  Date shiftEndBy(int months) {
    if (entryKey != null && entry != null) return entry.shift(end, months);
    return _shiftBy(end, months);
  }

  Date start;
  Date end;
  String entryKey;
  Date minDate;
  Date maxDate;
  String _dowActiveText;

  int get dayCount {
    var ret = 0;
    if (start != null && end != null) {
      ret = DateTime(end.year, end.month, end.day).difference(DateTime(start.year, start.month, start.day)).inDays + 1;
    }
    return ret;
  }

  List<bool> _dowActive = [true, true, true, true, true, true, true];

  bool isDowActive(int idx) => idx >= 0 && idx < _dowActive.length ? _dowActive[idx] : false;

  void activateDow(int idx, bool isActive) {
    if (idx < 0 || idx >= _dowActive.length) return;
    _dowActive[idx] = isActive;
    _dowActiveText = null;
  }

  String get msgPeriodEmpty => Intl.message('Zeitraum festlegen');

  String get display {
    if (entryKey != null) return entryTitle;
    if (start == null || end == null) return msgPeriodEmpty;
    if (start.compareTo(end) == 0) return start.format(dateFormat);
    return '${start.format(dateFormat)} - ${end.format(dateFormat)}';
  }

  List<String> get sortedShortNames {
    var ret = <String>[];
    var idx = firstDayOfWeek - 1;
    if (idx < 0) idx = 6;
    for (var i = 0; i < 7; i++) {
      ret.add(dowShortNames[idx]);
      idx++;
      if (idx > 6) {
        idx = 0;
      }
    }
    return ret;
  }

  String get dowActiveText {
    if (_dowActiveText == null) {
      var ret = <String>[];
      var cnt = 0;
      for (var i = 0; i < dowShortNames.length; i++) {
        var idx = i + firstDayOfWeek - 1;
        if (idx >= dowShortNames.length) idx -= dowShortNames.length;
        if (isDowActive(idx)) {
          ret.add(dowShortNames[idx]);
          cnt++;
        }
      }
      _dowActiveText = cnt < dowShortNames.length ? ret.join(', ') : '';
    }
    return _dowActiveText;
  }

  bool get isEmpty {
    emptyReason = '';
    if ((entryKey == null || entryKey.isEmpty) && start == null) return true;

    var beg = start;
    while (beg != null && end != null && beg.isOnOrBefore(end)) {
      if (isDowActive(beg.weekday - 1)) return false;
      beg = beg.add(days: 1);
    }

    emptyReason = Intl.message('Der Zeitraum enthält keine auswertbaren Tage');

    return true;
  }

  List<DatepickerEntry> list = <DatepickerEntry>[];

  String get entryTitle {
    if (list != null) {
      for (var entry in list) {
        if (entry.key == entryKey) return entry.title;
      }
    }
    return '';
  }

  DatepickerEntry get entry {
    if (list != null) {
      for (var entry in list) {
        if (entry.key == entryKey) return entry;
      }
    }
    return null;
  }

  Date parse(String date) {
    Date ret = null;
    if (date != null && date.length == 8) {
      var y = int.tryParse(date.substring(0, 4)) ?? 0;
      var m = int.tryParse(date.substring(4, 6)) ?? 1;
      var d = int.tryParse(date.substring(6, 8)) ?? 1;
      ret = Date(y, m, d);
    }

    return ret;
  }

  void refresh() {
    var item = list.firstWhere((element) => element.key == entryKey);
    if (item != null) {
      item.fill(this);
    }
  }

  void reset(String src) {
    try {
      var parts = (src ?? '').split('|');
      start = null;
      end = null;
      entryKey = null;
      firstDayOfWeek = 1;
      if (parts.length >= 4) {
        start = parse(parts[0]);
        end = parse(parts[1]);
        entryKey = parts[2] == '' || parts[2] == 'null' ? null : parts[2];
        firstDayOfWeek = int.tryParse(parts[3]) ?? 0;
      }
      for (var i = 0; i < 7; i++) {
        activateDow(i, true);
        if (parts.length >= 5 && i < parts[4].length) {
          activateDow(i, parts[4][i] == '+');
        }
      }
      if (parts.length >= 5) {
        shiftDate = int.tryParse(parts[5]) ?? 0;
      }
    } catch (ex) {}
  }

  DatepickerPeriod({String src = ''}) {
    reset(src);
  }

  @override
  String toString() {
    var ret = <String>[];
    ret.add('${start?.format(DateFormat('yyyyMMdd')) ?? ''}');
    ret.add('${end?.format(DateFormat('yyyyMMdd')) ?? ''}');
    ret.add('${entryKey ?? ''}');
    ret.add('$firstDayOfWeek');
    var dow = '';
    for (var active in _dowActive) dow = '${dow}${active ? '+' : '-'}';
    ret.add(dow);
    ret.add('$shiftDate');
    return ret.join('|');
  }
}

@Component(
  selector: 'datepicker',
  styleUrls: ['datepicker_component.css'],
  templateUrl: 'datepicker_component.html',
  directives: [
    ModalComponent,
    MaterialDialogComponent,
    MaterialButtonComponent,
    materialInputDirectives,
    MaterialIconComponent,
    MaterialInputComponent,
    MaterialToggleComponent,
    MonthComponent,
    NgFor,
    NgIf
  ],
  providers: [],
)
class DatepickerComponent {
  @Input()
  bool isLocal = false;

  @Input()
  int firstDayOfWeek = 1;

  @Input()
  bool showInfo = false;

  String infoClass(String cls) => showInfo ? "$cls infoarea showinfo" : "$cls infoarea";

  @Input()
  bool showLabel = true;

  bool get isMaxMonth =>
      period != null &&
      period.maxDate != null &&
      month != null &&
      (month.year > period.maxDate.year || (month.year == period.maxDate.year && month.month >= period.maxDate.month));

  bool get isMinMonth =>
      period != null &&
      period.minDate != null &&
      month != null &&
      (month.year < period.minDate.year || (month.year == period.minDate.year && month.month <= period.minDate.month));

  get msgStartIncorrect => Intl.message("Das Startdatum ist nicht korrekt");

  get msgEndIncorrect => Intl.message("Das Enddatum ist nicht korrekt");

  DatepickerPeriod _period = null;
  Date month = null;

  DatepickerPeriod get period => _period;

  @Input()
  void set period(value) {
    DatepickerPeriod temp = value is DatepickerPeriod ? value : DatepickerPeriod(src: value);
    _period = temp ?? _period;
    if (_period.entryKey != null && _period.list.length > 0) {
      DatepickerEntry entry = _period.list.firstWhere((e) => e.key == _period.entryKey);
      entry?.fill(_period);
    }
    month = Date.today();
  }

  final _periodChange = StreamController<DatepickerPeriod>();

  @Output()
  Stream<DatepickerPeriod> get periodChange => _periodChange.stream;

  String loadedPeriod;

  void revertData() {
    period.reset(loadedPeriod);
  }

  bool isStartValid = true;

  String get startDate => period.start?.format(period.dateFormat);

  void setMonth(Date value) {
    if (value != null) month = value;
  }

  set startDate(String value) {
    var saveDate = period.start;
    try {
      period.start = Date.parse(value, period.dateFormat);
      period.entryKey = null;
      isStartValid = true;
    } catch (ex) {
      period.start = saveDate;
      isStartValid = false;
    }
  }

  bool isEndValid = true;

  String get endDate => period.end?.format(period.dateFormat);

  set endDate(String value) {
    try {
      period.end = Date.parse(value, period.dateFormat);
      period.entryKey = null;
      isEndValid = true;
    } catch (ex) {
      isEndValid = false;
    }
  }

  @Input()
  String msgPeriod = Intl.message("Zeitraum");

  String get shiftName => DatepickerPeriod.shiftNames[period.shiftDate];

  String get periodFloatingLabel {
    if (period.start == null || period.end == null) return "";
    return msgPeriod;
  }

  String get periodLabelMain {
    if (period == null) return "";
    return period.display;
  }

  String get periodLabelSub {
    return "(${period.dowActiveText})";
  }

  @Output("save")
  Stream<UIEvent> get trigger => _trigger.stream;
  final _trigger = StreamController<UIEvent>.broadcast(sync: true);

  @Input()
  bool isDialogOpen = false;

  DatepickerComponent();

  void onClick(String type) {
    switch (type) {
      case 'loadedperiod':
        loadedPeriod = period.toString();
        isDialogOpen = true;
        break;
      case 'close':
        revertData();
        isDialogOpen = false;
        break;
      case 'save':
        isDialogOpen = false;
        fire('save');
        break;
    }
  }

  void onShortcutClick(item) {
    item.fill(period);
    month = period.end;
  }

  void onShiftClick() {
    var value = period.shiftDate + 1;
    if (value < 0) value = 0;
    if (value >= DatepickerPeriod.shiftNames.length) value = 0;
    period.shiftDate = value;
    period.refresh();
  }

  void fire(String type) async {
    if (type == "save") _periodChange.add(period);
    _trigger.add(UIEvent(type, detail: 0));
  }
}
