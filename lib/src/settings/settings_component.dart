import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/laminate/components/modal/modal.dart';
import 'package:angular_components/material_button/material_fab.dart';
import 'package:angular_components/material_input/material_input.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;

@Component(
  selector: 'settings',
  styleUrls: ['settings_component.css'],
  templateUrl: 'settings_component.html',
  directives: [
    ModalComponent,
    MaterialDatepickerComponent,
    MaterialDialogComponent,
    MaterialInputComponent,
    MaterialFabComponent,
    MaterialCheckboxComponent,
    MaterialButtonComponent,
    MaterialIconComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
  ],
  providers: [],)
class SettingsComponent
  implements OnInit
{
  globals.Globals g = globals.Globals();

  @Output("settingsresult")
  Stream<UIEvent> get trigger
  => _trigger.stream;
  final _trigger = StreamController<UIEvent>.broadcast(sync: true);

  String get msgUrlNightscout
  => Intl.message("Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)");
  String get msgName => Intl.message("Name");
  String get msgInsulin => Intl.message("Insulin");
  String get msgApiSecret => Intl.message("API-Secret (nur nötig, wenn der Zugriff eingeschränkt ist)");
  String get msgUserToken => Intl.message("User-Token (nur nötig, wenn der Zugriff eingeschränkt ist)");

  @Input()
  bool isVisible = false;
  SettingsComponent();

  @override
  Future<Null> ngOnInit()
  async {
  }

  void fire(String type)
  {
    _trigger.add(UIEvent(type, detail: 0));
  }
}
