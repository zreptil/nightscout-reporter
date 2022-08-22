import 'dart:async';
import 'dart:math' as math;
import 'dart:html' as html;

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
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
  PillData newPill;

  dynamic get types => {
    'current': 'schedule',
    'all': 'list'
  };

  void clickListMode(mode) {
    listMode = mode;
  }

  void clickPillman(event) {
    event.stopPropagation();
    mode = 'edit';
  }

  void clickClose(event) {
    event.stopPropagation();
    mode = '';
  }

  bool showPill(PillData pill) {
    switch (listMode) {
      case 'current':
        var now = DateTime.now();
        return now.isAfter(pill.nextConsume);
    }
    return true;
  }

  @override
  Future<Null> ngOnInit() async {
    listMode = listModes[0];
    newPill = PillData(g)..name='Medikament hinzufügen';
    // pillList = <globals.PillData>[
    // globals.PillData(g)..name = 'Atorvastatin'..time = DateTime(0, 0, 0, 18, 0),
    // globals.PillData(g)..name = 'Bisolich'..time = DateTime(0, 0, 0, 7, 0),
    // globals.PillData(g)..name = 'Amlodipin'..time = DateTime(0, 0, 0, 7, 0),
    // globals.PillData(g)..name = 'Padma 24'..time = DateTime(0, 0, 0, 7, 0))
    // ];
    }
}
