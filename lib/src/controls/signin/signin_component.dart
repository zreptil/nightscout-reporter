import 'dart:async';
import 'dart:convert';

import 'package:angular/angular.dart';
import 'package:angular/core.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/content/deferred_content.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:googleapis/drive/v3.dart' as gd;
import 'package:googleapis_auth/auth_browser.dart' as auth;
import 'package:intl/intl.dart';

import '../../globals.dart';

enum SigninStatus { requestAuthorization, signinOk, signedOut, error, message }

class SigninEvent {
  String message;
  SigninStatus status;

  SigninEvent(this.status, this.message);
}

@Component(
    selector: 'signin',
    styleUrls: ['signin_component.css'],
    templateUrl: 'signin_component.html',
    directives: [MaterialButtonComponent, MaterialIconComponent, MaterialFabComponent, DeferredContentDirective, NgIf],
    providers: <dynamic>[materialProviders])
class SigninComponent implements AfterViewInit {
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
  bool showMenuButton = false;
  @Input()
  String clientId = '';
  @Input()
  String msgConnected = Intl.message('Anmeldung erfolgreich');
  @Input()
  String msgDisconnected = Intl.message('Anmelden');
  @Input()
  String msgBusy = Intl.message('Verbinde zu Google...');
  @Input()
  String msgTitleAuthorized = Intl.message('Verbindung zu Google Drive trennen');
  @Input()
  String msgTitleNotAuthorized = Intl.message('Verbindung zu Google Drive herstellen');
  @Input()
  String msgMenuConnected = Intl.message('Synchronisierung aufheben');
  @Input()
  String msgMenuNotConnected = Intl.message('Mit Google Drive synchronisieren');

  @Input()
  bool isAuthorized = false;

  void authorize(value) {
    isAuthorized = value;
    _isAuthorizedChange.add(value);
  }

  final _isAuthorizedChange = StreamController<bool>();

  @Output()
  Stream<bool> get isAuthorizedChange => _isAuthorizedChange.stream;

  auth.ClientId _identifier;

  auth.ClientId get identifier => _identifier ?? auth.ClientId('${clientId}.apps.googleusercontent.com', null);
  dynamic scopes = [gd.DriveApi.driveAppdataScope, gd.DriveApi.driveFileScope];
  auth.AutoRefreshingAuthClient client;

  final _signinResult = StreamController<auth.AuthClient>();

  @Output('signinResult')
  Stream<auth.AuthClient> get signinResult => _signinResult.stream;

  static SigninComponent create(String clientId) {
    var ret = SigninComponent();
    ret.clientId = clientId;
    return ret;
  }

  void doLogout() {
    Future.delayed(Duration(milliseconds: 1), () {
      if (client?.credentials?.accessToken?.data != null) {
        Globals()
            .request('https://accounts.google.com/o/oauth2/revoke',
                method: 'post', body: '{"token": "${client.credentials.accessToken.data}"}')
            .then((content) {
          var response = json.decode(content);
          if (response['error'] == null) {
            authorize(false);
            fire(SigninStatus.signedOut);
          } else {
            Globals().show(response['error']);
          }
        });
      } else {
        authorize(false);
        fire(SigninStatus.signedOut);
      }
    });
  }

/*
  void doLogout() {
    Future.delayed(Duration(milliseconds: 1), () {
      var form = html.querySelector("#revokeForm${formId}") as html.FormElement;
      form.submit();
      authorize(false);
      fire(SigninStatus.signedOut);
    });
  }
*/
  void btnLoginClick() {
    if (isAuthorized) {
      doLogout();
    } else {
      doLogin();
    }
  }

  Future<void> doLogin() async {
    authorize(false);
    isBusy = true;
    fire(SigninStatus.requestAuthorization);
    // ignore: unawaited_futures
    authorizedClient(identifier, scopes).then((client) {
      authorize(true);
      this.client = client;
      _signinResult.add(client);
      isBusy = false;
      fire(SigninStatus.signinOk);
    }).catchError((error) {
      isBusy = false;
      if (error is auth.UserConsentException) {
        _signinResult.add(null);
        authorize(false);
        fire(SigninStatus.error, 'UserConsentException');
        return Future.error(error);
      } else {
        _signinResult.add(null);
        fire(SigninStatus.error, error.toString());
        return Future.error(error);
      }
    });
  }

  @override
  void ngAfterViewInit() {
    if (autoStart || isAuthorized) Future.delayed(Duration(milliseconds: 10), doLogin);
  }

  Future<auth.AutoRefreshingAuthClient> authorizedClient(auth.ClientId id, scopes) async {
    isAuthorized = false;
    return auth.createImplicitBrowserFlow(id, scopes).then((auth.BrowserOAuth2Flow flow) {
      return flow.clientViaUserConsent(immediate: true).catchError((_) {
        return flow.clientViaUserConsent(immediate: false);
      }, test: (error) => true); // error is auth.UserConsentException
    });
  }

  final _onevent = StreamController<SigninEvent>.broadcast(sync: true);

  @Output('onEvent')
  Stream<SigninEvent> get onevent => _onevent.stream;

  void fire(SigninStatus status, [String message]) async {
    _onevent.add(SigninEvent(status, message));
  }
}
