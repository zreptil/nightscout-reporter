import 'dart:async';
import 'dart:convert';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/laminate/components/modal/modal.dart';
import 'package:angular_components/material_input/material_input.dart';
import 'package:angular_components/material_select/material_dropdown_select.dart';
import 'package:angular_components/material_select/material_select_item.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;

import '../jsonData.dart';

@Component(
  selector: 'printparams',
  styleUrls: ['printparams_component.css'],
  templateUrl: 'printparams_component.html',
  directives: [
    ModalComponent,
    MaterialDialogComponent,
    MaterialInputComponent,
    MaterialCheckboxComponent,
    MaterialDropdownSelectComponent,
    MaterialSelectItemComponent,
    MaterialButtonComponent,
    MaterialIconComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
  ],
  providers: [],
)
class PrintParamsComponent implements OnInit {
  globals.Globals g = globals.Globals();
  List<globals.PeriodShift> listPeriodShift = List<globals.PeriodShift>();

  @Output("printparamsresult")
  Stream<UIEvent> get trigger => _trigger.stream;
  final _trigger = StreamController<UIEvent>.broadcast(sync: true);

  String msgStandardLimits(String low, String high, String unit) {
    return Intl.message("Standard Zielbereich verwenden ($low $unit - $high $unit)",
        args: [low, high, unit], name: "msgStandardLimits");
  }

  bool isVisible = true;
  globals.PeriodShift periodShift;
  int glucMaxIdx;
  int basalPrecisionIdx;
  static String get msgAutomatic => Intl.message("Automatisch");
  String basalPrecisionText(value) {
    return "${g.fmtNumber(1, value)} ${g.getGlucInfo()["unit"]}";
  }

  static String get msgBasalPrecisionFromProfile => Intl.message("Aus den Profilen ermitteln");

  List<String> listGlucMaxValues = [msgAutomatic];
  List<String> listBasalPrecision = [msgBasalPrecisionFromProfile];
  PrintParamsComponent();

  @override
  Future<Null> ngOnInit() async {
    listPeriodShift.addAll(g.listPeriodShift.reversed);
    periodShift = listPeriodShift.firstWhere((e) => e.months == g.currPeriodShift.months);
    String url = "${g.user.apiUrl}status.json";
    String content = await g.request(url);
    StatusData status = StatusData.fromJson(json.decode(content));
    g.setGlucMGDL(status);
    listGlucMaxValues = [msgAutomatic];
    for (int i = 1; i < g.glucMaxValues.length; i++)
      listGlucMaxValues.add("${g.glucFromData(g.glucMaxValues[i])} ${g.getGlucInfo()["unit"]}");
    glucMaxIdx = g.ppGlucMaxIdx;
    listBasalPrecision = [msgBasalPrecisionFromProfile];
    for (int i = 1; i < g.basalPrecisionValues.length; i++)
      listBasalPrecision.add("${basalPrecisionText(g.basalPrecisionValues[i])}");
    basalPrecisionIdx = g.ppBasalPrecisionIdx;
  }

  void fire(String type) {
    int detail = 0;
    switch (type) {
      case "ok":
        g.currPeriodShift = periodShift;
        g.ppGlucMaxIdx = glucMaxIdx;
        g.ppBasalPrecisionIdx = basalPrecisionIdx;
        break;
    }
    _trigger.add(UIEvent(type, detail: detail));
  }
}
