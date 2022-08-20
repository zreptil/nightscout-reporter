import 'dart:async';
import 'dart:math' as math;
import 'dart:html' as html;

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;
import 'package:nightscout_reporter/src/controls/watchentry/watch_entry_component.dart';
import 'package:nightscout_reporter/src/settings/settings_component.dart';

@Component(
    selector: 'app-watch',
    styleUrls: ['watch_component.css'],
    templateUrl: 'watch_component.html',
    directives: [
      MaterialDialogComponent,
      MaterialButtonComponent,
      MaterialIconComponent,
      WatchEntryComponent,
      SettingsComponent,
      NgStyle,
      NgClass,
      NgFor,
      NgIf
    ],
    providers: [])
class WatchComponent implements OnInit {
  globals.Globals g = globals.Globals();

  String msgNL = Intl.message('Umbruch');
  String msgGLUC = Intl.message('Glukose');
  String msgFACTOR = Intl.message('Faktor');
  String msgGLUCORG = Intl.message('Glukose (aus NS)');
  String msgTIME = Intl.message('Uhrzeit');
  String msgLASTTIME = Intl.message('Zeit');
  String msgARROW = Intl.message('Trendpfeil');
  String msgUSER = Intl.message('Benutzer');
  String msgDate = Intl.message('Datum');
  String msgUNIT = Intl.message('Einheit');
  String msgSPACE = Intl.message('Leer');
  String msgTARGET = Intl.message('Skala');

  dynamic get types => {
        'nl': msgNL,
        'gluc': msgGLUC,
        'unit': msgUNIT,
        'time': msgTIME,
        'date': msgDate,
        'lasttime': msgLASTTIME,
        'arrow': msgARROW,
        'user': msgUSER,
        'target': msgTARGET,
        'factor': msgFACTOR,
        'glucorg': msgGLUCORG,
        'space': msgSPACE
      };

  double get temp => globals.Globals.adjustFactor;

  String currPage = '';

  List<String> get _verticalIcon => ['vertical_align_top', 'vertical_align_center', 'vertical_align_bottom'];

  String get verticalIcon => _verticalIcon[selected?.vertical ?? 1];

  bool get isEditMode => selected != null || (g.watchList?.isEmpty ?? true);

  double get maxGluc => [
        globals.Globals.stdHigh ?? 0,
        g.targetTop ?? 0,
        g.currentGlucValue ?? 0,
        (g.lastGlucValue ?? 0) + 5
      ].reduce(math.max);

  dynamic get styleTargetLow => {'width': 'calc(100%*${g.targetBottom}/$maxGluc)'};

  dynamic get styleTargetNorm => {'width': 'calc(100%*${g.targetTop - g.targetBottom}/$maxGluc)'};

  dynamic get styleTargetHigh => {'width': 'calc(100%*${maxGluc - g.targetTop}/$maxGluc)'};

  dynamic get styleCurrentGluc => {'left': 'calc(100%*${g.currentGlucValue ?? 0}/$maxGluc)'};

  dynamic get styleLastGluc => {'left': 'calc(100%*${g.lastGlucValue ?? 0}/$maxGluc)'};

  dynamic get styleArrowTip {
    if ((g.currentGlucValue ?? 0) == (g.lastGlucValue ?? 0)) {
      return {'display': 'none'};
    }
    var x = (g.currentGlucValue ?? 0) / maxGluc;
    if ((g.currentGlucValue ?? 0) < (g.lastGlucValue ?? 0)) {
      return {'transform': 'rotate(135deg)', 'left': 'calc(100%*$x + 2px)'};
    }
    return {'transform': 'rotate(-45deg)', 'left': 'calc(100%*$x - 10px)'};
  }

  dynamic get styleArrowTrack {
    var len = (g.currentGlucValue ?? 0) - (g.lastGlucValue ?? 0);
    if ((g.currentGlucValue ?? 0) < (g.lastGlucValue ?? 0)) {
      return {'left': 'calc(100%*${g.currentGlucValue ?? 0}/$maxGluc)', 'width': 'calc(100%*${-len}/$maxGluc)'};
    }
    return {'left': 'calc(100%*${g.lastGlucValue ?? 0}/$maxGluc)', 'width': 'calc(100%*${len}/$maxGluc)'};
  }

  String get classForWatch {
    var ret = ['root'];
    ret.add(colForGluc(g.currentGlucValue));
    return ret.join(' ');
  }

  String get msgTitle => Intl.message('Night-Watch', desc: 'title for nightscout reporter watch window');

  DateTime get now => DateTime.now();

  globals.WatchElement get selected => g.watchList?.firstWhere((e) => e.selected, orElse: () => null);

  int get selectedIndex => g.watchList?.indexWhere((e) => e.selected) ?? -1;

  WatchComponent() {}

  String colForGluc(double gluc) {
    if (gluc == null) return '';
    if (gluc < g.targetBottom) {
      return 'low';
    } else if (gluc > g.targetTop) {
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
    if (selected != null) {
      ret |= selected.size >= globals.WatchElement.maxSize;
    }
    return ret;
  }

  bool get leftDisabled {
    var ret = selected == null;
    if (selected != null) ret |= selectedIndex == 0;
    return ret;
  }

  bool get rightDisabled {
    var ret = selected == null;
    if (selected != null) ret |= selectedIndex >= g.watchList.length - 1;
    return ret;
  }

  void clickSmaller(event) {
    event.stopPropagation();
    if (!smallerDisabled) selected.size--;
  }

  void clickBigger(event) {
    event.stopPropagation();
    if (!biggerDisabled) selected.size++;
  }

  void clickBold(event) {
    event.stopPropagation();
    if (selected != null) selected.bold = !selected.bold;
  }

  void clickItalic(event) {
    event.stopPropagation();
    if (selected != null) selected.italic = !selected.italic;
  }

  void clickLeft(event) {
    event.stopPropagation();
    if (!leftDisabled) {
      var idx = selectedIndex;
      var elem = selected;
      g.watchList.removeAt(idx);
      g.watchList.insert(idx - 1, elem);
    }
  }

  void clickAdd(event) {
    event.stopPropagation();
    var idx = selectedIndex;
    if (idx < 0) {
      idx = g.watchList.length - 1;
    } else {
      idx++;
    }
    for (var entry in g.watchList) {
      entry.selected = false;
    }
    var elem = globals.WatchElement.fromJson({"type": "space", "selected": true});
    g.watchList.insert(idx, elem);
  }

  void clickTypeSub(event) {
    event.stopPropagation();
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

  void clickTypeAdd(event) {
    event.stopPropagation();
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

  void clickRight(event) {
    event.stopPropagation();
    if (!rightDisabled) {
      var idx = selectedIndex;
      var elem = selected;
      g.watchList.removeAt(idx);
      g.watchList.insert(idx + 1, elem);
    }
  }

  void clickVertical(event) {
    event.stopPropagation();
    if (selected != null) {
      var value = selected.vertical;
      value++;
      if (value > 2) value = 0;
      selected.vertical = value;
    }
  }

  void clickDelete(event) {
    event.stopPropagation();
    var idx = selectedIndex;
    if (idx >= 0) {
      g.watchList.removeAt(idx);
    }
    if (idx >= g.watchList.length) idx = g.watchList.length - 1;
    if (idx < g.watchList.length) g.watchList[idx].selected = true;
  }

  void onClick(globals.WatchElement element, event) {
    event.stopPropagation();
    var value = !element.selected;
    for (var entry in g.watchList) {
      entry.selected = false;
    }
    element.selected = value;
  }

  void clickBackground() {
    if (!isEditMode) {
      if (g.watchList.isEmpty) {
        g.watchList.add(globals.WatchElement.fromJson({'type': 'gluc', 'selected': true}));
      }
      g.watchList[0].selected = true;
    }
  }

  void clickSave(event) {
    event.stopPropagation();
    for (var entry in g.watchList) {
      entry.selected = false;
    }
    g.save(skipReload: true);
  }

  @override
  Future<Null> ngOnInit() async {
    html.document.querySelector('head>title').text = msgTitle;
    html.document
        .querySelector('head>link[rel=manifest]')
        .setAttribute('href', 'packages/nightscout_reporter/assets/manifest.watch.json');
    currPage = '';
    g.loadWebData();
    await g.setTheme(g.theme);
    await g.loadSettings().then((_) {
      if (g.isConfigured) {
        g.getCurrentGluc(force: true, timeout: 30);
        currPage = 'watch';
      } else {
        currPage = 'settings';
      }
    });
  }

  void settingsResult(html.UIEvent evt) {
    switch (evt.type) {
      case 'ok':
        g.save(skipReload: true);
        if (!g.isConfigured) {
          g.clearStorage();
        } else {
          g.loadSettings().then((_) {
            g.getCurrentGluc(force: true, timeout: 30);
            currPage = 'watch';
          });
        }
        break;
      default:
        g.loadSettings(skipSyncGoogle: true);
        break;
    }
  }
}
