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

  static m0(startTag0, endTag0) => "The possibility for beta functions has been removed; the beta version can now be found at ${startTag0}https://nightscout-reporter.zreptil.de/beta${endTag0}";

  static m1(value) => "Basalrate for the day (${value})";

  static m2(value) => "Basalrate from the profile (${value})";

  static m3(value) => "Bolus Insulin (${value})";

  static m4(value) => "Meal Bolus (${value})";

  static m5(value) => "Carbs (${value}g)";

  static m6(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} day per catheter)', other: '(${txt} days per catheter)')}";

  static m7(name, from, to) => "${name} changed from ${from} to ${to}";

  static m8(url) => "Checking access to ${url}...";

  static m9(value) => "Correction Bolus (${value})";

  static m10(value) => "${Intl.plural(value, zero: 'No value', one: '1 value', other: '${value} values')}";

  static m11(value) => "${value} Days";

  static m12(beg, end) => "${beg} - ${end}";

  static m13(max) => "bad (greater than ${max})";

  static m14(min, max) => "good (${min} to ${max})";

  static m15(min) => "not available (less than ${min})";

  static m16(min, max) => "very good (${min} to ${max})";

  static m17(value) => "High${value}";

  static m18(value) => "Historical ${value}";

  static m19(unit) => "Insulin Sensitivity Factors (ISF) 1 IU reduces BG by X ${unit}";

  static m20(value) => "${value}g";

  static m21(value) => "g CH (${value} BU)";

  static m22(value) => "Total Daily Dose (${value})";

  static m23(error, stacktrace) => "Error loading data: ${error} ${stacktrace}";

  static m24(date) => "Loading data for ${date}...";

  static m25(value) => "Low${value}";

  static m26(min, max) => "bad (${min} to ${max})";

  static m27(min, max) => "good (${min} to ${max})";

  static m28(max) => "very poor (greater than ${max})";

  static m29(min) => "excellent (less than ${min})";

  static m30(oldName, newName) => "Profileswitch - ${oldName} => ${newName}";

  static m31(howMany, fmt) => "${Intl.plural(howMany, zero: 'No values available', one: '1 value per minute', other: 'value every ${fmt} minute')}";

  static m32(howMany, fmt) => "${Intl.plural(howMany, zero: 'No values available', one: '1 value per day', other: '${fmt} values per day')}";

  static m33(howMany, fmt) => "${Intl.plural(howMany, zero: 'No values available', one: '1 value per hour', other: '${fmt} values per hour')}";

  static m34(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} day per reservoir)', other: '(${txt} days per reservoir)')}";

  static m35(value) => "SMB (${value})";

  static m36(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} day per sensor)', other: '(${txt} days per sensor)')}";

  static m37(value) => "(SDev ${value})";

  static m38(unit) => "Glucose target area ${unit}";

  static m39(min, max, units) => "Target Range (${min} - ${max} ${units})";

  static m40(value) => "Target Value";

  static m41(time) => "${time}";

  static m42(time) => "${time} am";

  static m43(time) => "${time} pm";

  static m44(begDate) => "valid since ${begDate}";

  static m45(begDate, endDate) => "valid from ${begDate} to ${endDate}";

  static m46(endDate) => "valid until ${endDate}";

  static m47(high) => "Values ​​above ${high}";

  static m48(low) => "Values ​​below ${low}";

  static m49(low, high) => "Values ​​between ${low} and ${high}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "1.0.0 - 20.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.0 - 10/20/2018"),
    "1.0.1 - 23.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.1 - 10/23/2018"),
    "1.0.2 - 23.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.2 - 10/23/2018"),
    "1.0.3 - 26.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.3 - 10/26/2018"),
    "1.0.4 - 28.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.4 - 10/28/2018"),
    "1.1.0 - 09.11.2018" : MessageLookupByLibrary.simpleMessage("1.1.0 - 11/09/2018"),
    "1.1.1 - 19.11.2018" : MessageLookupByLibrary.simpleMessage("1.1.1 - 11/19/2018"),
    "1.1.2 - 08.01.2019" : MessageLookupByLibrary.simpleMessage("1.1.2 - 01/08/2019"),
    "1.2.0 - 21.01.2019" : MessageLookupByLibrary.simpleMessage("1.2.0 - 01/21/2019"),
    "1.2.1 - 22.01.2019" : MessageLookupByLibrary.simpleMessage("1.2.1 - 01/22/2019"),
    "1.2.10 - 18.04.2019" : MessageLookupByLibrary.simpleMessage("1.2.10 - 18/04/2019"),
    "1.2.11 - 17.05.2019" : MessageLookupByLibrary.simpleMessage("1.2.11 - 05/17/2019"),
    "1.2.2 - 24.01.2019" : MessageLookupByLibrary.simpleMessage("1.2.2 - 01/24/2019"),
    "1.2.3 - 04.02.2019" : MessageLookupByLibrary.simpleMessage("1.2.3 - 02/04/2019"),
    "1.2.4 - 12.02.2019" : MessageLookupByLibrary.simpleMessage("1.2.4 - 02/12/2019"),
    "1.2.5 - 25.03.2019" : MessageLookupByLibrary.simpleMessage("1.2.5 - 03/25/2019"),
    "1.2.6 - 27.03.2019" : MessageLookupByLibrary.simpleMessage("1.2.6 - 03/27/2019"),
    "1.2.7 - 28.03.2019" : MessageLookupByLibrary.simpleMessage("1.2.7 - 03/28/2019"),
    "1.2.8 - 11.04.2019" : MessageLookupByLibrary.simpleMessage("1.2.8 - 04/11/2019"),
    "1.2.9 - 15.04.2019" : MessageLookupByLibrary.simpleMessage("1.2.9 - 04/15/2019"),
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("10% - 90% of the values"),
    "25%" : MessageLookupByLibrary.simpleMessage("25%"),
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("25% - 75% of the values"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "Absturz behoben, der auftrat, wenn kein passendes Profil für einen Zeitpunkt gefunden werden konnte" : MessageLookupByLibrary.simpleMessage("Fixed a crash that occurred when no matching profile could be found for a given time"),
    "Aktuelle Periode" : MessageLookupByLibrary.simpleMessage("Current period"),
    "Als ersten Tag der Woche festlegen" : MessageLookupByLibrary.simpleMessage("Define as first day of week"),
    "Anmelden" : MessageLookupByLibrary.simpleMessage("Sign In"),
    "Anmeldung erfolgreich" : MessageLookupByLibrary.simpleMessage("Login successful"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("Adjust-\nment"),
    "Anzahl Ampullen" : MessageLookupByLibrary.simpleMessage("Count of reservoirs"),
    "Anzahl Katheter" : MessageLookupByLibrary.simpleMessage("Count of catheters"),
    "Anzahl Messungen" : MessageLookupByLibrary.simpleMessage("Count of values"),
    "Anzahl Sensoren" : MessageLookupByLibrary.simpleMessage("Number of sensors"),
    "Anzahl der Sensoren zur Analyse hinzugefügt" : MessageLookupByLibrary.simpleMessage("Added number of sensors to analysis"),
    "Auf der Analyseseite kann statt der Anzahl der Werte bei den Zielbereichen jetzt die Standardabweichung der Werte im Zielbereich angezeigt werden." : MessageLookupByLibrary.simpleMessage("The standard deviation of the values in the target area can now be displayed on the analysis page instead of the number of values."),
    "Auf der Analyseseite werden nun auch GVI und PGS ausgegeben." : MessageLookupByLibrary.simpleMessage("The analysis page now also shows GVI and PGS."),
    "Auf der Analyseseite wird jetzt auch die Standardabweichung aller Werte der Periode angezeigt." : MessageLookupByLibrary.simpleMessage("Now also the standard deviation of all values of the period will be shown on the analysis page."),
    "Auf der Profilseite wurde die Spalte für die Werte von ICR verbreitert." : MessageLookupByLibrary.simpleMessage("Increased the width of column for ICR on the profilepage."),
    "Aufsummierte Werte" : MessageLookupByLibrary.simpleMessage("Summed up values"),
    "Ausgewertete Tage" : MessageLookupByLibrary.simpleMessage("Evaluated days"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("Analysis"),
    "Basal" : MessageLookupByLibrary.simpleMessage("Basal"),
    "Basal mit zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Basal with two decimal places"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("Basalrate"),
    "Basalrate\nIE / Stunde" : MessageLookupByLibrary.simpleMessage("Basalrate U / hour"),
    "Behandlungen" : MessageLookupByLibrary.simpleMessage("Treatments"),
    "Bei Tagesgrafiken und Wochengrafiken gibt es jetzt die Möglichkeit 1, 2, 4, 8 oder 16 Grafiken auf einer Seite zu platzieren." : MessageLookupByLibrary.simpleMessage("In daily graphics and weekly graphics there is now the possibility to place 1, 2, 4, 8 or 16 images on a page."),
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
    "Bis" : MessageLookupByLibrary.simpleMessage("To"),
    "Bisher fehlende Summenwerte in der Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Added missing totals in daily statistics"),
    "Bitte einen Zeitraum wählen." : MessageLookupByLibrary.simpleMessage("Please select a period."),
    "Bitte überprüfe die Aktivierung der Wochentage unter dem Monat" : MessageLookupByLibrary.simpleMessage("Please check activation of the days of the week below the month"),
    "Blutwerte werden jetzt auch bei mmol/L in den Grafiken korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Blood values are displayed correctly now in mmol/L in the graphics."),
    "Bolus" : MessageLookupByLibrary.simpleMessage("Bolus"),
    "Bolusarten anzeigen" : MessageLookupByLibrary.simpleMessage("Show bolus types"),
    "Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr." : MessageLookupByLibrary.simpleMessage("Clicking on the message area no longer closes it."),
    "Das Control für die Eingabe des Zeitraums wurde angepasst, damit es auf schmalen Display auch korrekt dargestellt wird." : MessageLookupByLibrary.simpleMessage("The control for the definition of the period has been adjusted so that it is displayed correctly on narrow display."),
    "Das Enddatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("The end date is not correct"),
    "Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag." : MessageLookupByLibrary.simpleMessage("The basal rate PDF was incorrect if there was not a value for each hour."),
    "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren." : MessageLookupByLibrary.simpleMessage("The PDF was created. If it is not displayed, then probably a popup blocker is active, which prevents the display. Please deactivate this."),
    "Das Profil-PDF wird nun im Querformat erzeugt, um auch Profile mit vielen Einträgen für die Parameter brauchbar darstellen zu können." : MessageLookupByLibrary.simpleMessage("The profile PDF is now created in landscape format so that profiles with many entries for the parameters can also be displayed."),
    "Das Startdatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("The start date is not correct"),
    "Das User-Token wird nur benötigt, wenn der Zugriff in Nightscout über AUTH_DEFAULT_ROLES eingeschränkt wurde" : MessageLookupByLibrary.simpleMessage("The user token is only required if access in Nightscout has been restricted via AUTH_DEFAULT_ROLES"),
    "Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen." : MessageLookupByLibrary.simpleMessage("Data for the glucose values ​​with incorrect date format are read out correctly."),
    "Daten verschiedener Uploader werden nun besser interpretiert." : MessageLookupByLibrary.simpleMessage("Data from different uploaders is now better interpreted."),
    "Daten, die von xDrip als sync markiert wurden, werden bei der Auswertung ignoriert." : MessageLookupByLibrary.simpleMessage("Data which was marked as sync by xDrip will be ignored in the caluclations."),
    "Datenschutzerklärung" : MessageLookupByLibrary.simpleMessage("Data protection"),
    "Datum" : MessageLookupByLibrary.simpleMessage("Date"),
    "Dauer der Insulinaktivität (DIA)" : MessageLookupByLibrary.simpleMessage("Duration of insulin activity (DIA)"),
    "Dauer der Kohlenhydrataktivität" : MessageLookupByLibrary.simpleMessage("Duration of carb activity"),
    "Der Fehler im Profil, der dazu führte, dass die Werte für ISF und Zielbereich falsch umgerechnet werden, wurde behoben." : MessageLookupByLibrary.simpleMessage("Fixed the bug in the profile that caused the ISF and target range values to be incorrectly converted."),
    "Der Zeitraum enthält keine auswertbaren Tage" : MessageLookupByLibrary.simpleMessage("The period contains no evaluable days"),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("Deutsch"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("Diabetes since"),
    "Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an" : MessageLookupByLibrary.simpleMessage("The analysis page has been redesigned and now displays headings above the areas"),
    "Die Angabe DIA auf der Profilseite wird nun mit zwei Nachkommastellen angezeigt." : MessageLookupByLibrary.simpleMessage("DIA on the profile page is now displayed with two decimal places."),
    "Die Aufteilung auf mehrere PDF-Dateien funktioniert jetzt besser." : MessageLookupByLibrary.simpleMessage("The division into multiple PDF files works better now."),
    "Die Auswahl des Zeitraums ist nun flexibler. Die Auswahl erfolgt in einem Dialog, der die eingestellte Sprache berücksichtigt. Mit der Auswahl der vorbelegten Bereiche (Heute, Letzte Woche, usw.) wird festgelegt, dass beim nächsten Aufruf das aktuelle Datum als Grundlage für den Bereich verwendet wird. Wenn der Bereich direkt im Kalender festgelegt wird, dann gilt dieser beim nächsten Aufruf so wie er festgelegt wurde. Standardmässig ist der erste Tag der Woche jetzt ein Montag. Dieser kann aber durch Anklicken des Wochentags in der Titelzeile des Monats auf die eigene Präferenz festgelegt werden. Die Eingabe der Datumsfelder erfolgt in der Form, die der Sprache entspricht (Tag.Monat.Jahr für deutsch, Monat/Tag/Jahr für englisch)." : MessageLookupByLibrary.simpleMessage("The selection of the period is now more flexible. The selection is done in a dialog that takes the language into account. Selecting the default ranges (today, last week, etc.) sets the current date as the basis for the range at the next call. If the range is set directly in the calendar, then it will be applied the next time as defined. By default, the first day of the week is now a Monday. However, this can be set to your own preference by clicking on the day of the week in the title bar of the month. The date fields are entered in the form that corresponds to the language (day.month.year for German, month/day / year for English)."),
    "Die Balken für das Bolusinsulin in der Tagesgrafik werden nun entsprechend dem Maximalwert an Bolusinsulin an dem Tag skaliert." : MessageLookupByLibrary.simpleMessage("The bars for the bolus insulin in the daily graph are now scaled according to the maximum bolus insulin at that day."),
    "Die Berechnung der Summenzeile auf der Seite Tagesstatistik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("The calculation of the totals row on the Daily Statistics page has been corrected."),
    "Die Berechnung der tatsächlichen Basalrate wurde korrigiert." : MessageLookupByLibrary.simpleMessage("The calculation of actual basal rate was corrected."),
    "Die Berechnung des täglichen Insulins berücksichtigt nun auch die SMB." : MessageLookupByLibrary.simpleMessage("The calculation of the daily insulin now also takes the SMB into account."),
    "Die Daten, die Du hier eingibst, werden normalerweise im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. In diesem Fall werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("The data you enter here will be stored in the localStorage of the browser. This contains website-related data that can only be read out from this website. No cookies are used and no data is stored on servers. Only a connection to the specified Nightscout instance is set up and the data available there is read out to create a PDF document. This can then be submitted to the diabetes counselor or other interested party."),
    "Die Farben für Dialoge und Scrollbars wurden angepasst." : MessageLookupByLibrary.simpleMessage("The colors for dialogs and scrollbars have been adjusted."),
    "Die Genauigkeit der Insulindosierung wird aus dem Profil ermittelt. Der Wert mit der höchsten Genauigkeit legt fest, mit wieviel Nachkommastellen Basalratenwerte angezeigt werden." : MessageLookupByLibrary.simpleMessage("The accuracy of the insulin dosage is determined from the profile. The value with the highest precision defines how many decimalplaces are used for display of basalvalues."),
    "Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit." : MessageLookupByLibrary.simpleMessage("The glucose graph of the daily graphs has been freed from missing data."),
    "Die Icons auf einigen Buttons waren zu nahe am Text" : MessageLookupByLibrary.simpleMessage("The icons on some buttons were too close to the text"),
    "Die Kohlenhydratangaben auf der Tagesgrafik werden jetzt ohne den Zusatz KH ausgegeben." : MessageLookupByLibrary.simpleMessage("The carbohydrate information on the daily graph is now output without the suffix KH."),
    "Die Links zu Nightscout und den Reports von Nightscout im Menü funktionieren jetzt auch richtig, wenn ein Usertoken angegeben wurde." : MessageLookupByLibrary.simpleMessage("The menu links to Nightscout and the reports of Nightscout now also work correctly when a usertoken was provided."),
    "Die Microboli des Minimed 600 Uploaders werden jetzt auch ermittelt und in der Analyse ausgegeben, wenn sie vorhanden sind." : MessageLookupByLibrary.simpleMessage("The microboli of the Minimed 600 Uploader are now also identified and output in the analysis, if they exist."),
    "Die Mischung von zwei Seiten auf einer PDF-Seite, die manchmal vorkam, wurde behoben." : MessageLookupByLibrary.simpleMessage("The mixture of two pages on one PDF page, which sometimes occurred has been fixed."),
    "Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird" : MessageLookupByLibrary.simpleMessage("The ability to display the URL in the title bar has been removed since the current user or his URL is now displayed directly"),
    "Die Positionierung der Notizen in der Tagesgrafik wurde korrigiert, so dass sie näher an der Uhrzeit stehen. Die Striche wurden so verkürzt, dass sie nur noch bis zum unteren Rand der Grafik gehen und nicht mehr durch die Wertetabelle." : MessageLookupByLibrary.simpleMessage("The positioning of the notes in the daily chart has been corrected so that they are closer to the time. The strokes were shortened so that they go only to the bottom of the graph and not through the table of values."),
    "Die Profilseite wurde angepasst, damit Einträge für 24 Stunden auf eine Seite passen." : MessageLookupByLibrary.simpleMessage("The profile page has been adapted so that entries for 24 hours fit on one page."),
    "Die Reihenfolge der Formulare kann nun verändert werden. Dazu einfach das Handle auf der linken Seite des Buttons für das Formular anklicken, festhalten und an die Stelle ziehen, vor der es ausgedruckt werden soll." : MessageLookupByLibrary.simpleMessage("The order of the forms can now be changed. Simply click on the handle on the left side of the button for the form, hold it and drag it to the place where it should be printed."),
    "Die Skalen an den Grafiken wurden überarbeitet. Sie zeigen jetzt für mmol/L ganzzahlige Werte an und die Einheiten wurden entfernt. Diese stehen nur noch unten an der Grafik. Das betrifft die täglichen Grafiken, wöchentlichen Grafiken und das Glukose Percentil Diagramm." : MessageLookupByLibrary.simpleMessage("The scales on the graphics have been updated. Now they show whole numbers for mmol/L and the units have been removed. These are shown at the bottom of the graphics. This includes the daily graphics, weekly graphics and the glucose percentile chart."),
    "Die Spalten auf der Profilseite wurden korrigiert, damit auch längere Zeitnamen (z.B. in spanisch) Platz finden." : MessageLookupByLibrary.simpleMessage("The columns on the page have been corrected to accommodate longer time names (e.g. in Spanish)."),
    "Die Standardabweichung wird jetzt auch bei mmol/L korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Standard deviation is now also shown correctly when using mmol/L."),
    "Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an" : MessageLookupByLibrary.simpleMessage("The daily statistics now display mmol/l values ​​correctly"),
    "Die URL wurde noch nicht festgelegt" : MessageLookupByLibrary.simpleMessage("The URL has not been set yet"),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("The URL has not been set yet."),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("The website mainly uses Javascript to do its job. When creating the PDF document Javascript and PHP are used."),
    "Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt" : MessageLookupByLibrary.simpleMessage("The values ​​for the default target range on the analysis page are now calculated correctly"),
    "Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools, wie dieses hier, auf die Daten zugreifen dürfen.<br><br>Wenn diese URL geschützt ist, muss ausserdem das UserToken korrekt definiert sein." : MessageLookupByLibrary.simpleMessage("The specified URL is not reachable. If the URL is correct, then it may be due to the nightscout settings. In the variable ENABLE must be the word \"cors\", so that external tools, like this one, can access the data. <br> <br> If this URL is protected, API Secret and UserToken must also be defined correctly."),
    "Die eigenen Grenzwerte auf der Analyseseite in mmol/L werden nun korrekt berechnet." : MessageLookupByLibrary.simpleMessage("The own limits on the analysis page in mmol/L are now calculated correctly."),
    "Die fehlerhafte Platzierug der blutigen Werte bei mmol/L in der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Fixed the erroneous placement of the bloody values in the daily graph when using mmol/L."),
    "Die fehlerhafte Zentrierung der Auswahlbuttons wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Wrong alignment of buttons on mainpage has been fixed."),
    "Die mittlerweile überflüssige Option zur Darstellung der Basalrate mit zwei Nachkommastellen wurde aus der Tagesgrafik entfernt." : MessageLookupByLibrary.simpleMessage("Removed the obsolete option for the decimals of the basalrate from the daily graphics."),
    "Die teilweise falsch zugewiesenen Grenzwerte für die Bereiche (niedrig, normal, hoch) wurden korrigiert." : MessageLookupByLibrary.simpleMessage("The partially misallocated limits for the areas (low, normal, high) have been corrected."),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("This page is used to generate PDF documents with the data stored at Nightscout. Therefore, it is necessary to be able to access this data, which is why a few settings must first be saved. As long as these are not available and valid, the site can do nothing for you."),
    "Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden." : MessageLookupByLibrary.simpleMessage("Added this page. It is displayed each time Nightscout Reporter starts, if it has not been displayed in the current version. In addition, it can be called up again in the burgermenu."),
    "Dieser Regler legt fest, wie gross eine Ausgabe maximal werden darf, bevor sie auf mehrere PDF-Dateien aufgeteilt wird. Wenn bei Erstellung eines PDFs ein leeres Fenster angezeigt wird, dann hilft es normalerweise, diesen Regler weiter nach links zu bewegen." : MessageLookupByLibrary.simpleMessage("This slider defines the maximum size allowed before the PDF will be split into multiple files. If a blank window is displayed when creating a PDF, it usually helps to move this slider further to the left."),
    "Diverse Abstürze beim Auslesen der Daten bereinigt" : MessageLookupByLibrary.simpleMessage("Fixed various crashes when reading data"),
    "Eigene Grenzwerte" : MessageLookupByLibrary.simpleMessage("Own Target Area"),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die letzten Tage bestimmter Monate nicht im Kalender-Control angezeigt wurden." : MessageLookupByLibrary.simpleMessage("Fixed a bug that caused the last days of certain months not to be displayed in the calendar control."),
    "Ein Fehler wurde wahrscheinlich behoben, der dazu führt, dass bei manchen Profilen der Wert für DIA nicht korrekt ausgelesen wurde." : MessageLookupByLibrary.simpleMessage("An error has probably been fixed that causes some profiles to miss the value for DIA incorrectly."),
    "Ein Link zur Facebookseite von Nightscout Reporter wurde im Menü hinzugefügt." : MessageLookupByLibrary.simpleMessage("A link to the Facebook page of Nightscout Reporter was added to the menu."),
    "Einige Browser sind nicht in der Lage PDF Dateien anzuzeigen, die eine bestimmte Grösse überschreiten. Da das von verschiedenen Faktoren abhängt, die sich nicht ohne Weiteres automatisch ermitteln lassen, gibt es die Möglichkeit, statt einer grossen PDF Datei, die nicht angezeigt werden kann, mehrere kleinere PDF Dateien zu erzeugen, die der Browser anzeigen kann. In den Einstellungen und hier kann diese Grösse festgelegt werden. Diese Seite hier wird nur angezeigt, wenn das PDF aufgeteilt werden musste. Wenn nur ein PDF erzeugt wurde, dann wird es direkt angezeigt." : MessageLookupByLibrary.simpleMessage("Some browsers are unable to display PDF files that exceed a certain size. Since this depends on various factors which can not be easily determined automatically, there is the possibility to generate several smaller PDF files that the browser can display instead of a large PDF file that can not be displayed. This size can be specified in the settings and here. This page is only shown if the PDF had to be split. If only one PDF was created then it will be displayed directly."),
    "Einige Formulare können nun mit Parametern konfiguriert werden; hierzu den Pfeil am rechten Rand des Formularbuttons anklicken und im aufgeklappten Bereich die entsprechenden Einstellungen vornehmen; der Pfeil erscheint erst, wenn das Formular zum Ausdruck markiert wurde" : MessageLookupByLibrary.simpleMessage("Some forms can now be configured with parameters; click on the arrow on the right side of the formbutton and make the appropriate settings in the opened area; the arrow will not appear until the form has been marked for printout"),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("Settings"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("Settings for using the page"),
    "Einstellungen von Release-Version übernehmen" : MessageLookupByLibrary.simpleMessage("Apply settings from release version"),
    "English (GB)" : MessageLookupByLibrary.simpleMessage("English (GB)"),
    "English (USA)" : MessageLookupByLibrary.simpleMessage("English (USA)"),
    "Erzeuge PDF..." : MessageLookupByLibrary.simpleMessage("Creating PDF..."),
    "Es gibt in den Einstellungen eine Option, das PDF herunterladen zu lassen, statt es im Browser direkt anzeigen zu lassen. Das wird für Browser wie Edge benötigt." : MessageLookupByLibrary.simpleMessage("There is an option in the settings to download the PDF instead of having it displayed directly in the browser. This is needed for browsers like Edge."),
    "Es gibt in den Einstellungen eine neue Option, um den letzten in Nightscout gespeicherten Glukosewert in der Titelzeile anzeigen zu lassen. Wenn diese Option aktiviert ist, wird der aktuelle Wert, das Alter des Wertes, der Trendpfeil und die Differenz zum vorherigen Wert rechts in der Titelzeile angezeigt. Diese Anzeige wird jede Minute aktualisiert, solange das Browserfenster den Eingabefokus besitzt. Wenn es diesen nicht hat, wird die Aktualisierung angehalten und der Wert ausgeblendet, um nicht unnötig Systemresourcen zu belasten." : MessageLookupByLibrary.simpleMessage("There is a new option in the settings to display the last glucose value stored in Nightscout in the title bar. If this option is enabled, the current value, the age of the value, the trend arrow and the difference to the previous value is displayed at the right side of the title bar. This display is updated every minute as long as your browser window has the input focus. If it hasn\'t the focus, the update is stopped and the value is hidden to avoid unnecessary burden on system resources."),
    "Es gibt jetzt auch die Möglichkeit, Nightscout Reporter in europäischem Englisch darzustellen. Der Unterschied zum amerikanischen Englisch besteht derzeit lediglich im Datumsformat (gb: dd/MM/yyyy, us: MM/dd/yyyy)." : MessageLookupByLibrary.simpleMessage("There is now also the possibility to use Nightscout Reporter in European English. The difference to American English currently exists only in the date format (gb: dd/MM/yyyy, us: MM/dd/yyyy)."),
    "Es gibt jetzt die Möglichkeit, PDFs vergangener Zeiträume zu erzeugen, ohne den Zeitraum anpassen zu müssen. Oberhalb des Buttons zur PDF-Erzeugung gibt es zwei Buttons, welche die PDFs für eine frühere Periode erzeugen. Der untere der beiden Buttons erzeugt die Vorperiode, der obere die vorletzte Periode. Auf den Buttons wird das Startdatum und das Enddatum angezeigt. Wenn z.B. als Zeitraum \"Letzte 2 Wochen\" gewählt wurde, dann wird mit dem unteren Button der Zeitraum von zwei Wochen beginnend vor vier Wochen erzeugt und mit dem oberen Button der Zeitraum von zwei Wochen beginnend vor sechs Wochen. Auf diese Art kann man recht einfach Vergleichsberichte erzeugen, um die Entwicklung der Werte zu erkennen. Auf den Seiten wird für diese Ausdrucke in der Kopfzeile das Wort \"Historisch 1\", bzw. \"Historisch 2\" oberhalb des Zeitraums ausgegeben. So kann man beim Vergleich der Werte die Daten voneinander unterscheiden." : MessageLookupByLibrary.simpleMessage("There is now the ability to generate PDFs of past periods without having to adjust the period. there are two buttons for earlier periods above the button for creating PDF which generate the PDFs. The lower of the two buttons generates the previous period, the upper one the penultimate period. The buttons show the start date and the end date. If the period \"last 2 weeks\" is selected, then the lower button creates the period from two weeks starting four weeks ago and the upper button the period from two weeks starting six weeks ago. In this way, it is easy to generate comparison reports to detect the development of the values. The words \"Historical 1\" or \"Historical 2\" are placed above the period on the pages for these printouts in the header. So you can distinguish the data from each other when comparing the sheets."),
    "Es ist jetzt möglich, die Wochentage festzulegen, die im Zeitraum berücksichtigt werden sollen. Die entsprechenden Tage werden bei der Auswahl des Zeitraums mit den Buttons unterhalb des Monats festgelegt. Auf den PDFs werden Zeiträume dann zusätzlich mit der Information versehen, welche Wochentage berücksichtigt werden, wenn es nicht alle sind." : MessageLookupByLibrary.simpleMessage("It is now possible to set the days of the week that should be used in the period. When selecting a period the corresponding days are set with the buttons below the month. On the PDFs, the periods are shown with the days of the week that are used, if at least one is missing."),
    "Es sind keine Daten für den Ausdruck vorhanden" : MessageLookupByLibrary.simpleMessage("There is no data for the printout"),
    "Español" : MessageLookupByLibrary.simpleMessage("Español"),
    "Facebook Seite" : MessageLookupByLibrary.simpleMessage("Facebook page"),
    "Fehler beim Laden der Daten" : MessageLookupByLibrary.simpleMessage("Error loading data"),
    "Fehler werden besser abgefangen und mit sinnvollem Text ersetzt." : MessageLookupByLibrary.simpleMessage("Errors are better intercepted and replaced with more meaningful text."),
    "Fehlerhafte Ausgabe der Blutzuckerwerte in der täglichen Grafik korrigiert." : MessageLookupByLibrary.simpleMessage("Fixed incorrect output of blood glucose levels in the daily graph."),
    "Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt" : MessageLookupByLibrary.simpleMessage("Faulty values ​​are no longer considered in the evaluation of the graphics; these are recognized by the value \"NONE\" in the data field \"direction\""),
    "Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt." : MessageLookupByLibrary.simpleMessage("Error message when loading profiles without start date removed."),
    "Für die Tagesgrafik gibt es jetzt eine Option, um die Aufsummierung nahe beieinander liegender Werte umzuschalten." : MessageLookupByLibrary.simpleMessage("There is now an option for the daily graphics to toggle the accumulation of close values."),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("Birthday"),
    "Ges." : MessageLookupByLibrary.simpleMessage("Sum"),
    "Geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("Estimated A1C"),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Glucose Percentile Diagram"),
    "Glukose im Zielbereich" : MessageLookupByLibrary.simpleMessage("Glucose in the target area"),
    "Glukose zu hoch" : MessageLookupByLibrary.simpleMessage("Glucose too high"),
    "Glukose zu niedrig" : MessageLookupByLibrary.simpleMessage("Glucose too low"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("Glucose curve"),
    "Glykämischer Variabilitäts Index (GVI)" : MessageLookupByLibrary.simpleMessage("Glycemic Variability Index (GVI)"),
    "Grafiken pro Seite" : MessageLookupByLibrary.simpleMessage("Graphics per page"),
    "Gross" : MessageLookupByLibrary.simpleMessage("Big"),
    "Heute" : MessageLookupByLibrary.simpleMessage("Today"),
    "Hinweise auf Nightscout in der Kopf- und Fusszeile des PDFs ausblenden" : MessageLookupByLibrary.simpleMessage("Hide text about Nightscout in the header and footer of the PDF"),
    "Hohe Basalraten werden jetzt besser dargestellt." : MessageLookupByLibrary.simpleMessage("High basal rates are now better represented."),
    "Höchster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Highest value in the period"),
    "IE" : MessageLookupByLibrary.simpleMessage("U"),
    "Im Kalender-Control kann kein Datum nach dem aktuellen Tag mehr ausgewählt werden." : MessageLookupByLibrary.simpleMessage("The calendar control can no longer select a date after the current day."),
    "Im Kalender-Control wird ein eingestellter Bereich (Heute, Letzte Woche, etc.) jetzt korrekt auf den aktuellen Tag bezogen." : MessageLookupByLibrary.simpleMessage("In the calendar control, a defined period (today, last week, etc.) is now correctly based on the current day."),
    "Im Kalender-Control wird jetzt der Monat des entsprechenden Datums angezeigt, wenn eines der Felder Von oder bis den Fokus erhält." : MessageLookupByLibrary.simpleMessage("The calendar control now displays the month of the corresponding date when one of the fields From or To receives the focus."),
    "Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert" : MessageLookupByLibrary.simpleMessage("Numbers and dates in the PDF are formatted according to the selected language"),
    "Im Profil werden jetzt die richtigen Einheiten verwendet (mg/dL oder mmol/l)." : MessageLookupByLibrary.simpleMessage("The profile now uses the correct units (mg/dL or mmol/l)."),
    "Impressum" : MessageLookupByLibrary.simpleMessage("Imprint"),
    "In Firefox ist es jetzt auch möglich, die Hauptseite zu scrollen, wenn sie länger ist, als das Browserfenster." : MessageLookupByLibrary.simpleMessage("It is now possible to scroll the main page in Firefox, if it is longer than the browser window."),
    "In den Einstellungen gibt es einen Regler, der festlegt, wie gross die erzeugten PDF-Dateien maximal sein dürfen. Wenn nur ein leeres PDF erzeugt wird, dann sollte dieser Regler weiter nach links geschoben werden, um die Dateigrösse zu verringern." : MessageLookupByLibrary.simpleMessage("In the settings there is a slider that defines how large the resulting PDF files may be. When a blank PDF is created, then this slider should be moved further to the left, to reduce the file size."),
    "In der Analyse können die Prozentzahlen für die Zielbereiche mit Nachkommazahl angezeigt werden. Das verringert die Differenz zu 100%, wenn man sie zusammenzählt. Der verbleibende Rest sind Rundungsdifferenzen." : MessageLookupByLibrary.simpleMessage("In the analysis the percentages for the target areas can be shown with decimal places. This reduces the difference to 100% if you sum it up. The remainder is because of rounding differences."),
    "In der Auswertung können die Angaben für Material (Katheter, Sensor, Ampulle) mit Nachkommastellen angezeigt werden." : MessageLookupByLibrary.simpleMessage("In the analysis, the information for material (catheter, sensor, ampoule) can be displayed with decimal places."),
    "In der Legende unter der Tagesgrafik wird die Summe der Kohlenhydrate für den Tag angezeigt." : MessageLookupByLibrary.simpleMessage("The legend below the daily graph shows the sum of carbohydrates for the day."),
    "In der Tagesgrafik gibt es eine Option, mit dem man die verschiedenen Arten der Boli kenntlich machen lassen kann. Wenn diese Option gesetzt ist, wird ein Bolus, der zu einer Mahlzeit abgegeben wurde mit einer anderen Farbe markiert, als ein Bolus zur Korrektur. In der Legende werden dann Korrektur-, Mahlzeiten-Boli und SMB getrennt angezeigt." : MessageLookupByLibrary.simpleMessage("In the day graph, there is an option that enables to distinguish between a meal- and a correction-bolus. If this option is set, a bolus that was given for a meal is marked with a different color than the bolus given as correction, and they are also shown separately in the legend."),
    "In der Tagesgrafik gibt es eine Option, mit der man sich die erfassten Trainingsdaten anzeigen lassen kann. Diese werden dann am unteren Rand über der Tabelle der Glukosewerte eingefügt." : MessageLookupByLibrary.simpleMessage("In the daily graphis there is an option, that adds the exercise data to the graphic. It will be displayed at the bottom of the graphic right above the glucosetable."),
    "In der Tagesgrafik kann die Anzeige der SMB nun ausgeblendet werden." : MessageLookupByLibrary.simpleMessage("The display of SMB can now be hidden in daily graphics."),
    "In der Tagesgrafik werden die Insulinangaben jetzt kleiner dargestellt, wenn die Basalrate eine Genauigkeit von mehr als 2 Nachkommastellen hat." : MessageLookupByLibrary.simpleMessage("If the basalrate has more than 2 decimals the insulin values are smaller on the daily graphics."),
    "In der Tagesgrafik werden jetzt auch Blutzuckermessungen angezeigt. Sie werden als rote Quadrate dargestellt und die zugehörigen Werte in der Tabelle unterhalb der Grafik werden ebenfalls mit roter Schrift angezeigt." : MessageLookupByLibrary.simpleMessage("The daily chart now also displays blood glucose values. They are displayed as red squares and the associated values ​​in the table below the graphic are also displayed in red."),
    "In der Tagesgrafik werden nun SMBs auch angezeigt, wenn die Option für die Darstellung von Insulin akitivert wurde. Man kann festlegen, ob die SMBs an der Glukosekurve oder am Zielwert angezeigt werden." : MessageLookupByLibrary.simpleMessage("SMBs are now also displayed in the daily graphics if the option for displaying insulin has been activated. You can specify whether the SMBs are displayed on the glucose curve or at the target value."),
    "In der Tagesgrafik werden nun auch Kohlenhydratkorrekturen angezeigt." : MessageLookupByLibrary.simpleMessage("Carbohydrate corrections are now displayed in the daily graph."),
    "In der Tagesgrafik werden nun auch Reservoirwechsel angezeigt." : MessageLookupByLibrary.simpleMessage("Reservoir changes are now also shown in the daily graph."),
    "In der Tagesgrafik werden nun der geschätzte HbA1C und die prozentuale Menge an Bolusinsulin und Basalinsulin für den Tag angezeigt. Diese Anzeige erfolgt innerhalb der Legende, weshalb diese aktiviert sein muss, damit die Werte angezeigt werden." : MessageLookupByLibrary.simpleMessage("The daily chart now shows the estimated A1C and the percentage of bolus insulin and basal insulin for the day. These values are displayed within the legend, which is why it must be enabled for the values to appear."),
    "In der Tagesgrafik wird jetzt eine Tabelle mit halbstündigen Glukosewerten eingeblendet angezeigt. Diese kann über einen Parameter ausgeschaltet werden." : MessageLookupByLibrary.simpleMessage("The daily graphics now displays a chart with half-hourly glucose values. This can be switched off via a parameter."),
    "In der Tagesgraphic werden jetzt Insulinwerte und Kohlenhydratwerte zusammengefasst, wenn es mehrere innerhalb einer Stunde gibt. Die Balken werden nach wie vor für jeden Wert einzeln ausgegeben. Auf diese Art sollte es keine überlappende Ausgabe der Werte mehr geben. Die zusammengefassten Werte werden in eckigen Klammern ausgegeben, um anzuzeigen, dass hier Werte aufsummiert wurden." : MessageLookupByLibrary.simpleMessage("The daily graphic now sums up insulin values and carbohydrate values when there are several values within an hour. The bars are still drawn individually for each value. In this way there should be no overlapping output of the values anymore. The summarized values are displayed in square brackets to indicate that values have been summed up here."),
    "In der Tagesstatistik und in den täglichen Grafiken werden jetzt zum Datum die Wochentage mit angezeigt." : MessageLookupByLibrary.simpleMessage("In the daily statistics and in the daily graphics, the days of the week are now displayed with the day of the week."),
    "In der Tagesstatistik wurde die Spalte Varianzkoeffizient hinzugefügt (VarK)." : MessageLookupByLibrary.simpleMessage("In the daily statistics, the column Coefficient of variation has been added (CV)."),
    "Info-Linien bis zur Kurve zeichnen" : MessageLookupByLibrary.simpleMessage("Draw lines from notes to the curve"),
    "Initiale Version, alles ist neu!" : MessageLookupByLibrary.simpleMessage("Initial version, everything is new!"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("Insulin"),
    "Insulin Kohlenhydrate Verhältnis (ICR)" : MessageLookupByLibrary.simpleMessage("Insulin Carbohydrate Ratio (ICR)"),
    "Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE" : MessageLookupByLibrary.simpleMessage("Insulin Carb Ratio (ICR) X g Carbs for 1 U"),
    "Insulin Sensitivitäts Faktoren (ISF)" : MessageLookupByLibrary.simpleMessage("Insulin Sensitivity Factors (ISF)"),
    "Ja" : MessageLookupByLibrary.simpleMessage("Yes"),
    "Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember" : MessageLookupByLibrary.simpleMessage("January|February|March|April|May|June|July|August|September|October|November|December"),
    "Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez" : MessageLookupByLibrary.simpleMessage("Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec"),
    "Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Site change"),
    "Keine" : MessageLookupByLibrary.simpleMessage("None"),
    "Keine Änderung" : MessageLookupByLibrary.simpleMessage("No change"),
    "Klein" : MessageLookupByLibrary.simpleMessage("Small"),
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
    "Letzten Messwert in der Titelzeile anzeigen" : MessageLookupByLibrary.simpleMessage("Show last glucose value in titlebar"),
    "Letzter Monat" : MessageLookupByLibrary.simpleMessage("Last month"),
    "Man kann jetzt mehrere Benutzer anlegen. Das ist nützlich, um mehrere Nightscout-Instanzen auszuwerten (z.B. für Ärzte, Betreuer oder den Entwickler dieser Software)" : MessageLookupByLibrary.simpleMessage("You can now create multiple users. This is useful for analyzing multiple nightscout instances (e.g. for doctors, caregivers or the developer of this software)"),
    "Material mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Material with decimal places"),
    "Max" : MessageLookupByLibrary.simpleMessage("Max"),
    "Median" : MessageLookupByLibrary.simpleMessage("Median"),
    "Mess-\nwerte" : MessageLookupByLibrary.simpleMessage("Values"),
    "Min" : MessageLookupByLibrary.simpleMessage("Min"),
    "Mittel-\nwert" : MessageLookupByLibrary.simpleMessage("Average"),
    "Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|Sonntag" : MessageLookupByLibrary.simpleMessage("Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday"),
    "Mo|Di|Mi|Do|Fr|Sa|So" : MessageLookupByLibrary.simpleMessage("Mon|Tue|Wed|Thu|Fri|Sat|Sun"),
    "Nahe zusammen liegende Werte aufsummieren" : MessageLookupByLibrary.simpleMessage("Accumulate values in close range"),
    "Name" : MessageLookupByLibrary.simpleMessage("Name"),
    "Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat." : MessageLookupByLibrary.simpleMessage("Name, birthday, insulin and the start date of diabetes can now be left blank without any negative impact on the presentation in the PDF."),
    "Nein" : MessageLookupByLibrary.simpleMessage("No"),
    "Neue Option im Profil, um fortlaufende Zeiten mit gleichen Werten zu einem Eintrag zusammen zu fassen." : MessageLookupByLibrary.simpleMessage("New option in the profile to combine consecutive times with the same values into a single entry."),
    "Neuer Parameter für die Tagesgrafik, der festlegt, ob die Linien für die Notizen unter der Grafik bis zur Glukosekurve gezeichnet werden sollen oder nicht." : MessageLookupByLibrary.simpleMessage("New daily graph parameter that determines whether or not to draw the lines for the notes under the graph up to the glucose curve."),
    "Neues PDF für eine Wochengrafik hinzugefügt, auf der die Glukosekurven der Woche übereinander gelegt werden." : MessageLookupByLibrary.simpleMessage("Added a new PDF for a weekly graphics where the week\'s glucose curves are shown all at once."),
    "Neueste Woche zuerst" : MessageLookupByLibrary.simpleMessage("Newest week first"),
    "Neuester Tag zuerst" : MessageLookupByLibrary.simpleMessage("Newest day first"),
    "Niedrigster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Lowest value in the period"),
    "Nightscout Berichte" : MessageLookupByLibrary.simpleMessage("Nightscout Reports"),
    "Nightscout Reporter ist nun auch grösstenteils in Spanisch und Polnisch verfügbar. Entsprechende Buttons wurden dem Hauptmenü hinzugefügt. Danke an die fleissigen Übersetzer :)." : MessageLookupByLibrary.simpleMessage("Most of Nightscout Reporter is now translated to Spanish and Polish. Corresponding buttons have been added to the main menu. Thanks to the diligent translators :)."),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("Nighscout Site"),
    "Normal" : MessageLookupByLibrary.simpleMessage("Normal"),
    "Notiz" : MessageLookupByLibrary.simpleMessage("Note"),
    "Notizen" : MessageLookupByLibrary.simpleMessage("Notes"),
    "Ok" : MessageLookupByLibrary.simpleMessage("Ok"),
    "PDF anzeigen" : MessageLookupByLibrary.simpleMessage("Show PDF"),
    "PDF erneut erzeugen" : MessageLookupByLibrary.simpleMessage("Create PDF again"),
    "PDF für Profildaten" : MessageLookupByLibrary.simpleMessage("PDF for profile data"),
    "PDF herunterladen (bei einigen Browsern benötigt)" : MessageLookupByLibrary.simpleMessage("Download PDF (needed for some browsers)"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("Open PDF in the same window"),
    "Patient Glykämischer Status (PGS)" : MessageLookupByLibrary.simpleMessage("Patient Glycemic Status (PGS)"),
    "Pausiert" : MessageLookupByLibrary.simpleMessage("Paused"),
    "Polski" : MessageLookupByLibrary.simpleMessage("Polski"),
    "Problem auf GitHub melden" : MessageLookupByLibrary.simpleMessage("Report a problem to GitHub"),
    "Profil" : MessageLookupByLibrary.simpleMessage("Profile"),
    "Profil-Basalrate" : MessageLookupByLibrary.simpleMessage("Profile basalrate"),
    "Profileinstellungen" : MessageLookupByLibrary.simpleMessage("Profilesettings"),
    "Profilwechsel" : MessageLookupByLibrary.simpleMessage("Profileswitch"),
    "Protokoll" : MessageLookupByLibrary.simpleMessage("Log"),
    "Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse." : MessageLookupByLibrary.simpleMessage("Order of PDF pages changed - Percentile Diagram now comes after analysis."),
    "Reservoirwechsel" : MessageLookupByLibrary.simpleMessage("Reservoir change"),
    "SMB" : MessageLookupByLibrary.simpleMessage("SMB"),
    "SMB Werte anzeigen" : MessageLookupByLibrary.simpleMessage("Show SMB values"),
    "SMB an der Kurve platzieren" : MessageLookupByLibrary.simpleMessage("Place SMB on the curve"),
    "Schliessen" : MessageLookupByLibrary.simpleMessage("Close"),
    "Schliessen Button im Nachrichtenbereich hinzugefügt." : MessageLookupByLibrary.simpleMessage("Close button added in the message area."),
    "Sensorwechsel" : MessageLookupByLibrary.simpleMessage("Sensor change"),
    "Soll der Benutzer mit der URL" : MessageLookupByLibrary.simpleMessage("Should the user with the URL"),
    "Spalte HbA1c" : MessageLookupByLibrary.simpleMessage("Column A1C"),
    "Spalte HbA1c zu Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Added column A1C to daily statistics"),
    "Spalte Messwerte" : MessageLookupByLibrary.simpleMessage("Column valuecount"),
    "Spalte Standardabweichung" : MessageLookupByLibrary.simpleMessage("Column standard deviation"),
    "Spalte Variationskoeffizient" : MessageLookupByLibrary.simpleMessage("Column coefficient of variation"),
    "Spalten Perzentile" : MessageLookupByLibrary.simpleMessage("Columns percentiles"),
    "Spaltenbreite der Informationen in der Analyse erhöht" : MessageLookupByLibrary.simpleMessage("Column width of the information in the analysis increased"),
    "Speichern" : MessageLookupByLibrary.simpleMessage("Save"),
    "Standardabweichung" : MessageLookupByLibrary.simpleMessage("Standard deviation"),
    "Standardabweichung statt Anzahl" : MessageLookupByLibrary.simpleMessage("Standard deviation instead of valuecount"),
    "Standardgrenzwerte" : MessageLookupByLibrary.simpleMessage("Standard Target Area"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("SDev"),
    "Stunden" : MessageLookupByLibrary.simpleMessage("hours"),
    "Summen für Bolus Insulin, Basalrate für den Tag und Basalrate aus dem Profil zur Tagesgrafik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Sums for bolus insulin, basal rate for the day, and basalrate from the profile added to the daily chart"),
    "Symbole (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Symbols (catheters etc.)"),
    "TDD" : MessageLookupByLibrary.simpleMessage("TDD"),
    "Tabelle mit Glukosewerten" : MessageLookupByLibrary.simpleMessage("Table with glucose values"),
    "Tages-Basalrate" : MessageLookupByLibrary.simpleMessage("Daily basalrate"),
    "Tagesanalyse" : MessageLookupByLibrary.simpleMessage("Day Analysis"),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("Daily Graph"),
    "Tagesgrafikparameter zur Anzeige der Legende" : MessageLookupByLibrary.simpleMessage("Daily graphic parameters for displaying notes"),
    "Tagesgrafikparameter zur Anzeige von Notizen" : MessageLookupByLibrary.simpleMessage("Daily graphic parameters for displaying notes"),
    "Tagesgrafikparameter zur umgekehrten Sortierung hinzugefügt. Die Tage werden damit beginnend mit dem höchsten Datum ausgegeben." : MessageLookupByLibrary.simpleMessage("Added daily graphic parameters for reverse sorting. The daily graphics are created starting with the highest date."),
    "Tagesnamen in Grafik anzeigen" : MessageLookupByLibrary.simpleMessage("Show day names in graphic"),
    "Tagesnotizen" : MessageLookupByLibrary.simpleMessage("Day Notes"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("Daily Statistics"),
    "Temporäre Basalraten" : MessageLookupByLibrary.simpleMessage("Temporary Basalrate"),
    "Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt" : MessageLookupByLibrary.simpleMessage("Temporary basal rates with absolute values ​​are displayed correctly"),
    "Titelangaben für Datumsbereiche auf den PDFs vereinheitlicht" : MessageLookupByLibrary.simpleMessage("Title information for date ranges on the PDFs are unified"),
    "Training anzeigen" : MessageLookupByLibrary.simpleMessage("Show exercises"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("Time"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("Time"),
    "Unbegrenzt" : MessageLookupByLibrary.simpleMessage("Unlimited"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("Url to Nightscout-API (e.g. https://xxx.herokuapp.com)"),
    "User-Token" : MessageLookupByLibrary.simpleMessage("User-Token"),
    "VarK\nin %" : MessageLookupByLibrary.simpleMessage("CV in %"),
    "Verbinde zu Google Drive..." : MessageLookupByLibrary.simpleMessage("Connect to Google Drive..."),
    "Verbinde zu Google..." : MessageLookupByLibrary.simpleMessage("Connect to Google..."),
    "Verbindung zu Google Drive herstellen" : MessageLookupByLibrary.simpleMessage("Connect to Google Drive"),
    "Verbindung zu Google Drive trennen" : MessageLookupByLibrary.simpleMessage("Disconnect from Google Drive"),
    "Vergleich" : MessageLookupByLibrary.simpleMessage("Comparison"),
    "Version" : MessageLookupByLibrary.simpleMessage("Version"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("Distribution"),
    "ViewWhatsnewComponent0__message_102" : m0,
    "Von" : MessageLookupByLibrary.simpleMessage("from"),
    "Vorherige Periode" : MessageLookupByLibrary.simpleMessage("Previous period"),
    "Vorletzte Periode" : MessageLookupByLibrary.simpleMessage("Penultimate period"),
    "Warum werde ich mit mehreren Buttons genervt, statt eine einzelne PDF angezeigt zu kriegen?" : MessageLookupByLibrary.simpleMessage("Why am I annoyed with several buttons instead of getting a single PDF?"),
    "Was bisher geschah..." : MessageLookupByLibrary.simpleMessage("What happened up to now..."),
    "Wenn Sonderzeichen in den Daten vorhanden sind (z.B. Smileys in den Notizen), führte das zu einem Absturz während der PDF-Erstellung. Das wurde behoben, indem diese Sonderzeichen aus der Ausgabe entfernt werden." : MessageLookupByLibrary.simpleMessage("If special characters are present in the data (eg smileys in the notes), this caused a crash during the PDF creation. This has been fixed by removing these special characters from the output."),
    "Wenn das erzeugte PDF zu gross wird, wird es nun auf mehrere PDF-Dateien aufgeteilt. In diesem Fall wird es nicht direkt geöffnet, sondern es wird eine Liste mit durchnummerierten Buttons angezeigt. Diese Buttons öffnen bei Betätigung das entsprechende PDF und erhalten einen Haken, um anzuzeigen, dass es geöffnet wurde. Das sollte es erleichtern, die PDFs nacheinander zu öffnen, weil normalerweise der Browser im Hintergrund verschwindet, wenn ein neues Fenster aufgemacht wird." : MessageLookupByLibrary.simpleMessage("If the generated PDF is too large, it is divided on several PDF files now. In this case, it will not directly open, but there will be shown a list of numbered buttons. These buttons open the corresponding PDF and get a checkmark, indicating that it has been opened. This should make it easier to open the PDFs, because usually the current browserwindow is moved to the background when a new window is opened."),
    "Wenn der Zeitraum leer ist, wird der Button für die Auswahl deutlich markiert und in dem Dialog zur Auswahl wird in der Titelzeile ein Hinweis darauf angezeigt." : MessageLookupByLibrary.simpleMessage("If the period is empty, the button for the selection is marked clearly and in the dialog to choose an indication appears in the title bar."),
    "Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet" : MessageLookupByLibrary.simpleMessage("If the thresholds in Nightscout (BG_TARGET_BOTTOM and BG_TARGET_TOP) are equal to 70 and 180, then the area for the default targets will be hidden on the analysis page"),
    "Wenn in den Einstellungen eine Verbindung zum Google-Konto hergestellt wird, werden die Cookies von Google verwendet und die Daten nicht mehr im localStorage des Browsers gespeichert, sondern im AppStorage auf Google Drive. Auf diese Art kann man die Daten zentralisiert verwalten und hat diese in jedem Browser zur Verfügung, der mit dem angegebenen Google Konto verbunden ist." : MessageLookupByLibrary.simpleMessage("When the settings are connected to the Google Account, Google\'s cookies are used and the data is no longer stored in the localStorage of the browser, but in the AppStorage on Google Drive. In this way you can manage the data centrally and have it available in any browser connected to the specified Google Account."),
    "Wenn in den Einträgen Lücken von 15 Minuten oder mehr sind, führen diese zu einer Unterbrechung der Linie in der Tagesgrafik." : MessageLookupByLibrary.simpleMessage("If there are gaps in the entries of 15 minutes or more, there will also be a gap in the daily chart."),
    "Wenn in einem Profil mehr Zeiten erfasst wurden, als auf eine Seite passen, wurden diese fortlaufend in die nächste Seite hineingeschrieben. Jetzt wird an geeigneter Stelle eine neue Seite ausgegeben." : MessageLookupByLibrary.simpleMessage("If more times were recorded in a profile than fit on one page, they were overlaying the content of the next page. Now a new page is created as needed."),
    "Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt." : MessageLookupByLibrary.simpleMessage("If no data is available, blank pages will be generated with an appropriate hint."),
    "Willkommen" : MessageLookupByLibrary.simpleMessage("Welcome"),
    "Willkommen bei Nightscout Reporter!" : MessageLookupByLibrary.simpleMessage("Welcome to Nightscout Reporter!"),
    "Wochengrafik" : MessageLookupByLibrary.simpleMessage("Weekly Graphics"),
    "Zeilen mit gleichen Werten zusammenfassen" : MessageLookupByLibrary.simpleMessage("Combine entries with the same values"),
    "Zeitraum" : MessageLookupByLibrary.simpleMessage("Period"),
    "Zeitraum festlegen" : MessageLookupByLibrary.simpleMessage("Set the period"),
    "Zeitzone" : MessageLookupByLibrary.simpleMessage("Timezone"),
    "Zielbereich" : MessageLookupByLibrary.simpleMessage("Target area"),
    "Zielbereich mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Targetarea with decimals"),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("Additional functions"),
    "Zusätzliche Informationen zu den PDFs und im UI hinzugefügt" : MessageLookupByLibrary.simpleMessage("added additional information about the PDFs and in the UI"),
    "Zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Two decimal places"),
    "bis" : MessageLookupByLibrary.simpleMessage("until"),
    "dd.MM.yyyy" : MessageLookupByLibrary.simpleMessage("MM/dd/yyyy"),
    "g / Stunde" : MessageLookupByLibrary.simpleMessage("g / hour"),
    "gesch. HbA1c" : MessageLookupByLibrary.simpleMessage("est. A1C"),
    "msgBasalrateDay" : m1,
    "msgBasalrateProfile" : m2,
    "msgBolusInsulin" : m3,
    "msgCarbBolusInsulin" : m4,
    "msgCarbs" : m5,
    "msgCatheterDays" : m6,
    "msgChangedEntry" : m7,
    "msgCheckUser" : m8,
    "msgCorrectBolusInsulin" : m9,
    "msgCount" : m10,
    "msgDaySum" : m11,
    "msgFactorEntry" : m12,
    "msgGVIBad" : m13,
    "msgGVIGood" : m14,
    "msgGVINone" : m15,
    "msgGVIVeryGood" : m16,
    "msgHigh" : m17,
    "msgHistorical" : m18,
    "msgISF" : m19,
    "msgKH" : m20,
    "msgKHBE" : m21,
    "msgLegendTDD" : m22,
    "msgLoadingData" : m23,
    "msgLoadingDataFor" : m24,
    "msgLow" : m25,
    "msgPGSBad" : m26,
    "msgPGSGood" : m27,
    "msgPGSVeryBad" : m28,
    "msgPGSVeryGood" : m29,
    "msgProfileSwitch" : m30,
    "msgReadingsInMinutes" : m31,
    "msgReadingsPerDay" : m32,
    "msgReadingsPerHour" : m33,
    "msgReservoirDays" : m34,
    "msgSMBInsulin" : m35,
    "msgSensorDays" : m36,
    "msgStdAbw" : m37,
    "msgTarget" : m38,
    "msgTargetArea" : m39,
    "msgTargetValue" : m40,
    "msgTimeOfDay24" : m41,
    "msgTimeOfDayAM" : m42,
    "msgTimeOfDayPM" : m43,
    "msgValidFrom" : m44,
    "msgValidRange" : m45,
    "msgValidTo" : m46,
    "msgValuesAbove" : m47,
    "msgValuesBelow" : m48,
    "msgValuesIn" : m49,
    "ok" : MessageLookupByLibrary.simpleMessage("ok"),
    "verwerfen" : MessageLookupByLibrary.simpleMessage("discard"),
    "wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("really be deleted?"),
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("Avg. Basal per day"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("Avg. Bolus per day"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("Avg. Insulin per day"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("Avg Insulinratio"),
    "Ø KH pro Tag" : MessageLookupByLibrary.simpleMessage("Avg. Carbs per day"),
    "Ø Microbolus pro Tag" : MessageLookupByLibrary.simpleMessage("Avg. Microbolus per day"),
    "Ø Zuckerwert" : MessageLookupByLibrary.simpleMessage("Avg. Glucose"),
    "Überprüfe Zugriff auf Nightscout ..." : MessageLookupByLibrary.simpleMessage("Checking access to Nightscout ..."),
    "Übersetzungen korrigiert" : MessageLookupByLibrary.simpleMessage("Corrected translations")
  };
}
