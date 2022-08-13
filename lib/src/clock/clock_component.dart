import 'dart:async';
import 'dart:convert';
import 'dart:html' as html;

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/forms/base-print.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;
import 'package:nightscout_reporter/src/controls/clockentry/clock_entry_component.dart';
import 'package:angular_components/utils/color/material.dart';

import 'clock_element.dart';

@Component(
  selector: 'clock',
  styleUrls: ['clock_component.css'],
  templateUrl: 'clock_component.html',
  directives: [
    MaterialDialogComponent,
    MaterialButtonComponent,
    MaterialIconComponent,
    ClockEntryComponent,
    NgClass,
    NgFor,
    NgIf
  ],
  providers: [],
)
class ClockComponent implements OnInit {
  globals.Globals g = globals.Globals();

  List<ClockElement> displayList = [];

  bool get isEditMode => selected != null;

  String get classForClock {
    var ret = ['root', 'currentGluc'];
    ret.add(colForGluc(g.currentGlucValue));
    return ret.join(' ');
  }

  @Output('closeClicked')
  Stream<html.UIEvent> get trigger => _trigger.stream;
  final _trigger = StreamController<html.UIEvent>.broadcast(sync: true);

  DateTime get now => DateTime.now();

  ClockElement get selected =>
      displayList?.firstWhere((e) => e.selected, orElse: () => null);

  int get selectedIndex => displayList?.indexWhere((e) => e.selected) ?? -1;

  ClockComponent() {
    dynamic src = [
      {'type': 'time', 'size': 3},
      {'type': 'nl', 'size': 1},
      {'type': 'gluc', 'size': 5},
      {'type': 'arrow', 'size': 3},
      {'type': 'nl', 'size': 1},
      {'type': 'lasttime', 'size': 1},
      {'type': 'nl', 'size': 1}
    ];
    for (var entry in src) {
      displayList.add(ClockElement.fromJson(entry));
    }
  }

  String fmtTime(var date,
      {String def,
      bool withUnit = false,
      bool withMinutes = true,
      bool withSeconds = false}) {
    def ??= '';
    if (date == null) return def;

    if (withSeconds) withMinutes = true;

    if (date is DateTime) {
      var hour = date.hour;
      if (!g.language.is24HourFormat) hour = hour > 12 ? hour - 12 : hour;
      var m =
          withMinutes ? ':${(date.minute < 10 ? '0' : '')}${date.minute}' : '';
      if (withSeconds) {
        m = '${m}:${(date.second < 10 ? '0' : '')}${date.second}';
      }
      var ret = '${(hour < 10 ? '0' : '')}${hour}$m';
      if (withUnit) {
        if (g.language.is24HourFormat) {
          ret = BasePrint.msgTimeOfDay24(ret);
        } else {
          ret = date.hour > 12
              ? BasePrint.msgTimeOfDayPM(ret)
              : BasePrint.msgTimeOfDayAM(ret);
        }
      }
      return ret;
    }

    if (date is int) {
      var m = withMinutes ? ':00' : '';
      if (g.language.is24HourFormat) return '${g.fmtNumber(date, 0)}$m';

      m = withMinutes ? ' ' : '';

      if (date < 12) {
        return '${g.fmtNumber(date, 0)}${m}am';
      } else if (date == 12) {
        return '${g.fmtNumber(date, 0)}${m}pm';
      } else {
        return '${g.fmtNumber(date - 12, 0)}${m}pm';
      }
    }

    return date;
  }

  String colForGluc(double gluc) {
    if (gluc == null) return '';
    if (gluc < globals.Globals.stdLow) {
      return 'low';
    } else if (gluc > globals.Globals.stdHigh) {
      return 'high';
    }
    return 'norm';
  }

  bool get smallerDisabled {
    var ret = selected == null;
    if (selected != null) ret |= selected.size <= 1;
    return ret;
  }

  bool get biggerDisabled {
    var ret = selected == null;
    if (selected != null) ret |= selected.size >= 4;
    return ret;
  }

  bool get leftDisabled {
    var ret = selected == null;
    if (selected != null) ret |= selectedIndex == 0;
    return ret;
  }

  bool get rightDisabled {
    var ret = selected == null;
    if (selected != null) ret |= selectedIndex >= displayList.length - 1;
    return ret;
  }

  void clickSmaller() {
    if (!smallerDisabled) selected.size--;
  }

  void clickBigger() {
    if (!biggerDisabled) selected.size++;
  }

  void clickLeft() {
    if (!leftDisabled) {
      var idx = selectedIndex;
      var elem = selected;
      displayList.removeAt(idx);
      displayList.insert(idx - 1, elem);
    }
  }

  void clickAdd() {
    var idx = selectedIndex;
    if (idx < 0) idx = 0;
    for (var entry in displayList) {
      entry.selected = false;
    }
    var elem = ClockElement.fromJson({"type": "nl", "selected": true});
    displayList.insert(idx, elem);
  }

  String msgNL = Intl.message('Umbruch');
  String msgFACTOR = Intl.message('Faktor');
  String msgGLUC = Intl.message('Glukose');
  String msgTIME = Intl.message('Uhrzeit');
  String msgLASTTIME = Intl.message('Zeit');
  String msgARROW = Intl.message('Trendpfeil');

  dynamic get types => {
        'nl': msgNL,
        'factor': msgFACTOR,
        'gluc': msgGLUC,
        'time': msgTIME,
        'lasttime': msgLASTTIME,
        'arrow': msgARROW
      };

  void clickType() {
    if (selected != null) {
      var useKey = false;
      for (var key in types.keys) {
        if (useKey) {
          selected.type = key;
          useKey = false;
        } else if (key == selected.type) {
          useKey = true;
        }
      }
      if (useKey) selected.type = types.keys.first;
    }
  }

  void clickRight() {
    if (!rightDisabled) {
      var idx = selectedIndex;
      var elem = selected;
      displayList.removeAt(idx);
      displayList.insert(idx + 1, elem);
    }
  }

  void clickDelete() {
    var idx = selectedIndex;
    if (idx >= 0) {
      displayList.removeAt(idx);
    }
  }

  void onClick(ClockElement element, $event) {
    var value = !element.selected;
    for (var entry in displayList) {
      entry.selected = false;
    }
    element.selected = value;
  }

  void fire(String type) async {
    _trigger.add(html.UIEvent(type, detail: 0));
  }

  void clickSave() {
    var ret = [];
    for (var entry in displayList) {
      ret.add(entry.asJsonString);
    }

    print('[${ret.join(', ')}]');
  }

  void clickBackground() {
    if (!isEditMode) {
      if (displayList.length == 0) {
        displayList
            .add(ClockElement.fromJson({"type": "gluc", "selected": true}));
      }
      displayList[0].selected = true;
    }
  }

  @override
  Future<Null> ngOnInit() async {
    g.loadWebData();
    await setTheme(g.theme);
    g.loadSettings().then((_) {
      g.getCurrentGluc(force: true, timeout: 30);
    });
  }

  Future<void> setTheme(String name) async {
    dynamic theme = await g.requestJson(
        'packages/nightscout_reporter/assets/themes/${name}/colors.json');
//    dynamic theme = themes[name];
    if (theme == null) return;
    for (String key in theme.keys) {
      String value = theme[key];
      if (materialColors.containsKey(value)) {
        value = materialColors[value].hexString;
      }
      html.document.body.style.setProperty('--$key', value);
    }
    g.theme = name;
    g.saveWebData(); //saveStorage("webtheme", name);
  }
}
