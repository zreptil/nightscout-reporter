import 'dart:async';
import 'dart:html' as html;

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;
import 'package:nightscout_reporter/src/controls/clockentry/clock_entry_component.dart';
import 'package:angular_components/utils/color/material.dart';

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

  String msgNL = Intl.message('Umbruch');
  String msgFACTOR = Intl.message('Faktor');
  String msgGLUC = Intl.message('Glukose');
  String msgTIME = Intl.message('Uhrzeit');
  String msgLASTTIME = Intl.message('Zeit');
  String msgARROW = Intl.message('Trendpfeil');
  String msgUSER = Intl.message('Benutzer');
  String msgDate = Intl.message('Datum');
  String msgUNIT = Intl.message('Einheit');
  String msgSPACE = Intl.message('Leer');

  double get temp => globals.Globals.adjustFactor;

  List<String> get _verticalIcon =>
      ['vertical_align_top', 'vertical_align_center', 'vertical_align_bottom'];

  String get verticalIcon => _verticalIcon[selected?.vertical ?? 1];

  dynamic get types => {
        'nl': msgNL,
        'space': msgSPACE,
        'factor': msgFACTOR,
        'gluc': msgGLUC,
        'unit': msgUNIT,
        'time': msgTIME,
        'date': msgDate,
        'lasttime': msgLASTTIME,
        'arrow': msgARROW,
        'user': msgUSER
      };

  bool get isEditMode => selected != null || (g.clockList?.isEmpty ?? true);

  String get classForClock {
    var ret = ['root'];
    ret.add(colForGluc(g.currentGlucValue));
    return ret.join(' ');
  }

  @Output('closeClicked')
  Stream<html.UIEvent> get trigger => _trigger.stream;
  final _trigger = StreamController<html.UIEvent>.broadcast(sync: true);

  String get msgTitle => Intl.message('Nightscout Reporter Uhr');

  DateTime get now => DateTime.now();

  globals.ClockElement get selected =>
      g.clockList?.firstWhere((e) => e.selected, orElse: () => null);

  int get selectedIndex => g.clockList?.indexWhere((e) => e.selected) ?? -1;

  ClockComponent() {}

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
    if (selected != null) ret |= selected.size >= globals.ClockElement.maxSize - 1;
    return ret;
  }

  bool get leftDisabled {
    var ret = selected == null;
    if (selected != null) ret |= selectedIndex == 0;
    return ret;
  }

  bool get rightDisabled {
    var ret = selected == null;
    if (selected != null) ret |= selectedIndex >= g.clockList.length - 1;
    return ret;
  }

  void clickSmaller() {
    if (!smallerDisabled) selected.size--;
  }

  void clickBigger() {
    if (!biggerDisabled) selected.size++;
  }

  void clickBold() {
    if (selected != null) selected.bold = !selected.bold;
  }

  void clickItalic() {
    if (selected != null) selected.italic = !selected.italic;
  }

  void clickLeft() {
    if (!leftDisabled) {
      var idx = selectedIndex;
      var elem = selected;
      g.clockList.removeAt(idx);
      g.clockList.insert(idx - 1, elem);
    }
  }

  void clickAdd() {
    var idx = selectedIndex;
    if (idx < 0) idx = 0;
    for (var entry in g.clockList) {
      entry.selected = false;
    }
    var elem = globals.ClockElement.fromJson({"type": "nl", "selected": true});
    g.clockList.insert(idx, elem);
  }

  void clickTypeSub() {
    if (selected != null) {
      var useKey = true;
      var check = selected.type;
      selected.type = null;
      for (var key in types.keys) {
        if (key == check) {
          useKey = false;
        }
        if (useKey) {
          selected.type = key;
        }
      }
      selected.type ??= types.keys.last;
    }
  }

  void clickTypeAdd() {
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
      g.clockList.removeAt(idx);
      g.clockList.insert(idx + 1, elem);
    }
  }

  void clickVertical() {
    if (selected != null) {
      var value = selected.vertical;
      value++;
      if (value > 2) value = 0;
      selected.vertical = value;
    }
  }

  void clickDelete() {
    var idx = selectedIndex;
    if (idx >= 0) {
      g.clockList.removeAt(idx);
    }
  }

  void onClick(globals.ClockElement element, $event) {
    var value = !element.selected;
    for (var entry in g.clockList) {
      entry.selected = false;
    }
    element.selected = value;
  }

  void fire(String type) async {
    _trigger.add(html.UIEvent(type, detail: 0));
  }

  void clickBackground() {
    if (!isEditMode) {
      if (g.clockList.isEmpty) {
        g.clockList
            .add(globals.ClockElement.fromJson({"type": "gluc", "selected": true}));
      }
      g.clockList[0].selected = true;
    }
  }

  @override
  Future<Null> ngOnInit() async {
    html.document.querySelector('head>title').text = msgTitle;
    var href = html.document
        .querySelector('head>link[rel="manifest"]')
        .getAttribute('href');
    href = href.replaceAll('.json', '.clock.json');
    html.document
        .querySelector('head>link[rel="manifest"]')
        .setAttribute('href', href);
    g.loadWebData();
    await setTheme(g.theme);
    await g.loadSettings().then((_) {
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
    g.saveWebData();
  }
}
