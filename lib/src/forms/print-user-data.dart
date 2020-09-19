import 'package:intl/intl.dart';

import '../globals.dart';
import 'base-print.dart';

class PrintUserData extends BasePrint {
  @override
  DataNeeded needed = DataNeeded(statusCurr: true, statusAny: true, dataCurr: false, dataAny: false);

  @override
  bool isLocalOnly = true;

  @override
  String id = 'userdata';

  @override
  String idx = '14';

  final _title = Intl.message('Benutzerdaten');

//  @override
//  String get title => Intl.message("Benutzerdaten");

  @override
  List<ParamInfo> params = [ParamInfo(0, msgParam1, boolValue: true)];

  @override
  bool get isPortrait => true;

  static String get msgNoData => Intl.message('Es sind keine Daten vorhanden.');

  static String get msgParam1 => Intl.message('Alle Benutzer ausgeben');

  PrintUserData() {
    title = _title;
    init();
  }

  @override
  void extractParams() {
    needed.status.anybody = params[0].boolValue;
  }

  @override
  dynamic get estimatePageCount {
    var count = needed.status.anybody ? g?.userList?.length ?? 0 : 1;
    return {'count': count, 'isEstimated': false};
  }

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
      pages.add(getEmptyForm(isPortrait, user.status?.status ?? '401'));
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
          'widths': [cm(2.5), cm(width - 2.5 - 2 * xframe)],
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

    table.add([
      {'text': 'Name', 'fontSize': fs(12)},
      {'text': '${user.status.name}', 'fontSize': fs(10)}
    ]);
    table.add([
      {'text': 'Version', 'fontSize': fs(12)},
      {'text': '${user.status.version}', 'fontSize': fs(10)}
    ]);
    table.add([
      {'text': 'Einheiten', 'fontSize': fs(12)},
      {'text': '${user.status.settings.units}', 'fontSize': fs(10)}
    ]);
    table.add([
      {'text': 'Enabled', 'fontSize': fs(12)},
      {'text': '${user.status.settings.enable}', 'fontSize': fs(10)}
    ]);
    table.add([
      {'text': 'Eigene Grenzwerte', 'fontSize': fs(12)},
      {
        'text':
            '${g.glucFromData(user.status.settings.thresholds?.bgTargetBottom ?? 0)} ${user.status.settings.units} - '
                '${g.glucFromData(user.status.settings.thresholds?.bgTargetTop ?? 0)} ${user.status.settings.units}',
        'fontSize': fs(10),
        'margin': [cm(0), cm(0.3), cm(0), cm(0)]
      }
    ]);

    pages.add(Page(isPortrait, ret));
  }
}
