import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:nightscout_reporter/src/controls/datepicker/datepicker_component.dart';
import 'package:nightscout_reporter/src/globals.dart';

@Component(
    selector: 'app-pillcard',
    styleUrls: [
      'pillcard_component.css',
      'package:angular_components/css/mdc_web/card/mdc-card.scss.css',
    ],
    templateUrl: 'pillcard_component.html',
    directives: [
      MaterialDialogComponent,
      MaterialButtonComponent,
      MaterialFabComponent,
      MaterialIconComponent,
      materialInputDirectives,
      NgModel,
      NgStyle,
      NgClass,
      NgFor,
      NgIf
    ],
    providers: [])
class PillcardComponent {
  Globals g = Globals();
  int _idx;

  int get idx => _idx;

  @Input()
  set idx(int value) {
    _idx = value;
    updatePeriod();
  }

  @Input()
  String listMode;

  @Output('onaction')
  Stream<UIEvent> get trigger => _trigger.stream;
  final _trigger = StreamController<UIEvent>.broadcast(sync: true);

  String _pillOrg;

  PillData addPill;

  PillData get pill => _idx < 0 ? addPill : g.user.pillman.listMedication[_idx];

  void updatePeriod() {
    for (var i = 0; i < 7; i++) {
      period.activateDow(i, pill.dowActive[i]);
    }
  }

  bool get isEditMode => pill.isEdit;

  set isEditMode(bool value) {
    pill.isEdit = value;
    if (value) {
      _pillOrg = pill.asJsonString;
      print('set isEditMode ${_pillOrg}');
    }
  }

  PillcardComponent() {
    addPill = PillData(g);
    period = DatepickerPeriod(src: g.period.toString());
  }

  DatepickerPeriod period;

  List<String> get listWeekdays => period.sortedShortNames;

  String get consumeText {
    var ret = pill.nextConsumeText;
    return ret;
  }

  String get classForSupply {
    var ret = [];
    if (pill.supply <= pill.supplyLow) ret.add('warn-low');
    return ret.join(' ');
  }

  void clickTime(event, type, diff) {
    event.stopPropagation();
    var hour = pill.time.hour;
    var minute = pill.time.minute;
    switch (type) {
      case 'hour':
        hour += diff;
        break;
      case 'minute':
        minute += diff;
        break;
    }
    hour = hour < 0 ? 23 : hour;
    hour = hour > 23 ? 0 : hour;
    pill.time = DateTime(0, 1, 1, hour, minute);
  }

  void clickSupply(event, diff) {
    event.stopPropagation();
    var value = pill.supply ?? 0;
    value += diff;
    if (value < 0) value = 0;
    pill.supply = value;
  }

  void clickSupplyLow(event, diff) {
    event.stopPropagation();
    var value = pill.supplyLow ?? 0;
    value += diff;
    if (value < 0) value = 0;
    pill.supplyLow = value;
  }

  void clickDelete(event) {
    event.stopPropagation();
    g.user.pillman.listMedication.removeAt(_idx);
  }

  String classForCard([String def = null]) {
    var ret = ['mdc-card'];
    if (def != null) ret.add(def);
    if ((pill?.supplyLow ?? 0) > 0 && (pill?.supply ?? 0) <= (pill?.supplyLow ?? 0)) {
      ret.add('warn-low');
    }
    return ret.join(' ');
  }

  void clickDow(event, idx) {
    event.stopPropagation();
    pill.dowActive[idx] = !pill.dowActive[idx];
    updatePeriod();
  }

  void clickSave(event) {
    event.stopPropagation();
    pill.setNextConsume();
    _pillOrg = pill.asJsonString;
    isEditMode = false;
    g.save(updateSync: true, skipReload: true);
  }

  void clickClose(event) {
    event.stopPropagation();
    isEditMode = false;
    pill.fromJsonString(_pillOrg);
    if (pill.name?.isEmpty ?? true) {
      fire(event, 'delete');
    } else {
      updatePeriod();
      clickSave(event);
    }
  }

  void fire(event, String type) async {
    event.stopPropagation();
    _trigger.add(UIEvent(type, detail: idx));
  }
}
