import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:nightscout_reporter/src/controls/signin/signin_component.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;

@Component(selector: 'welcome',
  styleUrls: ['welcome_component.css'],
  templateUrl: 'welcome_component.html',
  directives: [
    ModalComponent,
    MaterialDialogComponent,
    MaterialButtonComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    SigninComponent,
    NgFor,
    NgIf,
  ],
  providers: const <dynamic>[materialProviders,])
class WelcomeComponent
{
  globals.Globals g = globals.Globals();

  @Output("closeClicked")
  Stream<UIEvent> get trigger
  => _trigger.stream;
  final _trigger = StreamController<UIEvent>.broadcast(sync: true);

  bool isVisible = true;
  WelcomeComponent();

  fire(String key)
  {
    _trigger.add(UIEvent(key, detail: 0));
  }

  signinEvent(SigninEvent e)
  {
    switch (e.status)
    {
      case SigninStatus.signinOk:
        fire("normal");
        break;
      default:
        break;
    }
  }
}