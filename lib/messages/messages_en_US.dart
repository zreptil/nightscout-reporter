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

  static m2(value) => "g CHO ( ${value} BU)";

  static m3(error, stacktrace) => "Error loading data: ${error} ${stacktrace}";

  static m4(date) => "Loading data for ${date} ...";

  static m5(value) => "Low${value}";

  static m6(howMany, fmt) => "${Intl.plural(howMany, zero: 'No values available', one: '1 value per minute', other: '1 value every ${fmt} minutes')}";

  static m7(howMany, fmt) => "${Intl.plural(howMany, zero: 'No values available', one: '1 value per day', other: '${fmt} values a day')}";

  static m8(howMany, fmt) => "${Intl.plural(howMany, zero: 'No values available', one: '1 value per hour', other: '${fmt} values per hour')}";

  static m9(count) => "${Intl.plural(count, zero: '(no reservoir)', one: '(Ø ${count} day per reservoir)', other: '(Ø ${count} days per reservoir)')}";

  static m10(begDate) => "valid from ${begDate}";

  static m11(begDate, endDate) => "valid from ${begDate} to ${endDate}";

  static m12(endDate) => "valid until ${endDate}";

  static m13(high) => "Values ​​above ${high} :";

  static m14(low) => "Values ​​below ${low} :";

  static m15(low, high) => "values ​​between ${low} and ${high} :";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("10% - 90% of the values"),
    "25%" : MessageLookupByLibrary.simpleMessage("25%"),
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("25% - 75% of the values"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "API-Secret (nur nötig, wenn der Zugriff eingeschränkt ist)" : MessageLookupByLibrary.simpleMessage("API Secret (only necessary if access is restricted)"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("Adjust-\nment"),
    "Anzahl Ampullen:" : MessageLookupByLibrary.simpleMessage("Count of reservoirs:"),
    "Anzahl Katheter:" : MessageLookupByLibrary.simpleMessage("Count of catheters:"),
    "Anzahl Messungen:" : MessageLookupByLibrary.simpleMessage("Count of values:"),
    "Ausgewertete Tage:" : MessageLookupByLibrary.simpleMessage("Evaluated days:"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("Analysis"),
    "Basal" : MessageLookupByLibrary.simpleMessage("basal"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("Basal Rate"),
    "Beim Auslesen des Profils ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("An error occurred while reading the profile."),
    "Beim Erzeugen des PDF ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("An error occurred while creating the PDF."),
    "Bereite Daten vor..." : MessageLookupByLibrary.simpleMessage("Preparing data..."),
    "Betafunktionen anzeigen" : MessageLookupByLibrary.simpleMessage("Show beta features"),
    "Bitte einen Zeitraum wählen." : MessageLookupByLibrary.simpleMessage("Please select a period."),
    "Bolus" : MessageLookupByLibrary.simpleMessage("bolus"),
    "Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr." : MessageLookupByLibrary.simpleMessage("Clicking on the message area no longer closes it."),
    "Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag." : MessageLookupByLibrary.simpleMessage("The basal rate PDF was incorrect if there was not a value for each hour."),
    "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren." : MessageLookupByLibrary.simpleMessage("The PDF was created. If it is not displayed, then probably a popup blocker is active, which prevents the display. Please deactivate this."),
    "Datenschutzerklärung" : MessageLookupByLibrary.simpleMessage("Data protection "),
    "Datum" : MessageLookupByLibrary.simpleMessage("Date"),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("German"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("Diabetes since"),
    "Diabetes seit:" : MessageLookupByLibrary.simpleMessage("Diabetes since:"),
    "Die Daten, die Du hier eingibst, werden im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. Es werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("The data you enter here will be stored in the localStorage of the browser. This contains website-related data that can only be read out from this website. No cookies are used and no data is stored on servers. Only a connection to the specified Nightscout instance is set up and the data available there is read out to create a PDF document. This can then be submitted to the diabetes counselor or other interested party."),
    "Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit." : MessageLookupByLibrary.simpleMessage("The glucose graph of the daily graphs has been freed from missing data."),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("The URL has not been set yet"),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("The website mainly uses Javascript to do its job. When creating the PDF document Javascript and PHP are used."),
    "Die angegebene URL ist nicht erreichbar.<br><br>Wenn die URL stimmt, dann kann es an den Nightscout-Settings liegen.<br><br>In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools, wie dieses hier, auf die Daten zugreifen dürfen. Ausserdem müssen API Secret und UserToken korrekt definiert sein." : MessageLookupByLibrary.simpleMessage("The specified URL is unreachable. <br> <br> If the URL is correct, then it may be due to the Nightscout settings. <br> <br> The variable ENABLE must contain the word \"cors\" to allow external tools, like this one here, to access the data. In addition, API Secret and UserToken must be defined correctly."),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("This page is used to generate PDF documents with the data stored at Nightscout. Therefore, it is necessary to be able to access this data, which is why a few settings must first be saved. As long as these are not available and valid, the site can do nothing for you."),
    "Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden." : MessageLookupByLibrary.simpleMessage("Added this page. It is displayed each time Nightscout Reporter starts, if it has not been displayed in the current version. In addition, it can be called up again in the burgermenu."),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("Settings"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("Enter settings for using the page"),
    "English" : MessageLookupByLibrary.simpleMessage("English"),
    "Erzeuge PDF..." : MessageLookupByLibrary.simpleMessage("Creating PDF..."),
    "Fehler beim Laden der Daten" : MessageLookupByLibrary.simpleMessage("Error loading data"),
    "Fehler werden besser abgefangen und mit sinnvollem Text ersetzt." : MessageLookupByLibrary.simpleMessage("Errors are better intercepted and replaced with more meaningful text."),
    "Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt." : MessageLookupByLibrary.simpleMessage("Error message when loading profiles without start date removed."),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("Birthday"),
    "Geburtstag :" : MessageLookupByLibrary.simpleMessage("Birthday :"),
    "Ges." : MessageLookupByLibrary.simpleMessage("Sum"),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Glucose Percentile Diagram"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("Glucose Curve"),
    "Heute" : MessageLookupByLibrary.simpleMessage("Today"),
    "Höchster Wert im Zeitraum:" : MessageLookupByLibrary.simpleMessage("Highest value in the period:"),
    "IE" : MessageLookupByLibrary.simpleMessage("U"),
    "Impressum" : MessageLookupByLibrary.simpleMessage("Imprint"),
    "Initiale Version, alles ist neu!" : MessageLookupByLibrary.simpleMessage("Initial version, everything is new!"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("Insulin"),
    "Insulin:" : MessageLookupByLibrary.simpleMessage("Insulin:"),
    "KH pro Tag" : MessageLookupByLibrary.simpleMessage("CHO per day"),
    "Keine" : MessageLookupByLibrary.simpleMessage("None"),
    "Letzte 2 Tage" : MessageLookupByLibrary.simpleMessage("Last 2 days"),
    "Letzte 2 Wochen" : MessageLookupByLibrary.simpleMessage("Last 2 weeks"),
    "Letzte 3 Monate" : MessageLookupByLibrary.simpleMessage("Last 3 months"),
    "Letzte 3 Tage" : MessageLookupByLibrary.simpleMessage("Last 3 days"),
    "Letzte 3 Wochen" : MessageLookupByLibrary.simpleMessage("Last 3 weeks"),
    "Letzte Woche" : MessageLookupByLibrary.simpleMessage("Last week"),
    "Letzter Monat" : MessageLookupByLibrary.simpleMessage("Last month"),
    "Max" : MessageLookupByLibrary.simpleMessage("Max"),
    "Median" : MessageLookupByLibrary.simpleMessage("Median"),
    "Messwerte" : MessageLookupByLibrary.simpleMessage("Values"),
    "Min" : MessageLookupByLibrary.simpleMessage("Min"),
    "Mittelwert" : MessageLookupByLibrary.simpleMessage("Average"),
    "Name" : MessageLookupByLibrary.simpleMessage("Name"),
    "Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat." : MessageLookupByLibrary.simpleMessage("Name, birthday, insulin and the start date of diabetes can now be left blank without any negative impact on the presentation in the PDF."),
    "Niedrigster Wert im Zeitraum:" : MessageLookupByLibrary.simpleMessage("Lowest value in the period:"),
    "Nightscout Berichte" : MessageLookupByLibrary.simpleMessage("Nightscout Reports"),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("Nightscout Site"),
    "Normal" : MessageLookupByLibrary.simpleMessage("Normal"),
    "Optionale Daten für den Ausdruck" : MessageLookupByLibrary.simpleMessage("Optional data for the printout"),
    "PDF anzeigen" : MessageLookupByLibrary.simpleMessage("Show PDF"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("Open PDF in the same window"),
    "Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Percentile Diagram"),
    "Problem auf GitHub melden" : MessageLookupByLibrary.simpleMessage("Report a problem to GitHub"),
    "Schliessen" : MessageLookupByLibrary.simpleMessage("Close"),
    "Schliessen Button im Nachrichtenbereich hinzugefügt." : MessageLookupByLibrary.simpleMessage("Close button added in the message area."),
    "Speichern" : MessageLookupByLibrary.simpleMessage("save"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("SDev."),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("Daily Chart"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("Daily Statistics"),
    "This page is also available in english" : MessageLookupByLibrary.simpleMessage("Diese Seite ist auch auf Deutsch verfügbar"),
    "URL im Titelbereich der Seite anzeigen" : MessageLookupByLibrary.simpleMessage("Show URL in the title area of ​​the page"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("Time"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("Time"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("Url to Nightscout-API (eg https://xxx.herokuapp.com)"),
    "User-Token (nur nötig, wenn der Zugriff eingeschränkt ist)" : MessageLookupByLibrary.simpleMessage("User token (only necessary if access is restricted)"),
    "Version" : MessageLookupByLibrary.simpleMessage("Version"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("Distribution"),
    "Verwerfen" : MessageLookupByLibrary.simpleMessage("discard"),
    "Was bisher geschah..." : MessageLookupByLibrary.simpleMessage("What happened up to now..."),
    "Was bisher geschah:" : MessageLookupByLibrary.simpleMessage("What happened up to now:"),
    "Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt." : MessageLookupByLibrary.simpleMessage("If no data is available, blank pages will be generated with an appropriate hint."),
    "Wichtige Daten" : MessageLookupByLibrary.simpleMessage("Important data"),
    "Willkommen" : MessageLookupByLibrary.simpleMessage("Welcome"),
    "Willkommen bei Nightscout Reporter!" : MessageLookupByLibrary.simpleMessage("Welcome to Nightscout Reporter!"),
    "Zeitraum" : MessageLookupByLibrary.simpleMessage("Period"),
    "Zielbereich" : MessageLookupByLibrary.simpleMessage("Target Area"),
    "Zielwert" : MessageLookupByLibrary.simpleMessage("Target Value"),
    "Zuckerwert" : MessageLookupByLibrary.simpleMessage("glucose"),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("Additional functions"),
    "bis" : MessageLookupByLibrary.simpleMessage("to"),
    "geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("estimated HbA1c"),
    "msgCatheterDays" : m0,
    "msgHigh" : m1,
    "msgKHBE" : m2,
    "msgLoadingData" : m3,
    "msgLoadingDataFor" : m4,
    "msgLow" : m5,
    "msgReadingsInMinutes" : m6,
    "msgReadingsPerDay" : m7,
    "msgReadingsPerHour" : m8,
    "msgReservoirDays" : m9,
    "msgValidFrom" : m10,
    "msgValidRange" : m11,
    "msgValidTo" : m12,
    "msgValuesAbove" : m13,
    "msgValuesBelow" : m14,
    "msgValuesIn" : m15,
    "ok" : MessageLookupByLibrary.simpleMessage("ok"),
    "verwerfen" : MessageLookupByLibrary.simpleMessage("discard"),
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Basal per day"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Bolus per day"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("Ø insulin per day"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("Ø Insulin ratio"),
    "Überprüfe Zugriff auf Nightscout ..." : MessageLookupByLibrary.simpleMessage("Checking access to Nightscout ...")
  };
}
