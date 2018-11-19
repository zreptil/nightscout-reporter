import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/material_input/material_input.dart';
import 'package:intl/intl.dart';

import 'month_component.dart';

class DatepickerEntry
{
  String key;
  String title;
  var _fill = null;
  fill(DatepickerData data)
  {
    data.entryKey = key;
    _fill(data);
  }

  DatepickerEntry(this.key, this.title, this._fill);
}

class DatepickerData
{
  List<String> monthNames = Intl.message(
    "Januar,Februar,März,April,Mai,Juni,Juli,August,September,Oktober,November,Dezember").split(",");
  List<String> monthShortNames = Intl.message("Jan,Feb,Mär,Apr,Mai,Jun,Jul,Aug,Sep,Okt,Nov,Dez").split(",");
  List<String> dowNames = Intl.message("Montag,Dienstag,Mittwoch,Donnerstag,Freitag,Samstag,Sonntag").split(",");
  List<String> dowShortNames = Intl.message("Mo,Di,Mi,Do,Fr,Sa,So").split(",");

  int firstDayOfWeek = 1;
  monthName(Date date)
  => date != null ? monthNames[date.month - 1] : "";
  dowName(Date date)
  => date != null ? dowNames[date.weekday - 1] : "";
  monthShortName(Date date)
  => date != null ? monthShortNames[date.month - 1] : "";
  dowShortName(Date date)
  => date != null ? dowShortNames[date.weekday - 1] : "";

  Date start = null;
  Date end = null;
  String entryKey = "";

  String get entryTitle
  =>
    list
      .firstWhere((entry)
    => entry.key == entryKey)
      ?.title ?? "";

  List<DatepickerEntry> list = List<DatepickerEntry>();

  DatepickerData(String src)
  {
    try
    {
      List<String> parts = (src ?? "").split("|");
      if (parts.length == 3)
      {
        start = Date.parse(parts[0], DateFormat("yyyyMMdd"));
        end = Date.parse(parts[1], DateFormat("yyyyMMdd"));
        entryKey = parts[2];
      }
    }
    catch (ex)
    {
    }
  }

  String toString()
  {
    return "${start?.format(DateFormat("yyyyMMdd")) ?? ""}|${end?.format(DateFormat("yyyyMMdd")) ?? ""}|${entryKey}";
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
    MonthComponent,
    NgFor,
    NgIf
  ],
  providers: [],)
class DatepickerComponent
{
  @Input()
  int firstDayOfWeek = 1;

  get msgStartIncorrect
  => Intl.message("Das Startdatum ist nicht korrekt");
  get msgEndIncorrect
  => Intl.message("Das Enddatum ist nicht korrekt");

  @Input()
  String fmtDate = "dd.MM.yyyy";
  DateFormat get _fmtDate
  => DateFormat(fmtDate);

  DatepickerData _data = null;
  Date month = null;
  DatepickerData get data
  => _data;
  @Input()
  void set data(value)
  {
    DatepickerData temp = value is DatepickerData ? value : DatepickerData(value);
    _data = temp ?? _data;
    month = Date.today();
  }

  final _dataChange = StreamController<Date>();
  @Output()
  Stream<Date> get dataChange
  => _dataChange.stream;

  bool isStartValid = true;
  String get startDate
  => _data.start?.format(_fmtDate);
  set startDate(String value)
  {
    try
    {
      _data.start = Date.parse(value, _fmtDate);
      isStartValid = true;
    }
    catch (ex)
    {
      isStartValid = false;
    }
  }

  bool isEndValid = true;
  String get endDate
  => _data.end?.format(_fmtDate);
  set endDate(String value)
  {
    try
    {
      _data.end = Date.parse(value, _fmtDate);
      isEndValid = true;
    }
    catch (ex)
    {
      isEndValid = false;
    }
  }

  get msgPeriod
  => Intl.message("Zeitraum");

  String get periodFloatingLabel
  {
    if (_data.start == null || _data.end == null)return "";
    return msgPeriod;
  }

  String get periodLabel
  {
    if (_data.start == null || _data.end == null)return msgPeriod;
    if (_data.start.compareTo(_data.end) == 0)return _data.start.format(_fmtDate);
    if (_data.entryKey != null)return _data.entryTitle;
    return "${_data.start.format(_fmtDate)} - ${_data.end.format(_fmtDate)}";
  }

  @Output("save")
  Stream<UIEvent> get trigger
  => _trigger.stream;
  final _trigger = StreamController<UIEvent>.broadcast(sync: true);

  @Input()
  bool isDialogOpen = false;

  DatepickerComponent();

  void fire(String type)
  async {
    _trigger.add(UIEvent(type, detail: 0));
  }
}
