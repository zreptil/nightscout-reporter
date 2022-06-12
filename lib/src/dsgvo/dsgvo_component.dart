import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;

@Component(
  selector: 'dsgvo',
  styleUrls: ['dsgvo_component.css'],
  templateUrl: 'dsgvo_component.html',
  directives: [
    MaterialDialogComponent,
    MaterialButtonComponent,
    MaterialIconComponent,
    MaterialCheckboxComponent,
    NgIf
  ],
  providers: [],
)
class DSGVOComponent {
  globals.Globals g = globals.Globals();

  @Output("closeClicked")
  Stream<UIEvent> get trigger => _trigger.stream;
  final _trigger = StreamController<UIEvent>.broadcast(sync: true);

  DSGVOComponent();

  void fire(String type) async {
    _trigger.add(UIEvent(type, detail: 0));
  }
}
