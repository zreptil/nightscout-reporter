import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:nightscout_reporter/src/forms/base-print.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;

@Component(
  selector: 'helpview',
  styleUrls: ['helpview_component.css'],
  templateUrl: 'helpview_component.html',
  directives: [ModalComponent, MaterialDialogComponent, MaterialButtonComponent, MaterialIconComponent, NgIf, NgFor],
  providers: [],
)
class HelpViewComponent {
  globals.Globals g = globals.Globals();

  @Input()
  List<FormConfig> tileHelp;

  @Output('buttonClicked')
  Stream<UIEvent> get trigger => _trigger.stream;
  final _trigger = StreamController<UIEvent>.broadcast(sync: true);

  bool isVisible = true;

  HelpViewComponent();

  void fire(String type, [int detail = 0]) async {
    switch (type) {
      case 'closeAll':
        tileHelp.clear();
        break;
      case 'close':
        tileHelp.removeLast();
        break;
      case 'btn':
        if (detail >= 0 && detail < tileHelp.last.form.helpStrings.length) {
          tileHelp.add(tileHelp.last.form.helpStrings[detail].cfg);
        }
        break;
    }
    _trigger.add(UIEvent(type, detail: detail));
  }
}
