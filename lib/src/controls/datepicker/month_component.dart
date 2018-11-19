import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:nightscout_reporter/src/controls/datepicker/datepicker_component.dart';

class _Day
{
  Date date;
  DatepickerData _data;
  int forMonth;

  get name
  => _data.dowName(date);
  get shortName
  => _data.dowShortName(date);

  int get day
  => date.day;

  bool get isRaised
  => _data.start != null && _data.end != null && date.isOnOrAfter(_data.start) && date.isOnOrBefore(_data.end);
  bool get isEnabled
  => date.month == forMonth;

  _Day(this._data, d, this.forMonth)
  {
    date = Date(d.year, d.month, d.day);
  }
}

class _Week
{
  Date _date;
  DatepickerData _data;
  List<_Day> days = List<_Day>();
  _Week(this._data, Date date)
  {
    _date = Date(date.year, date.month, date.day);
    int diff = _data.firstDayOfWeek - _date.weekday;
    _date = _date.add(days: diff <= 0 ? diff : diff - 7);
    Date d = Date(_date.year, _date.month, _date.day);
    for (int i = 0; i < 7; i++)
    {
      days.add(_Day(_data, d, date.month));
      d = d.add(days: 1);
    }
  }
}

class _Month
{
  Date date;
  DatepickerData _data;
  List<_Week> weeks = List<_Week>();
  _Month(this._data, Date date)
  {
    date = Date(date.year, date.month, 1);
    Date d = Date(date.year, date.month, 1);
    do
    {
      weeks.add(_Week(_data, d));
      d = d.add(days: 7);
    }
    while (d.month == date.month);
  }
}

@Component(
  selector: 'month',
  styleUrls: ['month_component.css'],
  templateUrl: 'month_component.html',
  directives: [MaterialButtonComponent, MaterialIconComponent, NgFor, NgIf],
  providers: [],)
class MonthComponent
{
  _Month month = null;

  get firstDayOfWeek
  => data.firstDayOfWeek;
  set firstDayOfWeek(value)
  {
    while (value > 7)value -= 7;
    while (value < 1)value += 7;
    data.firstDayOfWeek = value;
    if (_data != null && _date != null)month = _Month(_data, _date);
  }

  DatepickerData _data = null;
  Date _date;
  Date get date
  => _date;
  DatepickerData get data
  => _data;

  @Input()
  set date(value)
  {
    _date = value;
    if (_data != null && _date != null)month = _Month(_data, _date);
  }

  @Input()
  set data(value)
  {
    _data = value;
    if (_data != null && _date != null)month = _Month(_data, _date);
  }

  Stream<UIEvent> get trigger
  => _trigger.stream;
  final _trigger = StreamController<UIEvent>.broadcast(sync: true);

  MonthComponent();

  void fire(String type)
  async {
    _trigger.add(UIEvent(type, detail: 0));
  }

  dayClicked(_Day day)
  {
    if (data.start != null && day.date.isBefore(data.start))
    {
      data.start = day.date;
      data.entryKey = null;
    }
    else if (data.end != null && day.date.isAfter(data.end))
    {
      data.end = day.date;
      data.entryKey = null;
    }
    else
    {
      data.start = day.date;
      data.end = day.date;
      data.entryKey = null;
    }
  }
}
