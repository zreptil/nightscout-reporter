import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:nightscout_reporter/src/controls/pillcard/pillcard_component.dart';
import 'package:nightscout_reporter/src/globals.dart';
import 'package:nightscout_reporter/src/controls/watchentry/watch_entry_component.dart';
import 'package:nightscout_reporter/src/settings/settings_component.dart';

@Component(
    selector: 'app-pillman',
    styleUrls: [
      'pillman_component.css',
      '../settings/settings_component.css',
      'package:angular_components/css/mdc_web/card/mdc-card.scss.css',
    ],
    templateUrl: 'pillman_component.html',
    directives: [
      MaterialDialogComponent,
      MaterialButtonComponent,
      MaterialFabComponent,
      MaterialIconComponent,
      WatchEntryComponent,
      SettingsComponent,
      PillcardComponent,
      NgStyle,
      NgClass,
      NgFor,
      NgIf
    ],
    providers: [])
class PillmanComponent implements OnInit {
  Globals g = Globals();
  String mode = '';
  List<String> listModes = ['current', 'all'];
  String listMode;

  @Input()
  bool captureClick = true;

  @Input()
  Function(PillmanComponent pillman) doit;

  @Output('onaction')
  Stream<UIEvent> get trigger => _trigger.stream;
  final _trigger = StreamController<UIEvent>.broadcast(sync: true);

  dynamic get types => {'current': 'schedule', 'all': 'list'};

  void clickListMode(mode) {
    listMode = mode;
  }

  void clickPillman(event) {
    if (captureClick) {
      event.stopPropagation();
      if (doit != null) {
        doit(this);
      } else {
        fire(event, 'pillman');
        mode = 'edit';
      }
    }
  }

  void clickClose(event) {
    event.stopPropagation();
    mode = '';
  }

  void clickAdd(event) {
    event.stopPropagation();
    g.user.pillman.listMedication.add(PillData(g));
  }

  bool showPill(PillData pill) {
    switch (listMode) {
      case 'current':
        var now = DateTime.now();
        if (pill.nextConsume?.isBefore(now) ?? false) {
          return true;
        }
        if (Globals.isSameDay(pill.nextConsume, now)) {
          return !Globals.isSameDay(pill.lastConsumed, now);
        }
        return pill.nextConsume.isBefore(now);
    }
    return true;
  }

  @override
  Future<Null> ngOnInit() async {
    listMode = listModes[0];
  }

  void fire(event, String type) async {
    event.stopPropagation();
    _trigger.add(UIEvent(type));
  }

  void cardAction(event) {
    event.stopPropagation();
    switch (event.type) {
      case 'add':
        g.user.pillman.listMedication.add(PillData(g, isEdit: true));
        break;
      case 'delete':
        g.user.pillman.listMedication.removeAt(event.detail);
        break;
    }
  }
}
