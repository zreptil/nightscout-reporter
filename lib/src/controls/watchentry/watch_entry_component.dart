import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;

@Component(
    selector: 'watchentry',
    styleUrls: ['watch_entry_component.css'],
    templateUrl: 'watch_entry_component.html',
    directives: [MaterialIconComponent, NgFor, NgIf],
    providers: [])
class WatchEntryComponent {
  @Input()
  globals.WatchElement element;

  @Input()
  bool isEditMode;

  @Input()
  String cls;
  @Output('click')
  Stream<UIEvent> get trigger => _trigger.stream;
  final _trigger = StreamController<UIEvent>.broadcast(sync: true);

  @HostBinding('attr.selected')
  bool get selected => element?.selected;

  @HostBinding('attr.type')
  String get type => element?.type;

  @HostBinding('class')
  String get cssClass {
    var ret = [cls];
    if (element != null) {
      ret.add('size${element.size}');
      ret.add('vertical${element.vertical}');
      if (element.bold) {
        ret.add('bold');
      }
      if (element.italic) {
        ret.add('italic');
      }
    }
    return ret.join(' ');
  }

  WatchEntryComponent();

  void fire(String type, event) async {
    event.preventDefault();
    event.stopPropagation();
    _trigger.add(UIEvent(type));
  }
}
