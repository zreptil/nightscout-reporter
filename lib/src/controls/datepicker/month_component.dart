import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:nightscout_reporter/src/controls/datepicker/datepicker_component.dart';

class _Day
{
  Date date;
  DatepickerPeriod _period;
  int _forMonth;

  get name
  => DatepickerPeriod.dowName(date);
  get shortName
  => DatepickerPeriod.dowShortName(date);

  int get day
  => date.day;

  bool get isRaised
  => _period.start != null && _period.end != null && date.isOnOrAfter(_period.start) && date.isOnOrBefore(_period.end);
  bool get isEnabled
  {
    if (date.month != _forMonth)return false;
    if (_period.maxDate != null && date.isAfter(_period.maxDate))return false;
    if (_period.minDate != null && date.isBefore(_period.minDate))return false;
    if (!_period.isDowActive(date.weekday - 1))return false;
    return true;
  }

  _Day(this._period, d, this._forMonth)
  {
    date = Date(d.year, d.month, d.day);
  }
}

class _Week
{
  Date _date;
  DatepickerPeriod _period;
  int _forMonth;
  List<_Day> days = List<_Day>();
  _Week(this._period, this._date, this._forMonth)
  {
    Date d = Date(_date.year, _date.month, _date.day);
    for (int i = 0; i < 7; i++)
    {
      days.add(_Day(_period, d, _forMonth));
      d = d.add(days: 1);
    }
  }
}

class _Month
{
  Date date;
  DatepickerPeriod _period;
  List<_Week> weeks = List<_Week>();
  _Month(this._period, Date date)
  {
    date = Date(date.year, date.month, 1);
    Date d = Date(date.year, date.month, 1);
    int diff = _period.firstDayOfWeek - d.weekday;
    d = d.add(days: diff <= 0 ? diff : diff - 7);
    do
    {
      weeks.add(_Week(_period, d, date.month));
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
  @Input()
  bool isLocal = false;

  monthName(date)
  => DatepickerPeriod.monthName(date);

  dowmark(idx)
  => period.isDowActive(idx) ? "done" : "close";

  dayclass(_Day day)
  => period.entryKey != null ? 'key' : '';

  get firstDayOfWeek
  => period.firstDayOfWeek;
  set firstDayOfWeek(value)
  {
    while (value > 7)value -= 7;
    while (value < 1)value += 7;
    period.firstDayOfWeek = value;
    if (_period != null && _date != null)month = _Month(_period, _date);
  }

  DatepickerPeriod _period = null;
  Date _date;
  Date get date
  => _date;
  DatepickerPeriod get period
  => _period;

  @Input()
  set date(value)
  {
    _date = value;
    if (_period != null && _date != null)month = _Month(_period, _date);
  }

  @Input()
  set period(value)
  {
    _period = value;
    if (_period != null && _date != null)month = _Month(_period, _date);
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
    if (period.start != null && day.date.isBefore(period.start))
    {
      period.start = day.date;
      period.entryKey = null;
    }
    else if (period.end != null && day.date.isAfter(period.end))
    {
      period.end = day.date;
      period.entryKey = null;
    }
    else
    {
      period.start = day.date;
      period.end = day.date;
      period.entryKey = null;
    }
  }
}
