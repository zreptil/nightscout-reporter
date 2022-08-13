import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:nightscout_reporter/src/clock/clock_element.dart';
import 'package:nightscout_reporter/src/forms/base-print.dart';

@Component(
    selector: 'clockentry',
    styleUrls: ['clock_entry_component.css'],
    templateUrl: 'clock_entry_component.html',
    directives: [MaterialIconComponent, NgFor, NgIf],
    providers: [])
class ClockEntryComponent {
  @Input()
  ClockElement element;

  @Input()
  bool isEditMode;

  @Output('click')
  Stream<UIEvent> get trigger => _trigger.stream;
  final _trigger = StreamController<UIEvent>.broadcast(sync: true);

  @HostBinding('attr.selected')
  bool get selected => element?.selected;

  @HostBinding('attr.type')
  String get type => element?.type;

  @HostBinding('class')
  String get cssClass => 'size${element?.size}';

  ClockEntryComponent();

  void fire(String type, event) async {
    event.preventDefault();
    event.stopPropagation();
    _trigger.add(UIEvent(type));
  }
}
