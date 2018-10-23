import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;

@Component(selector: 'whatsnew',
  styleUrls: ['whatsnew_component.css'],
  templateUrl: 'whatsnew_component.html',
  directives: [MaterialButtonComponent, MaterialIconComponent,
  ],
  providers: const <dynamic>[materialProviders,])
class WhatsnewComponent
{
  globals.Globals g = globals.Globals();

  @Output("fabClicked")
  Stream<UIEvent> get trigger
  => _trigger.stream;
  final _trigger = StreamController<UIEvent>.broadcast(sync: true);

  WhatsnewComponent();

  fire(String key)
  {
    _trigger.add(UIEvent(key, detail: 0));
  }
}
