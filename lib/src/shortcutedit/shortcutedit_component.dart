import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/laminate/components/modal/modal.dart';
import 'package:angular_components/material_input/material_input.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;


@Component(
  selector: 'shortcutedit',
  styleUrls: ['shortcutedit_component.css'],
  templateUrl: 'shortcutedit_component.html',
  directives: [
    MaterialDialogComponent,
    MaterialButtonComponent,
    MaterialIconComponent,
    MaterialInputComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
  ],
  providers: [],
)
class ShortcutEditComponent implements OnInit, AfterViewInit {
  globals.Globals g = globals.Globals();

  @Output('shortcuteditresult')
  Stream<UIEvent> get trigger => _trigger.stream;
  final _trigger = StreamController<UIEvent>.broadcast(sync: true);

  int confirmationIdx = -1;
  static String get msgName => Intl.message('Bezeichnung');

  String get msgTitle => g.currShortcutIdx < 0 ? Intl.message('Shortcut anlegen') : Intl.message('Shortcut ändern');
  String msgFormsText(count) =>
      Intl.plural(count, zero: '', one: '1 Formular', other: '$count Formulare', args: [count], name: 'msgFormsText');

  ShortcutEditComponent();

  @override
  Future<Null> ngOnInit() async {
  }

  @override
  void ngAfterViewInit() {
    Future.delayed(Duration(milliseconds: 100), ()
    {
      querySelector('#name').focus();
    });
  }

  void fire(String type) {
    var detail = 0;
    switch (type) {
      case 'ok':
        break;
      case 'confirm':
        switch (confirmationIdx) {
          case 0:
            type = 'remove';
            break;
          case 1:
            g.currShortcut.periodData = g.period.toString();
            g.currShortcut.periodText = g.period.display;
            confirmationIdx = -1;
            return;
          case 2:
            g.currShortcut.loadCurrentForms();
            confirmationIdx = -1;
            return;
          case 3:
            g.currShortcut.glucMGDLIdx = g.glucMGDLIdx;
            confirmationIdx = -1;
            return;
        }
    }
    _trigger.add(UIEvent(type, detail: detail));
  }
}
