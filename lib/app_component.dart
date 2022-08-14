import 'dart:html' as html;
import 'package:angular/angular.dart';
import 'package:nightscout_reporter/src/clock/clock_component.dart';
import 'package:nightscout_reporter/src/start_component.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [StartComponent, ClockComponent, NgIf],
  providers: [],
  exports: [],
)
class AppComponent {
  final title = 'Nightscout Reporter';

  bool get isClock {
    return html.window.location.href.endsWith('?clock');
  }
}
