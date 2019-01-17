import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/laminate/components/modal/modal.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:angular_components/material_button/material_fab.dart';
import 'package:angular_components/material_input/material_input.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;
import 'package:nightscout_reporter/src/controls/signin/signin_component.dart';

@Component(
  selector: 'settings',
  styleUrls: ['settings_component.css'],
  templateUrl: 'settings_component.html',
  directives: [
    ModalComponent,
    MaterialDialogComponent,
    MaterialInputComponent,
    MaterialFabComponent,
    MaterialCheckboxComponent,
    MaterialButtonComponent,
    MaterialIconComponent,
    MaterialProgressComponent,
    materialInputDirectives,
    SigninComponent,
    NgFor,
    NgIf,
  ],
  providers: [],)
class SettingsComponent
  implements OnInit
{
  globals.Globals g = globals.Globals();
  String errUserInvalid = null;

  bool showConfirmation = false;

  @Output("settingsresult")
  Stream<UIEvent> get trigger
  => _trigger.stream;
  final _trigger = StreamController<UIEvent>.broadcast(sync: true);

  @Input()
  bool isVisible = false;
  SettingsComponent();

  String progressText = null;

  String get msgUrlNightscout
  => Intl.message("Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)");
  String get msgName
  => Intl.message("Name");
  String get msgInsulin
  => Intl.message("Insulin");
  String get msgUserToken
  => Intl.message("User-Token");
  String get msgUserTokenHint
  =>
    Intl.message(
      "Das User-Token wird nur benötigt, wenn der Zugriff in Nightscout über AUTH_DEFAULT_ROLES eingeschränkt wurde");
  String msgCheckUser(String url)
  => Intl.message("Überprüfe Zugriff auf ${url}...", args: [url], name: "msgCheckUser");

  @override
  Future<Null> ngOnInit()
  async {}

  removeUser()
  {
    try
    {
      g.userList.removeAt(g.userIdx);
    }
    catch (e)
    {
    }
    showConfirmation=false;
  }

  addUser()
  {
    checkUser().then((_)
    {
      if (errUserInvalid != null)return;
      if (!g.userList.last.storageApiUrl.isEmpty)
      {
        g.userList.add(globals.UserData(g));
        g.userIdx = g.userList.length - 1;
      }
    });
  }

  Future<void> checkUser([String event = null])
  async {
    {
      progressText = msgCheckUser(g.user.storageApiUrl);
      String ret = await g.user.isValid;
      progressText = null;
      errUserInvalid = ret;
      // set isConfigured to true, if url is reachable
      // never set isConfigured to false, since this
      // will trigger the welcome dialog
      if (ret == null)
      {
        g.isConfigured = true;
        g.saveStorage("version", g.version);
      }
      if (ret == null && event != null)fire(event);
    }
  }

  void fire(String type)
  {
    if (type == "check")
    {
      checkUser("ok");
      return;
    }
    _trigger.add(UIEvent(type, detail: 0));
    errUserInvalid = null;
  }
}
