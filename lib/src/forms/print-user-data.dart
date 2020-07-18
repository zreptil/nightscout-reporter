import 'dart:math' as math;

import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/jsonData.dart';

import '../globals.dart';
import 'base-print.dart';

class PrintUserData extends BasePrint {
  @override
  bool needsUserData = true;

  @override
  bool isLocalOnly = true;

  @override
  String id = "userdata";

  @override
  String idx = "14";

//  @override
//  String get title => Intl.message("Benutzerdaten");

  @override
  List<ParamInfo> params = [];

  @override
  bool get isPortrait => true;

  static String get msgNoData => Intl.message("Es sind keine Daten vorhanden.");

  PrintDailyProfile() {
    init();
  }

  @override
  extractParams() {}

  @override
  dynamic get estimatePageCount {
    int count = g?.userList?.length;
    return {"count": count, "isEstimated": false};
  }

  @override
  void fillPages(List<Page> pages) {
    if (repData.isForThumbs)
    {
      getPage(repData.user, pages);
      return;
    }
    for (UserData user in g.userList) {
      getPage(user, pages);
    }
  }

  void getPage(UserData user, List<Page> pages) {
    title = user.name;
    subtitle = "";
    int pos = title.indexOf("(");
    if (pos > 0) {
      subtitle = title.substring(pos + 1, title.length - 1);
      title = title.substring(0, pos - 1);
    }
    titleInfo = user.apiUrl(null, "", noApi: true);
    var table = [];

    double x = xframe;
    double y = yorg - 0.5;
    var ret = [
      headerFooter(skipFooter: true),
      {
        "absolutePosition": {"x": cm(x), "y": cm(y)},
        "layout": "noBorders",
        "table": {
          "widths": [cm(2.5), cm(width - 2.5 - 2 * xframe)],
          "body": table
        }
      }
    ];



    if (user.status == null) {
      table.add([
        {"text": msgNoData, "colSpan": "2", "color": "red"}
      ]);
      pages.add(Page(isPortrait, ret));
      return;
    }

    table.add([
      {"text": "Name", "fontSize": fs(12)},
      {"text": "${user.status.name}", "fontSize": fs(10)}
    ]);
    table.add([
      {"text": "Version", "fontSize": fs(12)},
      {"text": "${user.status.version}", "fontSize": fs(10)}
    ]);
    table.add([
      {"text": "Enabled", "fontSize": fs(12)},
      {"text": "${user.status.settings.enable}", "fontSize": fs(10)}
    ]);

    pages.add(Page(isPortrait, ret));
  }
}
