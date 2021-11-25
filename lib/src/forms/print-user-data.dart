import 'dart:convert' as convert;

import 'package:angular_components/model/date/date.dart';
import 'package:intl/intl.dart';

import '../globals.dart';
import 'base-print.dart';

class PrintUserData extends BasePrint {
  @override
  DataNeeded needed = DataNeeded(
      statusCurr: true, statusAny: true, dataCurr: false, dataAny: true);

  @override
  bool isLocalOnly = true;

  @override
  String baseId = 'userdata';

  @override
  String baseIdx = '14';

  final _title = Intl.message('Benutzerdaten');

//  @override
//  String get title => Intl.message("Benutzerdaten");

  @override
  List<ParamInfo> params = [ParamInfo(0, msgParam1, boolValue: true)];

  @override
  bool get isPortrait => true;

  static String get msgNoData => Intl.message('Es sind keine Daten vorhanden.');

  static String get msgParam1 => Intl.message('Alle Benutzer ausgeben');

  PrintUserData({suffix = null}) {
    title = _title;
    init(suffix);
  }

  @override
  void extractParams() {
    needed.status.anybody = params[0].boolValue;
    needed.data.anybody = params[0].boolValue;
  }

  @override
  dynamic get estimatePageCount {
    var count = needed.status.anybody ? g?.userList?.length ?? 0 : 1;
    return {'count': count, 'isEstimated': false};
  }

  static String msgName = Intl.message('Name');
  static String msgVersion = Intl.message('Version');
  static String msgUnits = Intl.message('Einheiten');
  static String msgLastGluc = Intl.message('Letzter Glukosewert');
  static String msgLastTreatment = Intl.message('Letzter Behandlungswert');

  @override
  void fillPages(List<Page> pages) {
    if (repData.isForThumbs) {
      getPage(repData.user, pages);
      return;
    }

    for (var user in g.userList) {
      if (needed.status.anybody || user == g.user) {
        getPage(user, pages);
      }
    }
    title = _title;
  }

  void getPage(UserData user, List<Page> pages) {
    title = user.name;
    subtitle = '';
    var pos = title.indexOf('(');
    if (pos > 0) {
      subtitle = title.substring(pos + 1, title.length - 1);
      title = title.substring(0, pos - 1);
    }
    titleInfo = user.apiUrl(null, '', noApi: true);

    if (!user.isReachable || (user.status?.status ?? '401') == '401') {
      pages.add(getEmptyForm(isPortrait, user.status?.status ?? '401',
          skipFooter: true));
      return;
    }

    var table = [];

    var x = xframe;
    var y = yorg - 0.5;
    var ret = [
      headerFooter(skipFooter: true),
      {
        'absolutePosition': {'x': cm(x), 'y': cm(y)},
        'layout': 'noBorders',
        'table': {
          'widths': [cm(3.0), cm(width - 3.0 - 2 * xframe)],
          'body': table
        }
      }
    ];

    if (user.status == null) {
      table.add([
        {'text': msgNoData, 'colSpan': '2', 'color': 'red'}
      ]);
      pages.add(Page(isPortrait, ret));
      return;
    }

    var fsTitle = fs(8);
    var fsData = fs(10);

    String txtLastGluc = '${repData.data.entries.length}';
    String txtLastTreatment = '${repData.data.treatments.length}';

    table.add([
      {'text': msgName, 'fontSize': fsTitle},
      {'text': '${user.status.name}', 'fontSize': fsData}
    ]);
    table.add([
      {'text': msgVersion, 'fontSize': fsTitle},
      {'text': '${user.status.version}', 'fontSize': fsData}
    ]);
    var units =
        g.isMGDL(user.status) ? Settings.msgUnitMGDL : Settings.msgUnitMMOL;
    table.add([
      {'text': msgUnits, 'fontSize': fsTitle},
      {'text': units, 'fontSize': fsData}
    ]);
    table.add([
      {'text': 'Enabled', 'fontSize': fsTitle},
      {'text': '${user.status.settings.enable}', 'fontSize': fsData}
    ]);
    table.add([
      {'text': msgOwnLimits, 'fontSize': fsTitle},
      {
        'text': '${glucFromData(user, user.status.settings.thresholds?.bgTargetBottom ?? 0)} ${units} - '
            '${glucFromData(user, user.status.settings.thresholds?.bgTargetTop ?? 0)} ${units}',
        'fontSize': fsData
      }
    ]);
    table.add([
      {'text': msgLastGluc, 'fontSize': fsTitle},
      {'text': txtLastGluc, 'fontSize': fsData}
    ]);
    table.add([
      {'text': msgLastTreatment, 'fontSize': fsTitle},
      {'text': txtLastTreatment, 'fontSize': fsData}
    ]);

    pages.add(Page(isPortrait, ret));
  }

  String glucFromData(UserData user, double value) {
    if (!g.isMGDL(user.status)) {
      return g.fmtNumber(value / 18.02, 1);
    }
    return g.fmtNumber(value, 0);
  }

  Future<void> loadUserData(UserData user) {
    dynamic lastEntry = null;
    for (var url in user.listApiUrl) {
      dynamic check = calculateFirstDay(url, 'entries');
      if (check != null) {
        if (lastEntry == null) lastEntry = check;
      }
    }
    print('lastEntry');
    print(convert.jsonDecode(lastEntry));
  }

  Future<dynamic> calculateFirstDay(UrlData urlData, String type) async {
    var done = false;
    var calcDate = urlData.startDate;
    var diff = 256;
    done = false;
    var ret = null;
    while (!done) {
      var check =
          DateTime(calcDate.year, calcDate.month, calcDate.day, 23, 59, 59, 999)
              .toUtc();
      var url = urlData.fullUrl('${type}.json',
          params: 'find[date]'
              '[\$gte]=${check.millisecondsSinceEpoch}&count=2');
      var content = await g.request(url);
      try {
        dynamic json = convert.json.decode(content);
        if (diff > 1) {
          if (json.length < 1) {
            diff = -diff ~/ 2;
          }
        } else if (diff < -1) {
          if (json.length > 0) {
            diff = -diff ~/ 2;
          }
        } else {
          done = true;
          if (calcDate.isOnOrAfter(Date.today().add(days: -1))) {
            calcDate = Date.today();
          } else if (json.length < 1) {
            calcDate = calcDate.add(days: -diff);
          }
        }
        ret = json;
      } catch (ex) {
        done = true;
      }

      if (!done) calcDate = calcDate.add(days: diff);
    }
/*
    if (calcDate.isOnOrAfter(Date.today())) {
      urlData.endDate = null;
    } else {
      urlData.endDate = calcDate;
    }
*/
    return ret;
  }
}
