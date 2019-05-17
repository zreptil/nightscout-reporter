import 'dart:async';
import 'dart:html' as html;

import 'package:angular/angular.dart';
import 'package:angular/core.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/content/deferred_content.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:googleapis/drive/v3.dart' as gd;
import 'package:googleapis_auth/auth_browser.dart' as auth;
import 'package:intl/intl.dart';

enum SigninStatus
{
  requestAuthorization, signinOk, signedOut, error
}

class SigninEvent
{
  String message;
  SigninStatus status;

  SigninEvent(this.status, this.message);
}

@Component(selector: 'signin',
  styleUrls: const ['signin_component.css'],
  templateUrl: 'signin_component.html',
  directives: const [
    MaterialButtonComponent, MaterialIconComponent, MaterialFabComponent, DeferredContentDirective, NgIf],
  providers: const <dynamic>[materialProviders])
class SigninComponent
  implements OnInit
{
  bool isBusy = false;
  @Input()
  bool isVisible = true;
  @Input()
  bool raised = false;
  @Input()
  bool autoStart = false;
  @Input()
  bool showFab = false;
  @Input()
  String clientId = "";
  @Input()
  String msgConnected = Intl.message("Anmeldung erfolgreich");
  @Input()
  String msgDisconnected = Intl.message("Anmelden");
  @Input()
  String msgBusy = Intl.message("Verbinde zu Google...");
  @Input()
  String msgTitleAuthorized = Intl.message("Verbindung zu Google Drive trennen");
  @Input()
  String msgTitleNotAuthorized = Intl.message("Verbindung zu Google Drive herstellen");

  @Input()
  bool isAuthorized = false;
  authorize(value)
  {
    isAuthorized = value;
    _isAuthorizedChange.add(value);
  }

  final _isAuthorizedChange = StreamController<bool>();
  @Output()
  Stream<bool> get isAuthorizedChange
  => _isAuthorizedChange.stream;

  auth.ClientId _identifier = null;
  auth.ClientId get identifier
  => _identifier ?? auth.ClientId("${clientId}.apps.googleusercontent.com", null);
  dynamic scopes = [gd.DriveApi.DriveAppdataScope, gd.DriveApi.DriveFileScope];
  auth.AutoRefreshingAuthClient client = null;

  final _signinResult = StreamController<auth.AuthClient>();
  @Output("signinResult")
  Stream<auth.AuthClient> get signinResult
  => _signinResult.stream;

  void doLogout()
  {
    Future.delayed(Duration(milliseconds: 1), ()
    {
      var form = html.querySelector("#revokeForm") as html.FormElement;
      form.submit();
      authorize(false);
      fire(SigninStatus.signedOut);
    });
  }

  void btnLoginClick()
  {
    if (isAuthorized)authorize(false);
    else
      doLogin();
  }

  Future<void> doLogin()
  async {
    fire(SigninStatus.requestAuthorization);
    authorize(false);
    isBusy = true;
    authorizedClient(identifier, scopes).then((client)
    {
      authorize(true);
      this.client = client;
      _signinResult.add(client);
      isBusy = false;
      fire(SigninStatus.signinOk);
    }).catchError((error)
    {
      isBusy = false;
      if (error is auth.UserConsentException)
      {
        _signinResult.add(null); 
        authorize(false);
        fire(SigninStatus.error, "UserConsentException");
        return new Future.error(error);
      }
      else
      {
        _signinResult.add(null);
        fire(SigninStatus.error, error.toString());
        return new Future.error(error);
      }
    });
  }

  @override
  void ngOnInit()
  {
    if (autoStart || isAuthorized)doLogin();
  }

  Future<auth.AutoRefreshingAuthClient> authorizedClient(auth.ClientId id, scopes)
  {
    isAuthorized = false;
    return auth.createImplicitBrowserFlow(id, scopes).then((auth.BrowserOAuth2Flow flow)
    {
      return flow.clientViaUserConsent(immediate: true).catchError((_)
      {
        return flow.clientViaUserConsent(immediate: false);
      }, test: (error)
      => true); // error is auth.UserConsentException
    });
  }

  final _trigger = StreamController<SigninEvent>.broadcast(sync: true);
  @Output("trigger")
  Stream<SigninEvent> get trigger
  => _trigger.stream;

  void fire(SigninStatus status, [String message = null])
  async {
    _trigger.add(SigninEvent(status, message));
  }
}
