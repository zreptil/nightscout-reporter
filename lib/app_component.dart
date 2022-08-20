import 'dart:html' as html;
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/laminate/overlay/module.dart';
import 'package:nightscout_reporter/src/watch/watch_component.dart';
import 'package:nightscout_reporter/src/start_component.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [StartComponent, WatchComponent, NgIf],
  providers: <dynamic>[
    overlayBindings,
    materialProviders,
  ],
  exports: [],
)
class AppComponent {
  final title = 'Nightscout Reporter';

  bool get isWatch {
    return html.window.location.href.indexOf('watch') > 0;
  }
}
