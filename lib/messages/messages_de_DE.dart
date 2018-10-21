// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de_DE locale. All the
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
  get localeName => 'de_DE';

  static m0(count) => "${Intl.plural(count, zero: '(keine Katheter)', one: '(Ø ${count} Tag pro Katheter)', other: '(Ø ${count} Tage pro Katheter)')}";

  static m1(value) => "Hoch${value}";

  static m2(value) => "g KH (${value} BE)";

  static m3(value) => "Tief${value}";

  static m4(howMany, fmt) => "${Intl.plural(howMany, zero: 'Keine Messwerte vorhanden', one: '1 Messung pro Minute', other: 'Messung alle ${fmt} Minuten')}";

  static m5(howMany, fmt) => "${Intl.plural(howMany, zero: 'Keine Messwerte vorhanden', one: '1 Messung am Tag', other: '${fmt} Messungen am Tag')}";

  static m6(howMany, fmt) => "${Intl.plural(howMany, zero: 'Keine Messwerte vorhanden', one: '1 Messung pro Stunde', other: '${fmt} Messungen pro Stunde')}";

  static m7(count) => "${Intl.plural(count, zero: '(keine Ampulle)', one: '(Ø ${count} Tag pro Ampulle)', other: '(Ø ${count} Tage pro Ampulle)')}";

  static m8(begDate) => "gültig ab ${begDate}";

  static m9(begDate, endDate) => "gültig von ${begDate} bis ${endDate}";

  static m10(high) => "Werte über ${high}:";

  static m11(low) => "Werte unter ${low}:";

  static m12(low, high) => "Werte zwischen ${low} und ${high}:";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("10% - 90% der Werte"),
    "25%" : MessageLookupByLibrary.simpleMessage("25%"),
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("25% - 75% der Werte"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("Anpas-\nsung"),
    "Anzahl Ampullen:" : MessageLookupByLibrary.simpleMessage("Anzahl Ampullen:"),
    "Anzahl Katheter:" : MessageLookupByLibrary.simpleMessage("Anzahl Katheter:"),
    "Anzahl Messungen:" : MessageLookupByLibrary.simpleMessage("Anzahl Messungen:"),
    "Ausgewertete Tage:" : MessageLookupByLibrary.simpleMessage("Ausgewertete Tage:"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("Auswertung"),
    "Basal" : MessageLookupByLibrary.simpleMessage("Basal"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("Basalrate"),
    "Betafunktionen anzeigen" : MessageLookupByLibrary.simpleMessage("Betafunktionen anzeigen"),
    "Bolus" : MessageLookupByLibrary.simpleMessage("Bolus"),
    "Datum" : MessageLookupByLibrary.simpleMessage("Datum"),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("Deutsch"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("Diabetes seit"),
    "Diabetes seit:" : MessageLookupByLibrary.simpleMessage("Diabetes seit:"),
    "Die Daten, die Du hier eingibst, werden im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. Es werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("Die Daten, die Du hier eingibst, werden im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. Es werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden."),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("Die URL wurde noch nicht festgelegt."),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz."),
    "Die angegebene URL ist nicht erreichbar.<br><br>Wenn die URL stimmt, dann kann es an den Nightscout-Settings liegen.<br><br>In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools, wie dieses hier, auf die Daten zugreifen dürfen." : MessageLookupByLibrary.simpleMessage("Die angegebene URL ist nicht erreichbar.<br><br>Wenn die URL stimmt, dann kann es an den Nightscout-Settings liegen.<br><br>In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools, wie dieses hier, auf die Daten zugreifen dürfen."),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun."),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("Einstellungen"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("Einstellungen für die Verwendung der Seite vornehmen"),
    "English" : MessageLookupByLibrary.simpleMessage("English"),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("Geburtstag"),
    "Geburtstag :" : MessageLookupByLibrary.simpleMessage("Geburtstag :"),
    "Ges." : MessageLookupByLibrary.simpleMessage("Ges."),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Glukose Perzentil Diagramm"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("Glukosekurve"),
    "Höchster Wert im Zeitraum:" : MessageLookupByLibrary.simpleMessage("Höchster Wert im Zeitraum:"),
    "IE" : MessageLookupByLibrary.simpleMessage("IE"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("Insulin"),
    "Insulin:" : MessageLookupByLibrary.simpleMessage("Insulin:"),
    "KH pro Tag" : MessageLookupByLibrary.simpleMessage("KH pro Tag"),
    "Keine" : MessageLookupByLibrary.simpleMessage("Keine"),
    "Max" : MessageLookupByLibrary.simpleMessage("Max"),
    "Median" : MessageLookupByLibrary.simpleMessage("Median"),
    "Messwerte" : MessageLookupByLibrary.simpleMessage("Messwerte"),
    "Min" : MessageLookupByLibrary.simpleMessage("Min"),
    "Mittelwert" : MessageLookupByLibrary.simpleMessage("Mittelwert"),
    "Name" : MessageLookupByLibrary.simpleMessage("Name"),
    "Niedrigster Wert im Zeitraum:" : MessageLookupByLibrary.simpleMessage("Niedrigster Wert im Zeitraum:"),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("Nightscout Seite"),
    "Normal" : MessageLookupByLibrary.simpleMessage("Normal"),
    "Optionale Daten für den Ausdruck" : MessageLookupByLibrary.simpleMessage("Optionale Daten für den Ausdruck"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("PDF im selben Fenster öffnen"),
    "Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Perzentil Diagramm"),
    "Schliessen" : MessageLookupByLibrary.simpleMessage("Schliessen"),
    "Speichern" : MessageLookupByLibrary.simpleMessage("Speichern"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("Std.\nAbw."),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("Tagesgrafik"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("Tagesstatistik"),
    "This page is also available in english" : MessageLookupByLibrary.simpleMessage("This page is also available in english"),
    "URL im Titel der Seite anzeigen" : MessageLookupByLibrary.simpleMessage("URL im Titel der Seite anzeigen"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("Uhr-\nzeit"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("Uhrzeit"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("Verteilung"),
    "Verwerfen" : MessageLookupByLibrary.simpleMessage("Verwerfen"),
    "Wichtige Daten" : MessageLookupByLibrary.simpleMessage("Wichtige Daten"),
    "Willkommen" : MessageLookupByLibrary.simpleMessage("Willkommen"),
    "Zeitraum" : MessageLookupByLibrary.simpleMessage("Zeitraum"),
    "Zielbereich" : MessageLookupByLibrary.simpleMessage("Zielbereich"),
    "Zielwert" : MessageLookupByLibrary.simpleMessage("Zielwert"),
    "Zuckerwert" : MessageLookupByLibrary.simpleMessage("Zuckerwert"),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("Zusatzfunktionen"),
    "bis" : MessageLookupByLibrary.simpleMessage("bis"),
    "geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("geschätzter HbA1c"),
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
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Basal pro Tag"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Bolus pro Tag"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Insulin pro Tag"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("Ø Insulinverhältnis")
  };
}
