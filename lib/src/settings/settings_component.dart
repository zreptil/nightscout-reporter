import 'dart:async';
import 'dart:html' as html;
import 'dart:convert' as convert;

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/laminate/components/modal/modal.dart';
import 'package:angular_components/material_button/material_fab.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:angular_components/material_input/material_input.dart';
import 'package:angular_components/material_select/material_dropdown_select.dart';
import 'package:angular_components/material_select/material_select_item.dart';
import 'package:angular_components/material_slider/material_slider.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/controls/signin/signin_component.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;

import '../globals.dart';

@Directive(selector: 'material-input[showPassword]')
class MaterialInputShowPasswordDirective {
  MaterialInputComponent input;
  MaterialInputShowPasswordDirective(this.input);

  @Input()
  set showPassword(bool unhide) {
    input.type = unhide ? "text" : "password";
    input.trailingText = unhide ? " " : "";
  }
}

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
    MaterialDropdownSelectComponent,
    MaterialSelectItemComponent,
    MaterialButtonComponent,
    MaterialIconComponent,
    MaterialProgressComponent,
    materialInputDirectives,
    MaterialSliderComponent,
    MaterialInputShowPasswordDirective,
    SigninComponent,
    NgFor,
    NgIf,
  ],
  providers: [],
)
class SettingsComponent implements OnInit {
  globals.Globals g = globals.Globals();
  String errUserInvalid = null;

  int confirmIdx = 0;
  int currApiUrlIdx = -1;
  int showPwd = -1;

  @Output("settingsresult")
  Stream<html.UIEvent> get trigger => _trigger.stream;
  final _trigger = StreamController<html.UIEvent>.broadcast(sync: true);

  bool isVisible = true;
  SettingsComponent() {}

  String progressText = null;

  String get msgUrlNightscout => Intl.message("Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)");
  String get msgName => Intl.message("Name");
  String get msgInsulin => Intl.message("Insulin");
  String get msgAccessToken => Intl.message("Zugriffsschlüssel");
  String msgAccessTokenHint(bool isVisible) => isVisible
      ? Intl.message(
          "Der Zugriffsschlüssel wird nur benötigt, wenn der Zugriff in Nightscout über AUTH_DEFAULT_ROLES eingeschränkt wurde",
          args:[isVisible], name: "msgAccessTokenHint")
      : "";
  String msgStartDateHint(bool isVisible) =>
      isVisible ? Intl.message("Das Datum des ersten Tages mit Daten", args:[isVisible], name: "msgStartDateHint") : "";
  String msgEndDateHint(bool isVisible) =>
      isVisible ? Intl.message("Das Datum des letzten kompletten Tages mit Daten", args:[isVisible], name: "msgEndDateHint") : "";
  String msgCheckUser(String url) => Intl.message("Überprüfe Zugriff auf ${url}...", args: [url], name: "msgCheckUser");
  String get msgStartDate => Intl.message("Daten von");
  String get msgEndDate => Intl.message("Daten bis");
  String get msgCalcDayFirstTitle => Intl.message("Ermittle ersten Tag mit Daten");
  String get msgCalcDayLastTitle => Intl.message("Ermittle letzten Tag mit Daten");
  String msgCalculatingDay(date) => Intl.message("Überprüfe ${date} ...", args: [date], name: "msgCalculatingDay");
  String msgCalcDayTitle = "";

  int get pdfSliderMax => globals.Globals.PDFUNLIMITED ~/ globals.Globals.PDFDIVIDER;

  @override
  Future<Null> ngOnInit() async {}

  confirmOk() {
    switch (confirmIdx) {
      case 1:
        try {
          g.userList.removeAt(g.userIdx);
        } catch (e) {}
        break;
      case 2:
        try {
          g.user.listApiUrl.removeAt(currApiUrlIdx);
        } catch (e) {}
        break;
    }
    confirmIdx = 0;
  }

  addUser() {
    checkUser().then((_) {
      if (errUserInvalid != null) return;
      if (!g.userList.last.apiUrl(null, "").isEmpty) {
        g.userList.add(globals.UserData(g));
        g.userIdx = g.userList.length - 1;
      }
    });
  }

  addUrl() {
    g.user.listApiUrl.add(UrlData(g));
  }

  removeUrl(int idx) {}

  String exportData = "";
  String get msgExport => Intl.message("Bitte den Dateinamen für die Speicherung auswählen");

  Future<void> handleImport(html.Event e) async {
    e.preventDefault();
    var blob = (e.target as html.FileUploadInputElement).files[0];
    var reader = new html.FileReader()..readAsText(blob);
    await reader.onLoadEnd.first;
    String result = reader.result;
//    g.fromJson(convert.json.decode(result));
    g.fromSharedString(Settings.tiod(result));
  }

  export() {
    exportData = convert.base64Encode(convert.utf8.encode(Settings.doit(g.asSharedString)));

    Future.delayed(Duration(milliseconds: 100), () {
      (html.querySelector("#exportForm") as html.FormElement).submit();
    });
  }

  importCLicked() {
    html.querySelector("#importData").click();
  }

  Future<void> checkUser([String event = null]) async {
    {
      g.user.listApiUrl.sort((a, b) => a.startDate.compareTo(b.startDate));
      progressText = msgCheckUser(g.user.apiUrl(null, "", noApi: true));
      String ret = await g.user.isValid;
      progressText = null;
      errUserInvalid = ret;
      // set isConfigured to true, if url is reachable
      // never set isConfigured to false, since this
      // will trigger the welcome dialog
      if (ret == null) {
        g.isConfigured = true;
        g.saveWebData();
      }
      if (ret == null && event != null) fire(event);
    }
  }

  void navigate(String url) {
    html.window.open(url, '_blank');
  }

  Date calcDate = Date.today();
  Future<void> calculateFirstDay(UrlData urlData) async {
    confirmIdx = 3;
    bool done = false;
    calcDate = Date.today();
    int diff = -256;
    msgCalcDayTitle = msgCalcDayFirstTitle;
    while (confirmIdx == 3 && !done) {
      DateTime check = DateTime(calcDate.year, calcDate.month, calcDate.day, 0, 0, 0, 0).toUtc();
      String url = urlData.fullUrl("entries.json", params: "find[date][\$lte]=${check.millisecondsSinceEpoch}&count=2");
      String content = await g.request(url);
      try {
        dynamic json = convert.json.decode(content);
        if (diff < -1) {
          if (json.length < 1) diff = (-diff / 2).toInt();
        } else if (diff > 1) {
          if (json.length > 0) diff = (-diff / 2).toInt();
        } else {
          done = true;
          if (json.length > 0) calcDate = calcDate.add(days: diff);
        }
      } catch (ex) {
        done = true;
      }

      if (!done) calcDate = calcDate.add(days: diff);
    }
    diff = 256;
    urlData.startDate = calcDate;
    done = false;
    msgCalcDayTitle = msgCalcDayLastTitle;
    while (confirmIdx == 3 && !done) {
      DateTime check = DateTime(calcDate.year, calcDate.month, calcDate.day, 23, 59, 59, 999).toUtc();
      String url = urlData.fullUrl("entries.json", params: "find[date][\$gte]=${check.millisecondsSinceEpoch}&count=2");
      String content = await g.request(url);
      try {
        dynamic json = convert.json.decode(content);
        if (diff > 1) {
          if (json.length < 1) diff = (-diff / 2).toInt();
        } else if (diff < -1) {
          if (json.length > 0) diff = (-diff / 2).toInt();
        } else {
          done = true;
          if (calcDate.isOnOrAfter(Date.today().add(days: -1)))
            calcDate = Date.today();
          else if (json.length < 1) calcDate = calcDate.add(days: -diff);
        }
      } catch (ex) {
        done = true;
      }

      if (!done) calcDate = calcDate.add(days: diff);
    }

    if (calcDate.isOnOrAfter(Date.today()))
      urlData.endDate = null;
    else
      urlData.endDate = calcDate;
    confirmIdx = 0;
  }

  cancelCalculation() {
    confirmIdx = 0;
  }

  void fire(String type) {
    switch (type) {
      case "check":
        checkUser("ok");
        return;
      case "cancel":
        break;
    }
    _trigger.add(html.UIEvent(type, detail: 0));
    errUserInvalid = null;
  }
}
