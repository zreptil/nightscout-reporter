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

  static m0(startTag0, endTag0) => "The possibility for beta functions has been removed; the beta version can now be found at ${startTag0} https://nightscout-reporter.zreptil.de/beta ${endTag0}";

  static m1(value) => "Basalrate for the day (${value})";

  static m2(value) => "Basalrate from the profile (${value})";

  static m3(value) => "Bolus Insulin (${value} )";

  static m4(count) => "${Intl.plural(count, zero: '', one: '(${count} day per catheter)', other: '(${count} days per catheter)')}";

  static m5(url) => "Checking access to ${url} ...";

  static m6(value) => "${value} Days";

  static m7(beg, end) => "${beg} - ${end}";

  static m8(value) => "High${value}";

  static m9(value) => "${value} g Carbs";

  static m10(value) => "g CHO ( ${value} BU)";

  static m11(error, stacktrace) => "Error loading data: ${error} ${stacktrace}";

  static m12(date) => "Loading data for ${date} ...";

  static m13(value) => "Low${value}";

  static m14(howMany, fmt) => "${Intl.plural(howMany, zero: 'No values available', one: '1 value per minute', other: '1 value every ${fmt} minutes')}";

  static m15(howMany, fmt) => "${Intl.plural(howMany, zero: 'No values available', one: '1 value per day', other: '${fmt} values a day')}";

  static m16(howMany, fmt) => "${Intl.plural(howMany, zero: 'No values available', one: '1 value per hour', other: '${fmt} values per hour')}";

  static m17(count) => "${Intl.plural(count, zero: '', one: '(${count} day per reservoir)', other: '(${count} days per reservoir)')}";

  static m18(count) => "${Intl.plural(count, zero: '', one: '( ${count} day per sensor)', other: '( ${count} days per sensor)')}";

  static m19(unit) => "Glucose target area ${unit}";

  static m20(min, max, units) => "Target Range ( ${min} - ${max} ${units} )";

  static m21(value) => "Target Value";

  static m22(begDate) => "valid from ${begDate}";

  static m23(begDate, endDate) => "valid from ${begDate} to ${endDate}";

  static m24(endDate) => "valid until ${endDate}";

  static m25(high) => "Values ​​above ${high}";

  static m26(low) => "Values ​​below ${low}";

  static m27(low, high) => "values ​​between ${low} and ${high}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "1.0.0 - 20.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.0 - 10/20/2018"),
    "1.0.1 - 23.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.1 - 10/23/2018"),
    "1.0.2 - 23.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.2 - 10/23/2018"),
    "1.0.3 - 26.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.3 - 10/26/2018"),
    "1.0.4 - 28.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.4 - 10/28/2018"),
    "1.1.0 - 09.11.2018" : MessageLookupByLibrary.simpleMessage("1.1.0 - 11/09/2018"),
    "1.1.1 - xx.xx.2018" : MessageLookupByLibrary.simpleMessage("1.1.1 - xx.xx.2018"),
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("10% - 90% of the values"),
    "25%" : MessageLookupByLibrary.simpleMessage("25%"),
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("25% - 75% of the values"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "Absturz behoben, der auftrat, wenn kein passendes Profil für einen Zeitpunkt gefunden werden konnte" : MessageLookupByLibrary.simpleMessage("Fixed a crash that occurred when no matching profile could be found for a given time"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("Adjust-\nment"),
    "Anzahl Ampullen" : MessageLookupByLibrary.simpleMessage("Count of reservoirs"),
    "Anzahl Katheter" : MessageLookupByLibrary.simpleMessage("Count of catheters"),
    "Anzahl Messungen" : MessageLookupByLibrary.simpleMessage("Count of values"),
    "Anzahl Sensoren" : MessageLookupByLibrary.simpleMessage("Number of sensors"),
    "Anzahl der Sensoren zur Analyse hinzugefügt" : MessageLookupByLibrary.simpleMessage("Added number of sensors to analysis"),
    "Ausgewertete Tage" : MessageLookupByLibrary.simpleMessage("Evaluated days"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("Analysis"),
    "Basal" : MessageLookupByLibrary.simpleMessage("basal"),
    "Basal mit zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Basal with two decimal places"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("Basal Rate"),
    "Basalrate\nIE / Stunde" : MessageLookupByLibrary.simpleMessage("Basalrate U / hour"),
    "Basalrate mit zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Basalrate with two decimal places"),
    "Behandlungen" : MessageLookupByLibrary.simpleMessage("Treatments"),
    "Bei der Berechnung der Kohlenhydrate werden weitere Datensätze berücksichtigt" : MessageLookupByLibrary.simpleMessage("Additional data is used for the calculation of carbohydrates"),
    "Beim Auslesen des Profils ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("An error occurred while reading the profile."),
    "Beim Erzeugen des PDF ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("An error occurred while creating the PDF."),
    "Beim Laden der Daten wird das entsprechende Datumsformat zur Anzeige verwendet" : MessageLookupByLibrary.simpleMessage("When loading the data, the corresponding date format is used for display of progress"),
    "Benutzer können ein User-Token angeben, um sich mit geschützten Nightscout-Instanzen zu verbinden" : MessageLookupByLibrary.simpleMessage("Users can specify a user token to connect to protected nightscout instances"),
    "Benutzer können nun gelöscht werden" : MessageLookupByLibrary.simpleMessage("Users can now be deleted"),
    "Benutzerdaten" : MessageLookupByLibrary.simpleMessage("User data"),
    "Benutzerdaten werden nun verschlüsselt im Browser gespeichert" : MessageLookupByLibrary.simpleMessage("User data is now stored encrypted in the browser"),
    "Bereite Daten vor..." : MessageLookupByLibrary.simpleMessage("Preparing data..."),
    "Bestätigung" : MessageLookupByLibrary.simpleMessage("Confirmation"),
    "Bisher fehlende Summenwerte in der Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Added missing totals in daily statistics"),
    "Bitte einen Zeitraum wählen." : MessageLookupByLibrary.simpleMessage("Please select a period."),
    "Bolus" : MessageLookupByLibrary.simpleMessage("bolus"),
    "Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr." : MessageLookupByLibrary.simpleMessage("Clicking on the message area no longer closes it."),
    "Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag." : MessageLookupByLibrary.simpleMessage("The basal rate PDF was incorrect if there was not a value for each hour."),
    "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren." : MessageLookupByLibrary.simpleMessage("The PDF was created. If it is not displayed, then probably a popup blocker is active, which prevents the display. Please deactivate this."),
    "Das User-Token wird nur benötigt, wenn der Zugriff in Nightscout über AUTH_DEFAULT_ROLES eingeschränkt wurde" : MessageLookupByLibrary.simpleMessage("The user token is only required if access in Nightscout has been restricted via AUTH_DEFAULT_ROLES"),
    "Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen." : MessageLookupByLibrary.simpleMessage("Data for the glucose values ​​with incorrect date format are read out correctly."),
    "Datenschutzerklärung" : MessageLookupByLibrary.simpleMessage("Data protection "),
    "Datum" : MessageLookupByLibrary.simpleMessage("Date"),
    "Dauer der Insulinaktivität (DIA)" : MessageLookupByLibrary.simpleMessage("Duration of insulin activity (DIA)"),
    "Dauer der Kohlenhydrataktivität" : MessageLookupByLibrary.simpleMessage("Duration of carb activity"),
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
    "Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools, wie dieses hier, auf die Daten zugreifen dürfen.<br><br>Wenn diese URL geschützt ist, muss ausserdem das UserToken korrekt definiert sein." : MessageLookupByLibrary.simpleMessage("The specified URL is not reachable. If the URL is correct, then it may be due to the nightscout settings. In the variable ENABLE must be the word \"cors\", so that external tools, like this one, can access the data. <br> <br> If this URL is protected, API Secret and UserToken must also be defined correctly."),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("This page is used to generate PDF documents with the data stored at Nightscout. Therefore, it is necessary to be able to access this data, which is why a few settings must first be saved. As long as these are not available and valid, the site can do nothing for you."),
    "Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden." : MessageLookupByLibrary.simpleMessage("Added this page. It is displayed each time Nightscout Reporter starts, if it has not been displayed in the current version. In addition, it can be called up again in the burgermenu."),
    "Diverse Abstürze beim Auslesen der Daten bereinigt" : MessageLookupByLibrary.simpleMessage("Fixed various crashes when reading data"),
    "Eigene Grenzwerte" : MessageLookupByLibrary.simpleMessage("Own Target Area"),
    "Einige Formulare können nun mit Parametern konfiguriert werden; hierzu den Pfeil am rechten Rand des Formularbuttons anklicken und im aufgeklappten Bereich die entsprechenden Einstellungen vornehmen; der Pfeil erscheint erst, wenn das Formular zum Ausdruck markiert wurde" : MessageLookupByLibrary.simpleMessage("Some forms can now be configured with parameters; click on the arrow on the right side of the formbutton and make the appropriate settings in the opened area; the arrow will not appear until the form has been marked for printout"),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("Settings"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("Enter settings for using the page"),
    "Einstellungen von Release-Version übernehmen" : MessageLookupByLibrary.simpleMessage("Apply settings from release version"),
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
    "Hinweise auf Nightscout in der Kopf- und Fusszeile des PDFs ausblenden" : MessageLookupByLibrary.simpleMessage("Hide text about Nightscout in the header and footer of the PDF"),
    "Hohe Basalraten werden jetzt besser dargestellt." : MessageLookupByLibrary.simpleMessage("High basal rates are now better represented."),
    "Höchster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Highest value in the period"),
    "IE" : MessageLookupByLibrary.simpleMessage("U"),
    "Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert" : MessageLookupByLibrary.simpleMessage("Numbers and dates in the PDF are formatted according to the selected language"),
    "Impressum" : MessageLookupByLibrary.simpleMessage("Imprint"),
    "Initiale Version, alles ist neu!" : MessageLookupByLibrary.simpleMessage("Initial version, everything is new!"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("Insulin"),
    "Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE" : MessageLookupByLibrary.simpleMessage("Insulin Carb Ratio (ICR) X g Carbs for 1 IU"),
    "Insulin Sensitivitäts Faktoren (ISF)\n1 IE senkt BG um X mg/dl" : MessageLookupByLibrary.simpleMessage("Insulin Sensitivity Factors (ISF) 1 U lowers BG by X mg / dL"),
    "Ja" : MessageLookupByLibrary.simpleMessage("Yes"),
    "Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Site change"),
    "Keine" : MessageLookupByLibrary.simpleMessage("None"),
    "Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Carbohydrates"),
    "Kohlenhydrate und Bolusinsulin werden jetzt in den täglichen Grafiken angezeigt" : MessageLookupByLibrary.simpleMessage("Carbohydrates and bolus insulin are now displayed in the daily graphs"),
    "Legende" : MessageLookupByLibrary.simpleMessage("Legend"),
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
    "Mess-\nwerte" : MessageLookupByLibrary.simpleMessage("Values"),
    "Min" : MessageLookupByLibrary.simpleMessage("Min"),
    "Mittel-\nwert" : MessageLookupByLibrary.simpleMessage("Average"),
    "Name" : MessageLookupByLibrary.simpleMessage("Name"),
    "Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat." : MessageLookupByLibrary.simpleMessage("Name, birthday, insulin and the start date of diabetes can now be left blank without any negative impact on the presentation in the PDF."),
    "Nein" : MessageLookupByLibrary.simpleMessage("No"),
    "Niedrigster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Lowest value in the period"),
    "Nightscout Berichte" : MessageLookupByLibrary.simpleMessage("Nightscout Reports"),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("Nightscout Site"),
    "Normal" : MessageLookupByLibrary.simpleMessage("Normal"),
    "Notizen" : MessageLookupByLibrary.simpleMessage("Notes"),
    "PDF anzeigen" : MessageLookupByLibrary.simpleMessage("Show PDF"),
    "PDF für Profildaten" : MessageLookupByLibrary.simpleMessage("PDF for profile data"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("Open PDF in the same window"),
    "Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Percentile Diagram"),
    "Problem auf GitHub melden" : MessageLookupByLibrary.simpleMessage("Report a problem to GitHub"),
    "Profil" : MessageLookupByLibrary.simpleMessage("Profile"),
    "Profil-Basalrate" : MessageLookupByLibrary.simpleMessage("Profile basalrate"),
    "Profileinstellungen" : MessageLookupByLibrary.simpleMessage("Profilesettings"),
    "Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse." : MessageLookupByLibrary.simpleMessage("Order of PDF pages changed - Percentile Diagram now comes after analysis."),
    "Schliessen" : MessageLookupByLibrary.simpleMessage("Close"),
    "Schliessen Button im Nachrichtenbereich hinzugefügt." : MessageLookupByLibrary.simpleMessage("Close button added in the message area."),
    "Sensorwechsel" : MessageLookupByLibrary.simpleMessage("Sensor change"),
    "Soll der Benutzer mit der URL" : MessageLookupByLibrary.simpleMessage("Should the user with the URL"),
    "Spalte HbA1c" : MessageLookupByLibrary.simpleMessage("Column A1C"),
    "Spalte HbA1c zu Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Added column A1C to daily statistics"),
    "Spalte Messwerte" : MessageLookupByLibrary.simpleMessage("Column valuecount"),
    "Spalte Standardabweichung" : MessageLookupByLibrary.simpleMessage("Column standard deviation"),
    "Spalten Perzentile" : MessageLookupByLibrary.simpleMessage("Columns percentiles"),
    "Spaltenbreite der Informationen in der Analyse erhöht" : MessageLookupByLibrary.simpleMessage("Column width of the information in the analysis increased"),
    "Speichern" : MessageLookupByLibrary.simpleMessage("save"),
    "Standardgrenzwerte" : MessageLookupByLibrary.simpleMessage("Standard Target Area"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("SDev."),
    "Stunden" : MessageLookupByLibrary.simpleMessage("hours"),
    "Summen für Bolus Insulin, Basalrate für den Tag und Basalrate aus dem Profil zur Tagesgrafik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Sums for bolus insulin, basal rate for the day, and basalrate from the profile added to the daily chart"),
    "Symbole (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Symbols (catheters etc.)"),
    "Tages-Basalrate" : MessageLookupByLibrary.simpleMessage("Daily basalrate"),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("Daily Chart"),
    "Tagesgrafikparameter zur Anzeige der Legende" : MessageLookupByLibrary.simpleMessage("Daily graphic parameters for displaying the legend"),
    "Tagesgrafikparameter zur Anzeige von Notizen" : MessageLookupByLibrary.simpleMessage("Daily graphic parameters for displaying notes"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("Daily Statistics"),
    "Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt" : MessageLookupByLibrary.simpleMessage("Temporary basal rates with absolute values ​​are displayed correctly"),
    "This page is also available in english" : MessageLookupByLibrary.simpleMessage("Diese Seite ist auch auf Deutsch verfügbar"),
    "Titelangaben für Datumsbereiche auf den PDFs vereinheitlicht" : MessageLookupByLibrary.simpleMessage("Title information for date ranges on the PDFs are unified"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("Time"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("Time"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("Url to Nightscout-API (e.g. https://xxx.herokuapp.com)"),
    "User-Token" : MessageLookupByLibrary.simpleMessage("User-Token"),
    "Version" : MessageLookupByLibrary.simpleMessage("Version"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("Distribution"),
    "Vier Grafiken pro Seite" : MessageLookupByLibrary.simpleMessage("Four graphics per page"),
    "ViewWhatsnewComponent0__message_11" : m0,
    "Was bisher geschah..." : MessageLookupByLibrary.simpleMessage("What happened up to now..."),
    "Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet" : MessageLookupByLibrary.simpleMessage("If the thresholds in Nightscout (BG_TARGET_BOTTOM and BG_TARGET_TOP) are equal to 70 and 180, then the area for the default targets will be hidden on the analysis page"),
    "Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt." : MessageLookupByLibrary.simpleMessage("If no data is available, blank pages will be generated with an appropriate hint."),
    "Willkommen" : MessageLookupByLibrary.simpleMessage("Welcome"),
    "Willkommen bei Nightscout Reporter!" : MessageLookupByLibrary.simpleMessage("Welcome to Nightscout Reporter!"),
    "Zeitraum" : MessageLookupByLibrary.simpleMessage("Period"),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("Additional functions"),
    "Zusätzliche Informationen zu den PDFs und im UI hinzugefügt" : MessageLookupByLibrary.simpleMessage("added additional information about the PDFs and in the UI"),
    "Zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Two decimal places"),
    "bis" : MessageLookupByLibrary.simpleMessage("to"),
    "g / Stunde" : MessageLookupByLibrary.simpleMessage("g / hour"),
    "gesch.\nHbA1c" : MessageLookupByLibrary.simpleMessage("est. A1C"),
    "geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("estimated A1C"),
    "msgBasalrateDay" : m1,
    "msgBasalrateProfile" : m2,
    "msgBolusInsulin" : m3,
    "msgCatheterDays" : m4,
    "msgCheckUser" : m5,
    "msgDaySum" : m6,
    "msgFactorEntry" : m7,
    "msgHigh" : m8,
    "msgKH" : m9,
    "msgKHBE" : m10,
    "msgLoadingData" : m11,
    "msgLoadingDataFor" : m12,
    "msgLow" : m13,
    "msgReadingsInMinutes" : m14,
    "msgReadingsPerDay" : m15,
    "msgReadingsPerHour" : m16,
    "msgReservoirDays" : m17,
    "msgSensorDays" : m18,
    "msgTarget" : m19,
    "msgTargetArea" : m20,
    "msgTargetValue" : m21,
    "msgValidFrom" : m22,
    "msgValidRange" : m23,
    "msgValidTo" : m24,
    "msgValuesAbove" : m25,
    "msgValuesBelow" : m26,
    "msgValuesIn" : m27,
    "ok" : MessageLookupByLibrary.simpleMessage("ok"),
    "verwerfen" : MessageLookupByLibrary.simpleMessage("discard"),
    "wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("really be deleted?"),
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("Avg. Basal per day"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("Avg. Bolus per day"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("Avg. Insulin per day"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("Avg. Insulin ratio"),
    "Ø KH pro Tag" : MessageLookupByLibrary.simpleMessage("Avg. Carbs per day"),
    "Ø Zuckerwert" : MessageLookupByLibrary.simpleMessage("Avg. Glucose"),
    "Überprüfe Zugriff auf Nightscout ..." : MessageLookupByLibrary.simpleMessage("Checking access to Nightscout ..."),
    "Übersetzungen korrigiert" : MessageLookupByLibrary.simpleMessage("Corrected translations")
  };
}
