import 'dart:html';

import 'package:angular/angular.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:nightscout_reporter/app_component.template.dart' as ng;
import 'package:nightscout_reporter/messages/messages_all.dart';

void main()
async {
  String language = window.localStorage["language"];
  if(language == null || language.length != 5)
    language = "de_DE";
  await initializeMessages(language);
  await initializeDateFormatting(language, null);
  runApp(ng.AppComponentNgFactory);
}
