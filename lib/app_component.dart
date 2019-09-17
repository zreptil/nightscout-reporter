import 'dart:async';
import 'dart:convert' as convert;
import 'dart:convert';
import 'dart:html' as html;
import 'dart:math' as math;

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/content/deferred_content.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_datepicker/material_date_range_picker.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:angular_components/material_select/material_dropdown_select.dart';
import 'package:angular_components/material_select/material_select_item.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:dnd/dnd.dart';
import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/controls/datepicker/datepicker_component.dart';
import 'package:nightscout_reporter/src/controls/formparams/formparams_component.dart';
import 'package:nightscout_reporter/src/controls/signin/signin_component.dart';
import 'package:nightscout_reporter/src/forms/base-print.dart';
import 'package:nightscout_reporter/src/forms/print-cgp.dart';
import 'package:nightscout_reporter/src/forms/print-daily-analysis.dart';
import 'package:nightscout_reporter/src/forms/print-daily-graphic.dart';
import 'package:nightscout_reporter/src/forms/print-daily-log.dart';
import 'package:nightscout_reporter/src/forms/print-daily-statistics.dart';
import 'package:nightscout_reporter/src/forms/print-percentile.dart';
import 'package:nightscout_reporter/src/forms/print-test.dart';
import 'package:nightscout_reporter/src/forms/print-weekly-graphic.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;
import 'package:nightscout_reporter/src/globals.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import 'src/dsgvo/dsgvo_component.dart';
import 'src/forms/print-analysis.dart';
import 'src/forms/print-basalrate.dart';
import 'src/forms/print-profile.dart';
import 'src/impressum/impressum_component.dart';
import 'src/settings/settings_component.dart';
import 'src/welcome/welcome_component.dart';
import 'src/whatsnew/whatsnew_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

class PdfData
{
  String pdf;
  bool isPrinted = false;

  PdfData(this.pdf);
}

@Component(selector: 'my-app',
  styleUrls: ['app_component.css', 'package:angular_components/app_layout/layout.scss.css'],
  templateUrl: 'app_component.html',
  directives: [
    DatepickerComponent,
    FormparamsComponent,
    MaterialDateRangePickerComponent,
    MaterialCheckboxComponent,
    MaterialExpansionPanel,
    MaterialFabComponent,
    MaterialIconComponent,
    MaterialPersistentDrawerDirective,
    MaterialButtonComponent,
    DeferredContentDirective,
    MaterialDropdownSelectComponent,
    MaterialSelectItemComponent,
    MaterialSliderComponent,
    SettingsComponent,
    ImpressumComponent,
    DSGVOComponent,
    WelcomeComponent,
    WhatsnewComponent,
    MaterialInputComponent,
    MaterialProgressComponent,
    MaterialToggleComponent,
    MaterialDropdownSelectComponent,
    MaterialSelectItemComponent,
    SigninComponent,
    NgClass,
    NgFor,
    NgIf,
    NgModel,
  ],
  providers: const <dynamic>[overlayBindings, materialProviders,])
class AppComponent
  implements OnInit
{
  String get timezone
  => globals.Globals.refTimezone;
  bool paramboolValue = false;
  globals.Globals g = globals.Globals();
  bool drawerVisible = false;
  bool pdfInfoVisible = false;
  String _currPage;
  String _lastPage = "welcome";
  String get currPage
  => progressText == null || progressText.isNotEmpty ? _currPage : "progress";
  set currPage(String value)
  {
    if (currPage != "welcome")_lastPage = currPage;
    _currPage = value;
  }

  static String startPage = "normal";
  Date today = Date.today();
  Map<String, bool> appTheme = <String, bool>{};
  List<DatepickerPreset> dateRanges = List<DatepickerPreset>();
  DateRangePickerConfiguration drConfig = DateRangePickerConfiguration.basic;
  bool sendDisabled = true;
  String pdfData = "";
  List<PdfData> pdfList = List<PdfData>();
  String pdfDoc = null;
  FormConfig tileParams = null;

  int get pdfSliderMax
  => Globals.PDFUNLIMITED ~/ Globals.PDFDIVIDER;

  String progressText = null;
  int progressMax = 100;
  int progressValue = 0;
  String sendIcon = "send";
  String sendClass(int shift, String ret)
  {
    if (ret != "stop" && reportData != null && g.period.shiftStartBy(shift) == reportData.begDate && g.period
                                                                                                       .shiftEndBy(
      shift) == reportData.endDate)ret = "${ret} sendMarked";
    return ret;
  }

  String get createIcon
  => isDebug && sendIcon == "send" ? "vertical_align_bottom" : sendIcon;
  String pdfUrl = "";
  bool isDebug = false;
  globals.Msg message = globals.Msg();
  String pdfFilename(idx)
  => "Nightscout-Reporter-${idx}.pdf";
  String get msgCheckSetup
  => Intl.message("Überprüfe Zugriff auf Nightscout ...");
  String msgLoadingData(error, stacktrace)
  =>
    Intl.message(
      "Fehler beim Laden der Daten:\n$error\n$stacktrace", args: [error, stacktrace], name: "msgLoadingData");
  String get msgLoadingDataError
  => Intl.message("Fehler beim Laden der Daten");
  String msgLoadingDataFor(date)
  =>
    Intl.message("Lade Daten für $date...", args: [date],
      name: "msgLoadingDataFor",
      desc: "displayed when data of a day is loading");
  dynamic currLang = null;
  String get msgClose
  => Intl.message("Schliessen");
  String get msgEmptyRange
  => Intl.message("Bitte einen Zeitraum wählen.");
  String get msgPreparingData
  =>
    Intl.message(
      "Bereite Daten vor...", desc: "text when data was received and is being prepared to be used in the report");
  String get msgCreatingPDF
  => Intl.message("Erzeuge PDF...", desc: "text when pdf is being created");
  String get msgImpressum
  => Intl.message("Impressum");
  String get msgDSGVO
  => Intl.message("Datenschutzerklärung");
  String get msgApply
  => Intl.message("ok");
  String get msgCancel
  => Intl.message("verwerfen");
  String get msgPDFCreated
  =>
    Intl.message(
      "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren.");
  String get msgPeriod
  => Intl.message("Zeitraum");
  String get msgProfileError
  => Intl.message("Beim Auslesen des Profils ist ein Fehler aufgetreten.");
  String get msgPDFCreationError
  => Intl.message("Beim Erzeugen des PDF ist ein Fehler aufgetreten.");
  String get msgGitHubIssue
  => Intl.message("Problem auf GitHub melden");
  String get msgShowPDF
  => Intl.message("PDF anzeigen");
  String get msgPeriodCompare
  => Intl.message("Vergleich");

  bool isFormVisible(BasePrint form)
  {
    if (form.isDebugOnly && !isDebug)return false;
    if (form.isLocalOnly && !g.isLocal) return false;
    if (form.isBetaOrLocal && !(g.isBeta || g.isLocal)) return false;

    return true;
  }

  String currentGluc = null;
  String currentGlucDiff = null;
  String currentGlucTime = null;
  int glucDir = 360;
  String get currentGlucDir
  => glucDir < 360 ? "translate(0,2px)rotate(${glucDir}deg)" : null;
  Timer glucTimer = null;
  bool glucRunning = false;

  int currentGlucCounter = 0;
  getCurrentGluc()
  async {
    if (glucTimer != null)
    {
      glucTimer.cancel();
      glucTimer = null;
    }

    currentGlucCounter++;

    if (!g.showCurrentGluc || glucRunning)return "";
    glucRunning = true;
    String url = "${g.user.apiUrl}status.json";
    if (!g.hasMGDL)
    {
      String content = await g.request(url);
      StatusData status = StatusData.fromJson(json.decode(content));
      g.setGlucMGDL(status);
    }
    url = "${g.user.apiUrl}entries.json?count=2";
    List<dynamic> src = json.decode(await g.request(url));
    if (src.length != 2)
    {
      currentGluc = "Keine Daten";
      currentGlucDiff = "";
      glucDir = 360;
    }
    else
    {
      try
      {
        EntryData eNow = EntryData.fromJson(src[0]);
        EntryData ePrev = EntryData.fromJson(src[1]);
        int span = eNow.time
          .difference(ePrev.time)
          .inMinutes;
        glucDir = 360;
        currentGlucDiff = "";
        currentGlucTime = "";
        if (span > 15)return currentGluc;
        int time = DateTime
          .now()
          .difference(eNow.time)
          .inMinutes;
        currentGlucTime = "${time} min";

        currentGluc = g.fmtNumber(eNow.gluc / g.glucFactor, g.glucPrecision);
        currentGlucDiff = "${eNow.gluc > ePrev.gluc ? '+' : ''}${g.fmtNumber(
          (eNow.gluc - ePrev.gluc) * 5 / span / g.glucFactor, g.glucPrecision)}";
        double diff = eNow.gluc - ePrev.gluc;
        int limit = 10 * span ~/ 5;
        if (diff > limit)glucDir = -90;
        else if (diff < -limit)glucDir = 90;
        else
          glucDir = 90 - ((diff + limit) / limit * 90).toInt();
      }
      catch (ex)
      {
        currentGluc = "?";
        currentGlucDiff = "";
        glucDir = 360;
      }
    }

    if (currentGlucVisible)glucTimer = Timer(Duration(minutes: 1), ()
    => getCurrentGluc());

    glucRunning = false;
    return currentGluc;
  }

  String appTitle = "";
  bool currentGlucVisible = true;

  @override
  Future<Null> ngOnInit()
  async {
    appTitle = html.document
      .querySelector("head>title")
      .text;

    html.window.onBlur.listen((e)
    async {
      if (!g.showCurrentGluc || isDebug)return;
      currentGlucVisible = false;
      if (glucTimer != null)
      {
        glucTimer.cancel();
        glucTimer = null;
      }
    });
    html.window.onFocus.listen((e)
    async {
      if (!g.showCurrentGluc || isDebug)return;
      currentGlucVisible = true;
      Future.delayed(Duration(milliseconds: 250), ()
      => getCurrentGluc());
    });

    display(null);
    _currPage = "signin";

//    Future.delayed(Duration(milliseconds: 10), ()
//    {});
//*
    g.doShowDebug = showDebug;
    g.loadSettings().then((_)
    {
      String page = g.version == g.lastVersion ? "normal" : "whatsnew";
      _currPage = g.isConfigured ? page : "welcome";
      _lastPage = _currPage;

      /// fill list with forms
      var srcList = [
        PrintTest(),
        PrintAnalysis(),
        PrintProfile(),
        PrintPercentile(),
        PrintDailyStatistics(),
        PrintDailyGraphic(),
        PrintDailyAnalysis(),
        PrintDailyLog(),
        PrintWeeklyGraphic(),
        PrintBasalrate(),
        PrintCGP(),
      ];
      g.listConfig = List<FormConfig>();
      for (BasePrint form in srcList)
        g.listConfig.add(FormConfig(form, false));
      g.sortConfigs();
      g.userIdx = g.userIdx;

      currLang = g.language;
      if (html.window.location.href.endsWith("?dsgvo"))currPage = "dsgvo";
      if (html.window.location.href.endsWith("?impressum"))currPage = "impressum";
      if (html.window.location.href.endsWith("?whatsnew"))currPage = "whatsnew";
      if (html.window.location.href.endsWith("?welcome"))currPage = "welcome";
      if (html.window.location.href.endsWith("?settings"))currPage = "settings";
      checkPrint();

      g.period.maxDate = Date.today();
      try
      {
        g.period.minDate = Date.parseLoose(g.user.birthDate, g.fmtDateForDisplay);
      }
      catch (ex)
      {
        g.period.minDate = null;
      }
      getCurrentGluc();
      if (_currPage == "whatsnew")g.saveStorage("version", g.version);
    });
// */
/*
    progressText = msgCheckSetup;
    progressValue = progressMax + 1;
    g.checkSetup().then((String error)
    {
      String page = g.version == g.lastVersion ? "normal" : "whatsnew";
      progressText = null;
//      g.isConfigured = error == null || error.isEmpty;
      _currPage = g.isConfigured ? page : "welcome";
      // save version to localStorage
    });
*/
  }

  extractAllParams()
  {
    for(FormConfig cfg in g.listConfig)
      cfg.form.extractParams();
  }

  void toggleHelp()
  {
  }

  void togglePage(String id)
  {
    currPage = currPage == id ? "normal" : id;
  }

  void displayLink(String title, String url,
                   {bool clear: false, String type: null, String btnClass: "", String icon: null})
  {
    if (!isDebug && type == "debug")return;

    if (clear)message.links = [];

    message.links.add(
      {"url": g.adjustUrl(url), "title": title, "class": btnClass, "icon": isDebug && icon == null ? "code" : icon});
    message.okText = msgClose;
    if (type != null)message.type = type;
  }

  void showDebug(String msg)
  {
    message.dbgText = msg;
  }

  void display(String msg, {bool append: false, List links = null})
  {
    if (append)msg = "${message.isEmpty ? '' : '${message.text}<br />'}$msg";
    if (links != null)message.links = links;
    message.text = msg;
    message.type = "msg";
  }

  void callNightscout()
  {
    String url = g.user.apiUrl;
    int pos = url.indexOf("/api");
    if (pos >= 0)url = url.substring(0, pos);
    if (g.user.token != null && g.user.token != "")url = "${url}?token=${g.user.token}";
    navigate(url);
  }

  void callNightscoutReports()
  {
    navigate(g.user.reportUrl);
  }

  formId(int idx)
  => "postForm${idx}";

  String pdfString(String doc)
  {
    if (doc != null)
    {
      // remove special chars from output (e.g. smiley placed in notes)
      String temp = doc;
      doc = "";
      for (int i = 0; i < temp.length; i++)
        if (g.language.code == 'ja_JP' || temp.codeUnitAt(i) <= 4095)doc = "${doc}${temp[i]}";
    }
    return convert.base64.encode(convert.utf8.encode(doc));
  }

  void navigate(String url)
  {
    if (url.startsWith("showPlayground") || url.startsWith("showPdf"))
    {
      String doc = pdfDoc;
      if (url == "showPlayground")
      {
        pdfUrl = g.urlPlayground;
        if (doc != null)
        {
          doc = doc.replaceAll("],", "],\n");
          doc = doc.replaceAll(",\"", ",\n\"");
          doc = doc.replaceAll(":[", ":\n[");
        }
      }
      else
      {
        pdfUrl = g.urlPdf;
      }

      if (pdfDoc != null && pdfList.length == 0)
      {
        pdfData = pdfString(doc);
        Future.delayed(Duration(milliseconds: 1), ()
        {
          var form = html.querySelector("#postForm") as html.FormElement;
          form.submit();
//        display(msgPDFCreated);
        });
      }
      else if (pdfList.length > 0)
      {
/*
        Future.delayed(Duration(milliseconds: 1000), ()
        {
          for (int i = 0; i < pdfList.length; i++)
          {
            var form = html.querySelector("#${formId(i)}") as html.FormElement;
            Future.delayed(Duration(milliseconds: 10), ()
            {
              form.submit();
            });
          }
        });
// */
      }
    }
    else
    {
      html.window.open(url, "_blank");
    }
  }

  void openPDF(int idx)
  {
    if (idx >= pdfList.length)return;

    if (g.pdfSameWindow)
    {
      for (int i = 0; i < pdfList.length; i++)
      {
        pdfList[i].isPrinted = true;
        Future.delayed(Duration(milliseconds: 10), ()
        {
          var form = html.querySelector("#${formId(i)}") as html.FormElement;
          form.submit();
        });
      }
      return;
    }

    pdfList[idx].isPrinted = true;
    Future.delayed(Duration(milliseconds: 10), ()
    {
      var form = html.querySelector("#${formId(idx)}") as html.FormElement;
      form.submit();
    });
  }

  void callbackButton(html.UIEvent evt)
  {
    String page = evt.type;
    if (page.startsWith("@"))
    {
      page = page.substring(1);
      if (!g.isConfigured)page = "welcome";
    }
    currPage = page;
  }

  void settingsResult(html.UIEvent evt)
  {
    switch (evt.type)
    {
      case "ok":
        g.save();
        reportData = null;
        _currPage = g.isConfigured ? "normal" : "welcome";
        break;
      default:
        g.loadSettings();
        _currPage = g.isConfigured ? _lastPage : "welcome";
        break;
    }
    getCurrentGluc();
  }

  void checkSetup()
  {
    progressText = msgCheckSetup;
    progressValue = progressMax + 1;
    display(null);
    g.checkSetup().then((String error)
    {
      g.isConfigured = error == null || error.isEmpty;
      _currPage = g.isConfigured ? _lastPage : "welcome";

      if (!g.isConfigured)display(error);
    });
    progressText = null;
  }

  changePeriod(DatepickerPeriod period)
  {
    g.period = period;
    reportData = null;
    checkPrint();
  }

  void checkPrint()
  {
    sendDisabled = true;
    if (g.period.isEmpty)return;

    for (FormConfig cfg in g.listConfig)
    {
      if (cfg.checked)
      {
        if (cfg.form.isDebugOnly)
        {
          if (isDebug)sendDisabled = false;
        }
        else
        {
          sendDisabled = false;
        }
      }
    }

    Future.delayed(Duration(milliseconds: 100), ()
    {
      if (_drag != null)
      {
        _drag.onDragEnd.listen(null);
        _drag.onDragStart.listen(null);
        _drag.destroy();
      }

      _drag = Draggable(html.querySelectorAll('.sortable'),
        avatarHandler: g.viewType == "tile" ? TileAvatarHandler() : AvatarHandler.clone(),
        draggingClass: "dragging",
        handle: g.viewType == "tile" ? null : "[name]>material-icon",
        verticalOnly: g.viewType == "list");
      _drag.onDragStart.listen((DraggableEvent event)
      {
      });
      _drag.onDragEnd.listen((DraggableEvent event)
      {
        event.draggableElement.animate([{"transform": "rotate(180)"}], 500);
      });
      if (_drop != null)_drop.onDrop.listen(null);
      _drop = Dropzone(html.querySelectorAll(".sortable"), overClass: "dragover");
      _drop.onDrop.listen((DropzoneEvent event)
      {
        if (!dropElement(event.draggableElement, event.dropzoneElement))
          event.dropzoneElement.attributes["dontclick"] = "true";
      });
    });
  }

  bool dropElement(html.Element drag, html.Element drop)
  {
    String dragId = drag.getAttribute("id").substring(5);
    String dropId = drop.getAttribute("id").substring(5);
    if (dragId == dropId)return false;

    FormConfig dragCfg = null;
    int dragIdx = -1;
    int dropIdx = -1;
    for (int i = 0; i < g.listConfig.length; i++)
    {
      if (g.listConfig[i].id == dragId)
      {
        dragCfg = g.listConfig[i];
        dragIdx = i;
      }
      if (g.listConfig[i].id == dropId)dropIdx = i;
    }
    if (dragCfg != null && dropIdx >= 0)
    {
      g.listConfig.removeAt(dragIdx);
      g.listConfig.insert(dragIdx < dropIdx ? dropIdx - 1 : dropIdx, dragCfg);
    }
    g.savePdfOrder();
    return true;
  }

  Draggable _drag = null;
  Dropzone _drop = null;

  ReportData reportData = null;
  Future<ReportData> loadData()
  async {
    Date beg = g.period.shiftStartBy(g.currPeriodShift.shift);
    Date end = g.period.shiftEndBy(g.currPeriodShift.shift);

    if (reportData != null && reportData.begDate == beg && reportData.endDate == end)return reportData;

    ReportData data = ReportData(g, beg, end);
/*
    if (reportData != null && reportData.begDate == g.dateRange.range.start &&
      reportData.endDate == g.dateRange.range.end)return reportData;

    ReportData data = ReportData(
      g, g.dateRange.range.start, g.dateRange.range.end);
*/
    reportData = data;
    DateTime bd = DateTime(data.begDate.year, data.begDate.month, data.begDate.day);
    DateTime ed = DateTime(data.endDate.year, data.endDate.month, data.endDate.day);

    progressMax = ed
      .difference(bd)
      .inDays;
    progressValue = 0;

    Date begDate = data.begDate;
    Date endDate = data.endDate;

    message.links = [];
    message.type = "msg toggle-debug";

    String url = "${g.user.apiUrl}status.json";
    displayLink("status", url, type: "debug");
    String content = await g.request(url);
    data.status = StatusData.fromJson(json.decode(content));
    g.setGlucMGDL(data.status);
    url = "${g.user.apiUrl}profile.json";
    displayLink("profile", url, type: "debug");
    content = await g.request(url);
//      if (g.dateRange.range.start == null || g.dateRange.range.end == null)
    if (g.period.start == null || g.period.end == null)
    {
      data.error = StateError(msgEmptyRange);
      return data;
    }

    try
    {
      g.basalPrecision = 0;
      List<dynamic> src = json.decode(content);
      for (dynamic entry in src)
      {
        data.profiles.add(ProfileData.fromJson(entry));
        g.basalPrecision = math.max(g.basalPrecision, data.profiles.last.maxPrecision);
      }
//        display("${ret.begDate.toString()} - ${ret.endDate.toString()}");
    }
    catch (ex)
    {
      if (isDebug)
      {
        if (ex is Error)display("${ex.toString()}\n${ex.stackTrace}");
        else
          display(ex.toString());
      }
      else
      {
/*
          display(msgProfileError, links: [ {
            "url": "https://github.com/zreptil/nightscout-reporter/issues/new?title=problem in profile-data&body=${msgProfileError}",
            "title": msgGitHubIssue
          }
          ]);
// */
        display(msgProfileError);
      }
    }

    // find profileswitches in treatments, create profiledata and mix it in the profiles
    url = "${g.user.apiUrl}treatments.json?find[created_at][\$gte]=${begDate
                                                                       .year - 1}-01-01T00:00:00.000Z&find[eventType]=Profile Switch";
    displayLink("profileswitch", url, type: "debug");
    content = await g.request(url);
    try
    {
      List<dynamic> src = json.decode(content);
/*
        if (g.isLocal)src.add({
          "_id": "fake",
          "eventType": "Profile Switch",
          "duration": 1440,
          "profile": "Fake",
          "profileJson": '{"dia": "5","carbratio": [{"time": "00:00", "value": "0.1", "timeAsSeconds": "0"},{"time": "01:30", "value": "0.2", "timeAsSeconds": "5400"},{"time": "06:00", "value": "0.3", "timeAsSeconds": "21600"},{"time": "11:00", "value": "0.4", "timeAsSeconds": "39600"},{"time": "15:30", "value": "0.5", "timeAsSeconds": "55800"},{"time": "19:00", "value": "0.6", "timeAsSeconds": "68400"},{"time": "21:00", "value": "0.7", "timeAsSeconds": "75600"}],"carbs_hr": "0","delay": "20","sens": [{"time": "00:00", "value": "60", "timeAsSeconds": "0"},{"time": "01:30", "value": "40", "timeAsSeconds": "5400"},{"time": "06:00", "value": "30", "timeAsSeconds": "21600"},{"time": "11:00", "value": "40", "timeAsSeconds": "39600"},{"time": "15:30", "value": "50", "timeAsSeconds": "55800"},{"time": "19:00", "value": "60", "timeAsSeconds": "68400"},{"time": "21:00", "value": "90", "timeAsSeconds": "75600"}],"timezone": "Europe\\/Berlin","basal": [{"time": "00:00", "value": "0.1", "timeAsSeconds": "0"},{"time": "01:00", "value": "0.2", "timeAsSeconds": "3600"},{"time": "02:00", "value": "0.3", "timeAsSeconds": "7200"},{"time": "03:00", "value": "0.4", "timeAsSeconds": "10800"},{"time": "04:00", "value": "0.5", "timeAsSeconds": "14400"},{"time": "05:00", "value": "0.6", "timeAsSeconds": "18000"},{"time": "06:00", "value": "0.7", "timeAsSeconds": "21600"},{"time": "07:00", "value": "0.8", "timeAsSeconds": "25200"},{"time": "08:00", "value": "0.9", "timeAsSeconds": "28800"},{"time": "09:00", "value": "1.0", "timeAsSeconds": "32400"},{"time": "10:00", "value": "1.1", "timeAsSeconds": "36000"},{"time": "11:00", "value": "1.2", "timeAsSeconds": "39600"},{"time": "12:00", "value": "1.3", "timeAsSeconds": "43200"},{"time": "13:00", "value": "1.4", "timeAsSeconds": "46800"},{"time": "14:00", "value": "1.5", "timeAsSeconds": "50400"},{"time": "15:00", "value": "1.6", "timeAsSeconds": "54000"},{"time": "16:00", "value": "1.7", "timeAsSeconds": "57600"},{"time": "17:00", "value": "1.8", "timeAsSeconds": "61200"},{"time": "18:00", "value": "1.9", "timeAsSeconds": "64800"},{"time": "19:00", "value": "2.0", "timeAsSeconds": "68400"},{"time": "20:00", "value": "2.1", "timeAsSeconds": "72000"},{"time": "21:00", "value": "2.2", "timeAsSeconds": "75600"},{"time": "22:00", "value": "2.3", "timeAsSeconds": "79200"},{"time": "23:00", "value": "2.4", "timeAsSeconds": "82800"}],"target_low": [{"time": "00:00", "value": "100", "timeAsSeconds": "0"},{"time": "06:00", "value": "110"},{"time": "20:00", "value": "100"}],"target_high": [{"time": "00:00", "value": "100", "timeAsSeconds": "0"},{"time": "06:00", "value": "110"},{"time": "20:00", "value": "100"}],"startDate": "1970-01-01T00:00:00.000Z","units": "mg/dl"}',
          "profilePlugin": "info.nightscout.androidaps.plugins.ProfileNS.NSProfilePlugin",
          "created_at": "2019-03-04T10:00:00Z",
          "enteredBy": "Nightscout Reporter",
          "NSCLIENT_ID": 12345,
          "carbs": null,
          "insulin": null
        });
 // */
      for (dynamic entry in src)
      {
        DateTime check = JsonData.toDate(entry["created_at"]);
        if (data.profiles.firstWhere((p)
        => p.createdAt == check, orElse: ()
        => null) != null || entry["profile"] == null)continue;
        List<String> parts = List<String>();
        parts.add('{"_id":"${entry["_id"]}","defaultProfile":"${entry["profile"]}"');
        // some uploaders (e.g. Minimed 600-series) don't save profileJson, so we need
        // to find it here
        ProfileStoreData store = null;
        if (entry["profileJson"] == null)
        {
          String key = entry["profile"];
          ProfileData prof = data.profiles.lastWhere((p)
          => p.startDate.isBefore(check) && p.store.containsKey(key), orElse: ()
          => null);
          if (prof != null)
          {
            store = prof.store[key];
          }
        }
        parts.add('"store":{"${entry["profile"]}":${entry["profileJson"]}},"startDate":"${entry["created_at"]}"');
        parts.add('"mills":"0","units":"mg/dl"');
        parts.add('"percentage":"${entry["percentage"]}"');
        parts.add('"duration":"${entry["duration"]}"');
        parts.add('"timeshift":"${entry["timeshift"]}"');
        parts.add('"created_at":"${entry["created_at"]}"}');

        data.profiles.add(ProfileData.fromJson(json.decode(parts.join(','))));
        if (store != null)data.profiles.last.store[entry["profile"]] = store;
      }
    }
    catch (ex)
    {
      if (isDebug)
      {
        if (ex is Error)display("${ex.toString()}\n${ex.stackTrace}");
        else
          display(ex.toString());
      }
      else
      {
        display(msgProfileError);
      }
    }

    data.profiles.sort((a, b)
    => a.startDate.compareTo(b.startDate));

    // calculate the duration of the profiles
    int i = 1;
    while (i < data.profiles.length)
    {
      ProfileData last = data.profiles[i - 1];
      ProfileData current = data.profiles[i];
      int duration = current.startDate
        .difference(last.startDate)
        .inMinutes;
      if (last.duration >= duration || last.duration == 0)
      {
        last.duration = duration;
      }
      else if (i > 2)
      {
        ProfileData temp = data.profiles[i - 2].copy;
        temp.startDate = last.startDate.add(Duration(minutes: last.duration));
        temp.duration = current.startDate
          .difference(temp.startDate)
          .inMinutes;
        data.profiles.insert(i, temp);
      }
      i++;
    }

    ProfileData last = data.profiles.last;
    if (data.profiles.last.duration > 0 && data.profiles.length > 1)
    {
      ProfileData temp = data.profiles[data.profiles.length - 2].copy;
      temp.startDate = last.startDate.add(Duration(minutes: last.duration));
      temp.duration = 0;
      data.profiles.add(temp);
    }
/*
    String text = "";
    for (ProfileData p in data.profiles)
      text = "${text}<div>${p.startDate}(${p.duration} min)=${p.current?.name}</div>";
    message.dbgText = text;
*/
    // remove all profiles with a length of 0
    data.profiles.removeWhere((p)
    => p.duration < 2 && p != data.profiles.last);

    while (begDate <= endDate)
    {
      bool hasData = false;
      if (g.period.isDowActive(begDate.weekday - 1))
      {
        DateTime beg = DateTime(
          begDate.year,
          begDate.month,
          begDate.day,
          0,
          0,
          0,
          0).toUtc();

        DateTime end = DateTime(
          begDate.year,
          begDate.month,
          begDate.day,
          23,
          59,
          59,
          999).toUtc();

        ProfileGlucData profile = data.profile(beg);
        DateTime profileBeg = beg.add(Duration(hours: -profile.store.timezone.localDiff));
        DateTime profileEnd = end.add(Duration(hours: -profile.store.timezone.localDiff));

        progressText = msgLoadingDataFor(begDate.format(DateFormat(g.language.dateformat)));
        String url = "${g.user.apiUrl}entries.json?find[date][\$gte]=${beg
          .millisecondsSinceEpoch}&find[date][\$lte]=${end.millisecondsSinceEpoch}&count=100000";
        List<dynamic> src = json.decode(await g.request(url));
        displayLink("e${begDate.format(g.fmtDateForDisplay)} (${src.length})", url, type: "debug");
        for (dynamic entry in src)
        {
          try
          {
            EntryData e = EntryData.fromJson(entry);
            if (e.gluc > 0)
            {
              hasData = true;
              data.ns.entries.add(e);
            }
            if (e.mbg > 0)
            {
              hasData = true;
              data.ns.bloody.add(e);
            }
            else if (e.gluc <= 0)
            {
              hasData = true;
              data.ns.remaining.add(e);
            }
          }
          catch (ex)
          {
            if (isDebug)display("Fehler im Entry-Datensatz: ${entry.toString()}");
            break;
          }
        }
        url = "${g.user.apiUrl}treatments.json?find[created_at][\$gte]=${profileBeg
          .toIso8601String()}&find[created_at][\$lte]=${profileEnd.toIso8601String()}&count=100000";
        String tmp = await g.request(url);
        src = json.decode(tmp);
        displayLink("t${begDate.format(g.fmtDateForDisplay)} (${src.length})", url, type: "debug");
        for (dynamic treatment in src)
        {
          hasData = true;
          TreatmentData t = TreatmentData.fromJson(treatment);
          data.ns.treatments.add(t);
          if (t.eventType.toLowerCase() == "bg check")
          {
            EntryData entry = EntryData();
            entry.id = t.id;
            entry.time = t.createdAt;
            entry.device = t.enteredBy;
            entry.type = "mbg";
            entry.mbg = t.glucose;
            entry.rawbg = t.glucose;
            data.ns.bloody.add(entry);
          }
        }
      }
      begDate = begDate.add(days: 1);
      if (hasData)data.dayCount++;
      progressValue++;
      if (sendIcon != "stop")return data;
    }

    if (sendIcon == "stop")
    {
      progressText = msgPreparingData;
      progressValue = progressMax + 1;

      data.ns.entries.sort((a, b)
      => a.time.compareTo(b.time));
      data.ns.bloody.sort((a, b)
      => a.time.compareTo(b.time));
      data.ns.remaining.sort((a, b)
      => a.time.compareTo(b.time));
      data.ns.treatments.sort((a, b)
      => a.createdAt.compareTo(b.createdAt));

      int diffTime = 5;
      // gaps between entries that span more than the given minutes
      // are not filled with entries
      int minGapKeep = 16;
//*
      // Create an array with EntryData every [diffTime] minutes
      List<EntryData> entryList = List<EntryData>();
      if (data.ns.entries.length != 0)
      {
        DateTime target = DateTime(
          data.ns.entries.first.time.year, data.ns.entries.first.time.month, data.ns.entries.first.time.day);
        EntryData prev = data.ns.entries.first;
        DateTime t = DateTime(prev.time.year, prev.time.month, prev.time.day);
        prev = EntryData();
        prev.time = t;
        EntryData next = EntryData();
        next.time = target;
        // distribute entries
        for (EntryData entry in data.ns.entries)
        {
          if (entry.isInvalid)continue;
          DateTime current = DateTime(
            entry.time.year, entry.time.month, entry.time.day, entry.time.hour, entry.time.minute);
          if (current.isAtSameMomentAs(target))
          {
            prev = entry;
            prev.time = current;
            entry.isCopy = true;
            entryList.add(entry);
            target = target.add(Duration(minutes: diffTime));
          }
          else if (current.isBefore(target))
          {
            next.slice(entry, next, 0.5);
          }
          else
          {
            next = entry.copy;
            int max = current
              .difference(prev.time)
              .inMinutes;
            while (current.isAfter(target) || current.isAtSameMomentAs(target))
            {
              double factor = max == 0 ? 0 : target
                                               .difference(prev.time)
                                               .inMinutes / max;
              next = next.copy;
              if (max >= minGapKeep)next.isGap = true;
              next.time = target;
              if (current.isAtSameMomentAs(target))
              {
                next.isCopy = true;
                next.slice(entry, entry, 1.0);
              }
              else
              {
                next.slice(prev, entry, factor);
              }
              entryList.add(next);
              target = target.add(Duration(minutes: diffTime));
            }
            prev = entry;
            prev.time = current;
            next = entry;
          }
        }
      }
      data.calc.entries = entryList;
      data.calc.bloody = data.ns.bloody;
      data.calc.remaining = data.ns.remaining;

      data.ns.treatments.removeWhere((t)
      => filterTreatment(t));
      data.calc.treatments = data.ns.treatments;

      data.calc.extractData(data);
      data.ns.extractData(data);
    }
    else
    {
    }
    return data;
  }

  bool filterTreatment(TreatmentData t)
  {
    if (t.enteredBy.toLowerCase() == "sync")return true;

    return false;
  }

  void shiftClick(PeriodShift shift)
  {
    g.currShiftIdx = shift.shift;
    _sendClick();
  }

  void _sendClick()
  {
    tileParams = null;
    if (sendIcon == "send")
    {
      sendIcon = "stop";
      drawerVisible = false;
      createPDF();
    }
    else if (sendIcon == "close")
    {
      sendIcon = "send";
      currPage = "normal";
    }
    else
    {
      sendIcon = "send";
    }
  }

  String classForView(String def)
  {
    if (def == "sendPanel" && progressText != null)return def;
    switch (g.viewType)
    {
      case "tile":
        def = "${def} is-tileview";
        break;
    }

    return def;
  }

  int checkedIndex(cfg)
  {
    int ret = 0;
    for (FormConfig check in g.listConfig)
    {
      if (check.form.isDebugOnly && !isDebug)continue;
      if (check.checked)ret++;
      if (check == cfg)return ret;
    }
    return ret;
  }

  showTileParams(cfg, evt)
  {
    evt.preventDefault();
    tileParams == null ? tileParams = cfg : tileParams = null;
  }

  changeView()
  {
    switch (g.viewType)
    {
      case 'list':
        g.viewType = 'tile';
        break;
      case 'tile':
        g.viewType = 'list';
        break;
    }
    tileParams = null;
    g.save();
    checkPrint();
  }

  void createPDF()
  {
    g.save();
    display("");
    pdfList.clear();
    loadData().then((ReportData vars)
    async {
      progressText = msgCreatingPDF;
      if (vars.error != null)
      {
        if (isDebug)display(msgLoadingData(vars.error.toString(), vars.error.stackTrace.toString()));
        display(msgLoadingDataError);
        return;
      }
      if (sendIcon == "send")
      {
        progressText = null;
        reportData = null;
        return;
      }
      progressValue = progressMax + 1;
      var doc = null;
      List<dynamic> docList = List<dynamic>();
      int docLen = 0;
      for (FormConfig cfg in g.listConfig)
      {
        BasePrint form = cfg.form;
        if (cfg.checked && (!form.isDebugOnly || isDebug))
        {
          docLen = json
            .encode(doc)
            .length;
          dynamic formData = await form.getFormData(vars, docLen);
          List<List<dynamic>> fileList = [[]];
          for (dynamic entry in formData)
          {
            if (entry["pageBreak"] == "newFile" && !fileList.last.isEmpty)
            {
              entry["pageBreak"] = "";
              fileList.last.add(entry);
              fileList.add([]);
            }
            else
            {
              if (entry["pageBreak"] == "newFile")entry["pageBreak"] = "after";
              fileList.last.add(entry);
            }
          }

          for (dynamic data in fileList)
          {
            if (doc == null)
            {
              doc = {
                "pageSize": "a4",
                "pageOrientation": form.isSheetPortrait ? "portrait" : "landscape",
                "pageMargins": [form.cm(0), form.cm(1.0), form.cm(0), form.cm(0.0)],
                "content": data,
                "images": form.images,
                "styles": {
                  "infoline": {"margin": [form.cm(0), form.cm(0.25), form.cm(0), form.cm(0.25)]},
                  "perstitle": {"fontSize": form.fs(10.0), "alignment": "right"},
                  "persdata": {"fontSize": form.fs(10.0), "color": "#0000ff"},
                  "infotitle": {"fontSize": form.fs(10.0), "alignment": "left"},
                  "infodata": {"fontSize": form.fs(10.0), "alignment": "right", "color": "#0000ff"},
                  "infounit": {
                    "margin": [form.cm(0), form.cm(0.07), form.cm(0), form.cm(0)],
                    "fontSize": form.fs(8),
                    "color": "#0000ff"
                  },
                  "hba1c": {"color": "#5050ff", "fontSize": form.fs(10)},
                  "total": {"bold": true, "fillColor": "#d0d0d0", "fontSize": form.fs(10), "margin": form.m0},
                  "timeDay": {"bold": true, "fillColor": "#d0d0d0", "margin": form.m0},
                  "timeNight": {"bold": true, "fillColor": "#303030", "color": "white", "margin": form.m0},
                  "timeLate": {"bold": true, "fillColor": "#a0a0a0", "margin": form.m0},
                  "row": {"fontSize": form.fs(10)}
                }
              };
            }
            else
            {
              var pagebreak = {
                "text": "",
                "pageBreak": "after",
                "pageSize": "a4",
                "pageOrientation": form.isSheetPortrait ? "portrait" : "landscape",
              };
              doc["content"].add(pagebreak);
              for (var entry in data)
                doc["content"].add(entry);

              for (String key in form.images.keys)
                (doc["images"] as Map<String, String>)[key] = form.images[key];
            }

            if (data != fileList.last)
            {
              docList.add(doc);
              doc = null;
            }
          }
        }
//        if (g.isLocal && data != fileList.last)doc = null;
      }
/*
      pdfMake.Styles styles = pdfMake.Styles();
      pdfMake.PDFContent pdf = pdfMake.PDFContent(content: [doc], styles: styles);
      pdfMake.create(pdf).open();
// */
/*
          .getDataUrl(function(outDoc)
          {
          $("#output").text(outDoc);
          });
*/
//*
      if (doc != null)docList.add(doc);

      if (docList.length > 1)
      {
        pdfList.clear();
        pdfDoc = null;

        for (var doc in docList)
        {
          String dst = convert.jsonEncode(doc);
          if (isDebug)
          {
            pdfUrl = "http://pdf.zreptil.de/playground.php";
            dst = dst.replaceAll("],", "],\n");
            dst = dst.replaceAll(",\"", ",\n\"");
            dst = dst.replaceAll(":[", ":\n[");
          }
          else
          {
            pdfUrl = "https://nightscout-reporter.zreptil.de/pdfmake/pdfmake.php";
          }
          pdfList.add(PdfData(pdfString(dst)));
        }

        currPage = "pdfList";
        sendIcon = "close";
        progressText = null;
        return;
      }
      else
      {
        pdfDoc = convert.jsonEncode(docList[0]);
      }

      if (!isDebug)
      {
        if (message.text.isEmpty)navigate("showPdf");
        else
          displayLink(msgShowPDF, "showPdf", btnClass: "action", icon: "description");
      }
      else
      {
        displayLink("playground", "showPlayground", btnClass: "action", icon: "description");
        displayLink("pdf", "showPdf", btnClass: "action", icon: "description");
      }
// */
      sendIcon = "send";
      progressText = null;
    }).catchError((error)
    {
      if (isDebug)
      {
        if (error is Error)display("${error.toString()}\n${error.stackTrace}");
        else
          display(error.toString());
      }
      else
      {
        display(msgPDFCreationError);
      }
      sendIcon = "send";
      progressText = null;
      return -1;
    });
  }

  String tileClass(FormConfig cfg)
  {
    String ret = "tile sortable";
    if (cfg.form.isDebugOnly && isDebug)ret = "${ret} is-debug";
    if (cfg.checked && tileParams == null)ret = "${ret} tilechecked";
    if (cfg.form.isLocalOnly)ret = "${ret} is-local";
    if (cfg.form.isBetaOrLocal)ret = "${ret} is-beta";
    return ret;
  }

  String expansionClass(FormConfig cfg)
  {
    String ret = "paramPanel";
    if (cfg.form.isDebugOnly && isDebug)ret = "${ret} is-debug";
    if (cfg.checked)ret = "${ret} checked";
    if (cfg.form.isLocalOnly)ret = "${ret} is-local";
    if (cfg.form.isBetaOrLocal)ret = "${ret} is-beta";
    return ret;
  }

  expansionPanelOpen(evt, FormConfig cfg)
  {
    cfg.opened = true;
  }

  expansionPanelClose(evt, FormConfig cfg)
  {
    cfg.checked = !cfg.checked;
    cfg.opened = false;
  }

  expansionPanelClicked(evt, FormConfig cfg)
  {
    if (!cfg.opened)
    {
      if (evt.currentTarget.attributes["dontclick"] == "true")
      {
        evt.currentTarget.removeAttribute("dontclick");
        return;
      }
      cfg.checked = !cfg.checked;
      checkPrint();
    }
  }

  signinEvent(SigninEvent e)
  {
    switch (e.status)
    {
      case SigninStatus.requestAuthorization:
//        _currPage = "signin";
        break;
      case SigninStatus.signinOk:
//        _currPage = "normal";
        break;
      case SigninStatus.signedOut:
//        _currPage = "normal";
        break;
      case SigninStatus.error:
        display(e.message);
//        _currPage = "normal";
        break;
      default:
        message.text = "${message.text} - ${e.message}";
        break;
    }
  }
}

class TileAvatarHandler extends AvatarHandler
{

  TileAvatarHandler()
  {
  }

  @override
  void dragStart(html.Element draggable, html.Point startPosition)
  {
    avatar = draggable.clone(true);
    avatar.className = "${avatar.className} dragtile";
    html.Point pt = html.Point(draggable.offsetLeft, draggable.offsetTop);
    html.Element parent = draggable.offsetParent;
    while (parent != null)
    {
      pt = html.Point(pt.x + parent.offsetLeft, pt.y + parent.offsetTop);
      parent = parent.offsetParent;
    }
    avatar.style
      ..width = "${draggable.clientWidth}px"
      ..height = "${draggable.clientHeight}px"
      ..left = "${pt.x}px"
      ..top = "${pt.y}px";

    html.document.body
      .querySelector("my-app")
      .style
      .overflow = "hidden";

    setLeftTop(pt);

    avatar.style.position = "absolute";
    html.document.body.querySelector("my-app").append(avatar);
  }

  @override
  void drag(html.Point startPosition, html.Point position)
  {
    setTranslate(position - startPosition);
  }

  @override
  void dragEnd(html.Point startPosition, html.Point position)
  {
    avatar.remove();
  }
}