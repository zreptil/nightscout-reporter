import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;

@Component(
  selector: 'impressum',
  styleUrls: ['impressum_component.css'],
  templateUrl: 'impressum_component.html',
  directives: [
    MaterialDialogComponent,
    MaterialButtonComponent,
    MaterialIconComponent,
  ],
  providers: [],
)
class ImpressumComponent {
  globals.Globals g = globals.Globals();

  @Output('closeClicked')
  Stream<UIEvent> get trigger => _trigger.stream;
  final _trigger = StreamController<UIEvent>.broadcast(sync: true);

  ImpressumComponent();

  void fire(String type) async {
    _trigger.add(UIEvent(type, detail: 0));
  }
}
