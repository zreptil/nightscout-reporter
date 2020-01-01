import 'dart:html' as html;

import 'package:angular/angular.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:nightscout_reporter/app_component.template.dart' as ng;
import 'package:nightscout_reporter/messages/messages_all.dart';
import 'package:timezone/browser.dart';
import "package:intl/intl.dart";

void main()
async {
  String language = html.window.localStorage["${html.window.location.href.contains("/beta/")?"@":""}language"];
  if((language == null || language.length != 5))
    language = "de_DE";
  Intl.systemLocale = Intl.canonicalizedLocale(language);
  await initializeTimeZone();
  await initializeMessages(language);
  await initializeDateFormatting(language, null);
  runApp(ng.AppComponentNgFactory);
}
