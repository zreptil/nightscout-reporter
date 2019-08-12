import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/material_input/material_input.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/forms/base-print.dart';

@Component(selector: 'formparams',
  styleUrls: ['formparams_component.css'],
  templateUrl: 'formparams_component.html',
  directives: [
    MaterialButtonComponent,
    materialInputDirectives,
    MaterialIconComponent,
    MaterialInputComponent,
    MaterialCheckboxComponent,
    MaterialDropdownSelectComponent,
    MaterialSelectItemComponent,
    MaterialSliderComponent,
    FormparamsComponent,
    NgFor,
    NgIf
  ],
  providers: [],)
class FormparamsComponent
{
  @Input()
  List<ParamInfo> paramList;

  FormparamsComponent();
}
