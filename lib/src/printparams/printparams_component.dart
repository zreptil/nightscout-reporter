import 'dart:async';
import 'dart:convert';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/material_input/material_input.dart';
import 'package:angular_components/material_select/material_dropdown_select.dart';
import 'package:angular_components/material_select/material_select_item.dart';
import 'package:angular_components/material_toggle/material_toggle.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/controls/adjustment/gluc_adjust_component.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;

import '../globals.dart';
import '../json_data.dart';

@Component(
  selector: 'printparams',
  styleUrls: ['printparams_component.css'],
  templateUrl: 'printparams_component.html',
  directives: [
    MaterialDialogComponent,
    MaterialInputComponent,
    MaterialCheckboxComponent,
    MaterialDropdownSelectComponent,
    MaterialSelectItemComponent,
    MaterialButtonComponent,
    MaterialIconComponent,
    MaterialToggleComponent,
    MaterialSliderComponent,
    GlucAdjustComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
  ],
  providers: [],
)
class PrintParamsComponent implements OnInit {
  globals.Globals g = globals.Globals();
  List<globals.PeriodShift> listPeriodShift = <globals.PeriodShift>[];

  @Output('printparamsresult')
  Stream<UIEvent> get trigger => _trigger.stream;
  final _trigger = StreamController<UIEvent>.broadcast(sync: true);

  String msgStandardLimits(String low, String high, String unit) {
    return Intl.message(
        'Standard Zielbereich verwenden ($low $unit - $high $unit)',
        args: [low, high, unit],
        name: 'msgStandardLimits');
  }

  String get msgStandardCGP =>
      Intl.message('CGP immer mit Standard Zielbereich');

  globals.PeriodShift periodShift;
  int glucMaxIdx;
  int basalPrecisionIdx;

  static String get msgAutomatic => Intl.message('Automatisch');

  static String get msgLatestFirst => Intl.message('Neuester Tag zuerst');

  String basalPrecisionText(value) {
    return '${g.fmtNumber(1, value)} ${g.getGlucInfo()['unit']}';
  }

  static String get msgBasalPrecisionFromProfile =>
      Intl.message('Aus den Profilen ermitteln');

  List<String> listGlucMaxValues = [msgAutomatic];
  List<String> listBasalPrecision = [msgBasalPrecisionFromProfile];

  PrintParamsComponent();

  @override
  Future<Null> ngOnInit() async {
    listPeriodShift.addAll(g.listPeriodShift.reversed);
    periodShift =
        listPeriodShift.firstWhere((e) => e.months == g.currPeriodShift.months);
    var url = g.user.apiUrl(null, 'status.json');
    var content = await g.request(url);
    var status = StatusData.fromJson(json.decode(content));
    g.setGlucMGDL(status);
    fillComboBoxes();
    glucMaxIdx = g.ppGlucMaxIdx;
    basalPrecisionIdx = g.ppBasalPrecisionIdx;
  }

  void fillComboBoxes() {
    listGlucMaxValues = [msgAutomatic];
    for (var i = 1; i < g.glucMaxValues.length; i++) {
      listGlucMaxValues.add(
          '${g.glucFromData(g.glucMaxValues[i])} ${g.getGlucInfo()['unit']}');
    }
    listBasalPrecision = [msgBasalPrecisionFromProfile];
    for (var i = 1; i < g.basalPrecisionValues.length; i++) {
      listBasalPrecision
          .add('${basalPrecisionText(g.basalPrecisionValues[i])}');
    }
  }

  void changeGlucUnits(int idx) {
    g.glucMGDLIdx = idx;
    fillComboBoxes();
  }

  void fire(String type) {
    var detail = 0;
    // make sure the value uses the correct factor
    g.user.adjustGluc = g.user.adjustGluc;
    switch (type) {
      case 'ok':
        g.currPeriodShift = periodShift;
        g.ppGlucMaxIdx = glucMaxIdx;
        g.ppBasalPrecisionIdx = basalPrecisionIdx;
        break;
    }
    _trigger.add(UIEvent(type, detail: detail));
  }
}
