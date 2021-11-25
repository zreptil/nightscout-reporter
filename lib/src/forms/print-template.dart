import 'package:intl/intl.dart';
import 'package:nightscout_reporter/src/json_data.dart';

import 'base-print.dart';

class PrintTemplate extends BasePrint {
  @override
  String help =
      Intl.message('''Dieses Formular ...''', desc: 'help for template');

  @override
  String baseId = 'template';

  @override
  String baseIdx = '16';

  @override
  String get title => Intl.message('Template');

  bool isSomething;

  @override
  List<ParamInfo> params = [
    ParamInfo(0, msgParam1, boolValue: true, thumbValue: false)
  ];

  @override
  bool get isPortrait => true;

  PrintAnalysis({suffix = null}) {
    init(suffix);
  }

  @override
  void extractParams() {
    isSomething = params[0].boolValue;
  }

  @override
  dynamic get estimatePageCount => {'count': 1, 'isEstimated': false};

  static String get msgParam1 => Intl.message('Irgendwas zum Einstellen');

  @override
  void fillPages(List<Page> pages) {
    pages.add(getPage());
    if (g.showBothUnits) {
      g.glucMGDLIdx = 1;
      pages.add(getPage());
      g.glucMGDLIdx = 2;
    }
  }

  Page getPage() {
    titleInfo = titleInfoBegEnd();
    var data = repData.data;
    var ret = [
      headerFooter(),
    ];

    return Page(isPortrait, ret);
  }
}
