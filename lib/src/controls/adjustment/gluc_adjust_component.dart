import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;

@Component(
    selector: 'glucadjust',
    styleUrls: ['gluc_adjust_component.css'],
    templateUrl: 'gluc_adjust_component.html',
    directives: [
      MaterialCheckboxComponent,
      MaterialSliderComponent,
      NgFor,
      NgIf
    ],
    providers: [])
class GlucAdjustComponent {
  globals.Globals g = globals.Globals();

  String get msgAdjustGluc => Intl.message('Glukosewerte anpassen');

  String _msgAdjustTarget(factor) => Intl.message(
      'Die Werte für BG_TARGET_BOTTOM und BG_TARGET_TOP wurden durch den Faktor $factor geteilt',
      args: [factor],
      name: '_msgAdjustTarget');

  String get msgAdjustTarget =>
      _msgAdjustTarget(g.fmtNumber(g.user.hba1cAdjustFactor, 2));

  String _msgAdjustCalc(value) => Intl.message('Errechneter HbA1C: ${value}%',
      args: [value], name: '_msgAdjustCalc');

  String _msgAdjustLab(value) =>
      Intl.message('Im Labor ermittelter HbA1C: ${value}%',
          args: [value], name: '_msgAdjustLab');

  String get msgAdjustCalc => _msgAdjustCalc(g.fmtNumber(g.user.adjustCalc, 1));

  String get msgAdjustLab => _msgAdjustLab(g.fmtNumber(g.user.adjustLab, 1));

  GlucAdjustComponent();
}
