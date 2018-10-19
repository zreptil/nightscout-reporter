// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_US locale. All the
// messages from the main program should be duplicated here with the same
// function name.

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

// ignore: unnecessary_new
final messages = new MessageLookup();

// ignore: unused_element
final _keepAnalysisHappy = Intl.defaultLocale;

// ignore: non_constant_identifier_names
typedef MessageIfAbsent(String message_str, List args);

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'en_US';

  static m0(count) => "${Intl.plural(count, zero: '(no catheters)', one: '(Ø ${count} day per catheter)', other: '(Ø ${count} days per catheter)')}";

  static m1(value) => "High${value}";

  static m2(value) => "g CH (${value} BU)";

  static m3(value) => "Low${value}";

  static m4(howMany, fmt) => "${Intl.plural(howMany, zero: 'No values available', one: '1 value per minute', other: '${fmt} values every ${fmt} minute')}";

  static m5(howMany, fmt) => "${Intl.plural(howMany, zero: 'No values available', one: '1 value per day', other: '${fmt} values per day')}";

  static m6(howMany, fmt) => "${Intl.plural(howMany, zero: 'No values available', one: '1 value per hour', other: '${fmt} values per hour')}";

  static m7(count) => "${Intl.plural(count, zero: '(no reservoir)', one: '(Ø ${count} day per reservoir)', other: '(Ø ${count} days per reservoir)')}";

  static m8(begDate) => "valid since ${begDate}";

  static m9(begDate, endDate) => "valid from ${begDate} to ${endDate}";

  static m10(high) => "Values above ${high}:";

  static m11(low) => "Values below ${low}:";

  static m12(low, high) => "Values between ${low} and ${high}:";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("10% - 90% of the values"),
    "25%" : MessageLookupByLibrary.simpleMessage("25%"),
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("25% - 75% of the values"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("Adjust-\nment"),
    "Anzahl Ampullen:" : MessageLookupByLibrary.simpleMessage("Number of reservoirs:"),
    "Anzahl Katheter:" : MessageLookupByLibrary.simpleMessage("Number of catheters:"),
    "Anzahl Messungen:" : MessageLookupByLibrary.simpleMessage("Number of values:"),
    "Ausgewertete Tage:" : MessageLookupByLibrary.simpleMessage("Analyzed days:"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("Analysis"),
    "Basal" : MessageLookupByLibrary.simpleMessage("Basal"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("Basalrate"),
    "Betafunktionen anzeigen" : MessageLookupByLibrary.simpleMessage("Show beta functions"),
    "Bolus" : MessageLookupByLibrary.simpleMessage("Bolus"),
    "Datum" : MessageLookupByLibrary.simpleMessage("Date"),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("Deutsch"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("Diabetes since"),
    "Diabetes seit:" : MessageLookupByLibrary.simpleMessage("Diabetes since:"),
    "Die Daten, die Du hier eingibst, werden im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. Es werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("The data you enter here will be stored in the localStorage of the browser. This contains website-related data that can only be read out from this website. No cookies are used and no data is stored on servers. Only a connection to the specified Nightscout instance is set up and the data available there is read out to create a PDF document. This can then be submitted to the diabetes counselor or other interested party."),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("The URL has not been set yet."),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("The website mainly uses Javascript to do its job. When creating the PDF document Javascript and PHP are used."),
    "Die angegebene URL ist nicht korrekt." : MessageLookupByLibrary.simpleMessage("The URL is not correct."),
    "Die angegebene URL konnte nicht erreicht werden." : MessageLookupByLibrary.simpleMessage("The URL cannot be reached."),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("This page is used to generate PDF documents with the data stored at Nightscout. Therefore, it is necessary to be able to access this data, which is why a few settings must first be saved. As long as these are not available and valid, the site can do nothing for you."),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("Settings"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("Settings for using the page"),
    "English" : MessageLookupByLibrary.simpleMessage("English"),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("Birthday"),
    "Geburtstag :" : MessageLookupByLibrary.simpleMessage("Birthday:"),
    "Ges." : MessageLookupByLibrary.simpleMessage("Sum"),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Glucose Percentile Diagram"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("Glucose curve"),
    "Höchster Wert im Zeitraum:" : MessageLookupByLibrary.simpleMessage("Highest value in period:"),
    "IE" : MessageLookupByLibrary.simpleMessage("U"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("Insulin"),
    "Insulin:" : MessageLookupByLibrary.simpleMessage("Insulin:"),
    "KH pro Tag" : MessageLookupByLibrary.simpleMessage("CH per day"),
    "Keine" : MessageLookupByLibrary.simpleMessage("None"),
    "Max" : MessageLookupByLibrary.simpleMessage("Max"),
    "Median" : MessageLookupByLibrary.simpleMessage("Median"),
    "Messwerte" : MessageLookupByLibrary.simpleMessage("Values"),
    "Min" : MessageLookupByLibrary.simpleMessage("Min"),
    "Mittelwert" : MessageLookupByLibrary.simpleMessage("Average"),
    "Name" : MessageLookupByLibrary.simpleMessage("Name"),
    "Niedrigster Wert im Zeitraum:" : MessageLookupByLibrary.simpleMessage("Lowest value in period:"),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("Nighscout Site"),
    "Normal" : MessageLookupByLibrary.simpleMessage("Normal"),
    "Optionale Daten für den Ausdruck" : MessageLookupByLibrary.simpleMessage("Optional data for the output"),
    "Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Percentile Diagram"),
    "Speichern" : MessageLookupByLibrary.simpleMessage("Save"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("SDev"),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("Daily Graph"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("Daily Statistics"),
    "This page is also available in english" : MessageLookupByLibrary.simpleMessage("Diese Seite ist auch auf Deutsch verfügbar"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("Time"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("Time"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com/api/v1" : MessageLookupByLibrary.simpleMessage("Url for Nightscout-API (eg https://xxx.herokuapp.com/api/v1"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("Distribution"),
    "Verwerfen" : MessageLookupByLibrary.simpleMessage("Discard"),
    "Wichtige Daten" : MessageLookupByLibrary.simpleMessage("Important data"),
    "Willkommen" : MessageLookupByLibrary.simpleMessage("Welcome"),
    "Zeitraum" : MessageLookupByLibrary.simpleMessage("Period"),
    "Zielbereich" : MessageLookupByLibrary.simpleMessage("Targetarea"),
    "Zielwert" : MessageLookupByLibrary.simpleMessage("Targetvalue"),
    "Zuckerwert" : MessageLookupByLibrary.simpleMessage("Glucosevalue"),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("Additional functions"),
    "bis" : MessageLookupByLibrary.simpleMessage("until"),
    "geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("estimated HbA1c"),
    "msgCatheterDays" : m0,
    "msgHigh" : m1,
    "msgKHBE" : m2,
    "msgLow" : m3,
    "msgReadingsInMinutes" : m4,
    "msgReadingsPerDay" : m5,
    "msgReadingsPerHour" : m6,
    "msgReservoirDays" : m7,
    "msgValidFrom" : m8,
    "msgValidRange" : m9,
    "msgValuesAbove" : m10,
    "msgValuesBelow" : m11,
    "msgValuesIn" : m12,
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Basal per day"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Bolus per day"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Insulin per day"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("Ø Insulinratio")
  };
}
