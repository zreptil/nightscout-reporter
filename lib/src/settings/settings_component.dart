import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/laminate/components/modal/modal.dart';
import 'package:angular_components/material_button/material_fab.dart';
import 'package:angular_components/material_input/material_input.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;

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
    NgFor,
    NgIf,
  ],
  providers: [],)
class SettingsComponent
  implements OnInit
{
  globals.Globals g = globals.Globals();
  String errUserInvalid = null;

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
  String get msgApiSecret
  => Intl.message("API-Secret (nur nötig, wenn der Zugriff eingeschränkt ist)");
  String get msgUserToken
  => Intl.message("User-Token (nur nötig, wenn der Zugriff eingeschränkt ist)");
  String msgCheckUser(String url)
  => Intl.message("Überprüfe Zugriff auf ${url}...", args: [url], name: "msgCheckUser");

  @override
  Future<Null> ngOnInit()
  async {
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
      if (ret == null && event != null)fire(event);
      errUserInvalid = ret;
      // set isConfigured to true, if url is reachable
      // never set isConfigured to false, since this
      // will trigger the welcome dialog
      if(ret == null)g.isConfigured = true;
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
