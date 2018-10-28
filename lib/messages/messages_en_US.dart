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

  static m0(count) => "${Intl.plural(count, zero: '', one: '(Ø ${count} day per catheter)', other: '(Ø ${count} days per catheter)')}";

  static m1(url) => "Checking access to ${url} ...";

  static m2(value) => "High${value}";

  static m3(value) => "${value} g CHO";

  static m4(value) => "g CHO ( ${value} BU)";

  static m5(error, stacktrace) => "Error loading data: ${error} ${stacktrace}";

  static m6(date) => "Loading data for ${date} ...";

  static m7(value) => "Low${value}";

  static m8(howMany, fmt) => "${Intl.plural(howMany, zero: 'No values available', one: '1 value per minute', other: '1 value every ${fmt} minutes')}";

  static m9(howMany, fmt) => "${Intl.plural(howMany, zero: 'No values available', one: '1 value per day', other: '${fmt} values a day')}";

  static m10(howMany, fmt) => "${Intl.plural(howMany, zero: 'No values available', one: '1 value per hour', other: '${fmt} values per hour')}";

  static m11(count) => "${Intl.plural(count, zero: '', one: '(Ø ${count} day per reservoir)', other: '(Ø ${count} days per reservoir)')}";

  static m12(begDate) => "valid from ${begDate}";

  static m13(begDate, endDate) => "valid from ${begDate} to ${endDate}";

  static m14(endDate) => "valid until ${endDate}";

  static m15(high) => "Values ​​above ${high}";

  static m16(low) => "Values ​​below ${low}";

  static m17(low, high) => "values ​​between ${low} and ${high}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("10% - 90% of the values"),
    "25%" : MessageLookupByLibrary.simpleMessage("25%"),
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("25% - 75% of the values"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("Adjust-\nment"),
    "Anzahl Ampullen" : MessageLookupByLibrary.simpleMessage("Count of reservoirs"),
    "Anzahl Katheter" : MessageLookupByLibrary.simpleMessage("Count of catheters"),
    "Anzahl Messungen" : MessageLookupByLibrary.simpleMessage("Count of values"),
    "Ausgewertete Tage" : MessageLookupByLibrary.simpleMessage("Evaluated days"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("Analysis"),
    "Basal" : MessageLookupByLibrary.simpleMessage("basal"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("Basal Rate"),
    "Bei der Berechnung der Kohlenhydrate werden weitere Datensätze berücksichtigt" : MessageLookupByLibrary.simpleMessage("Additional data is used for the calculation of carbohydrates"),
    "Beim Auslesen des Profils ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("An error occurred while reading the profile."),
    "Beim Erzeugen des PDF ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("An error occurred while creating the PDF."),
    "Beim Laden der Daten wird das entsprechende Datumsformat zur Anzeige verwendet" : MessageLookupByLibrary.simpleMessage("When loading the data, the corresponding date format is used for display of progress"),
    "Benutzer können ein User-Token angeben, um sich mit geschützten Nightscout-Instanzen zu verbinden" : MessageLookupByLibrary.simpleMessage("Users can specify a user token to connect to protected nightscout instances"),
    "Benutzer können nun gelöscht werden" : MessageLookupByLibrary.simpleMessage("Users can now be deleted"),
    "Benutzerdaten" : MessageLookupByLibrary.simpleMessage("User data"),
    "Benutzerdaten werden nun verschlüsselt im Browser gespeichert" : MessageLookupByLibrary.simpleMessage("User data is now stored encrypted in the browser"),
    "Bereite Daten vor..." : MessageLookupByLibrary.simpleMessage("Preparing data..."),
    "Betafunktionen anzeigen" : MessageLookupByLibrary.simpleMessage("Show beta features"),
    "Bitte einen Zeitraum wählen." : MessageLookupByLibrary.simpleMessage("Please select a period."),
    "Bolus" : MessageLookupByLibrary.simpleMessage("bolus"),
    "Bolus Insulin" : MessageLookupByLibrary.simpleMessage("Bolus Insulin"),
    "Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr." : MessageLookupByLibrary.simpleMessage("Clicking on the message area no longer closes it."),
    "Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag." : MessageLookupByLibrary.simpleMessage("The basal rate PDF was incorrect if there was not a value for each hour."),
    "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren." : MessageLookupByLibrary.simpleMessage("The PDF was created. If it is not displayed, then probably a popup blocker is active, which prevents the display. Please deactivate this."),
    "Das User-Token wird nur benötigt, wenn der Zugriff in Nightscout über AUTH_DEFAULT_ROLES eingeschränkt wurde" : MessageLookupByLibrary.simpleMessage("The user token is only required if access in Nightscout has been restricted via AUTH_DEFAULT_ROLES"),
    "Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen." : MessageLookupByLibrary.simpleMessage("Data for the glucose values ​​with incorrect date format are read out correctly."),
    "Datenschutzerklärung" : MessageLookupByLibrary.simpleMessage("Data protection "),
    "Datum" : MessageLookupByLibrary.simpleMessage("Date"),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("German"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("Diabetes since"),
    "Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an" : MessageLookupByLibrary.simpleMessage("The analysis page has been redesigned and now displays headings above the areas"),
    "Die Daten, die Du hier eingibst, werden im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. Es werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("The data you enter here will be stored in the localStorage of the browser. This contains website-related data that can only be read out from this website. No cookies are used and no data is stored on servers. Only a connection to the specified Nightscout instance is set up and the data available there is read out to create a PDF document. This can then be submitted to the diabetes counselor or other interested party."),
    "Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit." : MessageLookupByLibrary.simpleMessage("The glucose graph of the daily graphs has been freed from missing data."),
    "Die Icons auf einigen Buttons waren zu nahe am Text" : MessageLookupByLibrary.simpleMessage("The icons on some buttons were too close to the text"),
    "Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird" : MessageLookupByLibrary.simpleMessage("The ability to display the URL in the title bar has been removed since the current user or his URL is now displayed directly"),
    "Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an" : MessageLookupByLibrary.simpleMessage("The daily statistics now display mmol/l values ​​correctly"),
    "Die URL wurde noch nicht festgelegt" : MessageLookupByLibrary.simpleMessage("The URL has not been set yet"),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("The URL has not been set yet"),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("The website mainly uses Javascript to do its job. When creating the PDF document Javascript and PHP are used."),
    "Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt" : MessageLookupByLibrary.simpleMessage("The values ​​for the default target range on the analysis page are now calculated correctly"),
    "Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools, wie dieses hier, auf die Daten zugreifen dürfen.<br><br>Wenn diese URL geschützt ist, muss ausserdem das UserToken korrekt definiert sein (bisher nicht funktionsfähig)." : MessageLookupByLibrary.simpleMessage("The specified URL is not reachable. If the URL is correct, then it may be due to the nightscout settings. In the variable ENABLE must be the word \"cors\", so that external tools, like this one, can access the data. <br> <br> If this URL is protected, API Secret and UserToken must also be defined correctly (not yet working)."),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("This page is used to generate PDF documents with the data stored at Nightscout. Therefore, it is necessary to be able to access this data, which is why a few settings must first be saved. As long as these are not available and valid, the site can do nothing for you."),
    "Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden." : MessageLookupByLibrary.simpleMessage("Added this page. It is displayed each time Nightscout Reporter starts, if it has not been displayed in the current version. In addition, it can be called up again in the burgermenu."),
    "Diverse Abstürze beim Auslesen der Daten bereinigt" : MessageLookupByLibrary.simpleMessage("Fixed various crashes when reading data"),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("Settings"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("Enter settings for using the page"),
    "English" : MessageLookupByLibrary.simpleMessage("English"),
    "Erzeuge PDF..." : MessageLookupByLibrary.simpleMessage("Creating PDF..."),
    "Es sind keine Daten für den Ausdruck vorhanden" : MessageLookupByLibrary.simpleMessage("There is no data for the printout"),
    "Fehler beim Laden der Daten" : MessageLookupByLibrary.simpleMessage("Error loading data"),
    "Fehler werden besser abgefangen und mit sinnvollem Text ersetzt." : MessageLookupByLibrary.simpleMessage("Errors are better intercepted and replaced with more meaningful text."),
    "Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt" : MessageLookupByLibrary.simpleMessage("Faulty values ​​are no longer considered in the evaluation of the graphics; these are recognized by the value \"NONE\" in the data field \"direction\""),
    "Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt." : MessageLookupByLibrary.simpleMessage("Error message when loading profiles without start date removed."),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("Birthday"),
    "Ges." : MessageLookupByLibrary.simpleMessage("Sum"),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Glucose Percentile Diagram"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("Glucose Curve"),
    "Heute" : MessageLookupByLibrary.simpleMessage("Today"),
    "Hohe Basalraten werden jetzt besser dargestellt." : MessageLookupByLibrary.simpleMessage("High basal rates are now better represented."),
    "Höchster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Highest value in the period"),
    "IE" : MessageLookupByLibrary.simpleMessage("U"),
    "Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert" : MessageLookupByLibrary.simpleMessage("Numbers and dates in the PDF are formatted according to the selected language"),
    "Impressum" : MessageLookupByLibrary.simpleMessage("Imprint"),
    "Initiale Version, alles ist neu!" : MessageLookupByLibrary.simpleMessage("Initial version, everything is new!"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("Insulin"),
    "Ja" : MessageLookupByLibrary.simpleMessage("Yes"),
    "KH pro Tag" : MessageLookupByLibrary.simpleMessage("CHO per day"),
    "Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Site change"),
    "Keine" : MessageLookupByLibrary.simpleMessage("None"),
    "Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Carbohydrates"),
    "Kohlenhydrate und Bolusinsulin werden jetzt in den täglichen Grafiken angezeigt" : MessageLookupByLibrary.simpleMessage("Carbohydrates and bolus insulin are now displayed in the daily graphs"),
    "Legende für Katheter- und Sensorwechsel zur Tagesgrafik hinzugefügt." : MessageLookupByLibrary.simpleMessage("Added legend for catheter and sensor changes to the daily chart."),
    "Letzte 2 Tage" : MessageLookupByLibrary.simpleMessage("Last 2 days"),
    "Letzte 2 Wochen" : MessageLookupByLibrary.simpleMessage("Last 2 weeks"),
    "Letzte 3 Monate" : MessageLookupByLibrary.simpleMessage("Last 3 months"),
    "Letzte 3 Tage" : MessageLookupByLibrary.simpleMessage("Last 3 days"),
    "Letzte 3 Wochen" : MessageLookupByLibrary.simpleMessage("Last 3 weeks"),
    "Letzte Woche" : MessageLookupByLibrary.simpleMessage("Last week"),
    "Letzter Monat" : MessageLookupByLibrary.simpleMessage("Last month"),
    "Man kann jetzt mehrere Benutzer anlegen. Das ist nützlich, um mehrere Nightscout-Instanzen auszuwerten (z.B. für Ärzte, Betreuer oder den Entwickler dieser Software)" : MessageLookupByLibrary.simpleMessage("You can now create multiple users. This is useful for analyzing multiple nightscout instances (e.g. for doctors, caregivers or the developer of this software)"),
    "Max" : MessageLookupByLibrary.simpleMessage("Max"),
    "Median" : MessageLookupByLibrary.simpleMessage("Median"),
    "Messwerte" : MessageLookupByLibrary.simpleMessage("Values"),
    "Min" : MessageLookupByLibrary.simpleMessage("Min"),
    "Mittelwert" : MessageLookupByLibrary.simpleMessage("Average"),
    "Name" : MessageLookupByLibrary.simpleMessage("Name"),
    "Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat." : MessageLookupByLibrary.simpleMessage("Name, birthday, insulin and the start date of diabetes can now be left blank without any negative impact on the presentation in the PDF."),
    "Nein" : MessageLookupByLibrary.simpleMessage("No"),
    "Niedrigster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Lowest value in the period"),
    "Nightscout Berichte" : MessageLookupByLibrary.simpleMessage("Nightscout Reports"),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("Nightscout Site"),
    "Normal" : MessageLookupByLibrary.simpleMessage("Normal"),
    "PDF anzeigen" : MessageLookupByLibrary.simpleMessage("Show PDF"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("Open PDF in the same window"),
    "Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Percentile Diagram"),
    "Problem auf GitHub melden" : MessageLookupByLibrary.simpleMessage("Report a problem to GitHub"),
    "Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse." : MessageLookupByLibrary.simpleMessage("Order of PDF pages changed - Percentile Diagram now comes after analysis."),
    "Schliessen" : MessageLookupByLibrary.simpleMessage("Close"),
    "Schliessen Button im Nachrichtenbereich hinzugefügt." : MessageLookupByLibrary.simpleMessage("Close button added in the message area."),
    "Sensorwechsel" : MessageLookupByLibrary.simpleMessage("Sensor change"),
    "Spaltenbreite der Informationen in der Analyse erhöht" : MessageLookupByLibrary.simpleMessage("Column width of the information in the analysis increased"),
    "Speichern" : MessageLookupByLibrary.simpleMessage("save"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("SDev."),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("Daily Chart"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("Daily Statistics"),
    "Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt" : MessageLookupByLibrary.simpleMessage("Temporary basal rates with absolute values ​​are displayed correctly"),
    "This page is also available in english" : MessageLookupByLibrary.simpleMessage("Diese Seite ist auch auf Deutsch verfügbar"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("Time"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("Time"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("Url to Nightscout-API (e.g. https://xxx.herokuapp.com)"),
    "User-Token" : MessageLookupByLibrary.simpleMessage("User-Token"),
    "Version" : MessageLookupByLibrary.simpleMessage("Version"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("Distribution"),
    "Was bisher geschah..." : MessageLookupByLibrary.simpleMessage("What happened up to now..."),
    "Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet" : MessageLookupByLibrary.simpleMessage("If the thresholds in Nightscout (BG_TARGET_BOTTOM and BG_TARGET_TOP) are equal to 70 and 180, then the area for the default targets will be hidden on the analysis page"),
    "Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt." : MessageLookupByLibrary.simpleMessage("If no data is available, blank pages will be generated with an appropriate hint."),
    "Willkommen" : MessageLookupByLibrary.simpleMessage("Welcome"),
    "Willkommen bei Nightscout Reporter!" : MessageLookupByLibrary.simpleMessage("Welcome to Nightscout Reporter!"),
    "Zeitraum" : MessageLookupByLibrary.simpleMessage("Period"),
    "Zuckerwert" : MessageLookupByLibrary.simpleMessage("glucose"),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("Additional functions"),
    "bis" : MessageLookupByLibrary.simpleMessage("to"),
    "geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("estimated HbA1c"),
    "msgCatheterDays" : m0,
    "msgCheckUser" : m1,
    "msgHigh" : m2,
    "msgKH" : m3,
    "msgKHBE" : m4,
    "msgLoadingData" : m5,
    "msgLoadingDataFor" : m6,
    "msgLow" : m7,
    "msgReadingsInMinutes" : m8,
    "msgReadingsPerDay" : m9,
    "msgReadingsPerHour" : m10,
    "msgReservoirDays" : m11,
    "msgValidFrom" : m12,
    "msgValidRange" : m13,
    "msgValidTo" : m14,
    "msgValuesAbove" : m15,
    "msgValuesBelow" : m16,
    "msgValuesIn" : m17,
    "ok" : MessageLookupByLibrary.simpleMessage("ok"),
    "verwerfen" : MessageLookupByLibrary.simpleMessage("discard"),
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Basal per day"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Bolus per day"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("Ø insulin per day"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("Ø Insulin ratio"),
    "Überprüfe Zugriff auf Nightscout ..." : MessageLookupByLibrary.simpleMessage("Checking access to Nightscout ...")
  };
}
