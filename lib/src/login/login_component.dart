import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular/core.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/content/deferred_content.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:googleapis/drive/v3.dart' as gd;
import 'package:googleapis/people/v1.dart' as gp;
import 'package:googleapis_auth/auth_browser.dart' as auth;
import 'package:nightscout_reporter/src/globals.dart' as globals;

class ButtonData
{
  String text = "Anmelden";
  bool disabled = false;
}

@Component(selector: 'loginpanel',
  styleUrls: const ['login_component.css'],
  templateUrl: 'login_component.html',
  directives: const [MaterialButtonComponent, DeferredContentDirective],
  providers: const <dynamic>[materialProviders])
class LoginComponent
  implements OnInit
{
  globals.Globals g = globals.Globals();
  ButtonData btnData = ButtonData();

  @Output("loginresult")
  Stream<UIEvent> get trigger
  => _trigger.stream;
  final _trigger = StreamController<UIEvent>.broadcast(sync: true);

  void btnLoginClick()
  {
    btnData.disabled = true;
    btnData.text = "Anmeldung wird durchgeführt...";
    authorizedClient(btnData, g.ga.identifier, g.ga.scopes).then((client)
    {
      btnData.text = "Anmeldung erfolgreich";
      btnData.disabled = true;

      g.ga.client = client;
      g.ga.drive = gd.DriveApi(client);
      _trigger.add(UIEvent("ok", detail: 0));
      return;
    }).catchError((error)
    {
      btnData.disabled = true;
      if (error is auth.UserConsentException)
      {
        _trigger.add(UIEvent("Der Zugriff wurde nicht erlaubt :(", detail: 1));
        btnData.text = "Anmelden";
        btnData.disabled = false;
        return new Future.error(error);
      }
      else
      {
        _trigger.add(UIEvent("Es ist ein unerwarteter Fehler aufgetreten ($error)", detail: 1));
        btnData.text = "Anmelden";
        btnData.disabled = false;
        return new Future.error(error);
      }
    });
  }

  @override
  void ngOnInit()
  {
    btnData.text = "Anmelden";
    btnData.disabled = false;
    btnLoginClick();
  }

  Future authorizedClient(ButtonData btnData, auth.ClientId id, scopes)
  {
    return auth.createImplicitBrowserFlow(id, scopes).then((auth.BrowserOAuth2Flow flow)
    {
      return flow.clientViaUserConsent(immediate: true).catchError((_)
      {
        btnData.text = "Autorisierung";
        return flow.clientViaUserConsent(immediate: false);
/*
        querySelector("#btnLogin").onClick.first.then((_)
        {
          btnData.text = "MIST";
          return flow.clientViaUserConsent(immediate: false);
        });
         */
      }, test: (error) => true); // error is auth.UserConsentException
    });
  }
}
