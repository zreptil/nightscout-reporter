import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'dart:html' as html;
import 'dart:math' as math;

import 'package:angular/angular.dart';
import 'package:angular/security.dart';
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
import 'package:nightscout_reporter/src/forms/print-daily-gluc.dart';
import 'package:nightscout_reporter/src/forms/print-daily-graphic.dart';
import 'package:nightscout_reporter/src/forms/print-daily-hours.dart';
import 'package:nightscout_reporter/src/forms/print-daily-log.dart';
import 'package:nightscout_reporter/src/forms/print-daily-profile.dart';
import 'package:nightscout_reporter/src/forms/print-daily-statistics.dart';
import 'package:nightscout_reporter/src/forms/print-gluc-distribution.dart';
import 'package:nightscout_reporter/src/forms/print-percentile.dart';
import 'package:nightscout_reporter/src/forms/print-test.dart';
import 'package:nightscout_reporter/src/forms/print-user-data.dart';
import 'package:nightscout_reporter/src/forms/print-weekly-graphic.dart';
import 'package:nightscout_reporter/src/globals.dart';
import 'package:nightscout_reporter/src/helpview/helpview_component.dart';
import 'package:nightscout_reporter/src/infoview/infoview_component.dart';
import 'package:nightscout_reporter/src/json_data.dart';

import 'dsgvo/dsgvo_component.dart';
import 'forms/print-analysis.dart';
import 'forms/print-basalrate.dart';
import 'forms/print-profile.dart';
import 'impressum/impressum_component.dart';
import 'printparams/printparams_component.dart';
import 'settings/settings_component.dart';
import 'shortcutedit/shortcutedit_component.dart';
import 'welcome/welcome_component.dart';
import 'whatsnew/whatsnew_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

class PdfData {
  String pdf;
  bool isPrinted = false;

  PdfData(this.pdf);
}

@Component(
    selector: 'app-start',
    styleUrls: ['start_component.css', 'package:angular_components/app_layout/layout.scss.css'],
    templateUrl: 'start_component.html',
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
      PrintParamsComponent,
      WelcomeComponent,
      WhatsnewComponent,
      ShortcutEditComponent,
      MaterialInputComponent,
      MaterialProgressComponent,
      MaterialToggleComponent,
      MaterialDropdownSelectComponent,
      MaterialSelectItemComponent,
      SigninComponent,
      HelpViewComponent,
      InfoViewComponent,
      SafeInnerHtmlDirective,
      NgClass,
      NgFor,
      NgIf,
      NgModel
    ],
    exports: [],
    providers: [])
class StartComponent implements OnInit {
  StartComponent(DomSanitizationService sanitizer) {
    g.sanitizer = sanitizer;
  }

  String get timezone => Globals.refTimezone;
  bool paramboolValue = false;
  Globals g = Globals();
  bool drawerVisible = false;
  bool pdfInfoVisible = false;
  String __currPage;

  String get _currPage => __currPage;

  set _currPage(value) {
    __currPage = value;
  }

  String _lastPage = 'welcome';

  String get currPage => progressText == null || progressText.isNotEmpty ? _currPage : 'progress';

  set currPage(String value) {
    if (currPage != 'welcome') _lastPage = currPage;
    _currPage = value;
  }

  static String startPage = 'normal';
  Date today = Date.today();
  Map<String, bool> appTheme = <String, bool>{};
  List<DatepickerPreset> dateRanges = <DatepickerPreset>[];
  DateRangePickerConfiguration drConfig = DateRangePickerConfiguration.basic;
  bool sendDisabled = true;
  String pdfData = '';
  List<PdfData> pdfList = <PdfData>[];
  String pdfDoc;
  FormConfig tileParams;
  List<FormConfig> tileHelp = <FormConfig>[];

  int get pdfSliderMax => Globals.PDFUNLIMITED ~/ Globals.PDFDIVIDER;

  String progressText;
  int progressMax = 100;
  int progressValue = 0;
  String sendIcon = 'send';

  String sendClass(int shift, String ret) {
    if (ret != 'stop' &&
        reportData != null &&
        g.period.shiftStartBy(shift) == reportData.begDate &&
        g.period.shiftEndBy(shift) == reportData.endDate) ret = '${ret} sendMarked';
    return ret;
  }

  String get createIcon => g.isDebug && sendIcon == 'send' ? 'vertical_align_bottom' : sendIcon;
  String pdfUrl = '';

  String pdfFilename(idx) => 'Nightscout-Reporter-${idx}.pdf';

  String get msgCheckSetup => Intl.message('Überprüfe Zugriff auf Nightscout ...');

  String msgLoadingData(error, stacktrace) => Intl.message('Fehler beim Laden der Daten:\n$error\n$stacktrace',
      args: [error, stacktrace], name: 'msgLoadingData');

  String get msgLoadingDataError => Intl.message('Fehler beim Laden der Daten');

  String msgLoadingDataFor(date) => Intl.message('Lade Daten für $date...',
      args: [date], name: 'msgLoadingDataFor', desc: 'displayed when data of a day is loading');

  String get msgClose => Intl.message('Schliessen');

  String get msgEmptyRange => Intl.message('Bitte einen Zeitraum wählen.');

  String get msgPreparingData => Intl.message('Bereite Daten vor...',
      desc: 'text when data was received and is being prepared to be used in the report');

  String get msgCreatingPDF => Intl.message('Erzeuge PDF...', desc: 'text when pdf is being created');

  String get msgPreparingPDF => Intl.message('Lade die Basisdaten...');

  String get msgImpressum => Intl.message('Impressum');

  String get msgDSGVO => Intl.message('Datenschutzerklärung');

  String get msgApply => Intl.message('ok');

  String get msgCancel => Intl.message('verwerfen');

  String get msgPDFCreated => Intl.message('Das PDF wurde erstellt. Wenn es nicht angezeigt wird, '
      'dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren.');

  String get msgPeriod => Intl.message('Zeitraum');

  String get msgProfileError => Intl.message('Beim Auslesen der Profile ist ein Fehler aufgetreten. '
      'Möglicherweise sind zu viele Daten in der Profiltabelle (wird z.B. von iOS Loop verursacht). '
      'Du kannst versuchen, in den Einstellungen die Anzahl an auszulesenden Profildatensätzen zu verringern.');

  String get msgPDFCreationError => Intl.message('Beim Erzeugen des PDF ist ein Fehler aufgetreten.');

  String get msgGitHubIssue => Intl.message('Problem auf GitHub melden');

  String get msgShowPDF => Intl.message('PDF anzeigen');

  String get msgPeriodCompare => Intl.message('Vergleich');

  String get msgShortcutName => Intl.message('Bezeichnung');

  String get msgAddText => Intl.message('Hinzufügen');

  String msgTooMuchProfilesPrefix(int maxCount) => Intl.message(
      'Es konnten nicht alle Profile geladen werden, da im ausgewählten Zeitraum mehr als ${maxCount} '
      'gespeichert sind. ',
      args: [maxCount],
      name: 'msgTooMuchProfilesPrefix');

  String msgTooMuchProfiles(int maxCount, int count, String text) =>
      msgTooMuchProfilesPrefix(maxCount) +
      Intl.plural(count,
          zero: '',
          one: 'Der Uploader "${text}" hat die Datensätze angelegt.',
          other: 'Folgende Uploader haben die Datensätze angelegt: ${text}',
          args: [maxCount, count, text],
          name: 'msgTooMuchProfiles');

/*
    return Intl.message(
        '''Es konnten nicht alle Profile geladen werden, da im ausgewählten Zeitraum mehr als ${maxCount}
          gespeichert sind. Folgende Uploader haben diese Datensätze angelegt: ${text}.''',
        args: [maxCount, text], name: 'msgTooMuchProfiles');
*/

  bool isFormVisible(BasePrint form) {
    if (form.isDebugOnly && !g.isDebug) return false;
    if (form.isLocalOnly && !g.isLocal) return false;
    if (form.isBetaOrLocal && !(g.isBeta || g.isLocal)) return false;

    return true;
  }

  String getDrawerClass(int menu) {
    var ret = '';
    switch (menu) {
      case 0:
        ret = 'drawer-root ';
        break;
      case 1:
        ret = 'shortcut-root ';
        break;
    }

    if (menu != menuIdx) ret += 'hidden';

    return ret;
  }

  String get drawerClass {
    var ret = 'material-drawer-button ';
    switch (menuIdx) {
      case 0:
        ret += 'icon-menu';
        break;
      case 1:
        ret += 'icon-shortcut';
        break;
    }
    return ret;
  }

  String appTitle = '';

  @override
  Future<Null> ngOnInit() async {
    _currPage = 'signin';
    g.loadWebData();
    await g.setTheme(g.theme);

    appTitle = html.document.querySelector('head>title').text;

    html.window.onBlur.listen((e) async {
      if (!g.showCurrentGluc || g.isDebug) return;
      g.currentGlucVisible = false;
      if (g.glucTimer != null) {
        g.glucTimer.cancel();
        g.glucTimer = null;
      }
    });

    html.window.onFocus.listen((e) async {
      if (!g.showCurrentGluc || g.isDebug) return;
      g.currentGlucVisible = true;
      Future.delayed(Duration(milliseconds: 250), () => g.getCurrentGluc());
    });

    display(null);

    g.doShowDebug = showDebug;
    g.onAfterLoad = afterLoad;

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
      PrintDailyProfile(),
      PrintDailyGluc(),
      PrintDailyHours(),
      PrintUserData(),
      PrintGlucDistribution()
      // maybe activated later
      // PrintInsulinStatistics(),
    ];
    g.listConfig = <FormConfig>[];
    g.listConfigOrg = <FormConfig>[];
    for (var form in srcList) {
      g.listConfigOrg.add(FormConfig(form, false));
    }
    g.listConfig.addAll(g.listConfigOrg);

    // ignore: unawaited_futures
    g.loadSettings().then((_) {
      var page = g.version == g.lastVersion ? 'normal' : 'whatsnew';
      _currPage = g.isConfigured ? page : 'welcome';
      // if (!g.dsgvoAccepted) {
      //   _currPage = 'dsgvo';
      // }
      _lastPage = _currPage;
      g.sortConfigs();
      for (var entry in g.listConfig) {
        g.user.formParams[entry.id] = entry.asString;
      }

      if (html.window.location.href.endsWith('?dsgvo')) currPage = 'dsgvo';
      if (html.window.location.href.endsWith('?impressum')) currPage = 'impressum';
      if (html.window.location.href.endsWith('?whatsnew')) currPage = 'whatsnew';
      if (html.window.location.href.endsWith('?welcome')) currPage = 'welcome';
      if (html.window.location.href.endsWith('?settings')) currPage = 'settings';

      try {
        g.period.minDate = Date.parseLoose(g.user.birthDate, g.fmtDateForDisplay);
      } catch (ex) {
        g.period.minDate = null;
      }
      g.getCurrentGluc();
      if (_currPage == 'whatsnew') g.saveWebData();
      checkPrint();
    });
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

  void extractAllParams() {
    for (var cfg in g.listConfig) {
      cfg.form.extractParams();
    }
  }

  void toggleHelp() {}

  void togglePage(String id) {
    currPage = currPage == id ? 'normal' : id;
  }

  void displayLink(String title, String url, {bool clear = false, String type, String btnClass = '', String icon}) {
    if (!g.isDebug && type == 'debug') return;

    if (clear) g.msg.links = [];

    g.msg.links.add({'url': url, 'title': title, 'class': btnClass, 'icon': g.isDebug && icon == null ? 'code' : icon});
    g.msg.okText = msgClose;
    if (type != null) g.msg.type = type;
  }

  void showDebug() {
    var msg = g.debugCache.join('<br />');
    g.debugCache.clear();
    g.msg.dbgText = msg;
  }

  void display(String msg, {bool append = false, List links}) {
    if (append) msg = '${g.msg.isEmpty ? '' : '${g.msg.text}<br />'}$msg';
    if (links != null) g.msg.links = links;
    g.msg.text = msg;
    g.msg.type = 'msg';
  }

  void callNightscout() {
    navigate(g.user.apiUrl(null, '', noApi: true));
  }

  void callNightscoutReports() {
    navigate(g.user.reportUrl);
  }

  void callNightscoutStatus() {
    navigate('https://nielsmaerten.github.io/nightscout-assistant/#/${g.language.img}/home');
  }

  String formId(int idx) => 'postForm${idx}';

  String pdfString(String doc) {
    if (doc != null) {
      // remove special chars from output (e.g. smiley placed in notes)
      var temp = doc;
      doc = '';
      for (var i = 0; i < temp.length; i++) {
        if (g.language.code == 'ja_JP' || temp.codeUnitAt(i) <= 4095) doc = '${doc}${temp[i]}';
      }
    }
    return base64.encode(utf8.encode(doc));
  }

  String languageClass(item) => g.language != null && item.code == g.language.code ? 'language currLang' : 'language';

  void navigate(String url) {
    if (url.startsWith('showPlayground') || url.startsWith('showPdf') || url.startsWith('makePdfImages')) {
      var doc = pdfDoc;
      if (url == 'showPlayground') {
        pdfUrl = g.urlPlayground;
        if (doc != null) {
          doc = doc.replaceAll('],', '],\n');
          doc = doc.replaceAll(',\"', ',\n\"');
          doc = doc.replaceAll(':[', ':\n[');
        }
      } else if (url == 'showPdf') {
        pdfUrl = g.urlPdf;
      } else if (url == 'makePdfImages') {
        pdfUrl = '${g.urlPdf}?images=${g.language.img}';
      }

      if (pdfDoc != null && pdfList.isEmpty) {
        pdfData = pdfString(doc);
        Future.delayed(Duration(milliseconds: 1), () {
          var form = html.querySelector('#postForm') as html.FormElement;
          form.submit();
//        display(msgPDFCreated);
        });
        if (url == 'makePdfImages') {
          if (thumbLangIdx < g.languageList.length - 1) {
            Future.delayed(Duration(milliseconds: 500), () {
              createThumbs();
            });
          } else {
            g.setLanguage(thumbLangSave);
            thumbLangIdx = -1;
            thumbLangSave = null;
          }
        }
      } else if (pdfList.isNotEmpty) {
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
    } else {
      html.window.open(url, '_blank');
    }
  }

  bool indy = true;

  void openPDF(int idx) {
    if (idx >= pdfList.length) return;

    if (g.ppPdfSameWindow) {
      for (var i = 0; i < pdfList.length; i++) {
        pdfList[i].isPrinted = true;
        Future.delayed(Duration(milliseconds: 10), () {
          var form = html.querySelector('#${formId(i)}') as html.FormElement;
          form.submit();
        });
      }
      return;
    }

    pdfList[idx].isPrinted = true;
    Future.delayed(Duration(milliseconds: 10), () {
      var form = html.querySelector('#${formId(idx)}') as html.FormElement;
      form.submit();
    });
  }

  void tileHelpButtonClicked(html.UIEvent evt) {}

  dynamic videos = {'video01': 'eYq9lJRAWao'};

  void callbackButton(html.UIEvent evt) {
    var page = evt.type;
    if (page.startsWith('@')) {
      page = page.substring(1);
      if (!g.isConfigured) page = 'welcome';
    } else if (page.startsWith('video')) {
      html.window.open('https://www.youtube.com/watch?v=${videos[page]}', '');
      return;
    }
    currPage = page;
  }

  void settingsResult(html.UIEvent evt) {
    switch (evt.type) {
      case 'ok':
        g.save(skipReload: true);
        reportData = null;
        _currPage = g.isConfigured ? 'normal' : 'welcome';
        if (!g.isConfigured) {
          g.clearStorage();
        }
        break;
      default:
        g.loadSettings(skipSyncGoogle: true);
        _currPage = g.isConfigured ? _lastPage : 'welcome';
        break;
    }
    g.getCurrentGluc();
  }

  void printparamsResult(html.UIEvent evt) {
    switch (evt.type) {
      case 'ok':
        _currPage = _lastPage;
        shiftClick(g.currPeriodShift);
        break;
      case 'cancel':
        _currPage = _lastPage;
        break;
      default:
        _currPage = g.isConfigured ? _lastPage : 'welcome';
        break;
    }
    g.getCurrentGluc();
  }

  void checkSetup() {
    progressText = msgCheckSetup;
    progressValue = progressMax + 1;
    display(null);
    g.checkSetup().then((String error) {
      g.isConfigured = error == null || error.isEmpty;
      _currPage = g.isConfigured ? _lastPage : 'welcome';

      if (!g.isConfigured) g.info.addError(error);
    });
    progressText = null;
  }

  void changePeriod(DatepickerPeriod period) {
    g.period = period;
    reportData = null;
    checkPrint();
  }

  void afterLoad() {
    if (g.pdfOrder.length >= 48) {
      for (var i = 0; i < g.pdfOrder.length; i += 3) {
        var idx = g.pdfOrder.substring(i, i + 3);
        var cfg = g.listConfig.firstWhere((e) => e.idx == idx, orElse: () => null);
        if (cfg == null) {
          var form = formFromId(idx.substring(0, 2), idx.substring(2));
          if (form != null) {
            var newCfg = FormConfig(form, false);
            g.listConfig.add(newCfg);
          }
        }
      }
      g.listConfigOrg.clear();
      g.listConfigOrg.addAll(g.listConfig);
    }
    checkPrint();
  }

  void checkPrint() {
    sendDisabled = true;
    if (g.period.isEmpty) return;

    for (var cfg in g.listConfig) {
      if (cfg.checked) {
        if (cfg.form.isDebugOnly) {
          if (g.isDebug) sendDisabled = false;
        } else if (cfg.form.isLocalOnly) {
          if (g.isLocal) sendDisabled = false;
        } else {
          sendDisabled = false;
        }
      }
    }

    Future.delayed(Duration(milliseconds: 100), () {
      if (_drag != null) {
        _drag.onDragEnd.listen(null);
        _drag.onDragStart.listen(null);
        _drag.destroy();
      }

      _drag = Draggable(html.querySelectorAll('.sortable'),
          avatarHandler: g.viewType == 'tile' ? TileAvatarHandler() : AvatarHandler.clone(),
          draggingClass: 'dragging',
          handle: g.viewType == 'tile' ? null : '[name]>material-icon',
          verticalOnly: g.viewType == 'list');
      _drag.onDragStart.listen((DraggableEvent event) {});
      _drag.onDragEnd.listen((DraggableEvent event) {
        event.draggableElement.animate([
          {'transform': 'rotate(180)'}
        ], 500);
      });
      if (_drop != null) _drop.onDrop.listen(null);
      _drop = Dropzone(html.querySelectorAll('.sortable'), overClass: 'dragover');
      _drop.onDrop.listen((DropzoneEvent event) {
        if (!dropElement(event.draggableElement, event.dropzoneElement)) {
          event.dropzoneElement.attributes['dontclick'] = 'true';
        }
      });
    });
  }

  bool dropElement(html.Element drag, html.Element drop) {
    var dragId = drag.getAttribute('id').substring(5);
    var dropId = drop.getAttribute('id').substring(5);
    if (dragId == dropId) return false;

    FormConfig dragCfg;
    var dragIdx = -1;
    var dropIdx = -1;
    for (var i = 0; i < g.listConfig.length; i++) {
      if (g.listConfig[i].id == dragId) {
        dragCfg = g.listConfig[i];
        dragIdx = i;
      }
      if (g.listConfig[i].id == dropId) dropIdx = i;
    }
    if (dragCfg != null && dropIdx >= 0) {
      g.listConfig.removeAt(dragIdx);
      g.listConfig.insert(dragIdx < dropIdx ? dropIdx - 1 : dropIdx, dragCfg);
    }
    g.savePdfOrder();
    return true;
  }

  Draggable _drag;
  Dropzone _drop;
  String msgModelName = Intl.message('Max Mustermann', desc: 'modelname used in images on tiles');

  ReportData reportData;

  bool checkCfg(var cfg) => cfg.checked && (!cfg.form.isDebugOnly || g.isDebug) && (!cfg.form.isLocalOnly || g.isLocal);

  void clickMenuButton(String type) {
    drawerVisible = false;
    switch (type) {
      case 'facebook':
        navigate('https://www.facebook.com/nightrep');
        break;
      case 'autotune':
        navigate('https://autotuneweb.azurewebsites.net/');
        break;
      case 'translate':
        navigate('https://translate.google.com/toolkit/');
        break;
      case 'jsonparser':
        navigate('https://jsonformatter.org/json-parser');
        break;
      case 'nswatch':
        navigate('?watch');
        break;
      case 'nsreports':
        callNightscoutReports();
        break;
      case 'nightscout':
        callNightscout();
        break;
      case 'whatsnew':
        currPage = 'whatsnew';
        break;
      case 'nightscoutstatus':
        callNightscoutStatus();
        break;
      case 'menu':
        changeView();
        break;
      case 'settings':
        g.save();
        currPage = 'settings';
        break;
    }
  }

  void clickTileHelp($event, cfg) {
    drawerVisible = false;
    tileHelp.add(cfg);
    $event.stopPropagation();
  }

  void clickTileMenu($event, cfg) {
    drawerVisible = false;
    tileParams = cfg;
    $event.stopPropagation();
  }

  BasePrint formFromId(String id, String suffix) {
    switch (id) {
      case '00':
      case 'test':
        return PrintTest(suffix: suffix);
        break;
      case '01':
      case 'analysis':
        return PrintAnalysis(suffix: suffix);
        break;
      case '02':
      case 'profile':
        return PrintProfile(suffix: suffix);
        break;
      case '03':
      case 'percentile':
        return PrintPercentile(suffix: suffix);
        break;
      case '04':
      case 'daystats':
        return PrintDailyStatistics(suffix: suffix);
        break;
      case '05':
      case 'daygraph':
        return PrintDailyGraphic(suffix: suffix);
        break;
      case '06':
      case 'dayanalysis':
        return PrintDailyAnalysis(suffix: suffix);
        break;
      case '07':
      case 'daylog':
        return PrintDailyLog(suffix: suffix);
        break;
      case '08':
      case 'weekgraph':
        return PrintWeeklyGraphic(suffix: suffix);
        break;
      case '09':
      case 'basal':
        return PrintBasalrate(suffix: suffix);
        break;
      case '10':
      case 'cgp':
        return PrintCGP(suffix: suffix);
        break;
      case '11':
      case 'dayprofile':
        return PrintDailyProfile(suffix: suffix);
        break;
      case '12':
      case 'daygluc':
        return PrintDailyGluc(suffix: suffix);
        break;
      case '13':
      case 'dayhours':
        return PrintDailyHours(suffix: suffix);
        break;
      case '14':
      case 'userdata':
        return PrintUserData(suffix: suffix);
        break;
      case '15':
      case 'glucdist':
        return PrintGlucDistribution(suffix: suffix);
        break;
    }
    return null;
  }

  bool mayCopy(cfg) {
    return cfg.form.sortedParams.length > 0 &&
        cfg.checked &&
        cfg.form.suffix == '-' &&
        g.listConfig.where((c) => c.form.baseId == cfg.form.baseId).length < 3 &&
        g.listConfig.where((c) => c.form.suffix != '-').length < 9;
  }

  int getNextSuffix(FormConfig cfg) {
    var list = g.listConfig.where((c) => c.form.baseId == cfg.form.baseId);
    var ret = 0;
    while (list.firstWhere((c) => c.form.suffix == '${ret}', orElse: () => null) != null) ret++;
    return ret;
  }

  void clickTileCopy($event, FormConfig cfg, int idx) {
    drawerVisible = false;
    var form = formFromId(cfg.form.baseId, '${getNextSuffix(cfg)}');
    if (form != null) {
      var newCfg = FormConfig(form, true);
      g.listConfig.insert(idx + 1, newCfg);
    }
    g.savePdfOrder();
    $event.stopPropagation();
  }

  bool mayDelete(cfg) {
    return cfg.form.sortedParams.length > 0 && cfg.checked && cfg.form.suffix != '-';
  }

  void clickTileDelete($event, int idx) {
    drawerVisible = false;
    g.listConfig.removeAt(idx);
    g.savePdfOrder();
    $event.stopPropagation();
  }

  void clickTileParamSingleClose($event) {
    extractAllParams();
    tileParams = null;
    $event.stopPropagation();
  }

  void clickTileParamClose($event) {
    tileParams.form.extractParams();
    tileParams = null;
    $event.stopPropagation();
  }

  void clickTileParamListToggle($event) {
    g.showAllTileParams = !g.showAllTileParams;
    $event.stopPropagation();
  }

  void clickPdfButton() {
    currPage = 'normal';
    createPDF();
  }

  void clickDebugTrigger() {
    reportData = null;
    g.isDebug = !g.isDebug;
    checkPrint();
    g.msg.dismiss(g.msg.clear);
  }

  void clickLocalTitle() {
    g.isLocal = !g.isLocal;
    checkPrint();
  }

  Future<ReportData> loadData(bool isForThumbs) async {
    var beg = g.period.shiftStartBy(g.currPeriodShift.months);
    var end = g.period.shiftEndBy(g.currPeriodShift.months);
    if (isForThumbs) {
      beg = Date(2019, 8, 26);
      end = Date(2019, 9, 1);
      reportData = null;
    }

    if (reportData != null && reportData.begDate == beg && reportData.endDate == end) {
      progressText = msgPreparingPDF;
      progressMax = 1;
      progressValue = 0;
      print('1');
      reportData.calc.calcStatistics(reportData);
      reportData.ns.calcStatistics(reportData);
      print('2');
      return reportData;
    }

    var data = ReportData(g, beg, end);
    data.isForThumbs = isForThumbs;

    if (isForThumbs) {
      data.user = UserData(g);
      data.user.name = msgModelName;
      data.user.birthDate = '13.2.1965';
      data.user.diaStartDate = '1.1.1996';
      data.user.insulin = 'Novorapid';
      data.user.listApiUrl = <UrlData>[];
      data.user.listApiUrl.add(UrlData.fromJson(g, {
        'u': 'https://diamant.ns.10be.de:22140',
        // 't': 'usertoken',
        'sd': null,
        'ed': null
      }));
      data.user.customData = {};
      data.user.formParams = {};
    } else {
      data.user = g.user;
    }
/*
    if (reportData != null && reportData.begDate == g.dateRange.range.start &&
      reportData.endDate == g.dateRange.range.end)return reportData;

    ReportData data = ReportData(
      g, g.dateRange.range.start, g.dateRange.range.end);
*/
    reportData = data;

    var needed = DataNeeded(statusCurr: false, statusAny: false, dataCurr: false, dataAny: false);

    var funcList = <Future<void> Function(UserData)>[];

    for (var cfg in g.listConfigOrg) {
      if (checkCfg(cfg)) {
        needed.mix(cfg.form.needed);
        funcList.add(cfg.form.loadUserData);
      }
    }

    if (needed.needsStatus) {
      progressMax = g.userList.length + 1;
      progressValue = 0;
      for (var user in g.userList) {
//        if (!user.isReachable) continue;
        if (needed.status.anybody || user == g.user) {
          progressText = msgLoadingDataFor(user.name);
          try {
            var url = user.apiUrl(null, 'status.json');
            displayLink('status', url, type: 'debug');
            var content = await g.requestJson(url, showError: false);
            user.status = null;
            if (content != null) {
              user.status = StatusData.fromJson(content);
              for (var func in funcList) {
//                await func(user);
              }
            }
          } catch (ex) {
            user.status = null;
          }
          user.isReachable = user.status != null;
        }
        if (sendIcon != 'stop') return data;
      }
      g.save(skipReload: true);
    } else {
      g.user.status = null;
      try {
        var url = g.user.apiUrl(null, 'status.json');
        var content = await g.requestJson(url, showError: false);
        if (content != null) {
          g.user.status = StatusData.fromJson(content);
        }
      } catch (ex) {
        g.user.status = null;
      }
      g.user.isReachable = g.user.status != null;
    }

    if (!needed.needsData || !g.user.isReachable) {
      return data;
    }

    var bd = DateTime(data.begDate.year, data.begDate.month, data.begDate.day);
    var ed = DateTime(data.endDate.year, data.endDate.month, data.endDate.day);

    progressValue = 0;
    progressMax = ed.difference(bd).inDays;

    var begDate = data.begDate;
    var endDate = data.endDate;

    g.msg.links = [];
    g.msg.type = 'msg toggle-debug';

    var url = data.user.apiUrl(endDate, 'status.json');
    displayLink('status', url, type: 'debug');
    var content = await g.requestJson(url);
    if (content != null) {
      data.status = StatusData.fromJson(content);
      if (data.status.status == '401') {
        data.user.isReachable = false;
        return data;
      }
    }
    // TODO: checken ob das benötigt wird: g.setGlucMGDL(data.status);
    if (g.period.start == null || g.period.end == null) {
      data.error = StateError(msgEmptyRange);
      return data;
    }

    ProfileData baseProfile;

    var list = g.findUrlDataFor(begDate, endDate);
    var maxCount = g.profileMaxCounts[data.user.profileMaxIdx ?? 0];
    for (var urlData in list) {
      // Mit dieser Abfrage kann man Daten filtern (nirgends dokumentiert, funktioniert auch nicht immer)
      // https://xxx/api/v1/profiles.json?find[startDate][$gt]=2018-01-01T11:30:17.694Z
      url = urlData.fullUrl('profile.json', params: 'count=${maxCount}');
/*
      url = urlData.fullUrl('profiles.json',
          params: 'find[startDate][\$gte]=${begDate.year}-${begDate.month}-${begDate.day}T00:00:00.000Z'
              '&find[startDate][\$lte]=${endDate.year}-${endDate.month}-${endDate.day}T23:59:59.999Z'
              '&count=${maxCount}');
*/
      content = await g.requestJson(url);
      displayLink('profiles (${content?.length})', url, type: 'debug');

      try {
        g.basalPrecisionAuto = 0;
        List<dynamic> src = content;
        var uploaders = [];
        for (dynamic entry in src) {
          // don't add profiles that cannot be read
          try {
            var profile = ProfileData.fromJson(entry, isFromNS: true);
            data.profiles.add(profile);
            if (!uploaders.contains(profile.enteredBy)) uploaders.add(profile.enteredBy);
            // ignore: empty_catches
          } catch (ex) {}
          g.basalPrecisionAuto = math.max(g.basalPrecision, data.profiles.last.maxPrecision);
        }
        data.profiles.sort((a, b) => a.startDate.compareTo(b.startDate));

        var check = DateTime(begDate.year, begDate.month, begDate.day, 23, 59, 59, 999).toUtc().add(Duration(days: -1));
        if (src.length == maxCount && data.profiles.first.startDate.isAfter(check)) {
          g.info.addWarning(msgTooMuchProfiles(maxCount, uploaders.length, uploaders.join(', ')));
        }

        baseProfile = data.profiles.first;
//        display("${ret.begDate.toString()} - ${ret.endDate.toString()}");
      } catch (ex) {
        g.info.addDevError(ex, msgProfileError);
/*
          display(msgProfileError, links: [ {
            'url': 'https://github.com/zreptil/nightscout-reporter/issues/new?'
            'title=problem in profile-data&body=${msgProfileError}',
            'title': msgGitHubIssue
          }
          ]);
// */
      }

      var params = 'find[created_at][\$gte]=${begDate.year - 1}-01-01T00:00:00.000Z&find[eventType]=Profile Switch';
      if (g.ppFixAAPS30) {
        params +=
            '&find[profilePlugin][\$ne]=info.nightscout.androidaps.plugins.profile.local.LocalProfilePlugin&count=10000';
      }
      // find profileswitches in treatments, create profiledata and mix it in the profiles
      url = urlData.fullUrl('treatments.json', params: params);
      content = await g.requestJson(url);
      displayLink('profileswitch (${content?.length})', url, type: 'debug');
      if (content != null) {
        try {
          List<dynamic> src = content;
/*
        if (g.isLocal)src.add({
          "_id": "fake",
          "eventType": "Profile Switch",
          "duration": 86400,
          "profile": "Fake",
          "profileJson": '{"dia": "5","carbratio": [{"time": "00:00", "value": "0.1", "timeAsSeconds": "0"},'
          '{"time": "01:30", "value": "0.2", "timeAsSeconds": "5400"},'
          '{"time": "06:00", "value": "0.3", "timeAsSeconds": "21600"},'
          '{"time": "11:00", "value": "0.4", "timeAsSeconds": "39600"},'
          '{"time": "15:30", "value": "0.5", "timeAsSeconds": "55800"},'
          '{"time": "19:00", "value": "0.6", "timeAsSeconds": "68400"},'
          '{"time": "21:00", "value": "0.7", "timeAsSeconds": "75600"}],'
          '"carbs_hr": "0","delay": "20","sens": [{"time": "00:00", "value": "60", "timeAsSeconds": "0"},'
          '{"time": "01:30", "value": "40", "timeAsSeconds": "5400"},'
          '{"time": "06:00", "value": "30", "timeAsSeconds": "21600"},'
          '{"time": "11:00", "value": "40", "timeAsSeconds": "39600"},'
          '{"time": "15:30", "value": "50", "timeAsSeconds": "55800"},'
          '{"time": "19:00", "value": "60", "timeAsSeconds": "68400"},'
          '{"time": "21:00", "value": "90", "timeAsSeconds": "75600"}],'
          '"timezone": "Europe\\/Berlin","basal": [{"time": "00:00", "value": "0.1", "timeAsSeconds": "0"},'
          '{"time": "01:00", "value": "0.2", "timeAsSeconds": "3600"},'
          '{"time": "02:00", "value": "0.3", "timeAsSeconds": "7200"},'
          '{"time": "03:00", "value": "0.4", "timeAsSeconds": "10800"},'
          '{"time": "04:00", "value": "0.5", "timeAsSeconds": "14410"},'
          '{"time": "05:00", "value": "0.6", "timeAsSeconds": "18000"},'
          '{"time": "06:00", "value": "0.7", "timeAsSeconds": "21600"},'
          '{"time": "07:00", "value": "0.8", "timeAsSeconds": "25200"},'
          '{"time": "08:00", "value": "0.9", "timeAsSeconds": "28800"},'
          '{"time": "09:00", "value": "1.0", "timeAsSeconds": "32400"},'
          '{"time": "10:00", "value": "1.1", "timeAsSeconds": "36000"},'
          '{"time": "11:00", "value": "1.2", "timeAsSeconds": "39600"},'
          '{"time": "12:00", "value": "1.3", "timeAsSeconds": "43200"},'
          '{"time": "13:00", "value": "1.4", "timeAsSeconds": "46800"},'
          '{"time": "14:00", "value": "1.5", "timeAsSeconds": "50400"},'
          '{"time": "15:00", "value": "1.6", "timeAsSeconds": "54000"},'
          '{"time": "16:00", "value": "1.7", "timeAsSeconds": "57600"},'
          '{"time": "17:00", "value": "1.8", "timeAsSeconds": "61200"},'
          '{"time": "18:00", "value": "1.9", "timeAsSeconds": "64800"},'
          '{"time": "19:00", "value": "2.0", "timeAsSeconds": "68400"},'
          '{"time": "20:00", "value": "2.1", "timeAsSeconds": "72000"},'
          '{"time": "21:00", "value": "2.2", "timeAsSeconds": "75600"},'
          '{"time": "22:00", "value": "2.3", "timeAsSeconds": "79200"},'
          '{"time": "23:00", "value": "2.4", "timeAsSeconds": "82800"}],'
          '"target_low": [{"time": "00:00", "value": "100", "timeAsSeconds": "0"},'
          '{"time": "06:00", "value": "110"},{"time": "20:00", "value": "100"}],'
          '"target_high": [{"time": "00:00", "value": "100", "timeAsSeconds": "0"},'
          '{"time": "06:00", "value": "110"},{"time": "20:00", "value": "100"}],'
          '"startDate": "1970-01-01T00:00:00.000Z","units": "mg/dl"}',
          "profilePlugin": "info.nightscout.androidaps.plugins.ProfileNS.NSProfilePlugin",
          "created_at": "2019-03-04T10:00:00Z",
          "enteredBy": "Nightscout Reporter",
          "NSCLIENT_ID": 12345,
          "carbs": null,
          "insulin": null
        });
 // */
          for (dynamic entry in src) {
            var check = JsonData.toDate(entry['created_at']);
            if (data.profiles.firstWhere((p) => p.createdAt == check, orElse: () => null) != null ||
                entry['profile'] == null) continue;
            var parts = <String>[];
            parts.add('{"_id":"${entry["_id"]}","defaultProfile":"${entry["profile"]}"');
            // some uploaders (e.g. Minimed 600-series) don't save profileJson, so we need
            // to find it here
            ProfileStoreData store;
            if (entry['profileJson'] == null) {
              String key = entry['profile'];
              var prof = data.profiles
                  .lastWhere((p) => p.startDate.isBefore(check) && p.store.containsKey(key), orElse: () => null);
              if (prof != null) {
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
            if (store != null) data.profiles.last.store[entry['profile']] = store;
          }
        } catch (ex) {
          g.info.addDevError(ex, msgProfileError);
        }
      }
    }
    data.profiles.sort((a, b) => a.startDate.compareTo(b.startDate));

    // calculate the duration of the profiles
    var i = 1;
    while (i < data.profiles.length) {
      var last = data.profiles[i - 1];
      var current = data.profiles[i];
      var duration = current.startDate.difference(last.startDate).inSeconds;
      if (last.duration >= duration || last.duration == 0) {
        last.duration = duration;
      } else {
        var temp = baseProfile.copy;
        temp.startDate = last.startDate.add(Duration(seconds: last.duration));
        temp.createdAt = temp.startDate;
        temp.duration = current.startDate.difference(temp.startDate).inSeconds;
        data.profiles.insert(i, temp);
        i++;
      }
      if (current.isFromNS) baseProfile = current;
      i++;
    }

    if (baseProfile != null && data.profiles.last.duration > 0) {
//    if (last.duration > 0 && data.profiles.length > 1) {
      var temp = baseProfile.copy;
      temp.startDate = data.profiles.last.startDate.add(Duration(seconds: data.profiles.last.duration));
      temp.createdAt = temp.startDate;
      data.profiles.add(temp);
    }

    if (data.profiles.isEmpty) {
      data.profiles.add(ProfileData());
    }

    var d = DateTime.now().difference(data.profiles.last.startDate ?? DateTime.now()).inSeconds;
    data.profiles.last.duration = d;

    data.profiles.sort((a, b) => a.startDate.compareTo(b.startDate));
/*
    String text = "";
    for (ProfileData p in data.profiles)
      text = "${text}<div>${p.startDate}(${p.duration} min)=${p.current?.name}</div>";
    message.dbgText = text;
*/
    // remove all profiles with a length of 0
    data.profiles.removeWhere((p) => p.duration < 2 && p != data.profiles.last && !p.store.containsKey('NR Profil'));

    // add the previous day of the period to have the daydata available in forms that need this information
    begDate = begDate.add(days: -1);
    data.dayCount = -1;
    while (begDate <= endDate) {
      var hasData = false;
      if (g.period.isDowActive(begDate.weekday - 1)) {
        var beg = DateTime(begDate.year, begDate.month, begDate.day, 0, 0, 0, 0).toUtc();
        var end = DateTime(begDate.year, begDate.month, begDate.day, 23, 59, 59, 999).toUtc();

        var profile = data.profile(beg);
        var profileBeg = beg.add(Duration(hours: -profile.store.timezone.localDiff));
        var profileEnd = end.add(Duration(hours: -profile.store.timezone.localDiff));

        progressText = msgLoadingDataFor(begDate.format(DateFormat(g.language.dateFormat)));
        var url = g.user.apiUrl(Date(begDate.year, begDate.month, begDate.day), 'entries.json',
            params: 'find[date][\$gte]=${beg.millisecondsSinceEpoch}&'
                'find[date][\$lte]=${end.millisecondsSinceEpoch}&count=100000');
        List<dynamic> src = await g.requestJson(url);
        if (src != null) {
          displayLink('e${begDate.format(g.fmtDateForDisplay)} (${src.length})', url, type: 'debug');
          for (dynamic entry in src) {
            try {
              var e = EntryData.fromJson(entry);
              if (e.gluc > 0) {
                hasData = true;
                data.ns.entries.add(e);
              }
              if (e.mbg > 0) {
                hasData = true;
                data.ns.bloody.add(e);
              } else if (e.gluc <= 0) {
                hasData = true;
                data.ns.remaining.add(e);
              }
            } catch (ex) {
              if (g.isDebug) g.info.addDevError(ex, 'Fehler im Entry-Datensatz: ${entry.toString()}');
              break;
            }
          }
        }
        String tmp;
        if (data.lastTempBasal == null) {
          // find last temp basal of treatments of day before current day.
          url = data.user.apiUrl(Date(begDate.year, begDate.month, begDate.day), 'treatments.json',
              params: 'find[created_at][\$lt]=${profileBeg.toIso8601String()}&'
                  'find[created_at][\$gt]=${profileBeg.add(Duration(days: -1)).toIso8601String()}&'
                  'count=100&find[eventType][\$eq]=Temp%20Basal');
          src = await g.requestJson(url);
          if (src != null) {
            var list = <TreatmentData>[];
            for (dynamic treatment in src) {
              list.add(TreatmentData.fromJson(g, treatment));
            }
            list.sort((a, b) => a.createdAt.compareTo(b.createdAt));
            if (list.isNotEmpty) data.lastTempBasal = list.last;
          }
        }

        url = data.user.apiUrl(Date(begDate.year, begDate.month, begDate.day), 'treatments.json',
            params: 'find[created_at][\$gte]=${profileBeg.toIso8601String()}&'
                'find[created_at][\$lte]=${profileEnd.toIso8601String()}&count=100000');
        src = await g.requestJson(url);
        var hasExercise = false;
        if (src != null) {
          displayLink('t${begDate.format(g.fmtDateForDisplay)} (${src.length})', url, type: 'debug');
          for (dynamic treatment in src) {
            hasData = true;
            var t = TreatmentData.fromJson(g, treatment);
            // Treatments entered by sync are ignored
            if (t.enteredBy == 'sync') {
            } else if (data.ns.treatments.isNotEmpty && t.equals(data.ns.treatments.last)) {
              // duplicate Treatments are removed
              data.ns.treatments.last.duplicates++;
            } else {
              data.ns.treatments.add(t);
              if (t.isExercise) {
                hasExercise = true;
              } else if (t.isBGCheck) {
                var entry = EntryData();
                entry.id = t.id;
                entry.time = t.createdAt;
                entry.device = t.enteredBy;
                entry.type = 'mbg';
                entry.mbg = t.glucose * g.glucFactor;
                entry.rawbg = t.glucose;
                data.ns.bloody.add(entry);
              }
            }
          }
        }
        // the following code inserts an exercise in the data if there is none present
/*
        if (g.isLocal && !hasExercise) {
          var t = TreatmentData();
          t.createdAt =
              DateTime(begDate.year, begDate.month, begDate.day, 10, 0, 0);
          t.duration = 120 * 60;
          t.eventType = 'exercise';
          t.notes = 'Bewegung (Testeintrag)';
          t.enteredBy = 'NR-Test';
          t.microbolus = 0;
          t.insulin = 0;
          t.microbolus = 0;
          t.isSMB = false;
          data.ns.treatments.add(t);
        }
// */
        url = data.user.apiUrl(Date(profileBeg.year, profileBeg.month, profileBeg.day), 'devicestatus.json',
            params: 'find[created_at][\$gte]=${profileBeg.toIso8601String()}&'
                'find[created_at][\$lte]=${profileEnd.toIso8601String()}&count=100000');
        src = await g.requestJson(url);
        if (src != null) {
          displayLink('ds${begDate.format(g.fmtDateForDisplay)} (${src.length})', url, type: 'debug');
          for (dynamic devicestatus in src) {
            hasData = true;
            var ds = DeviceStatusData.fromJson(devicestatus);
            data.ns.devicestatusList.add(ds);
          }
        }

        url = data.user.apiUrl(Date(begDate.year, begDate.month, begDate.day), 'activity.json',
            params: 'find[created_at][\$gte]=${profileBeg.toIso8601String()}&'
                'find[created_at][\$lte]=${profileEnd.toIso8601String()}&count=100000');
        src = await g.requestJson(url);
        if (src != null) {
          displayLink('ac${begDate.format(g.fmtDateForDisplay)} (${src.length})', url, type: 'debug');
          for (dynamic activity in src) {
            var value = ActivityData.fromJson(activity);
            var exists = false;
            for (var check in data.ns.activityList) {
              if (check.equals(value)) exists = true;
            }
            if (!exists) {
              data.ns.activityList.add(value);
              // if(value.type == 'steps-total') {
              //   print('${begDate} ${value.createdAt.hour}:${value.createdAt.minute} - ${value.steps}');
              // }
            }
          }
        }
      }
      begDate = begDate.add(days: 1);
      if (hasData) data.dayCount++;
      progressValue++;
      if (sendIcon != 'stop') return data;
    }

    if (sendIcon == 'stop') {
      progressText = msgPreparingData;
      progressValue = progressMax + 1;

      data.ns.entries.sort((a, b) => a.time.compareTo(b.time));
      data.ns.bloody.sort((a, b) => a.time.compareTo(b.time));
      data.ns.remaining.sort((a, b) => a.time.compareTo(b.time));
      data.ns.treatments.sort((a, b) => a.createdAt.compareTo(b.createdAt));
      data.ns.devicestatusList.sort((a, b) => a.createdAt.compareTo(b.createdAt));
      data.ns.activityList.sort((a, b) => a.createdAt.compareTo(b.createdAt));

      var diffTime = 5;
      // gaps between entries that span more than the given minutes
      // are not filled with entries
      var minGapKeep = 16;
//*
      // Create an array with EntryData every [diffTime] minutes
      var entryList = <EntryData>[];
      if (data.ns.entries.isNotEmpty) {
        var target =
            DateTime(data.ns.entries.first.time.year, data.ns.entries.first.time.month, data.ns.entries.first.time.day);
        var prev = data.ns.entries.first;
        var t = DateTime(prev.time.year, prev.time.month, prev.time.day);
        prev = EntryData();
        prev.time = t;
        var next = EntryData();
        next.time = target;
        // distribute entries
        for (var entry in data.ns.entries) {
          if (entry.isInvalid) continue;
          var current = DateTime(entry.time.year, entry.time.month, entry.time.day, entry.time.hour, entry.time.minute);
          if (current.isAtSameMomentAs(target)) {
            prev = entry;
            prev.time = current;
            entry.isCopy = true;
            entryList.add(entry);
            target = target.add(Duration(minutes: diffTime));
          } else if (current.isBefore(target)) {
            next.slice(entry, next, 0.5);
          } else {
            next = entry.copy;
            var max = current.difference(prev.time).inMinutes;
            while (current.isAfter(target) || current.isAtSameMomentAs(target)) {
              var factor = max == 0 ? 0 : target.difference(prev.time).inMinutes / max;
              next = next.copy;
              if (max >= minGapKeep) next.isGap = true;
              next.time = target;
              if (current.isAtSameMomentAs(target)) {
                next.isCopy = true;
                next.slice(entry, entry, 1.0);
              } else {
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

      // data.ns.treatments.removeWhere((t) => filterTreatment(t));
      data.calc.treatments = data.ns.treatments;
      data.calc.devicestatusList = data.ns.devicestatusList;
      data.calc.activityList = data.ns.activityList;

      data.calc.extractData(data);
      data.ns.extractData(data);
    } else {}

    return data;
  }

  // bool filterTreatment(TreatmentData t) {
  //   if (t.enteredBy.toLowerCase() == 'sync') return true;
  //
  //   return false;
  // }

  void cancelProgress() {
    sendIcon = 'send';
  }

  void sendClick() {
    drawerVisible = false;
    switch (sendIcon) {
      case 'send':
        currPage = 'printparams';
        break;
      case 'close':
        sendIcon = 'send';
        currPage = 'normal';
        break;
    }
  }

  void shiftClick(PeriodShift shift) {
    g.currPeriodShift = shift;
    _sendClick();
  }

  void _sendClick() {
    tileParams = null;
    if (sendIcon == 'send') {
      sendIcon = 'stop';
      drawerVisible = false;
      createPDF();
    } else if (sendIcon == 'close') {
      sendIcon = 'send';
      currPage = 'normal';
    } else {
      sendIcon = 'send';
    }
  }

  String classForView(String def) {
    if (def == 'sendPanel' && progressText != null) return def;
    switch (g.viewType) {
      case 'tile':
        def = '${def} is-tileview';
        break;
    }

    return def;
  }

  String userClass(UserData user) {
    var ret = 'selectItem';
    if (!user.isReachable) ret = '$ret unreachable';
    return ret;
  }

  int checkedIndex(cfg) {
    var ret = 0;
    for (var check in g.listConfig) {
      if (check.form.isDebugOnly && !g.isDebug) continue;
      if (check.form.isLocalOnly && !g.isLocal) continue;
      if (check.checked) ret++;
      if (check == cfg) return ret;
    }
    return ret;
  }

  void showTileParams(cfg, evt) {
    evt.preventDefault();
    tileParams == null ? tileParams = cfg : tileParams = null;
  }

  void changeView() {
    switch (g.viewType) {
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

  void createPDF({bool isForThumbs = false}) {
    g.save(skipReload: isForThumbs);
    display('');
    pdfList.clear();
    progressMax = 1;
    progressValue = 0;
    progressText = msgPreparingPDF;
    loadData(isForThumbs).then((ReportData src) async {
      g.isCreatingPDF = true;
      try {
        progressText = msgCreatingPDF;
        if (src.error != null) {
          if (g.isDebug) {
            g.info.addError(msgLoadingData(src.error.toString(), src.error.stackTrace.toString()));
          } else {
            g.info.addError(msgLoadingDataError);
          }
          g.isCreatingPDF = false;
          return;
        }
        if (sendIcon == 'send') {
          progressText = null;
          reportData = null;
          g.isCreatingPDF = false;
          return;
        }
        progressValue = progressMax + 1;
        var doc;
        var docList = <dynamic>[];
        var docLen = 0;
        Page prevPage;
        var listConfig = <FormConfig>[];
        if (isForThumbs) {
          for (var cfg in g.listConfigOrg) {
            listConfig.add(cfg);
            switch (cfg.id) {
              case 'cgp':
                cfg = FormConfig(PrintCGP(), false);
                cfg.form.params[0].thumbValue = 1;
                listConfig.add(cfg);
                break;
              case 'dayanalysis':
                cfg = FormConfig(PrintDailyAnalysis(), false);
                cfg.form.params[2].thumbValue = 1;
                listConfig.add(cfg);
                break;
              case 'percentile':
                cfg = FormConfig(PrintPercentile(), false);
                cfg.form.params[0].thumbValue = 0;
                cfg.form.params[2].thumbValue = true;
                listConfig.add(cfg);
                break;
            }
          }
        } else {
          listConfig = g.listConfig;
        }
        for (var cfg in listConfig) {
          var form = cfg.form;
          if (checkCfg(cfg) || isForThumbs) {
            docLen = json.encode(doc).length;
            var gmiSave = g.glucMGDLIdx;
            if (isForThumbs) {
              g.glucMGDLIdx = 0;
            }
            var formPages = await form.getFormPages(src, docLen);
            g.glucMGDLIdx = gmiSave;
            var fileList = <List<Page>>[<Page>[]];
            for (var page in formPages) {
              dynamic entry = page.content.last;
              if (entry['pageBreak'] == 'newFile' && fileList.last.isNotEmpty) {
                entry.remove('pageBreak');
                fileList.last.add(page);
                fileList.add(<Page>[]);
              } else {
                if (entry['pageBreak'] == 'newFile') entry.remove('pageBreak'); //entry["pageBreak"] = "after";
                fileList.last.add(page);
              }
            }

            if (isForThumbs && fileList.length > 1) {
              fileList.removeRange(1, fileList.length - 1);
              if (fileList[0].length > 1) fileList[0].removeRange(1, fileList[0].length - 1);
            }

            for (var pageList in fileList) {
              dynamic content = [];

              for (var page in pageList) {
                if (prevPage != null) {
                  var pagebreak = {'text': '', 'pageBreak': 'after'};
                  if (page.isPortrait != prevPage.isPortrait) {
                    pagebreak['pageSize'] = 'a4';
                    pagebreak['pageOrientation'] = page.isPortrait ? 'portrait' : 'landscape';
                  }
                  content.add(pagebreak);
                }
                content.add(page.asElement);
                prevPage = page;
              }
              if (doc == null) {
                doc = {
                  'pageSize': 'a4',
                  'pageOrientation': pageList.isEmpty || pageList[0].isPortrait ? 'portrait' : 'landscape',
                  'pageMargins': [form.cm(0), form.cm(1.0), form.cm(0), form.cm(0.0)],
                  'content': content,
                  'images': form.images,
                  'styles': {
                    'infoline': {
                      'margin': [form.cm(0), form.cm(0.25), form.cm(0), form.cm(0.25)]
                    },
                    'perstitle': {'alignment': 'right'},
                    'persdata': {'color': '#0000ff'},
                    'infotitle': {'alignment': 'left'},
                    'infodata': {'alignment': 'right', 'color': '#0000ff'},
                    'infounit': {
                      'margin': [form.cm(0), form.cm(0), form.cm(0), form.cm(0)],
                      'color': '#0000ff'
                    },
                    'hba1c': {'color': '#5050ff'},
                    'total': {'bold': true, 'fillColor': '#d0d0d0', 'margin': form.m0},
                    'timeDay': {'bold': true, 'fillColor': '#d0d0d0', 'margin': form.m0},
                    'timeNight': {'bold': true, 'fillColor': '#303030', 'color': 'white', 'margin': form.m0},
                    'timeLate': {'bold': true, 'fillColor': '#a0a0a0', 'margin': form.m0},
                    'row': {}
                  }
                };
              } else {
                doc['content'].add(content);
                for (var key in form.images.keys) {
                  (doc['images'] as Map<String, String>)[key] = form.images[key];
                }
              }

              if (pageList != fileList.last) {
                docList.add(doc);
                doc = null;
                prevPage = null;
              }
            }
          }
//        if (g.isLocal && data != fileList.last)doc = null;
//        prevForm = form;
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
        if (doc != null) docList.add(doc);

        if (docList.length > 1) {
          pdfList.clear();
          pdfDoc = null;

          for (var doc in docList) {
            var dst = jsonEncode(doc);
            if (g.isDebug) {
              pdfUrl = 'http://pdf.zreptil.de/playground.php';
              dst = dst.replaceAll('],', '],\n');
              dst = dst.replaceAll(',\"', ',\n\"');
              dst = dst.replaceAll(':[', ':\n[');
            } else {
              pdfUrl = 'https://nightscout-reporter.zreptil.de/pdfmake/pdfmake.php';
            }
            pdfList.add(PdfData(pdfString(dst)));
          }

          currPage = 'pdfList';
          sendIcon = 'close';
          progressText = null;
          return;
        } else {
          pdfDoc = jsonEncode(docList[0]);
        }

        if (!g.isDebug) {
          if (g.msg.text.isEmpty) {
            if (isForThumbs) {
              navigate('makePdfImages');
            } else {
              navigate('showPdf');
            }
          } else {
            displayLink(msgShowPDF, 'showPdf', btnClass: 'action', icon: 'description');
          }
        } else {
          displayLink('playground', 'showPlayground', btnClass: 'action', icon: 'description');
          displayLink('pdf', 'showPdf', btnClass: 'action', icon: 'description');
        }
// */
        sendIcon = 'send';
        progressText = null;
      } finally {
        g.isCreatingPDF = false;
      }
    }).catchError((error) {
      g.info.addDevError(error, msgPDFCreationError);
      sendIcon = 'send';
      progressText = null;
      return -1;
    });
  }

  String tileClass(FormConfig cfg) {
    var ret = 'tile sortable';
    if (cfg.form.isDebugOnly && g.isDebug) ret = '${ret} is-debug';
    if (cfg.checked && tileParams == null) ret = '${ret} tilechecked';
    if (cfg.form.isLocalOnly || (cfg.form.isBetaOrLocal && g.isLocal)) ret = '${ret} is-local';
    if (cfg.form.isBetaOrLocal) ret = '${ret} is-beta';
    return ret;
  }

  String expansionClass(FormConfig cfg) {
    var ret = 'paramPanel';
    if (cfg.form.isDebugOnly && g.isDebug) ret = '${ret} is-debug';
    if (cfg.checked) ret = '${ret} checked';
    if (cfg.form.isLocalOnly) ret = '${ret} is-local';
    if (cfg.form.isBetaOrLocal) ret = '${ret} is-beta';
    return ret;
  }

  void expansionPanelOpen(evt, FormConfig cfg) {
    cfg.opened = true;
  }

  void expansionPanelClose(evt, FormConfig cfg) {
    cfg.checked = !cfg.checked;
    cfg.opened = false;
  }

  String themeStyle = 'width:0em;';
  String logoStyle = '';
  bool themePanelShown = false;

  void toggleThemePanel(String themeKey) {
    var ts = '';
    var ls = '';
    var duration = 1;
    if (themePanelShown) {
      themeStyle = 'animation:hidethemes ${duration}s ease-in-out normal forwards;';
      logoStyle = 'animation:hidethemeslogo ${duration}s ease-in-out normal forwards;';
      ts = 'animation-iteration-count:0;width:0em;';
      ls = 'animation-iteration-count:0;transform: rotate(0deg);';
    } else {
      themeStyle = 'animation:showthemes ${duration}s ease-in-out normal forwards;';
      logoStyle = 'animation:showthemeslogo ${duration}s ease-in-out normal forwards;';
      ts = 'animation-iteration-count:0;width:15em;';
      ls = 'animation-iteration-count:0;transform: rotate(360deg);';
    }
    Future.delayed(Duration(milliseconds: (duration * 1100).toInt()), () {
      themeStyle = ts;
      logoStyle = ls;
      if (themeKey != '') {
        g.theme = themeKey;
        g.setTheme(g.theme);
      }
    });
    themePanelShown = !themePanelShown;
  }

  int menuIdx = 0;

  String shortcutClass(ShortcutData data) {
    var ret = 'shortcut';
    if (data.isActive) ret += ' active';
    return ret;
  }

  void editShortcut(int shortcutIdx) {
    g.currShortcutIdx = shortcutIdx;
    if (shortcutIdx >= 0 && shortcutIdx < g.shortcutList.length) {
      g.currShortcut = g.shortcutList[shortcutIdx].copy;
    } else {
      g.currShortcut = ShortcutData(g);
    }
    currPage = 'shortcutedit';
  }

  void activateUser(int idx) {
    g.userIdx = idx;
    reportData = null;
    g.save();
    g.getCurrentGluc();
    checkPrint();
    g.refresh();
  }

  void activateShortcut([int shortcutIdx]) {
    if (shortcutIdx != null) {
      var data = g.shortcutList[shortcutIdx];
      g.fillFormsFromShortcut(data);
      checkPrint();
      g.refresh();
    }
  }

  void shortcuteditResult(html.UIEvent evt) {
    switch (evt.type) {
      case 'ok':
        _currPage = _lastPage;
        g.saveShortcuts();
        break;
      case 'remove':
        _currPage = _lastPage;
        if (g.currShortcutIdx >= 0 && g.currShortcutIdx < g.shortcutList.length) {
          g.shortcutList.removeAt(g.currShortcutIdx);
          g.currShortcutIdx = null;
          g.currShortcut = null;
          g.saveShortcuts();
        }
        break;
      case 'cancel':
        _currPage = _lastPage;
        g.currShortcut = null;
        break;
      default:
        _currPage = g.isConfigured ? _lastPage : 'welcome';
        break;
    }
    g.getCurrentGluc();
  }

  void expansionPanelClicked(evt, FormConfig cfg) {
    if (!cfg.opened) {
      if (evt.currentTarget.attributes['dontclick'] == 'true') {
        evt.currentTarget.removeAttribute('dontclick');
        return;
      }
      cfg.checked = !cfg.checked;
      checkPrint();
    }
  }

  void signinEvent(SigninEvent e) {
    switch (e.status) {
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
        g.info.addError(e.message);
//        _currPage = "normal";
        break;
      default:
        g.msg.text = '${g.msg.text} - ${e.message}';
        break;
    }
  }

  int thumbLangIdx = -1;
  LangData thumbLangSave;

  void createThumbs() async {
    sendIcon = 'stop';
    drawerVisible = false;
    if (thumbLangSave == null && g.language.img != 'de') {
      thumbLangIdx = g.languageList.length;
      thumbLangSave = g.language;
    } else {
      thumbLangSave ??= g.language;
      thumbLangIdx++;
      await g.setLanguage(g.languageList[thumbLangIdx]);
    }
    createPDF(isForThumbs: true);
  }

  bool allParams = false;

  void checkAllParams() {
    for (var param in tileParams.form.params) {
      param.boolValue = allParams;
    }
  }
}

class TileAvatarHandler extends AvatarHandler {
  TileAvatarHandler();

  @override
  void dragStart(html.Element draggable, html.Point startPosition) {
    avatar = draggable.clone(true);
    avatar.className = '${avatar.className} dragtile';
    var pt = html.Point(draggable.offsetLeft, draggable.offsetTop);
    var parent = draggable.offsetParent;
    while (parent != null) {
      pt = html.Point(pt.x + parent.offsetLeft, pt.y + parent.offsetTop);
      parent = parent.offsetParent;
    }
    avatar.style
      ..width = '${draggable.clientWidth}px'
      ..height = '${draggable.clientHeight}px'
      ..left = '${pt.x}px'
      ..top = '${pt.y}px';

    html.document.body.querySelector('my-nr-main').style.overflow = 'hidden';

    setLeftTop(pt);

    avatar.style.position = 'absolute';
    html.document.body.querySelector('my-nr-main').append(avatar);
  }

  @override
  void drag(html.Point startPosition, html.Point position) {
    setTranslate(position - startPosition);
  }

  @override
  void dragEnd(html.Point startPosition, html.Point position) {
    avatar.remove();
  }
}
