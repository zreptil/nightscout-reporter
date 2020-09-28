import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/forms/base-print.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;

@Component(
  selector: 'infoview',
  styleUrls: ['infoview_component.css'],
  templateUrl: 'infoview_component.html',
  directives: [ModalComponent, MaterialDialogComponent, MaterialButtonComponent, MaterialIconComponent, NgIf, NgFor],
  providers: [],
)
class InfoViewComponent {
  globals.Globals g = globals.Globals();

  @Input()
  List<FormConfig> tileHelp;

  @Output('buttonClicked')
  Stream<UIEvent> get trigger => _trigger.stream;
  final _trigger = StreamController<UIEvent>.broadcast(sync: true);

  String get msgTitle {
    if(g.info.errors != '') return Intl.message('Fehler');
    if(g.info.warnings != '') return Intl.message('Warnung');
    return Intl.message('Information');
  }

  String get type {
    if(g.info.errors != '') return 'error';
    if(g.info.warnings != '') return 'warning';
    return 'notification';
  }

  bool isVisible = true;

  InfoViewComponent();

  void fire(String type, [int detail = 0]) async {
    switch (type) {
      case 'close':
        g.info.clear();
        break;
    }
    _trigger.add(UIEvent(type, detail: detail));
  }
}
