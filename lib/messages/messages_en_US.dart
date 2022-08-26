// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_US locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// ignore_for_file: unnecessary_brace_in_string_interps

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

  static m0(startTag0, endTag0) => "After I was asked again and again whether I could be donated, I decided to make such a possibility available. Nightscout Reporter is still completely free and will stay that way. If you still want to express your affection for the program, I don\'t want to stand in your way any longer. The donation button is not visible. But if you want to throw something in the ${startTag0}hat${endTag0}, you will find it :)";

  static m1(startTag0, endTag0, startTag1, endTag1, startTag2, endTag2) => "A new view called ${startTag0}Night-Watch${endTag0} has been added. In this view, as in the clock display on the Nightscout page, you can see the current glucose value and other information that you can configure to a certain extent as you like it. Night-Watch is accessed via this URL: ${startTag1}https://nightscout-reporter.zreptil.de/watch${endTag1} It can also be accessed via the main menu under the menu item ${startTag2}Night-Watch${endTag2}, or by clicking on the current sugar value in Nightscout Reporter\'s title bar if you have activated it in the settings.";

  static m2(startTag0, endTag0) => "Where a CGP can be created, there is now an option ${startTag0}Lines around areas${endTag0}. This is switched on by default. When turned off, the healthy and current human stat ranges are no longer outlined with a line. This makes the graph look a little more pale, but you can examine the values on the axes more closely if you wish.";

  static m3(value) => "Calculated A1C: ${value}%";

  static m4(value) => "Laboratory A1C: ${value}%";

  static m5(factor) => "The values for BG_TARGET_BOTTOM and BG_TARGET_TOP have been divided by the factor ${factor}";

  static m6(factor) => "All sensory glucose readings have been reduced by ${factor}%";

  static m7(count) => "${Intl.plural(count, zero: '', one: '1 page', other: '${count} pages')}";

  static m8(count) => "${Intl.plural(count, zero: '', one: '1 page or more', other: '${count} pages or more')}";

  static m9(factor) => "All sensory glucose readings have been increased by ${factor}%";

  static m10(isVisible) => "The Access Token is only required if access in Nightscout was restricted via AUTH_DEFAULT_ROLES";

  static m11(time) => "The basal rate has been valid since ${time} and does not include any temporary changes.";

  static m12(unit) => "This basalrate was active on ${unit}.";

  static m13(value) => "Basalrate for the day (${value})";

  static m14(value) => "Basalrate from the profile (${value})";

  static m15(value) => "Bolus Insulin (${value})";

  static m16(value) => "CV [${value}%]";

  static m17(date) => "Checking ${date} ...";

  static m18(scale, intercept, slope) => "Calibration (scale ${scale} / intercept ${intercept} / slope ${slope})";

  static m19(value) => "Meal Bolus (${value})";

  static m20(value) => "Carbs (${value}g)";

  static m21(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} day per catheter)', other: '(${txt} days per catheter)')}";

  static m22(name, from, to) => "${name} ${from} => ${to}";

  static m23(url) => "Checking access to ${url}...";

  static m24(count) => "${Intl.plural(count, zero: 'Deselect a column@nl@to be able to activate another one', one: 'One more column available', other: '${count} columns still available')}";

  static m25(value) => "Correction Bolus (${value})";

  static m26(value) => "${Intl.plural(value, zero: 'No value', one: '1 value', other: '${value} values')}";

  static m27(value) => "${value} Days";

  static m28(hours, minutes) => "${hours} h ${minutes} m";

  static m29(isVisible) => "The date of the last complete day with data";

  static m30(beg, end) => "${beg} - ${end}";

  static m31(count) => "${Intl.plural(count, zero: '', one: '1 Form', other: '${count} Forms')}";

  static m32(max) => "bad (greater than ${max})";

  static m33(min, max) => "good (${min} to ${max})";

  static m34(min) => "not available (less than ${min})";

  static m35(min, max) => "very good (${min} to ${max})";

  static m36(time) => "${Intl.plural(time, zero: 'Just now', one: '${time} minute ago', other: '${time} minutes ago')}";

  static m37(unit, value) => "Intensity HYPER\n[${unit} x min²]";

  static m38(unit) => "The intensity of hyperglycaemia per day (values greater than or equal to ${unit}).";

  static m39(unit, value) => "Intensität HYPO\n[${unit} x min²]";

  static m40(unit) => "The intensity of hypoglycaemia per day (values less than or equal to ${unit}).";

  static m41(value) => "High${value}";

  static m42(value) => "Historical ${value}";

  static m43(value) => "Hypos (< ${value})";

  static m44(unit) => "Insulin Sensitivity Factors (ISF) 1 IU reduces BG by X ${unit}";

  static m45(value) => "${value}g";

  static m46(value) => "g CH (${value} BU)";

  static m47(date) => "CW${date}";

  static m48(value) => "Total Daily Dose (${value})";

  static m49(error, stacktrace) => "Error loading data: ${error} ${stacktrace}";

  static m50(date) => "Loading data for ${date}...";

  static m51(insulin, unit) => "Microbolus ${insulin} ${unit}";

  static m52(range, duration, reason, scale) => "temp. Override for ${duration} min, Reason: ${reason}, Targetrange: ${range}, Scale: ${scale}%";

  static m53(insulin, unit) => "SMB ${insulin} ${unit}";

  static m54(percent, duration) => "temp basal ${percent}% / ${duration} min";

  static m55(value, duration) => "temp. Basal ${value} / ${duration} min";

  static m56(target, duration, reason) => "temp target ${target} for ${duration} min, reason: ${reason}";

  static m57(value) => "Low${value}";

  static m58(gluc, unit) => "Blood value ${gluc} ${unit}";

  static m59(unit, value) => "Average glucose\n[${unit}]";

  static m60(hba1c) => "The mean glycemic value in specified period.";

  static m61(name) => "Use profile \"${name}\"";

  static m62(name) => "The profile with the name \"${name}\" could not be found. This must be set up in the profile editor on the Nightscout page. A profile must be set up there with the name \"${name}\" in order to be able to generate this form. The link below opens the profile editor. Under certain circumstances, the authentication must then be carried out at the very bottom of the page in order to be able to change the values.";

  static m63(min, max) => "bad (${min} to ${max})";

  static m64(min, max) => "good (${min} to ${max})";

  static m65(max) => "very poor (greater than ${max})";

  static m66(min) => "excellent (less than ${min})";

  static m67(oldName, newName) => "Profileswitch - ${oldName} => ${newName}";

  static m68(oldName, newName, duration) => "Profileswitch - ${oldName} => ${newName} for ${duration} Minutes";

  static m69(howMany, fmt) => "${Intl.plural(howMany, zero: 'No values available', one: '1 value per minute', other: 'value every ${fmt} minute')}";

  static m70(howMany, fmt) => "${Intl.plural(howMany, zero: 'No values available', one: '1 value per day', other: '${fmt} values per day')}";

  static m71(howMany, fmt) => "${Intl.plural(howMany, zero: 'No values available', one: '1 value per hour', other: '${fmt} values per hour')}";

  static m72(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} day per reservoir)', other: '(${txt} days per reservoir)')}";

  static m73(value) => "SMB (${value})";

  static m74(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} day per sensor)', other: '(${txt} days per sensor)')}";

  static m75(low, high, unit) => "Use Standard Targetarea (${low} ${unit} - ${high} ${unit})";

  static m76(isVisible) => "The date of the first day with data";

  static m77(value) => "(SDev ${value})";

  static m78(value) => "ToR [${value}min/d]";

  static m79(min, max) => "The time per day in minutes in which the values are outside the range ${min} to ${max}.";

  static m80(unit) => "Glucose target area ${unit}";

  static m81(min, max, units) => "Target Range (${min} - ${max} ${units})";

  static m82(value) => "Target Value";

  static m83(time) => "${time}";

  static m84(time) => "${time} am";

  static m85(time) => "${time} pm";

  static m86(maxCount, count, text) => "${Intl.plural(count, zero: '', one: 'The uploader \"${text}\" has created the data records.', other: 'The following uploaders have created the data records: ${text}')}";

  static m87(maxCount) => "Not all profiles could be loaded because more than ${maxCount} are saved in the selected period. ";

  static m88(begDate) => "valid since ${begDate}";

  static m89(begDate, endDate) => "valid from ${begDate} to ${endDate}";

  static m90(endDate) => "valid until ${endDate}";

  static m91(high) => "Values ​​above ${high}";

  static m92(low) => "Values ​​below ${low}";

  static m93(low, high) => "Values ​​between ${low} and ${high}";

  static m94(low, high) => "Target area (${low} - ${high})";

  static m95(value) => "High Values (${value})";

  static m96(value) => "Low Values (${value})";

  static m97(value) => "Very High Values ( > ${value})";

  static m98(value) => "Very Low Values (< ${value})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "0,0 bis 2,0" : MessageLookupByLibrary.simpleMessage("0,0 to 2,0"),
    "1 Minute" : MessageLookupByLibrary.simpleMessage("1 Minute"),
    "1 Stunde" : MessageLookupByLibrary.simpleMessage("1 Hour"),
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
    "1.3.0 - 19.08.2019" : MessageLookupByLibrary.simpleMessage("1.3.0 - 08/19/2019"),
    "1.3.1 - 22.08.2019" : MessageLookupByLibrary.simpleMessage("1.3.1 - 08/22/2019"),
    "1.3.2 - 05.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.2 - 09/05/2019"),
    "1.3.3 - 12.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.3 - 09/12/2019"),
    "1.3.4 - 17.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.4 - 09/17/2019"),
    "1.3.5 - 23.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.5 - 09/23/2019"),
    "1.3.6 - 18.12.2019" : MessageLookupByLibrary.simpleMessage("1.3.6 - 12/18/2019"),
    "1.3.7 - 7.1.2020" : MessageLookupByLibrary.simpleMessage("1.3.7 - 1/7/2020"),
    "1.3.8 - 9.1.2020" : MessageLookupByLibrary.simpleMessage("1.3.8 - 1/9/2020"),
    "1.4 - 28.2.2020" : MessageLookupByLibrary.simpleMessage("1.4 - 2/28/2020"),
    "1.4.1 - 13.3.2020" : MessageLookupByLibrary.simpleMessage("1.4.1 - 3/13/2020"),
    "1.4.2 - 16.3.2020" : MessageLookupByLibrary.simpleMessage("1.4.2 - 3/16/2020"),
    "1.4.3 - 26.3.2020" : MessageLookupByLibrary.simpleMessage("1.4.3 - 3/26/2020"),
    "1.4.4 - 6.4.2020" : MessageLookupByLibrary.simpleMessage("1.4.4 - 4/6/2020"),
    "1.4.5 - 20.4.2020" : MessageLookupByLibrary.simpleMessage("1.4.5 - 4/20/2020"),
    "1.4.6 - 26.5.2020" : MessageLookupByLibrary.simpleMessage("1.4.6 - 5/26/2020"),
    "1.4.7 - 5.6.2020" : MessageLookupByLibrary.simpleMessage("1.4.7 - 6/5/2020"),
    "1.4.8 - 12.6.2020" : MessageLookupByLibrary.simpleMessage("1.4.8 - 6/12/2020"),
    "1.4.9 - 16.6.2020" : MessageLookupByLibrary.simpleMessage("1.4.9 - 6/16/2020"),
    "10%" : MessageLookupByLibrary.simpleMessage("10%"),
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("10% - 90% of the values"),
    "15 Minuten" : MessageLookupByLibrary.simpleMessage("15 Minutes"),
    "2,1 bis 3,0" : MessageLookupByLibrary.simpleMessage("2,1 to 3,0"),
    "2.0.0 - 15.7.2020" : MessageLookupByLibrary.simpleMessage("2.0.0 - 7/15/2020"),
    "2.0.1 - 8.9.2020" : MessageLookupByLibrary.simpleMessage("2.0.1 - 9/8/2020"),
    "2.0.10 - 07.11.2021" : MessageLookupByLibrary.simpleMessage("2.0.10 - 11/07/2021"),
    "2.0.11 - 26.11.2021" : MessageLookupByLibrary.simpleMessage("2.0.11 - 11/26/2021"),
    "2.0.12 - 07.12.2021" : MessageLookupByLibrary.simpleMessage("2.0.12 - 12/07/2021"),
    "2.0.2 - 22.9.2020" : MessageLookupByLibrary.simpleMessage("2.0.2 - 9/22/2020"),
    "2.0.3 - 18.10.2020" : MessageLookupByLibrary.simpleMessage("2.0.3 - 10/18/2020"),
    "2.0.4 - 18.02.2021" : MessageLookupByLibrary.simpleMessage("2.0.4 - 02/18/2021"),
    "2.0.5 - 07.03.2021" : MessageLookupByLibrary.simpleMessage("2.0.5 - 03/07/2021"),
    "2.0.6 - 17.03.2021" : MessageLookupByLibrary.simpleMessage("2.0.6 - 03/17/2021"),
    "2.0.7 - 17.04.2021" : MessageLookupByLibrary.simpleMessage("2.0.7 - 04/17/2021"),
    "2.0.8 - 09.06.2021" : MessageLookupByLibrary.simpleMessage("2.0.8 - 09/06/2021"),
    "2.0.9 - 11.08.2021" : MessageLookupByLibrary.simpleMessage("2.0.9 - 08/11/2021"),
    "2.1.0 - 09.12.2021" : MessageLookupByLibrary.simpleMessage("2.1.0 - 12/09/2021"),
    "2.2.0 - 03.03.2022" : MessageLookupByLibrary.simpleMessage("2.2.0 - 03/03/2022"),
    "2.2.1 - 01.05.2022" : MessageLookupByLibrary.simpleMessage("2.2.1 - 05/01/2022"),
    "2.2.2 - 10.08.2022" : MessageLookupByLibrary.simpleMessage("2.2.2 - 10/08/2022"),
    "25%" : MessageLookupByLibrary.simpleMessage("25%"),
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("25% - 75% of the values"),
    "3,1 bis 4,0" : MessageLookupByLibrary.simpleMessage("3,1 to 4,0"),
    "3.0.0 - 21.08.2022" : MessageLookupByLibrary.simpleMessage("3.0.0 - 08/21/2022"),
    "3.0.1 - 26.08.2022" : MessageLookupByLibrary.simpleMessage("3.0.1 - 08/26/2022"),
    "30 Minuten" : MessageLookupByLibrary.simpleMessage("30 Minutes"),
    "4,1 bis 4,5" : MessageLookupByLibrary.simpleMessage("4,1 to 4,5"),
    "5 Minuten" : MessageLookupByLibrary.simpleMessage("5 Minutes"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "90%" : MessageLookupByLibrary.simpleMessage("90%"),
    "<br><br>Wenn diese URL geschützt ist, muss ausserdem der Zugriffsschlüssel korrekt definiert sein. Diesen erreicht man über \"Administrator-Werkzeuge\" auf der persönlichen Nightscout Seite." : MessageLookupByLibrary.simpleMessage("<br> <br> If this URL is protected, the Access Token must also be correctly defined. This can be reached via \"Admin Tools\" on the personal nightscout page."),
    "Abbruch" : MessageLookupByLibrary.simpleMessage("Cancel"),
    "Absturz behoben, der auftrat, wenn kein passendes Profil für einen Zeitpunkt gefunden werden konnte" : MessageLookupByLibrary.simpleMessage("Fixed a crash that occurred when no matching profile could be found for a given time"),
    "Acht" : MessageLookupByLibrary.simpleMessage("Eight"),
    "Alle Benutzer ausgeben" : MessageLookupByLibrary.simpleMessage("Show all users"),
    "Alle Werte für den Tag anzeigen" : MessageLookupByLibrary.simpleMessage("Show all values for the day"),
    "Alles" : MessageLookupByLibrary.simpleMessage("All"),
    "Allgemeines" : MessageLookupByLibrary.simpleMessage("General"),
    "Als ersten Tag der Woche festlegen" : MessageLookupByLibrary.simpleMessage("Define as first day of week"),
    "Ampullenwechsel" : MessageLookupByLibrary.simpleMessage("Reservoir Change"),
    "Anmelden" : MessageLookupByLibrary.simpleMessage("Sign In"),
    "Anmeldung bei Google..." : MessageLookupByLibrary.simpleMessage("Signing in to Google…"),
    "Anmeldung erfolgreich" : MessageLookupByLibrary.simpleMessage("Login successful"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("Adjust-\nment"),
    "Anzahl Ampullenwechsel" : MessageLookupByLibrary.simpleMessage("Count of reservoir changes"),
    "Anzahl Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Count of site changes"),
    "Anzahl Messungen" : MessageLookupByLibrary.simpleMessage("Count of values"),
    "Anzahl Sensorenwechsel" : MessageLookupByLibrary.simpleMessage("Count of sensor changes"),
    "Anzahl Unterzuckerungen" : MessageLookupByLibrary.simpleMessage("Number of Hypos"),
    "Anzahl der Sensoren zur Analyse hinzugefügt" : MessageLookupByLibrary.simpleMessage("Added number of sensors to analysis"),
    "Anzahl:" : MessageLookupByLibrary.simpleMessage("Count:"),
    "Anzeigeeinstellungen" : MessageLookupByLibrary.simpleMessage("Displaysettings"),
    "Auf 10be muss beim Server in den Standardeinstellungen der Haken bei \"cors\" aktiviert werden, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen. Wenn \"cors\" aktiviert wurde, muss auf dem Server eventuell noch ReDeploy gemacht werden, bevor es wirklich verfügbar ist." : MessageLookupByLibrary.simpleMessage("On 10be, the default settings for the server must enable the \"cors\" checkbox so that external tools like this one can access the data. If \"cors\" has been activated, ReDeploy may have to be done on the server before it is really available."),
    "Auf Kacheln Bilder statt Namen anzeigen" : MessageLookupByLibrary.simpleMessage("Show images instead of names on tiles"),
    "Auf dem Einstellungen-Dialog gibt es neben den URL-Eingabefeldern jeweils einen Button, um die URL in einem neuen Browser-Fenster zu öffnen." : MessageLookupByLibrary.simpleMessage("In addition to the URL input fields, there is a button on the Settings dialog to open the URL in a new browser window."),
    "Auf den Kacheln können nun Bilder statt der Namen angezeigt werden. Die Bilder zeigen dann das ungefähre Aussehen der entsprechenden Seite an. Sie entsprechen nicht den tatsächlichen Daten, sondern sind nur eine visuelle Darstellung, die es manchem Benutzer vielleicht einfacher machen, die gewünschten Seiten schneller auszuwählen. Die Aktivierung der Bilder erfolgt im Einstellungsdialog." : MessageLookupByLibrary.simpleMessage("Images can now be displayed on tiles instead of names. The pictures then show the approximate appearance of the corresponding page. They do not correspond to the actual data, but are just a visual representation that may make it easier for some users to quickly select the pages they want. The activation of the images can be done using the settings dialog."),
    "Auf den Seiten Profil und Basalrate wird in der Titelzeile jetzt wieder das Datum angezeigt, ab dem das Profil gilt." : MessageLookupByLibrary.simpleMessage("On the profile and basal rate pages, the title bar now again shows the date where this profile starts."),
    "Auf der Analyseseite kann statt der Anzahl der Werte bei den Zielbereichen jetzt die Standardabweichung der Werte im Zielbereich angezeigt werden." : MessageLookupByLibrary.simpleMessage("The standard deviation of the values in the target area can now be displayed on the analysis page instead of the number of values."),
    "Auf der Analyseseite werden nun auch GVI und PGS ausgegeben." : MessageLookupByLibrary.simpleMessage("The analysis page now also shows GVI and PGS."),
    "Auf der Analyseseite wird jetzt auch die Standardabweichung aller Werte der Periode angezeigt." : MessageLookupByLibrary.simpleMessage("Now also the standard deviation of all values of the period will be shown on the analysis page."),
    "Auf der Profilseite wurde die Spalte für die Werte von ICR verbreitert." : MessageLookupByLibrary.simpleMessage("Increased the width of column for ICR on the profilepage."),
    "Auf der Seite \"Profil\" wird die Gültigkeit jetzt mit Uhrzeit angezeigt." : MessageLookupByLibrary.simpleMessage("The validity is now displayed with the time on the \"Profile\" page."),
    "Auf der Seite \"Stündliche Statistik\" gibt es eine neue Option, um auch Spalten mit 10% und 90% anzeigen zu lassen." : MessageLookupByLibrary.simpleMessage("There is a new option on the page \"Hourly Statistics\" to also show columns with 10% and 90%."),
    "Auf der Seite Protokoll werden jetzt auch Insulinabgaben angezeigt, die z.B. über xdrip eingegeben wurden." : MessageLookupByLibrary.simpleMessage("Insulin deliveries are now also displayed on the Protocol page, e.g. if they were entered via xdrip."),
    "Aufhebung von temp. Ziel" : MessageLookupByLibrary.simpleMessage("Cancel temp target"),
    "Aufsummierte Werte" : MessageLookupByLibrary.simpleMessage("Summed up values"),
    "Aus den Profilen ermitteln" : MessageLookupByLibrary.simpleMessage("Extract from profiles"),
    "Ausgabe" : MessageLookupByLibrary.simpleMessage("Output"),
    "Ausgabe Parameter" : MessageLookupByLibrary.simpleMessage("Output Parameters"),
    "Ausgewertete Tage" : MessageLookupByLibrary.simpleMessage("Evaluated days"),
    "Ausgewählter Zeitraum" : MessageLookupByLibrary.simpleMessage("Selected Period"),
    "Ausrichtung" : MessageLookupByLibrary.simpleMessage("Orientation"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("Analysis"),
    "Automatisch" : MessageLookupByLibrary.simpleMessage("Automatic"),
    "Automatisch_theme selection - automatic" : MessageLookupByLibrary.simpleMessage("Automatic"),
    "Basal" : MessageLookupByLibrary.simpleMessage("Basal"),
    "Basal 0%" : MessageLookupByLibrary.simpleMessage("Basal 0%"),
    "Basal aus Profil anzeigen" : MessageLookupByLibrary.simpleMessage("Show basal from profile"),
    "Basal ges." : MessageLookupByLibrary.simpleMessage("Basal total"),
    "Basal mit zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Basal with two decimal places"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("Basalrate"),
    "Basalrate\nIE / Stunde" : MessageLookupByLibrary.simpleMessage("Basalrate U / hour"),
    "Basalrate anzeigen" : MessageLookupByLibrary.simpleMessage("Show basalrate"),
    "Batteriewechsel" : MessageLookupByLibrary.simpleMessage("Batterychange"),
    "Behandlungen" : MessageLookupByLibrary.simpleMessage("Treatments"),
    "Bei 0 beginnen" : MessageLookupByLibrary.simpleMessage("Start with 0"),
    "Bei Herokuapp und anderen Anbietern kostenloser Datenbankinstanzen ist der Speicherplatz der Instanz beschränkt, weshalb sie irgendwann voll ist. Dann kann man zwar eine neue Instanz anlegen, Nightscout Reporter benötigt aber für eine lückenlose Darstellung aller Tage Zugriff auf alle Instanzen, für die man eine Auswertung erhalten will. Deshalb können nun mehrere URLs für die Nightscout Instanzen eingegeben werden. Zusätzlich muss noch eingegeben werden, welches der erste und der letzte Tag mit Daten ist. Mit diesen Informationen ist es Nightscout Reporter dann möglich die benötigten Daten lückenlos auch über mehrere Instanzen hinweg auszuwerten." : MessageLookupByLibrary.simpleMessage("With herokuapp and other providers of free database instances, the instance\'s storage space is limited, which is why it becomes full at some point. Then you can create a new instance, but Nightscout Reporter needs access to all instances for which you want to receive a PDF in order to be able to display it seamlessly every day. Therefore, multiple URLs can now be entered for the Nightscout instances. In addition, you have to enter which is the first and the last day with data. With this information, Nightscout Reporter can then seamlessly evaluate the required data across multiple instances."),
    "Bei Tagesgrafiken und Wochengrafiken gibt es jetzt die Möglichkeit 1, 2, 4, 8 oder 16 Grafiken auf einer Seite zu platzieren." : MessageLookupByLibrary.simpleMessage("In daily graphics and weekly graphics there is now the possibility to place 1, 2, 4, 8 or 16 images on a page."),
    "Bei den Ausgabeparametern kann jetzt festgelegt werden, in welcher Einheit die Glukosemessungen ausgegeben werden sollen. Diese wird zu Beginn aus den in Nightscout gespeicherten Daten ermittelt und entsprechend vorbelegt. Es ist aber auch möglich, diese Einheit zu ändern oder beide Einheiten ausgeben zu lassen. Wenn beide ausgegeben werden, dann wird jedes Formular auf dem Glukoseangaben vorhanden sind zunächst mit mg/dL und danach nochmal mit mmol/l ausgegeben. Diese Einheit wird auch in den Shortcuts gespeichert." : MessageLookupByLibrary.simpleMessage("In the output parameters, you can now specify the unit in which the glucose values are to be shown. At the beginning this is determined from the data stored in Nightscout and pre-assigned accordingly. But it is also possible to change this unit or to have both units shown. If \"both\" is selected, then every form on which glucose information is available is shown first with mg/dL and then again with mmol/l. This unit is also saved in the shortcuts."),
    "Bei der Auswertung kann nun ein Bereich angezeigt werden, in dem die Anzahl an Unterzuckerungen während des ausgewählten Zeitraums und der Zeitpunkt der letzten Unterzuckerung angezeigt werden." : MessageLookupByLibrary.simpleMessage("In the analysis, an area can now be displayed, showing the number of hypos in the selected period and the time of the last hypo."),
    "Bei der Basalrate und dem Profil gibt es nun eine Option jeweils nur das letzte im entsprechenden Zeitraum ausgeben zu lassen. Das verringert die Blätterflut bei häufigem Profilwechsel." : MessageLookupByLibrary.simpleMessage("With the basalrate and the profile, there is now an option to have only the last one printed in the corresponding period. This reduces the number of pages with frequent profile changes."),
    "Bei der Berechnung der Kohlenhydrate werden weitere Datensätze berücksichtigt" : MessageLookupByLibrary.simpleMessage("Additional data is used for the calculation of carbohydrates"),
    "Bei der Festlegung des Zeitraums kann man jetzt angeben, bis zu welchem Tag der Zeitraum ermittelt werden soll. Voreingestellt ist so wie bisher auch der aktuelle Tag. Man kann aber auch den gestrigen Tag einstellen, um Tage mit vollständigen Daten zu haben, oder das letzte Wochenende, wenn man an vollständigen Wochen interessiert ist." : MessageLookupByLibrary.simpleMessage("When defining the period, you can now specify up to which day the period should be determined. As before, the current day is preset. You can also set yesterday to have days with complete dates, or the last weekend if you are interested in complete weeks."),
    "Bei der Profilermittlung wurde manchmal der letzte Profilwechsel ignoriert. Das ist nun behoben." : MessageLookupByLibrary.simpleMessage("The last profile change was sometimes ignored when determining the profile. That is now fixed."),
    "Bei der letzten Version sind Änderungen in den Code eingeflossen, die nicht wirklich durchdacht waren. Dafür entschuldige ich mich. Ich habe diese wieder entfernt, damit Nightscout Reporter für alle Benutzer die gewohnte Funktionalität bietet." : MessageLookupByLibrary.simpleMessage("The last version had changes in the code that weren\'t really thought through. I apologize for that. I removed these so that Nightscout Reporter offers the usual functionality again for all users."),
    "Beide" : MessageLookupByLibrary.simpleMessage("Both"),
    "Beim Auslesen der Profile ist ein Fehler aufgetreten. Möglicherweise sind zu viele Daten in der Profiltabelle (wird z.B. von iOS Loop verursacht). Du kannst versuchen, in den Einstellungen die Anzahl an auszulesenden Profildatensätzen zu verringern." : MessageLookupByLibrary.simpleMessage("An error occurred while reading out the profiles. There may be too much data in the profile table (e.g. caused by iOS Loop). You can try to reduce the number of profile data records to be read in the settings."),
    "Beim CGP werden die aktuellen Werte jetzt in der Legende angezeigt." : MessageLookupByLibrary.simpleMessage("The CGP now displays the current values in the legend."),
    "Beim Erzeugen des PDF ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("An error occurred while creating the PDF."),
    "Beim Glukose Perzentil Diagramm kann man nun ein Maximum für die Skalierung festlegen. Wenn es auf \"Automatisch\" gesetzt wird, wird das Maximum wie bisher auch ermittelt. Bei einem anderen Wert wird die Obergrenze für das Diagramm auf diesen Wert festgesetzt. Damit ist es leichter möglich zwei Diagramme miteinander zu vergleichen, deren Obergrenze unterschiedlich ist." : MessageLookupByLibrary.simpleMessage("In the Glucose Percentile Diagram you can now set a maximum for the scaling. If it is set to \"Automatic\", the maximum is determined as before. For any other value, the upper limit for the diagram is set to this value. This makes it easier to compare two diagrams with different upper limits."),
    "Beim Laden der Behandlungsdaten werden doppelte Datensätze herausgefiltert." : MessageLookupByLibrary.simpleMessage("When the treatment data is loaded, duplicate data records are filtered out."),
    "Beim Laden der Daten wird das entsprechende Datumsformat zur Anzeige verwendet" : MessageLookupByLibrary.simpleMessage("When loading the data, the corresponding date format is used for display of progress"),
    "Beim Perzentil Diagramm gibt es eine neue Option, mit der man die Basalrate unter dem Diagramm anzeigen lassen kann. Da das Diagramm normalerweise einen grösseren Zeitraum umspannt, wird dort die Basalrate angezeigt, die zu Beginn des Zeitraums aktiv war." : MessageLookupByLibrary.simpleMessage("In the percentile diagram there is a new option with which the basalrate can be displayed below the diagram. Since the diagram normally spans a longer period, the basalrate that was active at the beginning of the period is displayed."),
    "Beim erstmaligen Start von Nightscout Reporter wurde er schon bei Sprachänderung normal angezeigt. Jetzt bleibt er wie vorgesehen auf dem Willkommen Dialog." : MessageLookupByLibrary.simpleMessage("When Nightscout Reporter was started for the first time, it was displayed normally when the language changed. Now it stays on the welcome dialog as intended."),
    "Benutzer" : MessageLookupByLibrary.simpleMessage("User"),
    "Benutzer können ein User-Token angeben, um sich mit geschützten Nightscout-Instanzen zu verbinden" : MessageLookupByLibrary.simpleMessage("Users can specify a user token to connect to protected nightscout instances"),
    "Benutzer können nun gelöscht werden" : MessageLookupByLibrary.simpleMessage("Users can now be deleted"),
    "Benutzerdaten" : MessageLookupByLibrary.simpleMessage("User data"),
    "Benutzerdaten werden nun verschlüsselt im Browser gespeichert" : MessageLookupByLibrary.simpleMessage("User data is now stored encrypted in the browser"),
    "Berechnete IE für Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Calculated U for carbs"),
    "Berechnete IE für Kohlenhydrate anzeigen" : MessageLookupByLibrary.simpleMessage("Show calculated U for carbs"),
    "Bereite Daten vor..." : MessageLookupByLibrary.simpleMessage("Preparing data..."),
    "Bestätigung" : MessageLookupByLibrary.simpleMessage("Confirmation"),
    "Bewegung" : MessageLookupByLibrary.simpleMessage("Exercises"),
    "Bewegung anzeigen" : MessageLookupByLibrary.simpleMessage("Show Exercises"),
    "Bezeichnung" : MessageLookupByLibrary.simpleMessage("Title"),
    "Bis" : MessageLookupByLibrary.simpleMessage("To"),
    "Bis heute|Bis gestern|Bis Wochenende" : MessageLookupByLibrary.simpleMessage("Til Today|Til Yesterday|Til Weekend"),
    "Bisher fehlende Summenwerte in der Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Added missing totals in daily statistics"),
    "Bitte den Dateinamen für die Speicherung auswählen" : MessageLookupByLibrary.simpleMessage("Please select the filename for saving"),
    "Bitte einen Zeitraum wählen." : MessageLookupByLibrary.simpleMessage("Please select a period."),
    "Bitte überprüfe die Aktivierung der Wochentage unter dem Monat" : MessageLookupByLibrary.simpleMessage("Please check activation of the days of the week below the month"),
    "Blutige Messung" : MessageLookupByLibrary.simpleMessage("Blood values"),
    "Blutige Werte sollten jetzt auch bei mmol-Daten korrekt in der Tagesgrafik angezeigt werden." : MessageLookupByLibrary.simpleMessage("Blood values should now also be displayed correctly in the daily graph for mmol data."),
    "Blutwerte werden jetzt auch bei mmol/L in den Grafiken korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Blood values are displayed correctly now in mmol/L in the graphics."),
    "Bolus" : MessageLookupByLibrary.simpleMessage("Bolus"),
    "Bolus Rechner_bolus calculated by the bolus wizard" : MessageLookupByLibrary.simpleMessage("Bolus Wizard"),
    "Bolus ges." : MessageLookupByLibrary.simpleMessage("Bolus total"),
    "Bolusarten anzeigen" : MessageLookupByLibrary.simpleMessage("Show bolus types"),
    "Bolusspalte anzeigen" : MessageLookupByLibrary.simpleMessage("Show bolus column"),
    "CGP" : MessageLookupByLibrary.simpleMessage("CGP"),
    "CGP immer mit Standard Zielbereich" : MessageLookupByLibrary.simpleMessage("CGP always with Standard Targetarea"),
    "COB (Carbs On Board) anzeigen" : MessageLookupByLibrary.simpleMessage("Show COB (Carbs On Board)"),
    "Comprehensive Glucose Pentagon" : MessageLookupByLibrary.simpleMessage("Comprehensive Glucose Pentagon"),
    "Da wir seit einiger Zeit in Europa eine DSGVO haben, werden im Folgenden noch die Vorschriften dafür erfüllt. Der folgende Text ist nur auf Deutsch verfügbar:" : MessageLookupByLibrary.simpleMessage("Since we have a DSGVO in Europe, the following text meets the rules for it. The following text is only available in German:"),
    "Dansk" : MessageLookupByLibrary.simpleMessage("Dansk"),
    "Das \"Comprehensive Glucose Pentagon\" (Umfassendes Glukose Fünfeck) wurde als eigenes PDF und als Zusatzseite zur Tagesgrafik und Wochengrafik hinzugefügt. Es handelt sich hierbei um eine Darstellung von fünf Messgrössen, mit deren Hilfe sich die Qualität der Therapie ermitteln und mit anderen vergleichen lässt. Auf den Ausdrucken wird ein Verweis auf die zugrunde liegende Abhandlung ausgegeben." : MessageLookupByLibrary.simpleMessage("The \"Comprehensive Glucose Pentagon\" has been added as a separate PDF and as an additional page to the daily and weekly chart. It is a representation of five measures, with the help of which the quality of the therapy can be determined and compared with others. On the printouts, a reference is output to the underlying paper."),
    "Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr." : MessageLookupByLibrary.simpleMessage("Clicking on the message area no longer closes it."),
    "Das CGP wird jetzt auch bei extremen Werten korrekt erzeugt." : MessageLookupByLibrary.simpleMessage("The CGP is now generated correctly even with extreme values."),
    "Das Control für die Eingabe des Zeitraums wurde angepasst, damit es auf schmalen Display auch korrekt dargestellt wird." : MessageLookupByLibrary.simpleMessage("The control for the definition of the period has been adjusted so that it is displayed correctly on narrow display."),
    "Das Enddatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("The end date is not correct"),
    "Das Logo von Nightscout Reporter wurde geändert. Es ist nach wie vor die bekannte und beliebte Eule, aber sie hat nun eine Mütze auf wie die Zeitungsausträger und teilweise auch Journalisten in uralten Filmen. Das Logo ist nur im Programm vorhanden und erscheint nicht auf den PDFs. Dort ist nach wie vor das normale Nightscout Logo, weil es dort platziert wurde, um auf Nightscout selbst hinzuweisen." : MessageLookupByLibrary.simpleMessage("The Nightscout Reporter logo has been changed. It is still the well-known and popular owl, but it now wears a hat like the newspaper deliverers and sometimes also journalists in ancient films. The logo is only shown in the program and does not appear on the PDFs. There is still the normal Nightscout logo because it was placed there to refer to Nightscout itself."),
    "Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag." : MessageLookupByLibrary.simpleMessage("The basal rate PDF was incorrect if there was not a value for each hour."),
    "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren." : MessageLookupByLibrary.simpleMessage("The PDF was created. If it is not displayed, then probably a popup blocker is active, which prevents the display. Please deactivate this."),
    "Das Problem, dass bestimmte Tage nicht erzeugt werden konnten, wurde behoben." : MessageLookupByLibrary.simpleMessage("The problem that certain days could not be created has been fixed."),
    "Das Profil-PDF wird nun im Querformat erzeugt, um auch Profile mit vielen Einträgen für die Parameter brauchbar darstellen zu können." : MessageLookupByLibrary.simpleMessage("The profile PDF is now created in landscape format so that profiles with many entries for the parameters can also be displayed."),
    "Das Projekt wurde auf Dart 2.13.4 und Angular 6.0.1 aktualisiert." : MessageLookupByLibrary.simpleMessage("The project was updated to Dart 2.13.4 and Angular 6.0.1."),
    "Das Startdatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("The start date is not correct"),
    "Das gelbe Fünfeck stellt den Wertebereich des angegebenen Zeitraums dar." : MessageLookupByLibrary.simpleMessage("The yellow pentagon represents the value range of the specified period."),
    "Das grüne Fünfeck stellt den Wertebereich eines gesunden Menschen ohne Diabetes dar." : MessageLookupByLibrary.simpleMessage("The green pentagon represents the value range of a healthy person without diabetes."),
    "Daten bis" : MessageLookupByLibrary.simpleMessage("Data to"),
    "Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen." : MessageLookupByLibrary.simpleMessage("Data for the glucose values ​​with incorrect date format are read out correctly."),
    "Daten verschiedener Uploader werden nun besser interpretiert." : MessageLookupByLibrary.simpleMessage("Data from different uploaders is now better interpreted."),
    "Daten von" : MessageLookupByLibrary.simpleMessage("Data from"),
    "Daten, die von xDrip als sync markiert wurden, werden bei der Auswertung ignoriert." : MessageLookupByLibrary.simpleMessage("Data which was marked as sync by xDrip will be ignored in the caluclations."),
    "Datenschutzerklärung" : MessageLookupByLibrary.simpleMessage("Data protection"),
    "Datum" : MessageLookupByLibrary.simpleMessage("Date"),
    "Dauer der Insulinaktivität (DIA)" : MessageLookupByLibrary.simpleMessage("Duration of insulin activity (DIA)"),
    "Dauer der Kohlenhydrataktivität" : MessageLookupByLibrary.simpleMessage("Duration of carb activity"),
    "Dauer der abgeschalteten Basalrate anzeigen" : MessageLookupByLibrary.simpleMessage("Show the duration of the disabled basal rate"),
    "Dauer mit Minutenbruchteil" : MessageLookupByLibrary.simpleMessage("Precise duration"),
    "Der Fehler im Profil, der dazu führte, dass die Werte für ISF und Zielbereich falsch umgerechnet werden, wurde behoben." : MessageLookupByLibrary.simpleMessage("Fixed the bug in the profile that caused the ISF and target range values to be incorrectly converted."),
    "Der Fehler mit der Vervielfachung der Kohlenhydrate bei wiederholter Ausgabe der PDFs wurde korrigiert." : MessageLookupByLibrary.simpleMessage("The error with the multiplication of the carbohydrates with the repeated output of the PDFs was corrected."),
    "Der Titel vom Glucose Percentil Diagramm wird nun auch bei Ausdruck im Hochformat nicht mehr falsch in den Optionen Formularauswahl dargestellt." : MessageLookupByLibrary.simpleMessage("The title of the Glucose Percentile Diagram is no longer displayed incorrectly in the form selection options when printing in portrait format."),
    "Der Wert für die mittlere Glukose bei gesunden Menschen im CGM wurde auf die korrekten 90 mg/dl korrigiert." : MessageLookupByLibrary.simpleMessage("The mean glucose value in healthy people in the CGM has been adjusted to the correct value of 90 mg/dl."),
    "Der Zeitraum enthält keine auswertbaren Tage" : MessageLookupByLibrary.simpleMessage("The period contains no evaluable days"),
    "Der prognostische glykämische Risikoparameter stellt das Risiko von Langzeitkomplikationen dar (bisher nicht durch Studien belegt)." : MessageLookupByLibrary.simpleMessage("The Prognostic Glycemic Riskparameter represents the risk of long-term complications (not proven by studies up to now)."),
    "Details des Profilwechsels" : MessageLookupByLibrary.simpleMessage("Details of Profileswitch"),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("Deutsch"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("Diabetes since"),
    "Dialoge und die Anzeige des Fortschritts werden nun technisch etwas anders umgesetzt. Deswegen wird der Anwendungshintergrund nun in den Fällen dunkler dargestellt und es ist nicht möglich darauf etwas anzuklicken." : MessageLookupByLibrary.simpleMessage("Dialogs and the display of the progress are now implemented a little different technically. Because of this, the application background is now shown darker in the cases and it is not possible to click on anything."),
    "Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an" : MessageLookupByLibrary.simpleMessage("The analysis page has been redesigned and now displays headings above the areas"),
    "Die Analysewerte wurden nicht ganz korrekt ermittelt. Das wurde korrigiert und nun sollten die statistischen Daten über den Zeitraum richtig ausgewertet werden." : MessageLookupByLibrary.simpleMessage("The analysis values were not determined correctly. This has been corrected and the statistical data evaluated over the period should now be correct."),
    "Die Angabe DIA auf der Profilseite wird nun mit zwei Nachkommastellen angezeigt." : MessageLookupByLibrary.simpleMessage("DIA on the profile page is now displayed with two decimal places."),
    "Die Anpassung der Glukosewerte wird nun bei den Einstellungen gespeichert. Sie kann aber weiterhin bei den Ausgabeparametern geändert werden, um ohne grosse Umwege einen Vergleich erstellen zu können." : MessageLookupByLibrary.simpleMessage("The adjustment of the glucose values is now saved in the settings. However, it can still be changed in the output parameters in order to be able to create a comparison without any detours."),
    "Die Anzeige der Bilder auf Kacheln wird nun wie vorgesehen korrekt in den Einstellungen vorbelegt." : MessageLookupByLibrary.simpleMessage("The display of the images on tiles is now correctly preset in the settings as intended."),
    "Die Anzeige des Faktors auf dem PDF, wenn ein Korrekturfaktor eingestellt wurde, wurde in eine Prozentangabe geändert um welche die Zuckerwerte erhöht oder verringert wurden." : MessageLookupByLibrary.simpleMessage("The display of the factor on the PDF when a correction factor has been set has been changed to a percentage by which the sugar values have been increased or decreased."),
    "Die Aufsummierung der Werte in der Analyse wurde korrigiert." : MessageLookupByLibrary.simpleMessage("The accumulation of the values in the analysis has been corrected."),
    "Die Aufteilung auf mehrere PDF-Dateien funktioniert jetzt besser." : MessageLookupByLibrary.simpleMessage("The division into multiple PDF files works better now."),
    "Die Ausgabe des Zielwertes und der blutigen Werte in der Tagesgrafik wurde korrigiert. Da gab es Probleme, wenn man eine andere Blutzucker Einheit als die auf dem Server eingestellte zur Ausgabe verwendet hat." : MessageLookupByLibrary.simpleMessage("The output of the target value and the blood values in the daily graphic has been corrected. There were problems when a different blood sugar unit than the one set on the server was used for output."),
    "Die Auswahl des Zeitraums ist nun flexibler. Die Auswahl erfolgt in einem Dialog, der die eingestellte Sprache berücksichtigt. Mit der Auswahl der vorbelegten Bereiche (Heute, Letzte Woche, usw.) wird festgelegt, dass beim nächsten Aufruf das aktuelle Datum als Grundlage für den Bereich verwendet wird. Wenn der Bereich direkt im Kalender festgelegt wird, dann gilt dieser beim nächsten Aufruf so wie er festgelegt wurde. Standardmässig ist der erste Tag der Woche jetzt ein Montag. Dieser kann aber durch Anklicken des Wochentags in der Titelzeile des Monats auf die eigene Präferenz festgelegt werden. Die Eingabe der Datumsfelder erfolgt in der Form, die der Sprache entspricht (Tag.Monat.Jahr für deutsch, Monat/Tag/Jahr für englisch)." : MessageLookupByLibrary.simpleMessage("The selection of the period is now more flexible. The selection is done in a dialog that takes the language into account. Selecting the default ranges (today, last week, etc.) sets the current date as the basis for the range at the next call. If the range is set directly in the calendar, then it will be applied the next time as defined. By default, the first day of the week is now a Monday. However, this can be set to your own preference by clicking on the day of the week in the title bar of the month. The date fields are entered in the form that corresponds to the language (day.month.year for German, month/day / year for English)."),
    "Die Auswahl des Zeitraums und der Benutzer wurde in die Titelzeile verschoben." : MessageLookupByLibrary.simpleMessage("The selection of the period and the user has been moved to the title bar."),
    "Die Balken für das Bolusinsulin in der Tagesgrafik werden nun entsprechend dem Maximalwert an Bolusinsulin an dem Tag skaliert." : MessageLookupByLibrary.simpleMessage("The bars for the bolus insulin in the daily graph are now scaled according to the maximum bolus insulin at that day."),
    "Die Balken in der Analyse werden jetzt korrekt skaliert." : MessageLookupByLibrary.simpleMessage("The bars in the analysis are now scaled correctly."),
    "Die Basalratenprofile für den Tag werden nun auch anhand der Behandlungsdaten ermittelt. Profilwechsel werden in der Tagesgrafik angezeigt und sollten ab dem Zeitpunkt des Wechsels auch eine korrekte Basalratenanpassung anzeigen." : MessageLookupByLibrary.simpleMessage("The basalrate profiles for the day are now also determined based on the treatment data. Profile changes are displayed in the daily graph and should also show a correct basal rate adjustment from the moment of change."),
    "Die Berechnung der PDF-Grössen wurde korrigiert, so dass nun weniger PDFs erstellt werden, wenn sie aufgrund der Grösse aufgeteilt werden." : MessageLookupByLibrary.simpleMessage("The calculation of the PDF sizes has been corrected, so that fewer PDFs are created when they are divided due to the size."),
    "Die Berechnung der Summenzeile auf der Seite Tagesstatistik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("The calculation of the totals row on the Daily Statistics page has been corrected."),
    "Die Berechnung der tatsächlichen Basalrate wurde korrigiert." : MessageLookupByLibrary.simpleMessage("The calculation of actual basal rate was corrected."),
    "Die Berechnung des täglichen Insulins berücksichtigt nun auch die SMB." : MessageLookupByLibrary.simpleMessage("The calculation of the daily insulin now also takes the SMB into account."),
    "Die Bilder auf den Kacheln sind nun in der jeweiligen Sprache beschriftet." : MessageLookupByLibrary.simpleMessage("The images on the tiles are now labeled in the respective language."),
    "Die Buttons für die Erzeugung vergangener Zeiträume wurden entfernt. Das kann jetzt im neuen PDF-Dialog eingestellt werden." : MessageLookupByLibrary.simpleMessage("The buttons for creating previous periods have been removed. This can now be set in the new PDF dialog."),
    "Die Buttons für die vergangenen Perioden werden nicht angezeigt, wenn kein Zeitraum oder kein PDF ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("The Buttons for past periods will not be displayed if no period or PDF is selected."),
    "Die Daten, die Du hier eingibst, werden normalerweise im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. In diesem Fall werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("The data you enter here will be stored in the localStorage of the browser. This contains website-related data that can only be read out from this website. No cookies are used and no data is stored on servers. Only a connection to the specified Nightscout instance is set up and the data available there is read out to create a PDF document. This can then be submitted to the diabetes counselor or other interested party."),
    "Die Eingabe des Zugriffsschlüssels auf dem Einstellungen-Dialog kann jetzt mit einem Button neben dem Eingabefeld lesbar gemacht werden." : MessageLookupByLibrary.simpleMessage("The entry of the access key in the settings dialog can now be made readable with a button next to the input field."),
    "Die Einstellung für das Öffnen des PDF im gleichen Fenster, das Herunterladen des PDFs und den Hinweis auf Nightscout im PDF wurde aus den Einstellungen in die Ausgabe Parameter verschoben. Dadurch kann man das bei jedem Ausdruck schnell festlegen und ändern." : MessageLookupByLibrary.simpleMessage("The setting for opening the PDF in the same window, downloading the PDF and hiding text about Nightscout in the PDF has been moved from the settings to the output parameters. This allows you to quickly set and change that for each output."),
    "Die Einstellung für die Anpassung von BG_TARGET_BOTTOM und BG_TARGET_TOP ist nun unabhängig von der Auswahl \"Glucosewerte anpassen\". Damit kann man die Option umschalten, ohne den Zielbereich auf dem Server neu konfigurieren zu müssen." : MessageLookupByLibrary.simpleMessage("The setting for adjusting BG_TARGET_BOTTOM and BG_TARGET_TOP is now independent of the \"Adjust Glucose Values\" selection. This allows you to toggle the option without having to reconfigure the target area on the server."),
    "Die Einstellungen für das Herunterladen des PDFs, das Öffnen im gleichen Fenster und die Maximalgrösse der PDFs wurden von der Synchronisierung mit Google Drive ausgenommen, weil sie speziell für den verwendeten Browser oder das verwendete Gerät benötigt werden. Sie werden nach wie vor gespeichert, aber sie werden nicht zwischen verschiedenen Browsern synchronisiert." : MessageLookupByLibrary.simpleMessage("The settings for downloading the PDF, opening the PDF in the same window, and the maximum size of the PDFs were excluded from syncing with Google Drive because they are specific to the browser or device you are using. They are still saved, but they are not synchronized between different browsers."),
    "Die Einträge im Protokoll für temporäre Ziele werden jetzt auch bei mmol-Angaben richtig angezeigt." : MessageLookupByLibrary.simpleMessage("The entries in the log for temporary targets are now displayed correctly even with mmol data."),
    "Die Ermittlung der Einheit (mg/dl oder mmol/l) wird nun flexibler gehandhabt, so dass auch Leerzeichen in der entsprechenden Einstellung nicht mehr zu einer Fehlinterpretation führen." : MessageLookupByLibrary.simpleMessage("The determination of the unit (mg/dl or mmol/l) is now handled more flexibly, so that even spaces in the corresponding setting no longer lead to a misinterpretation."),
    "Die Ermittlung der effektiven täglichen Basalrate wurde umstrukturiert und sollte nun genauere Werte ergeben." : MessageLookupByLibrary.simpleMessage("The determination of the effective daily basal rate has been restructured and should now give more accurate values."),
    "Die Farbe für Bewegung in der Tagesgrafik wurde geändert." : MessageLookupByLibrary.simpleMessage("The color for exercises in the daily graphic changed."),
    "Die Farben für Dialoge und Scrollbars wurden angepasst." : MessageLookupByLibrary.simpleMessage("The colors for dialogs and scrollbars have been adjusted."),
    "Die Farben für die Glukosebereiche werden jetzt dort, wo sie als Hintergrundfarbe mit Text verwendet werden heller dargestellt, um die Lesbarkeit zu erhöhen." : MessageLookupByLibrary.simpleMessage("The colors for the glucose areas are now displayed lighter where they are used as a background color with text to make them easier to read."),
    "Die Genauigkeit der ISF Angaben im Profil wurde korrigiert." : MessageLookupByLibrary.simpleMessage("The precision of ISF in profile was corrected."),
    "Die Genauigkeit der Insulindosierung wird aus dem Profil ermittelt. Der Wert mit der höchsten Genauigkeit legt fest, mit wieviel Nachkommastellen Basalratenwerte angezeigt werden." : MessageLookupByLibrary.simpleMessage("The accuracy of the insulin dosage is determined from the profile. The value with the highest precision defines how many decimalplaces are used for display of basalvalues."),
    "Die Glucose Perzentil Grafik wurde um die Tabelle \"Stündliche Statistik\" erweitert. Diese listet tabellarisch die Werte des Zeitraums für jede Stunde des Tages auf. Man kann entweder nur die Grafik, nur die Tabelle oder beides zusammen erzeugen lassen." : MessageLookupByLibrary.simpleMessage("The Glucose Percentile Graph has been expanded to include the Hourly Statistics table. This tabulates the values of the period for each hour of the day. You can either create just the graphic, just the table or both together."),
    "Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit." : MessageLookupByLibrary.simpleMessage("The glucose graph of the daily graphs has been freed from missing data."),
    "Die Glukosewerte können nun mit einem Faktor korrigiert werden, der sich aus dem im Labor ermittelten und errechneten HbA1C Wert ergibt. Dieser Faktor betrifft alle Sensorwerte, die in Nightscout Reporter verarbeitet werden. Der Faktor wird in den Ausgabeparametern festgelegt. Dort wird er über die Checkbox \"Glukosewerte anpassen\" aktiviert und deaktiviert. Wenn er aktiviert ist, erscheinen zwei Schieberegler. Der obere legt den errechneten HbA1C fest, der untere den im Labor ermittelten HbA1C. Wenn er aktiviert ist, wird auf jedem PDF rechts oben angegeben, mit welchem Faktor die Glukosewerte korrigiert wurden. Das hat auf jedem PDF Auswirkungen auf dem Glukosewerte verarbeitet werden." : MessageLookupByLibrary.simpleMessage("The glucose values can now be corrected with a factor that results from the A1C value determined by the laboratory and calculated in the program. This factor affects all sensor values processed in Nightscout Reporter. The factor is specified in the output parameters. There it is activated and deactivated via the \"Adjust glucose values\" checkbox. When activated, two sliders appear. The upper one defines the calculated A1C, the lower one the A1C determined by the laboratory. If it is activated, the factor with which the glucose values were corrected is indicated on the top right of each PDF. This affects every PDF on which glucose values are processed."),
    "Die Icons auf einigen Buttons waren zu nahe am Text" : MessageLookupByLibrary.simpleMessage("The icons on some buttons were too close to the text"),
    "Die Kohlenhydratangaben auf der Tagesgrafik werden jetzt ohne den Zusatz KH ausgegeben." : MessageLookupByLibrary.simpleMessage("The carbohydrate information on the daily graph is now output without the suffix KH."),
    "Die Konfiguration erfolgt direkt im Fenster von Night-Watch, indem man etwas anklickt. Dadurch wechselt die Seite in den Editiermodus und mit den Controls am unteren Rand des Fensters können die vorhandenen Elemente verändert, verschoben, gelöscht oder neue Elemente hinzugefügt werden. Mit dem Speichern-Icon in den Controls werden die Einstellungen gespeichert und der Editiermodus beendet. Er kann auch beendet werden, indem man das aktive Element anklickt, wobei dann die Änderungen aber nicht gespeichert werden. Nach dem Neuladen der Seite hat man dann die letzte Ansicht vor sich." : MessageLookupByLibrary.simpleMessage("The configuration is done directly in the Night-Watch window by clicking on something. This sets the page to edit mode and the existing elements can be changed, moved, deleted or new elements can be added using the controls at the bottom of the window. With the save icon in the controls, the settings are saved and the edit mode is closed. It can also be closed by clicking the active item, but the changes will not be saved. After reloading the page you see the last view."),
    "Die Legende der Tagesgrafik wurde um den Eintrag für Bewegung erweitert." : MessageLookupByLibrary.simpleMessage("The legend of the daily graphic has been expanded to include the entry for exercises."),
    "Die Legende der Tagesgrafik wurde um den Eintrag für blutige Messungen erweitert." : MessageLookupByLibrary.simpleMessage("The legend of the daily graphic now includes the entry for blood values."),
    "Die Links zu Nightscout und den Reports von Nightscout im Menü funktionieren jetzt auch richtig, wenn ein Usertoken angegeben wurde." : MessageLookupByLibrary.simpleMessage("The menu links to Nightscout and the reports of Nightscout now also work correctly when a usertoken was provided."),
    "Die Listenansicht ist jetzt wieder scrollbar." : MessageLookupByLibrary.simpleMessage("The listview is scrollable again."),
    "Die Microboli des Minimed 600 Uploaders werden jetzt auch ermittelt und in der Analyse ausgegeben, wenn sie vorhanden sind." : MessageLookupByLibrary.simpleMessage("The microboli of the Minimed 600 Uploader are now also identified and output in the analysis, if they exist."),
    "Die Microboli vom Minimed 600 Uploader wurden aus der Ausgabe entfernt, da es sich dabei nur um Temporäre Basalraten handelt." : MessageLookupByLibrary.simpleMessage("The microboli from the Minimed 600 Uploader have been removed from the output, because they are just temporary basal rates."),
    "Die Mischung von zwei Seiten auf einer PDF-Seite, die manchmal vorkam, wurde behoben." : MessageLookupByLibrary.simpleMessage("The mixture of two pages on one PDF page, which sometimes occurred has been fixed."),
    "Die Möglichkeit für Beta-Funktionen wurde entfernt; die Betaversion ist nun hier zu finden:" : MessageLookupByLibrary.simpleMessage("The possibility for beta functions has been removed; the beta version is now available at:"),
    "Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird" : MessageLookupByLibrary.simpleMessage("The ability to display the URL in the title bar has been removed since the current user or his URL is now displayed directly"),
    "Die Oberfläche kann jetzt verschiedene Darstellungen annehmen. Diese zeigen sich zur Zeit durch geänderte Farben und ein angepasstes Icon im Browsertab und beim Laden der Seite. Das hat keine Auswirkungen auf die erzeugten PDF-Dateien. Es ist die Vorbereitung für eine teilweise anpassbare Oberfläche. Das Thema der Darstellung wird standardmässig vom System festgelegt, was zur Zeit heisst, dass im Dezember ein weihnachtliches Thema angezeigt wird. Das kann aber durch Anklicken des Icons, das ab jetzt links unten zu sehen ist, geändert werden. Beim Anklicken wird rechts neben dem Icon ein Bereich mit den verfügbaren Darstellungen eingeblendet. Das erste Icon (der kleine Zauberer) bedeutet dabei, dass die Darstellung vom System ermittelt wird. Zur Zeit bedeutet das die weihnachtliche Darstellung im Dezember. Es kann in Zukunft aber auch weitere Kriterien geben, anhand derer das Thema angepasst wird. Die direkte Festlegung eines Themas mit einem der anderen icons hat aber immer Vorrang vor der systemeigenen Logik." : MessageLookupByLibrary.simpleMessage("The UI can now assume different representations. These show themselves at the moment by different colors and a changed icon in the Browser tab and with the loading of the side. This does not affect the generated PDF files. It\'s the preparation for a partially customizable surface. The theme of the UI is set by default by the system, which currently means that a Christmas theme will be displayed in December. But this can be changed by clicking on the icon, which can be seen at the bottom left. When clicking the icon, an area with the available themes is displayed to the right of the icon. The first icon (the little wizard) means that the theme is determined by the system. At the moment this means the Christmas presentation in December. However, there may be other criteria in the future that will be used to adjust the theme. However, the direct definition of a theme with one of the other icons always takes precedence over the system logic."),
    "Die Positionierung der Notizen in der Tagesgrafik wurde korrigiert, so dass sie näher an der Uhrzeit stehen. Die Striche wurden so verkürzt, dass sie nur noch bis zum unteren Rand der Grafik gehen und nicht mehr durch die Wertetabelle." : MessageLookupByLibrary.simpleMessage("The positioning of the notes in the daily chart has been corrected so that they are closer to the time. The strokes were shortened so that they go only to the bottom of the graph and not through the table of values."),
    "Die Profilbasalrate im Formular Tagesprofil wird jetzt ebenfalls mit Balken dargestellt." : MessageLookupByLibrary.simpleMessage("The profile basal rate in the daily profile form is now also displayed with bars."),
    "Die Profile für den Zeitraum wurden teilweise nicht korrekt identifiziert. Das sollte behoben sein." : MessageLookupByLibrary.simpleMessage("The profiles for the period were partially incorrectly identified. That should be fixed."),
    "Die Profilseite wurde angepasst, damit Einträge für 24 Stunden auf eine Seite passen." : MessageLookupByLibrary.simpleMessage("The profile page has been adapted so that entries for 24 hours fit on one page."),
    "Die Profiltabelle sollte normalerweise nur Daten zu den verwendeten Profilen beinhalten. iOS Loop verwendet diese Tabelle aber dazu, um dort eigene Einstellungen zu speichern und tut dies bei einigen Benutzern exzessiv. Ab einer bestimmten Datenmenge kann die Profiltabelle über die API dann nicht mehr korrekt abgefragt werden. Deswegen gibt es hier die Möglichkeit, die Anzahl an Datensätzen einzuschränken, die aus dieser Tabelle geholt werden. Das ist so lange notwendig, wie iOS Loop oder andere Uploader diese Tabelle falsch befüllen.\n\nMaximale Anzahl an Profildatensätzen:" : MessageLookupByLibrary.simpleMessage("The profile table should normally only contain data on the profiles used. iOS Loop uses this table to save its own settings and does this excessively at some users. Above a certain amount of data, the profile table can then no longer be queried correctly via the API. This is why there is this option of restricting the number of data records that are fetched from this table. This is necessary as long as iOS Loop or other uploaders fill this table incorrectly.\n\nMaximum number of profile datasets:"),
    "Die Reihenfolge der Formulare kann nun verändert werden. Dazu einfach das Handle auf der linken Seite des Buttons für das Formular anklicken, festhalten und an die Stelle ziehen, vor der es ausgedruckt werden soll." : MessageLookupByLibrary.simpleMessage("The order of the forms can now be changed. Simply click on the handle on the left side of the button for the form, hold it and drag it to the place where it should be printed."),
    "Die Seiten Profil und Basalrate zeigen nun bei einem Profil, das nur temporär während eines Tages aktiv war den Zeitraum an, in dem es aktiv war." : MessageLookupByLibrary.simpleMessage("The pages profile and basalrate for a profile that was temporarily active during one day now only show this timespan."),
    "Die Seitenzahlen auf den Kacheln wurden weiter an den unteren Rand verschoben, damit sie immer gut lesbar sind." : MessageLookupByLibrary.simpleMessage("The page numbers on the tiles have been moved further to the bottom so they are always easy to read."),
    "Die Skalen an den Grafiken wurden überarbeitet. Sie zeigen jetzt für mmol/L ganzzahlige Werte an und die Einheiten wurden entfernt. Diese stehen nur noch unten an der Grafik. Das betrifft die täglichen Grafiken, wöchentlichen Grafiken und das Glukose Percentil Diagramm." : MessageLookupByLibrary.simpleMessage("The scales on the graphics have been updated. Now they show whole numbers for mmol/L and the units have been removed. These are shown at the bottom of the graphics. This includes the daily graphics, weekly graphics and the glucose percentile chart."),
    "Die Spalten auf der Profilseite wurden korrigiert, damit auch längere Zeitnamen (z.B. in spanisch) Platz finden." : MessageLookupByLibrary.simpleMessage("The columns on the page have been corrected to accommodate longer time names (e.g. in Spanish)."),
    "Die Standardabweichung wird jetzt auch bei mmol/L korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Standard deviation is now also shown correctly when using mmol/L."),
    "Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an" : MessageLookupByLibrary.simpleMessage("The daily statistics now display mmol/l values ​​correctly"),
    "Die URL wurde noch nicht festgelegt" : MessageLookupByLibrary.simpleMessage("The URL has not been set yet"),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("The URL has not been set yet."),
    "Die URLs der Benutzer werden nun nach dem Enddatum sortiert." : MessageLookupByLibrary.simpleMessage("The URLs of the users are now sorted according to the end date."),
    "Die Url zur Nightscout-API muss mit https beginnen, da Nightscout Reporter auch auf https läuft. Ein Zugriff auf unsichere http-Resourcen ist nicht möglich." : MessageLookupByLibrary.simpleMessage("The Url to the Nightscout API must start with https, since Nightscout Reporter also runs on https. Access to unsafe http resources is not possible."),
    "Die Vorschaubilder auf den Kacheln passen sich abhängig von den ausgewählten Optionen teilweise an (z.B. die Auswahl von CGP bei Tagesgrafiken)." : MessageLookupByLibrary.simpleMessage("The preview images on the tiles will partially adjust depending on the options selected (for example, choosing CGP for day graphics)."),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("The website mainly uses Javascript to do its job. When creating the PDF document Javascript and PHP are used."),
    "Die Werte VarK und ToR im CGP werden bei Tages- und Wochengrafiken in der Legende und in der Grafik korrekt ausgegeben." : MessageLookupByLibrary.simpleMessage("The values VarK and ToR in the CGP are correctly output for day and week graphics in the legend and in the graphic."),
    "Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt" : MessageLookupByLibrary.simpleMessage("The values ​​for the default target range on the analysis page are now calculated correctly"),
    "Die Werte im CGP werden jetzt bei mmol-Angaben auch korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("The values in the CGP are now also correctly displayed for mmol data."),
    "Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. " : MessageLookupByLibrary.simpleMessage("The specified URL is not reachable. If the URL is correct, then it may be due to the Nightscout-settings. "),
    "Die berechneten IE für Kohlenhydrate in der Tagesgrafik wurden teilweise mit falschen Faktoren ermittelt. Der Fehler wurde behoben." : MessageLookupByLibrary.simpleMessage("The calculated IE for carbohydrates in the daily graph were partly determined with wrong factors. The bug has been fixed."),
    "Die eigenen Grenzwerte auf der Analyseseite in mmol/L werden nun korrekt berechnet." : MessageLookupByLibrary.simpleMessage("The own limits on the analysis page in mmol/L are now calculated correctly."),
    "Die einzelne Seite CGP kann jetzt auch im Querformat ausgegeben werden." : MessageLookupByLibrary.simpleMessage("The single page CGP can now also be output in landscape format."),
    "Die falsche Bezeichnung für durchschnittliche Kohlenhydrate pro Tag in der Tagesstatistik wurde durch die korrekte Bezeichnung für durchschnittliche Kohlenhydrate pro Mahlzeit ersetzt." : MessageLookupByLibrary.simpleMessage("The incorrect name for average carbohydrates per day in the daily statistics has been replaced by the correct name for average carbohydrates per meal."),
    "Die fehlerhafte Platzierug der blutigen Werte bei mmol/L in der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Fixed the erroneous placement of the blood values in the daily graph when using mmol/L."),
    "Die fehlerhafte Zentrierung der Auswahlbuttons wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Wrong alignment of buttons on mainpage has been fixed."),
    "Die glykämische Variabilität stellt die Streuung der Werte um den glykämischen Mittelwert herum in Prozent dar." : MessageLookupByLibrary.simpleMessage("Glycemic variability represents the variation of values around the glycemic average value in percent."),
    "Die glykämische Variabilität wird jetzt im CGP auch bei Tages- und Wochengrafiken korrekt ausgegeben." : MessageLookupByLibrary.simpleMessage("The glycemic variability is now correctly displayed in the CGP even with daily and weekly graphics."),
    "Die meisten Spalten auf der Seite \"Stündliche Statistik\" werden bei nicht vorhandenen Daten leer gelassen." : MessageLookupByLibrary.simpleMessage("Most of the columns on the page \"Hourly Statistics\" are left blank if there is no data."),
    "Die mittlerweile überflüssige Option zur Darstellung der Basalrate mit zwei Nachkommastellen wurde aus der Tagesgrafik entfernt." : MessageLookupByLibrary.simpleMessage("Removed the obsolete option for the decimals of the basalrate from the daily graphics."),
    "Die teilweise falsch zugewiesenen Grenzwerte für die Bereiche (niedrig, normal, hoch) wurden korrigiert." : MessageLookupByLibrary.simpleMessage("The partially misallocated limits for the areas (low, normal, high) have been corrected."),
    "Die temporäre Basalrate am Anfang des Tages wurde bisher falsch gesetzt, wenn sie im vorherigen Tag gesetzt wurde. Das wurde behoben." : MessageLookupByLibrary.simpleMessage("The temporary basal rate at the beginning of the day has been set incorrectly if it was set in the previous day. This has been fixed."),
    "Die Überschrift über der Tabelle vom Glucose Perzentil Diagramm wurde korrigiert." : MessageLookupByLibrary.simpleMessage("The title above the table of glucose percentile diagram has been corrected."),
    "Die Überschrift über der mittleren Spalte im Tagesprofil wurde korrigiert." : MessageLookupByLibrary.simpleMessage("The heading above the middle column in the daily profile has been corrected."),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("This page is used to generate PDF documents with the data stored at Nightscout. Therefore, it is necessary to be able to access this data, which is why a few settings must first be saved. As long as these are not available and valid, the site can do nothing for you."),
    "Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden." : MessageLookupByLibrary.simpleMessage("Added this page. It is displayed each time Nightscout Reporter starts, if it has not been displayed in the current version. In addition, it can be called up again in the burgermenu."),
    "Diese Webseite speichert keine Daten auf Servern. Die benötigten Daten werden von der eingegebenen URL zur Nightscout-Instanz geholt und als PDF aufbereitet. Die Daten, die zur Funktion der Webseite benötigt werden, werden im localStorage des Browsers gespeichert und nicht an den Server übermittelt. Wenn die Synchronisierung mit Google Drive aktiviert wird, dann werden diese Daten zusätzlich in den Anwendungsdaten auf dem Google Drive des verbundenen Kontos gespeichert." : MessageLookupByLibrary.simpleMessage("This website does not store data on servers. The required data is retrieved from the entered URL to the Nightscout instance and formatted as PDF. The data required for the website to work is stored in the localStorage of the browser and not transmitted to the server. If syncing with Google Drive is turned on, then that data will also be stored in the application data on Google Drive\'s associated account."),
    "Dieser Regler legt fest, wie gross eine Ausgabe maximal werden darf, bevor sie auf mehrere PDF-Dateien aufgeteilt wird. Wenn bei Erstellung eines PDFs ein leeres Fenster angezeigt wird, dann hilft es normalerweise, diesen Regler weiter nach links zu bewegen." : MessageLookupByLibrary.simpleMessage("This slider defines the maximum size allowed before the PDF will be split into multiple files. If a blank window is displayed when creating a PDF, it usually helps to move this slider further to the left."),
    "Dieses Formular ..." : MessageLookupByLibrary.simpleMessage("This form ..."),
    "Dieses Formular zeig die Verteilung der Glukosewerte\nim ausgewählten Zeitraum an." : MessageLookupByLibrary.simpleMessage("This form shows the distribution of the glucose values in the selected period."),
    "Dieses Formular zeigt an, wie sich die Glukosewerte im ausgewählten Zeitraum über den Tag\nverteilen. Diese Verteilung kann graphisch und tabellarisch ausgegeben werden.\n\nIn der Grafik sind die Bereiche für bestimmte Abweichungen farblich markiert. Die Linie zeigt den Medianwert\nan. In der Tabelle kann man diese Werte nachlesen. Wenn die Basalrate mit ausgegeben wird, dann ist das die\nBasalrate, die zu Beginn des ausgewählten Zeitraums aktiv war." : MessageLookupByLibrary.simpleMessage("This form shows how the glucose values are distributed over the day in the selected period. This distribution can be output graphically and in tabular form.\n\nIn the graphic, the areas for certain deviations are color-coded. The line shows the median value. You can look up the values in the table. If the basal rate is also displayed, then this is the basal rate that was active at the beginning of the selected period."),
    "Dieses Formular zeigt das Comprehensive Glucose Pentagon an, welches die Qualität der \nGlukoseeinstellung in einer schnell zu erfassenden Weise darstellt. Es wird für den ausgewählten Zeitraum angezeigt\nwie lange der Glukosewert im Schnitt während des Tages ausserhalb des Zielbereichs war, wie hoch die Intensität\nder Überzuckerungen und der Unterzuckerungen war, wie hoch der Mittelwert war und wie hoch die Variabilität der\nWerte war.\n\nDiese Grafik kann auch bei @05@ und @08@ ausgegeben werden. \n" : MessageLookupByLibrary.simpleMessage("This form displays the Comprehensive Glucose Pentagon, which represents the quality of the glucose control in a readily understood manner. For the selected period it shows how long the average glucose value was outside the target range during the day, how high the intensity of the hyperglycemia and hypoglycemia was, how high the mean value was and how high the variability of the values was.\n\nThis graphic can also be output at @05@ and @08@."),
    "Dieses Formular zeigt das Profil an. Es werden normalerweise alle Profile des ausgewählten\nZeitraums ausgegeben. Wenn sich in dem Zeitraum das Profil geändert hat, wird ein neues Blatt erzeugt.\n\nEs gibt aber eine Option, welche nur das letzte Profil des Zeitraums ausgibt. Ausserdem gibt es eine Option,\nmit der gleiche Zeilen zusammengefasst werden. Das führt zu einem kürzeren Profil, wenn mehrere Zeiten nacheinander\ndie gleichen Werte beinhalten." : MessageLookupByLibrary.simpleMessage("This form shows the profile. Usually all profiles of the selected period are shown. If the profile has changed during this period, a new sheet is created.\n\nHowever, there is an option that only outputs the last profile of the period. There is also an option to combine lines with same values. This leads to a shorter profile if several times in succession contain the same values."),
    "Dieses Formular zeigt den Trend der Glukosewerte über den Tag hinweg \nan. Dabei wird in der Spalte Trend immer angezeigt, um wieviel Prozent sich \nder Wert von einer vollen Stunde zur nächsten verändert hat. Dieser Trend ist\nganz hilfreich, wenn man bei einem Basalratentest erkennen will, wie sich der\nGlukosewert nur anhand der Basalrate entwickelt. Es kann auch eine Spalte für\ndie Boluswerte und die Kohlenhydrate angezeigt werden. Diese sollten aber bei\neinem Basalratentest natürlich leer sein. Ebenso muss ein eventuell\nvorhandener Loop im Zeitraum des Tests abgeschaltet sein. Es geht dabei nur\num den Diabetiker und seine Basalrate.\nEs wird auch eine Spalte mit der\nBasalrate angezeigt, wenn die Option \'Alle Werte für einen Tag anzeigen\'\nnicht markiert wurde. Wenn die Option markiert wurde, dann fehlt der Platz\n(und auch der Sinn), diese darzustellen." : MessageLookupByLibrary.simpleMessage("This form shows the trend in glucose levels over the day. The Trend column always shows the percentage by which the value has changed from one full hour to the next. This trend is very helpful if you want to see in a basal rate test how the glucose value is developing based on the basal rate alone. A column for bolus values and carbohydrates can also be displayed. However, these should of course be empty in a basal rate test. Any existing loop must also be switched off during the test. It\'s all about the diabetic and his basal rate.\n\nA column with the basal rate is also displayed if the option \"Show all values for a day\" is not checked. If the option has been marked, then there is no space (and also the sense) to display it."),
    "Dieses Formular zeigt den Verlauf der Glukosekurve für einen Tag. Pro Tag im ausgewählten\nZeitraum wird eine Seite erzeugt. Es gibt sehr viele Optionen, mit denen dieses Formular angepasst werden kann.\nDie Optionen, die auf einen Loop hinweisen sind andersfarbig markiert, um sie schneller identifizieren zu \nkönnen. Die Optionen COB und IOB verlangsamen die Ausgabe teilweise erheblich, weshalb man diese nur dann\nverwenden sollte, wenn sie wirklich von Interesse sind.\n\nUnter der Grafik kann die Basalrate angezeigt werden. Ein laufender Loop wird diese immer wieder hoch und runter\nsetzen. Deshalb kann man sowohl die tatsächliche Basalrate als auch die im Profil eingestellte Basalrate \nanzeigen lassen. Für die Basalrate gibt es noch die Formulare @09@, @11@ und @02@, auf denen man sie genauer \nanalysieren kann. Man kann auch das @10@ für den Tag erzeugen lassen. Das wird dann auf einer neuen Seite ausgegeben.\n\nDieses Formular ist eines der seitenintensivsten Formulare in Nightscout Reporter. Deshalb gibt es hier \ndie Möglichkeit, mehrere Tagesgrafiken auf einer Seite ausgeben zu lassen. Darunter leidet natürlich die Lesbarkeit,\naber für einen Überblick über den Verlauf ist das ganz nützlich." : MessageLookupByLibrary.simpleMessage("This form shows the the glucose curve for one day. One page is generated per day in the selected period. There are many options that can be used to customize this form. The options that indicate a loop are marked in a different color so that they can be identified very easy. The options COB and IOB sometimes slow down the output considerably, which is why you should only use them if you are really interested in it.\n\nThe basal rate can be displayed below the graphic. A running loop will raise and lower this over and over again. This is why you can display both the actual basal rate and the basal rate set in the profile. For the basal rate there are the forms @09@, @11@ and @02@, on which you can analyze it more precisely. You can also have the @10@ generated for the day. This is then printed on a new page.\n\nThis form is one of the most page-intensive forms in Nightscout Reporter. This is why there is the option of displaying several daily graphics on one page. Of course, legibility suffers from this, but it is very useful for an overview of the progress."),
    "Dieses Formular zeigt den Verlauf der Glukosekurve über eine Woche hinweg an. Der Zeitraum wird\ndazu in Wochenabschnitte aufgeteilt und jede Woche wird auf einer eigenen Seite ausgegeben. Die Wochen werden\nfarblich markiert, so dass man sie gut unterscheiden kann. Zusätzlich kann noch das @10@ für die jeweilige\nWoche erzeugt werden." : MessageLookupByLibrary.simpleMessage("This form shows the glucose curve over a week. The period is divided into weekly segments and each week is displayed on a separate page. The weeks are color-coded so that you can easily distinguish them. In addition, the @10@ can be generated for the respective week."),
    "Dieses Formular zeigt die Auswertung der Werte des ausgewählten\nZeitraums. Dabei wird auch der durchscnittliche Verbrauch an Materialien\nrechnerisch ermittelt und angezeigt. Dieses Formular beinhaltet die meisten\nInformationen, die Diabetologen gerne wissen wollen.\n\nDer HbA1c wird rechnerisch aus den vorhandenen Daten ermittelt und weicht\nnormalerweise nicht unerheblich von dem tatsächlich gemessenen Wert ab. Der\nWert, der aus der Blutprobe ermittelt wird, gibt die tatsächliche Bindung\nvon Glukose im Blut wieder. Da diese von zusätzlichen Faktoren abhängig ist\nund nicht nur von den hier verwendeten Messdaten, ergeben sich Unterschiede\nzum errechneten Wert. Vor allem, wenn es sich bei den gemessenen Werten nicht\num Blutzucker, sondern um Gewebszucker handelt, wie er von CGM-Systemen\nverwendet wird.\n\nTrotzdem ist dieser Wert ein grober Anhaltspunkt für die Qualität der\nGlukoseeinstellung und wird in der vom Labor ermittelten Form gerne von\nDiabetologen als Richtwert verwendet, weshalb er hier angezeigt wird. Er wird\naber in schwächerer Schrift ausgegeben, damit seine zweifelhafte Natur auch\nerkennbar ist." : MessageLookupByLibrary.simpleMessage("This form shows the evaluation of the values ​​of the selected Period. The average consumption of materials is calculated and displayed. This form contains most of the information that diabetologists would like to know.\n\nThe A1C is calculated from the available data and normally deviates not insignificantly from the actually measured value. The value that is determined from the blood sample shows the actual binding of glucose in the blood. Since this depends on additional factors and not only on the measurement data used here, there are differences to the calculated value. Especially when the measured values ​​are not blood sugar but tissue sugar, as used by CGM systems.\n\nNevertheless, this value is a rough guide to the quality of the Glucose setting and in the form determined by the laboratory is often used by diabetologists as a guide value, which is why it is displayed here. But it is issued in a weaker font so that its dubious nature can also be recognized."),
    "Dieses Formular zeigt die Basalrate, die im Profil eingestellt ist in graphischer Form an.\nEs werden normalerweise alle Basalraten des ausgewählten Zeitraums ausgegeben. Wenn sich in dem Zeitraum\ndie Basalrate geändert hat, wird eine neue Seite erzeugt.\n\nEs gibt aber eine Option, welche nur die letzte Basalrate des Zeitraums ausgibt." : MessageLookupByLibrary.simpleMessage("This form shows the basal rate set in the profile in graphic form. Usually all basal rates for the selected period are displayed. If the basal rate has changed in the period, a new page is created.\n\nHowever, there is an option that only outputs the last basal rate of the period."),
    "Dieses Formular zeigt die Daten in tabellarischer Form an. Es kann abhängig von den\nausgewählten Optionen sehr viele Seiten umfassen. Es ist vor allem dafür sinnvoll, um bestimmte Daten aufzufinden.\nZum Beispiel kann man damit ermitteln, wann Katheterwechsel vorgenommen wurden, wieviele Datensätze als doppelt \nerkannt wurden oder wo Notizen erfasst wurden.\n" : MessageLookupByLibrary.simpleMessage("This form shows the data in tabular form. It can consist of very many pages depending on the options you choose. It is especially useful to find certain data. For example, it can be used to determine when the catheter was changed, how many data records were recognized as duplicate or where notes were recorded."),
    "Dieses Formular zeigt die statistischen Werte für die Tage des ausgewählten Zeitraums\nan. Für jeden Tag wird eine Zeile erzeugt. Die Spalten kann man teilweise konfigurieren. Auch hier wird der geschätzte \nHbA1c ausgegeben. Dieser hat wie auch im Formular @01@ nur sehr wenig Aussagekraft, weshalb er auch hier nur mit \nschwächerer Schrift angezeigt wird.\n" : MessageLookupByLibrary.simpleMessage("This form shows the statistical values for the days of the selected period. A line is generated for each day. The columns can be partially configured. The estimated A1C is also output here. As in the @01@ form, this has very little informative value, which is why it is shown here also with a weaker font."),
    "Dieses Formular zeigt die tatsächliche Basalrate, die während des Tages gelaufen ist unter\nBerücksichtigung aller temporären Basalratenanpassungen. Zusätzlich kann noch die im Profil hinterlegte\nBasalrate angezeigt werden. Die Basalrate kann als Wert, als prozentuale Änderung in Bezug auf die Profilbasalrate\noder mit beidem angezeigt werden. Die Summenspalte zeigt die bis zur entsprechenden Uhrzeit abgegebene Basalrate\nan. Es ist auch möglich, die Uhrzeit mit Sekunden anzeigen zu lassen. Damit kann man die angezeigten Werte\nrechnerisch überprüfen.\n\nWenn die Basalrate aus dem Profil angezeigt wird, wird das Maximum für die Darstellung der Balken anhand des\nmaximalen Wertes der Profilbasalrate ermittelt. Dadurch werden bei Werten über 100% des Maximalwerts der \nProfilbasalrate die Balken über die Spalte hinaus verlängert. Es gibt aber eine Option, um diese Balken abzuschneiden \nund als Pfeile darstellen zu lassen." : MessageLookupByLibrary.simpleMessage("This form shows the actual basal rate that has run during the day, taking into account any temporary basal rate adjustments. The basal rate stored in the profile can also be displayed. The basal rate can be displayed as a value, as a percentage change in relation to the profile basal rate, or both. The total column shows the basal rate delivered up to the corresponding time. It is also possible to display the time with seconds. This can be used to mathematically check the displayed values.\n\nIf the basal rate is displayed from the profile, the maximum for the display of the bars is determined using the maximum value of the profile basal rate. As a result, the bars are extended beyond the column for values above 100% of the maximum value of the profile basal rate. But there is an option to cut off these bars\nand to show them as arrows."),
    "Dieses Formular zeigt eine Übersicht für einen Tag. Hier \n  werden die Tagesgrafik, die Basalrate, die Basalratenanpassungen, Insulin On \n  Board und Carbs On Board angezeigt." : MessageLookupByLibrary.simpleMessage("This form shows an overview for one day. Here\n   the daily graph, the basal rate, the basal rate adjustments, Insulin On\n   Board and Carbs On Board displayed."),
    "Dieses Formular zeigt eine Übersicht über die \nStunden der Tage des ausgewählten Zeitraums an. Die angezeigten Werte sind die\nMittelwerte der innerhalb der entsprechenden Stunde gemessenen Werte. Sie\nwerden anhand des ausgewählten Zielbereichs eingefärbt. In den Formularoptionen\nkann man die Startstunde festlegen. Die Datumsspalte befindet sich immer links\nvon 0 Uhr und zeigt an, wo ein neuer Tag beginnt." : MessageLookupByLibrary.simpleMessage("This form shows an overview of the hours of the days of the selected period. The displayed values are the median values of the values measured within the corresponding hour. They are colored based on the selected target area. The start hour can be set in the form options. The date column is always to the left of midnight and shows where a new day begins."),
    "Diverse Abstürze beim Auslesen der Daten bereinigt" : MessageLookupByLibrary.simpleMessage("Fixed various crashes when reading data"),
    "Drei Monate vorher" : MessageLookupByLibrary.simpleMessage("Three months before"),
    "Drittes Quartal" : MessageLookupByLibrary.simpleMessage("Third Quarter"),
    "Durchschnitt" : MessageLookupByLibrary.simpleMessage("Average"),
    "Dämmerung (06:00 - 07:59, 18:00 - 20:59)" : MessageLookupByLibrary.simpleMessage("Twilight (06:00 - 07:59, 18:00 - 20:59)"),
    "Eigene Grenzwerte" : MessageLookupByLibrary.simpleMessage("Own Target Area"),
    "Ein Fehler bei der Ausgabe der temporären Ziele in der Tagesgrafik wurde behoben." : MessageLookupByLibrary.simpleMessage("An error in the output of the temporary goals in the daily graphic has been fixed."),
    "Ein Fehler beim Laden der ausgewählten Formulare wurde korrigiert." : MessageLookupByLibrary.simpleMessage("An error when loading the selected forms has been fixed."),
    "Ein Fehler in der Zahlenformatierung wurde behoben." : MessageLookupByLibrary.simpleMessage("An error in number formatting has been fixed."),
    "Ein Fehler wurde behoben, der bei der Auswahl des Zeitraums die Benutzung verhinderte, wenn man ein leeres Eingabefeld fokussierte." : MessageLookupByLibrary.simpleMessage("A bug has been fixed that prevented usage of the app when selecting the time period if you focused on an empty input field."),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die Anwendung in einem undefinierten Zustand war, wenn man den letzten Benutzer gelöscht hat." : MessageLookupByLibrary.simpleMessage("A bug has been fixed that caused the application to be in an undefined state when the last user was deleted."),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die letzten Tage bestimmter Monate nicht im Kalender-Control angezeigt wurden." : MessageLookupByLibrary.simpleMessage("Fixed a bug that caused the last days of certain months not to be displayed in the calendar control."),
    "Ein Fehler wurde behoben, der dafür sorgte, dass temporäre Ziele in der Tagesgrafik mit zeitlicher Verschiebung angezeigt wurden." : MessageLookupByLibrary.simpleMessage("A bug has been fixed that caused temporary goals to be displayed in the daily graph with a time shift."),
    "Ein Fehler wurde behoben, der dazu führte, dass Dialoge mit Escape geschlossen werden konnten, was die Anwendung in einem unbrauchbaren Zustand zurückliess." : MessageLookupByLibrary.simpleMessage("Fixed a bug that caused dialogs to be closed with Escape, leaving the application in an unusable state."),
    "Ein Fehler wurde behoben, der dazu führte, dass bei fehlenden Daten wie z.B. Treatments gar kein PDF mehr erstellt werden konnte." : MessageLookupByLibrary.simpleMessage("An error has been corrected which resulted in missing data such as treatments no longer being able to create a PDF."),
    "Ein Fehler wurde behoben, der in der Tagesgrafik dazu führte, dass Texte in der Legende andere Texte überschrieben haben." : MessageLookupByLibrary.simpleMessage("A bug has been fixed that caused the daily graphics to overwrite texts in the legend."),
    "Ein Fehler wurde wahrscheinlich behoben, der dazu führt, dass bei manchen Profilen der Wert für DIA nicht korrekt ausgelesen wurde." : MessageLookupByLibrary.simpleMessage("An error has probably been fixed that causes some profiles to miss the value for DIA incorrectly."),
    "Ein Jahr vorher" : MessageLookupByLibrary.simpleMessage("One year before"),
    "Ein Link zur Facebookseite von Nightscout Reporter wurde im Menü hinzugefügt." : MessageLookupByLibrary.simpleMessage("A link to the Facebook page of Nightscout Reporter was added to the menu."),
    "Ein Shortcut beinhaltet den Zeitraum und die ausgewählten Formulare mit den jeweils gesetzten Optionen. Wenn ein Shortcut aktiviert wird, werden die darin gespeicherten Einstellungen geladen und aktiviert." : MessageLookupByLibrary.simpleMessage("A shortcut contains the period and the selected forms with the options set. When a shortcut is activated, the settings saved in it are loaded and activated."),
    "Ein möglicher Absturz bei der Ausgabe des CGP bei der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("A possible crash in the output of the CGP in the daily graphic has been fixed."),
    "Eine" : MessageLookupByLibrary.simpleMessage("One"),
    "Einen Monat vorher" : MessageLookupByLibrary.simpleMessage("One month before"),
    "Einheit" : MessageLookupByLibrary.simpleMessage("Unit"),
    "Einheit der Glukosemessung" : MessageLookupByLibrary.simpleMessage("Unit for glucose values"),
    "Einheiten" : MessageLookupByLibrary.simpleMessage("Units"),
    "Einige Browser sind nicht in der Lage PDF Dateien anzuzeigen, die eine bestimmte Grösse überschreiten. Da das von verschiedenen Faktoren abhängt, die sich nicht ohne Weiteres automatisch ermitteln lassen, gibt es die Möglichkeit, statt einer grossen PDF Datei, die nicht angezeigt werden kann, mehrere kleinere PDF Dateien zu erzeugen, die der Browser anzeigen kann. In den Einstellungen und hier kann diese Grösse festgelegt werden. Diese Seite hier wird nur angezeigt, wenn das PDF aufgeteilt werden musste. Wenn nur ein PDF erzeugt wurde, dann wird es direkt angezeigt." : MessageLookupByLibrary.simpleMessage("Some browsers are unable to display PDF files that exceed a certain size. Since this depends on various factors which can not be easily determined automatically, there is the possibility to generate several smaller PDF files that the browser can display instead of a large PDF file that can not be displayed. This size can be specified in the settings and here. This page is only shown if the PDF had to be split. If only one PDF was created then it will be displayed directly."),
    "Einige Formulare können nun mit Parametern konfiguriert werden; hierzu den Pfeil am rechten Rand des Formularbuttons anklicken und im aufgeklappten Bereich die entsprechenden Einstellungen vornehmen; der Pfeil erscheint erst, wenn das Formular zum Ausdruck markiert wurde" : MessageLookupByLibrary.simpleMessage("Some forms can now be configured with parameters; click on the arrow on the right side of the formbutton and make the appropriate settings in the opened area; the arrow will not appear until the form has been marked for printout"),
    "Einige der Optionen für die PDFs wurden hierarchisch angeordnet. Es macht z.B. keinen Sinn, die SMB Werte in der Tagesgrafik an der Kurve platzieren zu lassen, wenn die SMB Werte gar nicht angezeigt werden. Deswegen werden Optionen, die von einer anderen Option abhängen nur dann angezeigt, wenn die entsprechende Option markiert ist. Dadurch ändert sich leider auch die Speicherung der Optionen, weshalb sich die aktuelle Auswahl der Optionen bei manchen PDFs verändert. Da müssen die Optionen dann neu gesetzt werden." : MessageLookupByLibrary.simpleMessage("Some of the options for the PDFs have been arranged hierarchically. There is no point in having the SMB values placed in the daily graph at the curve if the SMB values are not displayed at all. Therefore, options that depend on another option are only displayed if the corresponding option is selected. This unfortunately also changes the storage of options, which is why the current selection of options for some PDFs changed. These options have to be set again."),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("Settings"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("Settings for using the page"),
    "Einstellungen von Release-Version übernehmen" : MessageLookupByLibrary.simpleMessage("Apply settings from release version"),
    "Einstiegsvideo" : MessageLookupByLibrary.simpleMessage("Quickstartvideo"),
    "English (GB)" : MessageLookupByLibrary.simpleMessage("English (GB)"),
    "English (USA)" : MessageLookupByLibrary.simpleMessage("English (USA)"),
    "Ermittle ersten Tag mit Daten" : MessageLookupByLibrary.simpleMessage("Searching first day with data"),
    "Ermittle letzten Tag mit Daten" : MessageLookupByLibrary.simpleMessage("Searching last day with data"),
    "Erstes Quartal" : MessageLookupByLibrary.simpleMessage("First Quarter"),
    "Erzeuge PDF..." : MessageLookupByLibrary.simpleMessage("Creating PDF..."),
    "Es gibt ein neues Formular namens \"Verteilung der Glucosewerte\". Das zeigt die prozentuale Verteilung der Glukosewerte für den ausgewählen Zeitraum an." : MessageLookupByLibrary.simpleMessage("There is a new form called \"Distribution of glucose values\". This shows the percentage distribution of the glucose values for the selected period."),
    "Es gibt ein neues PDF namens Tagesstunden. Dieses zeigt die Durchschnittswerte eines Tages in jedem Stundenintervall an und färbt die Zellen entsprechend des Glukosewertes ein. So hat man eine gut Übersicht über die Werteverteilung im ausgewählten Zeitraum." : MessageLookupByLibrary.simpleMessage("There is a new PDF called Dayhours. This shows the average values of a day in every hourly interval and fills the cells backgroundcolor according to the glucose value. This gives you a good overview of the distribution of values in the selected period."),
    "Es gibt ein neues PDF namens Tagestrend. Dieses zeigt die Werte eines Tages zusammen mit dem Trend zu jeder vollen Stunde, sowie der eingestellten Basalrate aus dem Profil. Das ist eine gute Übersicht für Basalratentests, um zu erkennen, wo etwas anzupassen ist." : MessageLookupByLibrary.simpleMessage("There is a new PDF called Daily Trend. This shows the values of a day together with the trend on the hour and the basal rate set in the profile. This is a good overview for basal rate tests to see where something needs to be adjusted."),
    "Es gibt eine neue Option in der Tagesgrafik mit der man den Zielwert ein- und ausblenden kann." : MessageLookupByLibrary.simpleMessage("There is a new option in the daily graph with which you can show and hide the target value."),
    "Es gibt eine neue PDF-Seite für die Tagesprofile. Darauf ist eine Tabelle zu sehen, die die tatsächliche Basalrate für den Tag zeigt, inklusive aller temporären Anpassungen. Ich brauchte das für Debugzwecke, aber vielleicht findet das der eine oder andere Benutzer auch interessant. Das Profil, das dort angezeigt wird entspricht dem Tagesprofil auf der Seite Tagesgrafik. Beim Loopen können das sehr viele Seiten werden, da dort normalerweise alle paar Minuten Anpassungen an der Basalrate vorgenommen werden. Deswegen wird die Tabelle auch abhängig von der Datenmenge in maximal drei Spalten dargestellt, um die Anzahl an Seiten zu reduzieren." : MessageLookupByLibrary.simpleMessage("There is a new PDF page for the daily profiles. It contains a table showing the actual basal rate for the day, including all temporary adjustments. I needed that for debugging, but maybe the some users find it interesting too. The profile displayed there corresponds to the day profile on the page Daily Graphics. Loops can produce many pages, as the basalrate is usually adjusted every few minutes. Therefore, depending on the amount of data, the table is displayed in a maximum of three columns to reduce the number of pages."),
    "Es gibt in den Einstellungen eine Option, das PDF herunterladen zu lassen, statt es im Browser direkt anzeigen zu lassen. Das wird für Browser wie Edge benötigt." : MessageLookupByLibrary.simpleMessage("There is an option in the settings to download the PDF instead of having it displayed directly in the browser. This is needed for browsers like Edge."),
    "Es gibt in den Einstellungen eine neue Option, um den letzten in Nightscout gespeicherten Glukosewert in der Titelzeile anzeigen zu lassen. Wenn diese Option aktiviert ist, wird der aktuelle Wert, das Alter des Wertes, der Trendpfeil und die Differenz zum vorherigen Wert rechts in der Titelzeile angezeigt. Diese Anzeige wird jede Minute aktualisiert, solange das Browserfenster den Eingabefokus besitzt. Wenn es diesen nicht hat, wird die Aktualisierung angehalten und der Wert ausgeblendet, um nicht unnötig Systemresourcen zu belasten." : MessageLookupByLibrary.simpleMessage("There is a new option in the settings to display the last glucose value stored in Nightscout in the title bar. If this option is enabled, the current value, the age of the value, the trend arrow and the difference to the previous value is displayed at the right side of the title bar. This display is updated every minute as long as your browser window has the input focus. If it hasn\'t the focus, the update is stopped and the value is hidden to avoid unnecessary burden on system resources."),
    "Es gibt jetzt Shortcuts, mit denen man die aktuelle Auswahl der Formulare, deren Parameter und den ausgewählten Zeitraum speichern kann. Beim Aktivieren eines Shortcuts wird das alles wieder so eingestellt, wie es war, als der Shortcut gespeichert wurde." : MessageLookupByLibrary.simpleMessage("There are now shortcuts with which you can save the current selection of forms, their parameters and the selected period. When activating a shortcut, everything is set back to what it was when the shortcut was saved."),
    "Es gibt jetzt auch die Möglichkeit, Nightscout Reporter in europäischem Englisch darzustellen. Der Unterschied zum amerikanischen Englisch besteht derzeit lediglich im Datumsformat (gb: dd/MM/yyyy, us: MM/dd/yyyy)." : MessageLookupByLibrary.simpleMessage("There is now also the possibility to use Nightscout Reporter in European English. The difference to American English currently exists only in the date format (gb: dd/MM/yyyy, us: MM/dd/yyyy)."),
    "Es gibt jetzt die Möglichkeit, PDFs vergangener Zeiträume zu erzeugen, ohne den Zeitraum anpassen zu müssen. Oberhalb des Buttons zur PDF-Erzeugung gibt es zwei Buttons, welche die PDFs für eine frühere Periode erzeugen. Der untere der beiden Buttons erzeugt die Vorperiode, der obere die vorletzte Periode. Auf den Buttons wird das Startdatum und das Enddatum angezeigt. Wenn z.B. als Zeitraum \"Letzte 2 Wochen\" gewählt wurde, dann wird mit dem unteren Button der Zeitraum von zwei Wochen beginnend vor vier Wochen erzeugt und mit dem oberen Button der Zeitraum von zwei Wochen beginnend vor sechs Wochen. Auf diese Art kann man recht einfach Vergleichsberichte erzeugen, um die Entwicklung der Werte zu erkennen. Auf den Seiten wird für diese Ausdrucke in der Kopfzeile das Wort \"Historisch 1\", bzw. \"Historisch 2\" oberhalb des Zeitraums ausgegeben. So kann man beim Vergleich der Werte die Daten voneinander unterscheiden." : MessageLookupByLibrary.simpleMessage("There is now the ability to generate PDFs of past periods without having to adjust the period. there are two buttons for earlier periods above the button for creating PDF which generate the PDFs. The lower of the two buttons generates the previous period, the upper one the penultimate period. The buttons show the start date and the end date. If the period \"last 2 weeks\" is selected, then the lower button creates the period from two weeks starting four weeks ago and the upper button the period from two weeks starting six weeks ago. In this way, it is easy to generate comparison reports to detect the development of the values. The words \"Historical 1\" or \"Historical 2\" are placed above the period on the pages for these printouts in the header. So you can distinguish the data from each other when comparing the sheets."),
    "Es gibt jetzt kleine Hilfebuttons bei den Formularen. In der Listenansicht ersetzen sie die Icons zum Ziehen der Formulare, in der Kachelansicht werden sie links oben auf den Kacheln dargestellt. Die jeweilige Ansicht kann man im Hamburgermenü auswählen. Beim Anklicken eines solchen Buttons wird ein Text angezeigt, der beschreibt, was das entsprechende Formular darstellt." : MessageLookupByLibrary.simpleMessage("There are now small help buttons on the forms. In the list view they replace the icons for dragging the forms, in the tile view they are displayed on the top left of the tiles. The respective view can be selected in the hamburger menu. When you click on such a button, a text is displayed that describes what the corresponding form shows."),
    "Es gibt keine mehrfachen Datensätze." : MessageLookupByLibrary.simpleMessage("There are no multiple datasets."),
    "Es ist in der Kachelansicht jetzt möglich, Formulare zu duplizieren, um verschiedene Ansichten des gleichen Formulars auf einmal zu erzeugen. Dazu gibt es rechts unten auf den Kacheln ein Kopier-Icon. Wenn dieses ausgelöst wird, dann wird das aktuelle Formular kopiert und als neue Kachel hinter der aktuellen Kachel eingefügt. Diese kann dann genauso behandelt werden, wie jede andere Kachel. Auf dieser neuen Kachel gibt es rechts unten ein Mülleimer-Icon. Wenn dieses ausgelöst wird, dann wird die Kachel wieder entfernt. Von einem Formular können maximal 2 Kopien erstellt werden. Die Optionen der Formulare werden ebenso wie die Reihenfolge wie bisher auch gespeichert. Die kopierten Kacheln bleiben also erhalten. In der Listenansicht tauchen die kopierten Formulare auch auf. Allerdings gibt es dort nicht die Möglichkeit, sie zu kopieren oder zu löschen. Das muss in der Kachelansicht erfolgen." : MessageLookupByLibrary.simpleMessage("It is now possible to duplicate forms in the tile view in order to create different views of the same form at once. There is a copy icon on the bottom right of the tiles. When this is triggered, the current form is copied and inserted as a new tile behind the current tile. This can then be treated in the same way as any other tile. There is a trash can icon at the bottom right of this new tile. When this is triggered, the tile is removed. A maximum of 2 copies can be made of a form. The options for the forms, as well as the order, are saved as before. The copied tiles are therefore retained. The copied forms also appear in the list view. However, there is no possibility of copying or deleting them there. This must be done in the tile view."),
    "Es ist jetzt möglich, die Buttons zur PDF-Auswahl als Kacheln darstellen zu lassen. Die Option dazu ist im Menü auf der linken Seite zu finden. In der Kachelansicht werden die Buttons über die verfügbare Fläche verteilt und sind so auf kleinen Geräten leichter zu treffen. Ausserdem sieht man dann normalerweise alle verfügbaren PDFs auf einen Blick und muss nicht scrollen. Auf den aktivierten Kacheln wird angezeigt, an welcher Stelle im PDF die entsprechenden Seiten ausgegeben werden und wieviele Seiten die entsprechende Kachel ausgibt. Diese Zahl kann für die meisten Kacheln korrekt ermittelt werden, bei einigen ist das aber ohne Auswertung der Daten nicht möglich (z.B. Profile und Protokoll). In diesem Fall wird entweder keine Seitenzahl oder eine Mindestzahl an Seiten angegeben. Sobald die Erstellung des PDFs erfolgt ist, werden die korrekten Zahlen angezeigt. Die Reihenfolge der Kacheln kann verändert werden, indem man sie festhält und an die Stelle verschiebt, an der man sie gerne hätte. Nach Anklicken des Icons in der oberen rechten Ecke können die Parameter für das entsprechende PDF erfasst werden." : MessageLookupByLibrary.simpleMessage("It is now possible to display the buttons for PDF selection as tiles. The option can be found in the menu on the left. In the tile view, the buttons are distributed over the available area and are thus easier to hit on small devices. In addition, you normally see all available PDFs at a glance and do not have to scroll. The activated tiles indicate at which point in the PDF the corresponding pages are created and how many pages the corresponding tile creates. The number of pages can be determined correctly for most tiles, but for some this is not possible without data insight (for example, profiles and protocol). In this case, either no page number or a minimum number of pages is shown. Once the PDF is created, the correct numbers will be displayed. The sortorder of the tiles can be changed by dragging it to where you want it. After clicking the icon in the upper right corner, the parameters for the corresponding PDF can be set."),
    "Es ist jetzt möglich, die Einstellungen auf Google Drive zu speichern. Das hat den Vorteil, dass man die Einstellungen nicht nur im aktuellen Browser hat, sondern bei jedem Browser, mit dem man sich bei Google anmeldet. Die Einstellungen werden nach wie vor im Browser gespeichert. Bei einer Verbindung zu Google Drive werden sie aber zusätzlich auf Google Drive gespeichert. Beim Laden der Seite wird überprüft, ob eine Synchronisierung gewünscht ist. Wenn das der Fall ist, dann werden die Daten von Google Drive heruntergeladen. Wenn die Daten darin neuer sind als die Daten im Browser, werden sie verwendet. Nach dem Speichern der Daten werden bei aktivierter Synchronisierung diese Daten mit dem aktuellen Zeitstempel auf Google Drive gespeichert. Die Synchronisierung wird im Menü auf der linken Seite aktiviert und deaktiviert. Sie kann auch beim erstmaligen Aufruf der Seite in einem neuen Browser direkt im Willkommensbildschirm aktiviert werden. Nightscout Reporter verlangt nur die Berechtigung die eigenen App-Daten zu speichern und zu laden und benötigt keinen Zugriff auf andere Daten auf Google Drive." : MessageLookupByLibrary.simpleMessage("It is now possible to save the settings to Google Drive. This has the advantage that you have the settings not only in the current browser, but in any browser, which is connected to your Google account. The settings are still stored in the browser. When connected to Google Drive, they will also be stored on Google Drive. When loading the page, it checks if synchronization is desired. If that\'s the case then the data will be downloaded from Google Drive. If the downloaded data is newer than the data in the browser, it will be used. Once the data is saved, syncing will save that data with the current timestamp to Google Drive. The synchronization is activated and deactivated in the menu on the left side. It can also be activated when calling the page fpr the first time in a new browser directly in the welcome screen. Nightscout Reporter only requires permission to save and load your own app data and does not require access to other data on Google Drive."),
    "Es ist jetzt möglich, die Wochentage festzulegen, die im Zeitraum berücksichtigt werden sollen. Die entsprechenden Tage werden bei der Auswahl des Zeitraums mit den Buttons unterhalb des Monats festgelegt. Auf den PDFs werden Zeiträume dann zusätzlich mit der Information versehen, welche Wochentage berücksichtigt werden, wenn es nicht alle sind." : MessageLookupByLibrary.simpleMessage("It is now possible to set the days of the week that should be used in the period. When selecting a period the corresponding days are set with the buttons below the month. On the PDFs, the periods are shown with the days of the week that are used, if at least one is missing."),
    "Es sind keine Daten für den Ausdruck vorhanden" : MessageLookupByLibrary.simpleMessage("There is no data for the printout"),
    "Es sind keine Daten vorhanden." : MessageLookupByLibrary.simpleMessage("No data available."),
    "Es werden jetzt auch blutige Werte erkannt, die von Loop auf dem IPhone eingetragen werden." : MessageLookupByLibrary.simpleMessage("Blood values which are entered by Loop on the iPhone are now also recognized."),
    "Español" : MessageLookupByLibrary.simpleMessage("Español"),
    "Exportieren" : MessageLookupByLibrary.simpleMessage("Export"),
    "Facebook Seite" : MessageLookupByLibrary.simpleMessage("Facebook page"),
    "Faktor" : MessageLookupByLibrary.simpleMessage("Factor"),
    "Fehler" : MessageLookupByLibrary.simpleMessage("Error"),
    "Fehler behoben, der bei der Kachelansicht teilweise verhindert hat, dass die Parameter für die Kacheln aufgerufen werden konnten." : MessageLookupByLibrary.simpleMessage("Fixed a bug that sometimes prevented the parameters for the tiles from being called in the tile view."),
    "Fehler beim Laden der Daten" : MessageLookupByLibrary.simpleMessage("Error loading data"),
    "Fehler werden besser abgefangen und mit sinnvollem Text ersetzt." : MessageLookupByLibrary.simpleMessage("Errors are better intercepted and replaced with more meaningful text."),
    "Fehlerhafte Ausgabe der Blutzuckerwerte in der täglichen Grafik korrigiert." : MessageLookupByLibrary.simpleMessage("Fixed incorrect output of blood glucose levels in the daily graph."),
    "Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt" : MessageLookupByLibrary.simpleMessage("Faulty values ​​are no longer considered in the evaluation of the graphics; these are recognized by the value \"NONE\" in the data field \"direction\""),
    "Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt." : MessageLookupByLibrary.simpleMessage("Error message when loading profiles without start date removed."),
    "FixAAPS30: Die Erstellung der PDFs kann extrem lange dauern. Das liegt an einer Flut von Profil-Switches, die durch ein Plugin für die Automatisierung erstellt werden. Das verursacht einen Profil-Switch alle 4 Minuten mit Speicherung des kompletten Profils. Wenn die Option aktiv ist, dann werden diese Profil-Switches aussortiert und ermöglichen dadurch die Erstellung des PDFs. Diese Profil-Switches sind dann in den PDFs nicht mehr sichtbar." : MessageLookupByLibrary.simpleMessage("FixAAPS30: The creation of the PDFs can take an extremely long time. This is due to a flood of profile switches that are created by a plug-in for automation. This causes a profile switch every 4 minutes with storage of the complete profile. If the option is active, then these profile switches are sorted out and thus enable the creation of the PDF. These profile switches are then no longer visible in the PDFs."),
    "Français" : MessageLookupByLibrary.simpleMessage("Français"),
    "Für die Tagesgrafik gibt es jetzt eine Option, um die Aufsummierung nahe beieinander liegender Werte umzuschalten." : MessageLookupByLibrary.simpleMessage("There is now an option for the daily graphics to toggle the accumulation of close values."),
    "GPD" : MessageLookupByLibrary.simpleMessage("GPD"),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("Birthday"),
    "Gelbe Kreise zeigen an, dass der entsprechende Wert die Skala überschreitet." : MessageLookupByLibrary.simpleMessage("Yellow circles indicate that the corresponding value exceeds the scale."),
    "Genauigkeit der Basalangaben:" : MessageLookupByLibrary.simpleMessage("Precision of basalvalues:"),
    "Ges." : MessageLookupByLibrary.simpleMessage("Sum"),
    "Gesamt" : MessageLookupByLibrary.simpleMessage("Total"),
    "Geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("Estimated A1C"),
    "Glukose" : MessageLookupByLibrary.simpleMessage("Glucose"),
    "Glukose (aus NS)" : MessageLookupByLibrary.simpleMessage("Glucose (from NS)"),
    "Glukose Pentagon erzeugen" : MessageLookupByLibrary.simpleMessage("Create glucose pentagon"),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Glucose Percentile Diagram"),
    "Glukose im Zielbereich" : MessageLookupByLibrary.simpleMessage("Glucose in the target area"),
    "Glukose zu hoch" : MessageLookupByLibrary.simpleMessage("Glucose too high"),
    "Glukose zu niedrig" : MessageLookupByLibrary.simpleMessage("Glucose too low"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("Glucose curve"),
    "Glukosewert" : MessageLookupByLibrary.simpleMessage("Glucose"),
    "Glukosewerte anpassen" : MessageLookupByLibrary.simpleMessage("Adjust glucose values"),
    "Glykämischer Variabilitäts Index (GVI)" : MessageLookupByLibrary.simpleMessage("Glycemic Variability Index (GVI)"),
    "Google Assistant" : MessageLookupByLibrary.simpleMessage("Google Assistant"),
    "Grafik" : MessageLookupByLibrary.simpleMessage("Graphic"),
    "Grafiken pro Seite" : MessageLookupByLibrary.simpleMessage("Graphics per page"),
    "Grenzwerte wurden nicht durchgängig gleich behandelt. Jetzt sollte die Zuordnung der Werte zu den Zielbereichen im gesamten Programm identisch sein." : MessageLookupByLibrary.simpleMessage("Limit values were not consistently treated in the same way. The assignment of the values to the target areas should now be identical in the entire program."),
    "Gross" : MessageLookupByLibrary.simpleMessage("Big"),
    "Gruppierung der Zeiten" : MessageLookupByLibrary.simpleMessage("Grouping of times"),
    "HTML-Notizen anzeigen" : MessageLookupByLibrary.simpleMessage("Display HTML-notes"),
    "Heute" : MessageLookupByLibrary.simpleMessage("Today"),
    "Hiermit wird festgelegt, um wieviel der Zeitraum des PDFs verschoben werden soll, um Vergleichswerte zu erhalten." : MessageLookupByLibrary.simpleMessage("This determines how much the period of the PDF should be shifted in order to obtain comparative values."),
    "Hinweise auf Nightscout in der Kopf- und Fusszeile des PDFs ausblenden" : MessageLookupByLibrary.simpleMessage("Hide text about Nightscout in the header and footer of the PDF"),
    "Hinzufügen" : MessageLookupByLibrary.simpleMessage("Add"),
    "Historische Daten" : MessageLookupByLibrary.simpleMessage("Historical Data"),
    "Hochformat" : MessageLookupByLibrary.simpleMessage("Portrait"),
    "Hohe Basalraten werden jetzt besser dargestellt." : MessageLookupByLibrary.simpleMessage("High basal rates are now better represented."),
    "Höchster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Highest value in the period"),
    "IE" : MessageLookupByLibrary.simpleMessage("U"),
    "IE-Anzeige" : MessageLookupByLibrary.simpleMessage("IE-Display"),
    "IE/std" : MessageLookupByLibrary.simpleMessage("U/hr"),
    "IOB (Insulin On Board) anzeigen" : MessageLookupByLibrary.simpleMessage("Show IOB (Insulin On Board)"),
    "Im CGP wurden die Skalenbeschriftungen korrigiert." : MessageLookupByLibrary.simpleMessage("The scale labels have been corrected in the CGP."),
    "Im CGP wurden verschiedene Berechnungen korrigiert, die sich vor allem in Differenzen bei ToR und Mittelwerten zeigten." : MessageLookupByLibrary.simpleMessage("Various calculations were corrected in the CGP, which were mainly shown in differences in ToR and average values."),
    "Im Dialog der Ausgabe Parameter gibt es nun die Möglichkeit, das CGP immer mit dem Standard Zielbereich zu erzeugen. Diese Option ist anfangs eingeschaltet, da das CGP ein standardisiertes Formular ist, das gerne zu Vergleichszwecken herangezogen wird. Man kann es aber für seine eigenen Zwecke ausschalten. Diese Einstellung wird dann auch beibehalten." : MessageLookupByLibrary.simpleMessage("In the dialog of the output parameters there is now the possibility to always generate the CGP with the standard target area. This option is initially activated because the CGP is a standardized form that is often used for comparison purposes. But you can turn it off for your own purposes. This setting is retained."),
    "Im Dialog der Ausgabe Parameter wurde rechts oben der Schieberegler \"zu Vergleichszwecken\" hinzugefügt. Wenn dieser aktiviert ist, dann wird überall der Standard Zielbereich verwendet. Intern wird das auch noch für andere Anpassungen verwendet. Diese Option ist dafür gedacht, dass man seine Ausdrucke mit anderen Diabetikern vergleichen kann. Das ist zum Beispiel zur Vorlage bei Ärzten und Diabetesberatern sinnvoll." : MessageLookupByLibrary.simpleMessage("In the dialog of the Output Parameters, the switch \"for comparison purposes\" was added in the top right. If this is activated, the standard target area is used everywhere. Internally, this is also used for other adjustments. This option is designed so that you can compare your printouts with other diabetics. This is useful, for example, for submission to doctors and diabetes consultants."),
    "Im Einstellungen Dialog gibt es jetzt die Möglichkeit, die Einstellungen zu exportieren und zu importieren. Beim Export wird eine Datei mit den allgemeinen Einstellungen geschrieben, beim Import wird so eine Datei wieder eingelesen. Damit kann man auch ohne Google Drive Zugriff die Einstellungen über verschiedene Browser hinweg manuell synchronisieren." : MessageLookupByLibrary.simpleMessage("In the Settings dialog there is now the possibility to export and import the settings. When exporting, a file is written with the general settings; when importing, such a file is read in again. This allows you to manually synchronize the settings across different browsers even without Google Drive access."),
    "Im Einstellungsdialog wurden die Zeilen mit den Benutzerangaben und der URL gegeneinander ausgetauscht, um eine sinnvollere Verwaltung zu ermöglichen." : MessageLookupByLibrary.simpleMessage("In the settings dialog, the lines with the user details and the URL were exchanged for a more meaningful administration."),
    "Im Kalender-Control kann kein Datum nach dem aktuellen Tag mehr ausgewählt werden." : MessageLookupByLibrary.simpleMessage("The calendar control can no longer select a date after the current day."),
    "Im Kalender-Control wird ein eingestellter Bereich (Heute, Letzte Woche, etc.) jetzt korrekt auf den aktuellen Tag bezogen." : MessageLookupByLibrary.simpleMessage("In the calendar control, a defined period (today, last week, etc.) is now correctly based on the current day."),
    "Im Kalender-Control wird jetzt der Monat des entsprechenden Datums angezeigt, wenn eines der Felder Von oder bis den Fokus erhält." : MessageLookupByLibrary.simpleMessage("The calendar control now displays the month of the corresponding date when one of the fields From or To receives the focus."),
    "Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert" : MessageLookupByLibrary.simpleMessage("Numbers and dates in the PDF are formatted according to the selected language"),
    "Im Profil werden jetzt die richtigen Einheiten verwendet (mg/dL oder mmol/l)." : MessageLookupByLibrary.simpleMessage("The profile now uses the correct units (mg/dL or mmol/l)."),
    "Im Profil werden nun die Gesamtsumme der Basalrate und die durchschnittlichen Werte für ICR und ISF pro Stunde angezeigt." : MessageLookupByLibrary.simpleMessage("The profile now shows the total basal rate and the average ICR and ISF per hour."),
    "Im Protokoll gibt es jetzt die Möglichkeit, sich doppelte Datensätze markieren zu lassen. Sie werden von Nightscout Reporter zwar rausgefiltert, aber er kann anzeigen, wie oft ein bestimmter Datensatz in den Daten gefunden wurde. Man kann dort auch angeben, dass er nur mehrfach vorhandene Datensätze ausgeben soll. So kann man mögliche Diskrepanzen zwischen Nightscout Reporter und anderen Reporting Tools herausfinden." : MessageLookupByLibrary.simpleMessage("In the daily log there is now the possibility to have duplicate records marked. Nightscout Reporter filters them out, but it can show how often a particular record was found in the data. You can also specify that it should only output data records that exist more than once. This way you can find out possible differences between Nightscout Reporter and other reporting tools."),
    "Im Protokoll können jetzt auch Batteriewechsel der Pumpe angezeigt werden." : MessageLookupByLibrary.simpleMessage("The protocol can now also show battery changes of the pump."),
    "Im Protokoll werden die Angaben, die ein temporäres Ziel von 0 IE für 0 Minuten setzen als \"Aufhebung von temp. Ziel\" ausgegeben." : MessageLookupByLibrary.simpleMessage("In the log, the information that sets a temporary target of 0 U for 0 minutes is output as \"Cancel temp target\"."),
    "Im Protokoll werden nun auch temporäre Overrides ausgegeben, die von iOSLoop in die Behandlungsdaten eingetragen werden." : MessageLookupByLibrary.simpleMessage("Temporary overrides which are entered in the treatment data by iOSLoop are now also shown in the daily log."),
    "Im Tagesprofil kann nun angegeben werden, ob nur der Wert, die prozentuale Anpassung des Profils oder beides angezeigt werden soll. Ausserdem kann eine Linie eingefügt werden, die den im Basalprofil zum jeweiligen Zeitpunkt eingestellten Wert darstellt." : MessageLookupByLibrary.simpleMessage("In the daily profile you can now specify whether only the value, the percentage adjustment of the profile or both should be displayed. In addition, a line can be inserted that shows the value set in the basal profile at the respective point in time."),
    "Importieren" : MessageLookupByLibrary.simpleMessage("Import"),
    "Impressum" : MessageLookupByLibrary.simpleMessage("Imprint"),
    "In AAPS 3.0 wird ändert sich einiges an den Datenstrukturen und Datenmengen, die gespeichert werrden. Das verursacht in Nightscout Reporter an einigen Stellen Probleme, die sich nicht generell lösen lassen, Deswegen gibt es jetzt bei den Ausgabe Parametern die Option \"Korrektur für Datenänderungen in AAPS 3.0\", mit der bei Erstellung der PDFs bestimmte Probleme korrigiert werden. Diese Änderungen werden hier mit FixAAPS30 markiert." : MessageLookupByLibrary.simpleMessage("AAPS 3.0 will change some of the data structures and amounts of data that are stored. This causes problems in some places in Nightscout Reporter that cannot be generally solved. That is why there is now the option \"Correction for data changes in AAPS 3.0\" in the output parameters, with which certain problems can be corrected when creating the PDFs. These changes are marked here with FixAAPS30."),
    "In Firefox ist es jetzt auch möglich, die Hauptseite zu scrollen, wenn sie länger ist, als das Browserfenster." : MessageLookupByLibrary.simpleMessage("It is now possible to scroll the main page in Firefox, if it is longer than the browser window."),
    "In dem Dialog mit den Ausgabe Parametern wurde die Option hinzugefügt, die Genauigkeit der Ausgabe von Basalangaben festzulegen. Diese wird normalerweise aus den Angaben zur Basalrate in den Profilen ermittelt. Das wird auch weiterhin getan, wenn der erste Eintrag in der Liste ausgewählt wird. Ansonsten werden alle Basalangaben mit der Genauigkeit ausgegeben, die bei dieser Option ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("In the dialog with the output parameters, an option was added to specify the precision of the output of basal information. This is usually determined from the information on the basal rate in the profiles. This is still the case when the first entry in the list is selected. Otherwise, all basal information is output with the precision selected for this option."),
    "In den Ausgabe Parametern kann nun angegeben werden, ob immer der neueste Tag zuerst angezeigt wird. Das hat Auswirkungen auf die Tagesgrafik, die Tagesstatistik und die Wochengrafik. In den Formularoptionen wurde die entsprechende Option entfernt." : MessageLookupByLibrary.simpleMessage("You can now specify in the output parameters whether the newest day is always displayed first. This has an impact on the daily graph, the daily statistics and the weekly graph. The corresponding option has been removed from the form options."),
    "In den Ausgabeparametern gibt es eine Checkbox, mit der man dafür sorgen kann, dass alle Optionen, die auf einen Loop hinweisen würden, für diese Ausgabe deaktiviert werden. Das sind die Optionen, die mit einem Kreis (=Loop) markiert sind." : MessageLookupByLibrary.simpleMessage("In the output parameters there is a checkbox with which you can ensure that all options that would indicate a loop are deactivated for this output. These are the options that are marked with a circle (= loop)."),
    "In den Einstellungen gibt es einen Regler, der festlegt, wie gross die erzeugten PDF-Dateien maximal sein dürfen. Wenn nur ein leeres PDF erzeugt wird, dann sollte dieser Regler weiter nach links geschoben werden, um die Dateigrösse zu verringern." : MessageLookupByLibrary.simpleMessage("In the settings there is a slider that defines how large the resulting PDF files may be. When a blank PDF is created, then this slider should be moved further to the left, to reduce the file size."),
    "In den Formularen Profil und Basalrate gibt es eine neue Option \"Profil \'NR Profil\' verwenden\". Normalerweise wird das zu verwendende Profil automatisch anhand des angegebenen Zeitraums ermittelt. Hiermit kann das unterbunden werden und ein Profil mit dem Namen \"NR Profil\" wird gesucht. Wenn dieses gefunden wird, dann wird das ausgegeben. Wenn es nicht gefunden wird, wird ein Text ausgegeben, der erklärt, wo man das einstellen kann." : MessageLookupByLibrary.simpleMessage("In the profile and basal rate forms there is a new option \"Use profile \'NR profile\'\". Normally, the profile to be used is determined automatically based on the specified time period. This option can be used to prevent this behavior and a profile with the name \"NR Profil\" is searched for. If this is found, it will be displayed. If it is not found, a text is shown that explains where this can be set."),
    "In den Optionen von Formularen, in denen man Spalten ein- und ausblenden kann, wird nun angezeigt, wieviele Spalten noch verfügbar sind." : MessageLookupByLibrary.simpleMessage("In the options of forms in which you can show and hide columns, it is now shown how many columns are still available."),
    "In den Optionen zur Tagesgrafik gibt es jetzt die Möglichkeit, den oberen Wert für die Kohlenhydrate festzulegen. Das kann bei hohen COB-Werten die Skalierung verbessern." : MessageLookupByLibrary.simpleMessage("In the options for the daily graphic there is now the option to set the upper value for the carbohydrates. This can improve the scaling with high COB values."),
    "In der Analyse können die Prozentzahlen für die Zielbereiche mit Nachkommazahl angezeigt werden. Das verringert die Differenz zu 100%, wenn man sie zusammenzählt. Der verbleibende Rest sind Rundungsdifferenzen." : MessageLookupByLibrary.simpleMessage("In the analysis the percentages for the target areas can be shown with decimal places. This reduces the difference to 100% if you sum it up. The remainder is because of rounding differences."),
    "In der Auswertung gibt es eine neue Option, um den Standardbereich feiner abzustufen. Dort werden dann zusätzlich sehr hohe Werte und sehr niedrige Werte angezeigt." : MessageLookupByLibrary.simpleMessage("There is a new option in the analysis to fine-tune the standard range. Very high values and very low values are displayed with this option."),
    "In der Auswertung können die Angaben für Material (Katheter, Sensor, Ampulle) mit Nachkommastellen angezeigt werden." : MessageLookupByLibrary.simpleMessage("In the analysis, the information for material (catheter, sensor, ampoule) can be displayed with decimal places."),
    "In der Kachelansicht können die Parameter aller ausgewählten Seiten zusammen in einer Liste eingestellt werden. Dazu gibt es im Titelbereich der Parameterliste neben dem Schliessen-Button einen zusätzlichen Button, mit dem man zwischen den beiden Möglichkeiten umschalten kann." : MessageLookupByLibrary.simpleMessage("In the tile view, the parameters of all selected pages can be set together in a list. For this purpose, there is an additional button in the title area of the parameter list next to the close button, with which you can switch between the two options."),
    "In der Legende unter der Tagesgrafik wird die Summe der Kohlenhydrate für den Tag angezeigt." : MessageLookupByLibrary.simpleMessage("The legend below the daily graph shows the sum of carbohydrates for the day."),
    "In der Sprachauswahl ist jetzt auch Slowakisch verfügbar." : MessageLookupByLibrary.simpleMessage("Slovak is now also available In the language selection."),
    "In der Tabelle im Glukose Perzentil Diagramm kann man nun zwei neue Spalten ausgeben lassen. Diese beinhalten die durchschnittlichen Kohlenhydrate und Insulineinheiten." : MessageLookupByLibrary.simpleMessage("The table in the glucose percentile diagram can now display two new columns. These include the average carbohydrates and units of insulin."),
    "In der Tagesgrafik gibt es die Option, HTML-Notizen zu unterdrücken. Manche Uploader schreiben in die Notizen komplette HTML-Seiten rein, was im PDF extrem schlecht darstellbar ist. Deswegen kann man diese mit Setzen der Option ausblenden." : MessageLookupByLibrary.simpleMessage("In the daily graphics, there is the option to suppress HTML notes. Some uploaders write complete HTML pages in the notes, which is extremely difficult to render in the PDF. That\'s why you can hide them by setting this option."),
    "In der Tagesgrafik gibt es eine Option, die berechneten IE für aufgenommene Kohlenhydrate anzeigen zu lassen. Der Wert, der unmittelbar unter den Kohlenhydraten angezeigt wird, entspricht dem Bolus, der zu diesem Zeitpunkt für diese Kohlenhydratmenge abgegeben werden sollte. Dieser Wert kann niedriger als der tatsächlich abgegebene Wert ausfallen, weil für die Insulinabgabe noch IOB und andere Faktoren berücksichtigt werden." : MessageLookupByLibrary.simpleMessage("In the daily graph, there is an option to display the calculated IE for ingested carbohydrates. The value displayed below the carbs is the bolus that should be delivered for that amount of carbohydrate at that time. This value may be lower than the actual value delivered, because IOB and other factors are taken into account for insulin delivery."),
    "In der Tagesgrafik gibt es eine Option, mit dem man die verschiedenen Arten der Boli kenntlich machen lassen kann. Wenn diese Option gesetzt ist, wird ein Bolus, der zu einer Mahlzeit abgegeben wurde mit einer anderen Farbe markiert, als ein Bolus zur Korrektur. In der Legende werden dann Korrektur-, Mahlzeiten-Boli und SMB getrennt angezeigt." : MessageLookupByLibrary.simpleMessage("In the day graph, there is an option that enables to distinguish between a meal- and a correction-bolus. If this option is set, a bolus that was given for a meal is marked with a different color than the bolus given as correction, and they are also shown separately in the legend."),
    "In der Tagesgrafik gibt es eine Option, mit der man sich die erfassten Trainingsdaten anzeigen lassen kann. Diese werden dann am unteren Rand über der Tabelle der Glukosewerte eingefügt." : MessageLookupByLibrary.simpleMessage("In the daily graphis there is an option, that adds the exercise data to the graphic. It will be displayed at the bottom of the graphic right above the glucosetable."),
    "In der Tagesgrafik gibt es eine neue Option, um die Rundung der Insulinwerte auf die maximale Genauigkeit im Profil zu unterbinden. Das macht da Sinn, wo entweder kein Profil vorhanden ist, oder wo Werte mit höherer Genauigkeit als im Profil eingegeben werden." : MessageLookupByLibrary.simpleMessage("There is a new option in the daily graph to prevent the rounding of the insulin values to the maximum precision in the profile. This makes sense when either there is no profile or when values are entered with greater precision than in the profile."),
    "In der Tagesgrafik kann die Anzeige der SMB nun ausgeblendet werden." : MessageLookupByLibrary.simpleMessage("The display of SMB can now be hidden in daily graphics."),
    "In der Tagesgrafik kann jetzt bei Auswahl der Tages Basalrate angegeben werden, dass der Name des Profils angezeigt wird, das am Beginn des Tages aktiv war. Dieser wird dann so angezeigt, wie ein Profilwechsel um 0 Uhr." : MessageLookupByLibrary.simpleMessage("When selecting the daily basal rate, it is now possible to specify in the options of the daily graph that the name of the profile that was active at the beginning of the day is displayed. This will then be displayed as a profile change at 0 am."),
    "In der Tagesgrafik kann man nun die IOB (Insulin On Board) und COB (Carbs On Board) anzeigen lassen. Die IOB werden am oberen Rand angezeigt, wo auch die Bolusabgaben dargestellt werden, die COB am unteren Rand, wo auch die Kohlenhydrate dargestellt werden." : MessageLookupByLibrary.simpleMessage("In the daily graph you can now display the IOB (Insulin On Board) and COB (Carbs On Board). The IOB is shown at the top, where the bolus is shown, the COB at the bottom, where the carbohydrates are shown."),
    "In der Tagesgrafik kann man nun die temporären Overrides von iLoop auch anzeigen lassen. Es wird der Grund angezeigt. Für genauere Informationen kann das so wie bisher auch im Protokoll angezeigt werden." : MessageLookupByLibrary.simpleMessage("The temporary overrides of iLoop can now also be displayed in the daily graphics. The text of the reason is displayed. As before, this can also be displayed in the log for more detailed information."),
    "In der Tagesgrafik kann nun angezeigt werden, wie lange die Basalrate auf 0% lief." : MessageLookupByLibrary.simpleMessage("The daily graph now shows the duration of the basal rate at 0%."),
    "In der Tagesgrafik werden Profilwechsel nicht mehr angezeigt, wenn sich das Profil beim Wechsel nicht geändert hat. iOSLoop fügt in die Nightscoutdatensätze sehr häufig neue Profile ein, die keine Änderung beinhalten, weil dort zusätzlich andere Konfigurationseinstellungen gespeichert werden." : MessageLookupByLibrary.simpleMessage("Profile changes are no longer displayed in the daily graphic if the profile has not changed. iOSLoop very often inserts new profiles into the nightscout data records that do not contain any changes because other configuration settings are also saved there."),
    "In der Tagesgrafik werden die Insulinangaben jetzt kleiner dargestellt, wenn die Basalrate eine Genauigkeit von mehr als 2 Nachkommastellen hat." : MessageLookupByLibrary.simpleMessage("If the basalrate has more than 2 decimals the insulin values are smaller on the daily graphics."),
    "In der Tagesgrafik werden jetzt auch Blutzuckermessungen angezeigt. Sie werden als rote Quadrate dargestellt und die zugehörigen Werte in der Tabelle unterhalb der Grafik werden ebenfalls mit roter Schrift angezeigt." : MessageLookupByLibrary.simpleMessage("The daily chart now also displays blood glucose values. They are displayed as red squares and the associated values ​​in the table below the graphic are also displayed in red."),
    "In der Tagesgrafik werden nun SMBs auch angezeigt, wenn die Option für die Darstellung von Insulin akitivert wurde. Man kann festlegen, ob die SMBs an der Glukosekurve oder am Zielwert angezeigt werden." : MessageLookupByLibrary.simpleMessage("SMBs are now also displayed in the daily graphics if the option for displaying insulin has been activated. You can specify whether the SMBs are displayed on the glucose curve or at the target value."),
    "In der Tagesgrafik werden nun auch Kohlenhydratkorrekturen angezeigt." : MessageLookupByLibrary.simpleMessage("Carbohydrate corrections are now displayed in the daily graph."),
    "In der Tagesgrafik werden nun auch Reservoirwechsel angezeigt." : MessageLookupByLibrary.simpleMessage("Reservoir changes are now also shown in the daily graph."),
    "In der Tagesgrafik werden nun auch bei Anzeige des Zielwertes die temporären Ziele berücksichtigt." : MessageLookupByLibrary.simpleMessage("In the daily graph, the temporary targets are now also taken into account when displaying the target value."),
    "In der Tagesgrafik werden nun auch verzögerte Boli angezeigt." : MessageLookupByLibrary.simpleMessage("Delayed boli are now displayed in the daily graph."),
    "In der Tagesgrafik werden nun der geschätzte HbA1C und die prozentuale Menge an Bolusinsulin und Basalinsulin für den Tag angezeigt. Diese Anzeige erfolgt innerhalb der Legende, weshalb diese aktiviert sein muss, damit die Werte angezeigt werden." : MessageLookupByLibrary.simpleMessage("The daily chart now shows the estimated A1C and the percentage of bolus insulin and basal insulin for the day. These values are displayed within the legend, which is why it must be enabled for the values to appear."),
    "In der Tagesgrafik wird jetzt eine Tabelle mit halbstündigen Glukosewerten eingeblendet angezeigt. Diese kann über einen Parameter ausgeschaltet werden." : MessageLookupByLibrary.simpleMessage("The daily graphics now displays a chart with half-hourly glucose values. This can be switched off via a parameter."),
    "In der Tagesgrafik wurde \"Training\" in \"Bewegung\" umbenannt. Das passt besser zu den Einträgen in AAPS." : MessageLookupByLibrary.simpleMessage("In the daily graphic in the german version \"Training\" was replaced by \"Bewegung\" since this matches the wording in AAPS better."),
    "In der Tagesgraphic werden jetzt Insulinwerte und Kohlenhydratwerte zusammengefasst, wenn es mehrere innerhalb einer Stunde gibt. Die Balken werden nach wie vor für jeden Wert einzeln ausgegeben. Auf diese Art sollte es keine überlappende Ausgabe der Werte mehr geben. Die zusammengefassten Werte werden in eckigen Klammern ausgegeben, um anzuzeigen, dass hier Werte aufsummiert wurden." : MessageLookupByLibrary.simpleMessage("The daily graphic now sums up insulin values and carbohydrate values when there are several values within an hour. The bars are still drawn individually for each value. In this way there should be no overlapping output of the values anymore. The summarized values are displayed in square brackets to indicate that values have been summed up here."),
    "In der Tagesstatistik können nun Spalten für TDD und Kohlenhydrate angezeigt werden." : MessageLookupByLibrary.simpleMessage("Columns for TDD and carbohydrates can now be displayed in the daily statistics."),
    "In der Tagesstatistik und in den täglichen Grafiken werden jetzt zum Datum die Wochentage mit angezeigt." : MessageLookupByLibrary.simpleMessage("In the daily statistics and in the daily graphics, the days of the week are now displayed with the day of the week."),
    "In der Tagesstatistik werden nun in der Summenzeile die Durchschnittswerte für einige Werte zusätzlich angezeigt." : MessageLookupByLibrary.simpleMessage("In the daily statistics, the average values for some values are now also displayed in the totals line."),
    "In der Tagesstatistik wurde die Spalte Varianzkoeffizient hinzugefügt (VarK)." : MessageLookupByLibrary.simpleMessage("In the daily statistics, the column Coefficient of variation has been added (CV)."),
    "In der Tagesstatistik wurden bei unvollständigen Daten teilweise fehlerhafte Werte ausgegeben. Das wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Fixed wrong data display in the daily statistics when a day has too little data."),
    "In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen." : MessageLookupByLibrary.simpleMessage("The variable ENABLE must contain the word \"cors\" so that external tools like this one can access the data."),
    "Information" : MessageLookupByLibrary.simpleMessage("Information"),
    "Initiale Version, alles ist neu!" : MessageLookupByLibrary.simpleMessage("Initial version, everything is new!"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("Insulin"),
    "Insulin Kohlenhydrate Verhältnis (ICR)" : MessageLookupByLibrary.simpleMessage("Insulin Carbohydrate Ratio (ICR)"),
    "Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE" : MessageLookupByLibrary.simpleMessage("Insulin Carb Ratio (ICR) X g Carbs for 1 U"),
    "Insulin Sensitivitäts Faktoren (ISF)" : MessageLookupByLibrary.simpleMessage("Insulin Sensitivity Factors (ISF)"),
    "Insulin auf maximale Stellen im Profil runden" : MessageLookupByLibrary.simpleMessage("Round insulin to maximum precision in profile"),
    "Insulin-Quelle" : MessageLookupByLibrary.simpleMessage("Insulin-source"),
    "Irgendwas zum Einstellen" : MessageLookupByLibrary.simpleMessage("Something to configure"),
    "Ja" : MessageLookupByLibrary.simpleMessage("Yes"),
    "Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember" : MessageLookupByLibrary.simpleMessage("January|February|March|April|May|June|July|August|September|October|November|December"),
    "Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez" : MessageLookupByLibrary.simpleMessage("Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec"),
    "KH" : MessageLookupByLibrary.simpleMessage("Carbs"),
    "Kalibrierung und blutige Messungen" : MessageLookupByLibrary.simpleMessage("Calibration and blood values"),
    "Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Site change"),
    "Keine" : MessageLookupByLibrary.simpleMessage("None"),
    "Keine Änderung" : MessageLookupByLibrary.simpleMessage("No change"),
    "Klein" : MessageLookupByLibrary.simpleMessage("Small"),
    "Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Carbohydrates"),
    "Kohlenhydrate und Bolusinsulin werden jetzt in den täglichen Grafiken angezeigt" : MessageLookupByLibrary.simpleMessage("Carbohydrates and bolus insulin are now displayed in the daily graphs"),
    "Korrektur für Datenänderungen in AAPS 3.0" : MessageLookupByLibrary.simpleMessage("Correction for data changes in AAPS 3.0"),
    "Lade die Basisdaten..." : MessageLookupByLibrary.simpleMessage("Loading basedata..."),
    "Leer" : MessageLookupByLibrary.simpleMessage("Empty"),
    "Legende" : MessageLookupByLibrary.simpleMessage("Legend"),
    "Legende für Katheter- und Sensorwechsel zur Tagesgrafik hinzugefügt." : MessageLookupByLibrary.simpleMessage("Added legend for catheter and sensor changes to the daily chart."),
    "Letzte 2 Tage" : MessageLookupByLibrary.simpleMessage("Last 2 days"),
    "Letzte 2 Wochen" : MessageLookupByLibrary.simpleMessage("Last 2 weeks"),
    "Letzte 3 Monate" : MessageLookupByLibrary.simpleMessage("Last 3 months"),
    "Letzte 3 Tage" : MessageLookupByLibrary.simpleMessage("Last 3 days"),
    "Letzte 3 Wochen" : MessageLookupByLibrary.simpleMessage("Last 3 weeks"),
    "Letzte Unterzuckerung" : MessageLookupByLibrary.simpleMessage("Last Hypo"),
    "Letzte Woche" : MessageLookupByLibrary.simpleMessage("Last week"),
    "Letzten Messwert in der Titelzeile anzeigen" : MessageLookupByLibrary.simpleMessage("Show last glucose value in titlebar"),
    "Letzter Behandlungswert" : MessageLookupByLibrary.simpleMessage("Last treatmentvalue"),
    "Letzter Glukosewert" : MessageLookupByLibrary.simpleMessage("Last glucosevalue"),
    "Letzter Monat" : MessageLookupByLibrary.simpleMessage("Last month"),
    "Linien um Bereiche" : MessageLookupByLibrary.simpleMessage("Lines around areas"),
    "Loopdaten verbergen (die auf diese Art markierten Optionen ignorieren)" : MessageLookupByLibrary.simpleMessage("Hide loop data (ignore the options marked in this way)"),
    "Löschen" : MessageLookupByLibrary.simpleMessage("Delete"),
    "Mahlzeitenbolus_bolus to handle a meal" : MessageLookupByLibrary.simpleMessage("Meal Bolus"),
    "Man kann jetzt mehrere Benutzer anlegen. Das ist nützlich, um mehrere Nightscout-Instanzen auszuwerten (z.B. für Ärzte, Betreuer oder den Entwickler dieser Software)" : MessageLookupByLibrary.simpleMessage("You can now create multiple users. This is useful for analyzing multiple nightscout instances (e.g. for doctors, caregivers or the developer of this software)"),
    "Material mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Material with decimal places"),
    "Max" : MessageLookupByLibrary.simpleMessage("Max"),
    "Max Mustermann" : MessageLookupByLibrary.simpleMessage("John Smith"),
    "Maximaler Glukosewert in Grafiken:" : MessageLookupByLibrary.simpleMessage("Maximum glucose value in graphics:"),
    "Maximalwert für Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Maximum value for carbohydrates"),
    "Median" : MessageLookupByLibrary.simpleMessage("Median"),
    "Mehr gibt es dazu eigentlich nicht zu sagen." : MessageLookupByLibrary.simpleMessage("There is nothing more to say about it."),
    "Mehrfache Datensätze kennzeichnen" : MessageLookupByLibrary.simpleMessage("Denote repeated datasets"),
    "Menü" : MessageLookupByLibrary.simpleMessage("Menu"),
    "Mess-\nwerte" : MessageLookupByLibrary.simpleMessage("Values"),
    "Min" : MessageLookupByLibrary.simpleMessage("Min"),
    "Mit Google Drive synchronisieren" : MessageLookupByLibrary.simpleMessage("Sync with Google Drive"),
    "Mittel-\nwert" : MessageLookupByLibrary.simpleMessage("Average"),
    "Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|Sonntag" : MessageLookupByLibrary.simpleMessage("Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday"),
    "Mo|Di|Mi|Do|Fr|Sa|So" : MessageLookupByLibrary.simpleMessage("Mon|Tue|Wed|Thu|Fri|Sat|Sun"),
    "Nacht (21:00 - 05:59)" : MessageLookupByLibrary.simpleMessage("Night (21:00 - 05:59)"),
    "Nahe zusammen liegende Werte aufsummieren" : MessageLookupByLibrary.simpleMessage("Accumulate values in close range"),
    "Name" : MessageLookupByLibrary.simpleMessage("Name"),
    "Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat." : MessageLookupByLibrary.simpleMessage("Name, birthday, insulin and the start date of diabetes can now be left blank without any negative impact on the presentation in the PDF."),
    "Nein" : MessageLookupByLibrary.simpleMessage("No"),
    "Neue Option im Profil, um fortlaufende Zeiten mit gleichen Werten zu einem Eintrag zusammen zu fassen." : MessageLookupByLibrary.simpleMessage("New option in the profile to combine consecutive times with the same values into a single entry."),
    "Neuer Parameter für die Tagesgrafik, der festlegt, ob die Linien für die Notizen unter der Grafik bis zur Glukosekurve gezeichnet werden sollen oder nicht." : MessageLookupByLibrary.simpleMessage("New daily graph parameter that determines whether or not to draw the lines for the notes under the graph up to the glucose curve."),
    "Neues PDF für eine Wochengrafik hinzugefügt, auf der die Glukosekurven der Woche übereinander gelegt werden." : MessageLookupByLibrary.simpleMessage("Added a new PDF for a weekly graphics where the week\'s glucose curves are shown all at once."),
    "Neuester Tag zuerst" : MessageLookupByLibrary.simpleMessage("Newest day first"),
    "Niedrigster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Lowest value in the period"),
    "Night-Watch" : MessageLookupByLibrary.simpleMessage("Night-Watch"),
    "Night-Watch zeigt nun auch Werte an, wenn diese von mehreren Uploadern innerhalb kurzer Zeit mehrfach in Nightscout gespeichert wurden. Das sollte man zwar möglichst vermeiden, aber nun kann Night-Watch auch damit umgehen." : MessageLookupByLibrary.simpleMessage("Night-Watch now also displays values if they have been saved multiple times in Nightscout by multiple uploaders within a short period of time. This should be avoided if possible, but now Night-Watch can also deal with it."),
    "Nightscout Berichte" : MessageLookupByLibrary.simpleMessage("Nightscout Reports"),
    "Nightscout Reporter ist nun auch grösstenteils in Spanisch und Polnisch verfügbar. Entsprechende Buttons wurden dem Hauptmenü hinzugefügt. Danke an die fleissigen Übersetzer :)." : MessageLookupByLibrary.simpleMessage("Most of Nightscout Reporter is now translated to Spanish and Polish. Corresponding buttons have been added to the main menu. Thanks to the diligent translators :)."),
    "Nightscout Reporter kann nun auch auf Portugiesisch verwendet werden." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter can now also be used in Portuguese."),
    "Nightscout Reporter kann nun auch in Japanisch verwendet werden." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter can now be used in Japanese."),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("Nighscout Site"),
    "Nightscout Url in der Fusszeile des PDFs anzeigen" : MessageLookupByLibrary.simpleMessage("Show Nightscout Url in the footer of the PDFs"),
    "Normal" : MessageLookupByLibrary.simpleMessage("Normal"),
    "Notiz" : MessageLookupByLibrary.simpleMessage("Note"),
    "Notiz-Linien bis zur Kurve zeichnen" : MessageLookupByLibrary.simpleMessage("Draw lines from notes to the curve"),
    "Notizen" : MessageLookupByLibrary.simpleMessage("Notes"),
    "Nur letzte Basalrate ausgeben" : MessageLookupByLibrary.simpleMessage("Show only last basalrate"),
    "Nur letztes Profil ausgeben" : MessageLookupByLibrary.simpleMessage("Show only last profile"),
    "Nur mehrfache Datensätze anzeigen" : MessageLookupByLibrary.simpleMessage("Show only repeated datasets"),
    "Ok" : MessageLookupByLibrary.simpleMessage("Ok"),
    "Optionen" : MessageLookupByLibrary.simpleMessage("Options"),
    "Optionen für die PDFs, die eine eindeutige Beziehung zu einem laufenden Loop haben, werden nun in Blau dargestellt. Das vereinfacht es, PDFs zu erstellen, denen man nicht ohne Weiteres entnehmen kann, dass ein Loop vorliegt. Dazu müssen nur die Haken bei den blauen Optionen entfernt werden." : MessageLookupByLibrary.simpleMessage("Options for the PDFs that have a unique relationship to a running loop are now displayed in blue. This makes it easy to create PDFs where you can not easily deduce that there is a loop running. All you have to do is to uncheck the blue options."),
    "PDF anzeigen" : MessageLookupByLibrary.simpleMessage("Show PDF"),
    "PDF erneut erzeugen" : MessageLookupByLibrary.simpleMessage("Create PDF again"),
    "PDF erzeugen" : MessageLookupByLibrary.simpleMessage("Create PDF"),
    "PDF für Profildaten" : MessageLookupByLibrary.simpleMessage("PDF for profile data"),
    "PDF herunterladen (bei einigen Browsern benötigt)" : MessageLookupByLibrary.simpleMessage("Download PDF (needed for some browsers)"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("Open PDF in the same window"),
    "PGR" : MessageLookupByLibrary.simpleMessage("PGR"),
    "Patient Glykämischer Status (PGS)" : MessageLookupByLibrary.simpleMessage("Patient Glycemic Status (PGS)"),
    "Pausiert" : MessageLookupByLibrary.simpleMessage("Paused"),
    "Polski" : MessageLookupByLibrary.simpleMessage("Polski"),
    "Português" : MessageLookupByLibrary.simpleMessage("Português"),
    "Problem auf GitHub melden" : MessageLookupByLibrary.simpleMessage("Report a problem to GitHub"),
    "Profil" : MessageLookupByLibrary.simpleMessage("Profile"),
    "Profil-Basalrate" : MessageLookupByLibrary.simpleMessage("Profile basalrate"),
    "Profileinstellungen" : MessageLookupByLibrary.simpleMessage("Profilesettings"),
    "Profilwechsel" : MessageLookupByLibrary.simpleMessage("Profileswitch"),
    "Protokoll" : MessageLookupByLibrary.simpleMessage("Log"),
    "Prozent" : MessageLookupByLibrary.simpleMessage("Percent"),
    "Quelle: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)" : MessageLookupByLibrary.simpleMessage("Source: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)"),
    "Querformat" : MessageLookupByLibrary.simpleMessage("Landscape"),
    "Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse." : MessageLookupByLibrary.simpleMessage("Order of PDF pages changed - Percentile Diagram now comes after analysis."),
    "Reservoirwechsel" : MessageLookupByLibrary.simpleMessage("Reservoir change"),
    "SMB" : MessageLookupByLibrary.simpleMessage("SMB"),
    "SMB Werte anzeigen" : MessageLookupByLibrary.simpleMessage("Show SMB values"),
    "SMB an der Kurve platzieren" : MessageLookupByLibrary.simpleMessage("Place SMB on the curve"),
    "Schliessen" : MessageLookupByLibrary.simpleMessage("Close"),
    "Schliessen Button im Nachrichtenbereich hinzugefügt." : MessageLookupByLibrary.simpleMessage("Close button added in the message area."),
    "Schritte" : MessageLookupByLibrary.simpleMessage("Steps"),
    "Sechs Monate vorher" : MessageLookupByLibrary.simpleMessage("Six months before"),
    "Sechzehn" : MessageLookupByLibrary.simpleMessage("Sixteen"),
    "Sekunden anzeigen" : MessageLookupByLibrary.simpleMessage("Show seconds"),
    "Sensorwechsel" : MessageLookupByLibrary.simpleMessage("Sensor change"),
    "Shortcut anlegen" : MessageLookupByLibrary.simpleMessage("Add shortcut"),
    "Shortcut ändern" : MessageLookupByLibrary.simpleMessage("Edit shortcut"),
    "Shortcuts" : MessageLookupByLibrary.simpleMessage("Shortcuts"),
    "Skala" : MessageLookupByLibrary.simpleMessage("Range"),
    "Slovenský" : MessageLookupByLibrary.simpleMessage("Slovenský"),
    "Soll der Benutzer mit der URL" : MessageLookupByLibrary.simpleMessage("Should the user with the URL"),
    "Soll der Shortcut mit der Bezeichnung" : MessageLookupByLibrary.simpleMessage("`Should the shortcut with the title"),
    "Soll der Zeitraum" : MessageLookupByLibrary.simpleMessage("Should the period"),
    "Soll die Einheit zur Glukosemessung" : MessageLookupByLibrary.simpleMessage("Should the unit for glucosevalues"),
    "Soll die Formularauswahl mit der aktuellen Auswahl ersetzt werden?" : MessageLookupByLibrary.simpleMessage("Should the form selection be replaced with the current selection?"),
    "Soll die URL" : MessageLookupByLibrary.simpleMessage("Deleting Url"),
    "Spalte Basal anzeigen" : MessageLookupByLibrary.simpleMessage("Show column basal"),
    "Spalte Bolus anzeigen" : MessageLookupByLibrary.simpleMessage("Show column bolus"),
    "Spalte HbA1c" : MessageLookupByLibrary.simpleMessage("Column A1C"),
    "Spalte HbA1c zu Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Added column A1C to daily statistics"),
    "Spalte IE anzeigen" : MessageLookupByLibrary.simpleMessage("Show column U"),
    "Spalte KH anzeigen" : MessageLookupByLibrary.simpleMessage("Show column carbs"),
    "Spalte Kohlenhydrate anzeigen" : MessageLookupByLibrary.simpleMessage("Show column carbs"),
    "Spalte Max anzeigen" : MessageLookupByLibrary.simpleMessage("Show column max"),
    "Spalte Messwerte" : MessageLookupByLibrary.simpleMessage("Column valuecount"),
    "Spalte Messwerte anzeigen" : MessageLookupByLibrary.simpleMessage("Show column valuecount"),
    "Spalte Min anzeigen" : MessageLookupByLibrary.simpleMessage("Show column min"),
    "Spalte Mittelwert anzeigen" : MessageLookupByLibrary.simpleMessage("Show column average"),
    "Spalte Standardabweichung" : MessageLookupByLibrary.simpleMessage("Column standard deviation"),
    "Spalte Std.Abw. anzeigen" : MessageLookupByLibrary.simpleMessage("Show column SDev"),
    "Spalte Variationskoeffizient" : MessageLookupByLibrary.simpleMessage("Column coefficient of variation"),
    "Spalten Min / Max anzeigen" : MessageLookupByLibrary.simpleMessage("Show columns min / max"),
    "Spalten Perzentile" : MessageLookupByLibrary.simpleMessage("Columns percentiles"),
    "Spalten für 10% und 90% anzeigen" : MessageLookupByLibrary.simpleMessage("Show columns for 10% and 90%"),
    "Spaltenbreite der Informationen in der Analyse erhöht" : MessageLookupByLibrary.simpleMessage("Column width of the information in the analysis increased"),
    "Speichern" : MessageLookupByLibrary.simpleMessage("Save"),
    "Spenden" : MessageLookupByLibrary.simpleMessage("Donate"),
    "Standard_theme selection - standard" : MessageLookupByLibrary.simpleMessage("Standard"),
    "Standardabweichung" : MessageLookupByLibrary.simpleMessage("Standard deviation"),
    "Standardabweichung statt Anzahl" : MessageLookupByLibrary.simpleMessage("Standard deviation instead of valuecount"),
    "Standardbereich mit feinerer Abstufung" : MessageLookupByLibrary.simpleMessage("Standard range with finer gradation"),
    "Standardgrenzwerte" : MessageLookupByLibrary.simpleMessage("Standard Target Area"),
    "Startstunde" : MessageLookupByLibrary.simpleMessage("Starthour"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("SDev"),
    "Stunden" : MessageLookupByLibrary.simpleMessage("hours"),
    "Stündliche Statistik" : MessageLookupByLibrary.simpleMessage("Hourly Statistics"),
    "Summe" : MessageLookupByLibrary.simpleMessage("Sum"),
    "Summen für Bolus Insulin, Basalrate für den Tag und Basalrate aus dem Profil zur Tagesgrafik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Sums for bolus insulin, basal rate for the day, and basalrate from the profile added to the daily chart"),
    "Symbole (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Symbols (catheters etc.)"),
    "Synchronisierung aufheben" : MessageLookupByLibrary.simpleMessage("Cancel Sync"),
    "TDD" : MessageLookupByLibrary.simpleMessage("TDD"),
    "TDD anzeigen" : MessageLookupByLibrary.simpleMessage("Show TDD"),
    "Tabelle" : MessageLookupByLibrary.simpleMessage("Table"),
    "Tabelle mit Glukosewerten" : MessageLookupByLibrary.simpleMessage("Table with glucose values"),
    "Tag (08:00 - 17:59)" : MessageLookupByLibrary.simpleMessage("Day (08:00 - 17:59)"),
    "Tages-Basalrate" : MessageLookupByLibrary.simpleMessage("Daily basalrate"),
    "Tagesanalyse" : MessageLookupByLibrary.simpleMessage("Day Analysis"),
    "Tagesbasalrate verwenden" : MessageLookupByLibrary.simpleMessage("Use daily basalrate"),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("Daily Graph"),
    "Tagesgrafikparameter zur Anzeige der Legende" : MessageLookupByLibrary.simpleMessage("Daily graphic parameters for displaying notes"),
    "Tagesgrafikparameter zur Anzeige von Notizen" : MessageLookupByLibrary.simpleMessage("Daily graphic parameters for displaying notes"),
    "Tagesgrafikparameter zur umgekehrten Sortierung hinzugefügt. Die Tage werden damit beginnend mit dem höchsten Datum ausgegeben." : MessageLookupByLibrary.simpleMessage("Added daily graphic parameters for reverse sorting. The daily graphics are created starting with the highest date."),
    "Tagesnamen in Grafik anzeigen" : MessageLookupByLibrary.simpleMessage("Show day names in graphic"),
    "Tagesprofil" : MessageLookupByLibrary.simpleMessage("Daily Profile"),
    "Tagesstartprofil anzeigen" : MessageLookupByLibrary.simpleMessage("Show profile at daystart"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("Daily Statistics"),
    "Tagesstunden" : MessageLookupByLibrary.simpleMessage("Dayhours"),
    "Tagestrend" : MessageLookupByLibrary.simpleMessage("Daily Trend"),
    "Template" : MessageLookupByLibrary.simpleMessage("Template"),
    "Temporäre Basalraten" : MessageLookupByLibrary.simpleMessage("Temporary Basalrate"),
    "Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt" : MessageLookupByLibrary.simpleMessage("Temporary basal rates with absolute values ​​are displayed correctly"),
    "Temporäre Overrides" : MessageLookupByLibrary.simpleMessage("Temporary Overrides"),
    "Temporäre Profilwechsel werden jetzt erkannt und in der Tagesgrafik korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Temporary profile changes are now recognized and displayed correctly in the daily graphics."),
    "Temporäre Ziele" : MessageLookupByLibrary.simpleMessage("Temporary Targets"),
    "Titelangaben für Datumsbereiche auf den PDFs vereinheitlicht" : MessageLookupByLibrary.simpleMessage("Title information for date ranges on the PDFs are unified"),
    "Trend" : MessageLookupByLibrary.simpleMessage("Trend"),
    "Trendpfeil" : MessageLookupByLibrary.simpleMessage("Trendarrow"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("Time"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("Time"),
    "Umbruch" : MessageLookupByLibrary.simpleMessage("Newline"),
    "Unbegrenzt" : MessageLookupByLibrary.simpleMessage("Unlimited"),
    "Unterzuckerungen anzeigen" : MessageLookupByLibrary.simpleMessage("Show hypoglycemia"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("Url to Nightscout-API (e.g. https://xxx.herokuapp.com)"),
    "VarK\nin %" : MessageLookupByLibrary.simpleMessage("CV in %"),
    "Verbinde zu Google Drive..." : MessageLookupByLibrary.simpleMessage("Connect to Google Drive..."),
    "Verbinde zu Google..." : MessageLookupByLibrary.simpleMessage("Connect to Google..."),
    "Verbindung zu Google Drive herstellen" : MessageLookupByLibrary.simpleMessage("Connect to Google Drive"),
    "Verbindung zu Google Drive trennen" : MessageLookupByLibrary.simpleMessage("Disconnect from Google Drive"),
    "Vergleich" : MessageLookupByLibrary.simpleMessage("Comparison"),
    "Version" : MessageLookupByLibrary.simpleMessage("Version"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("Distribution"),
    "Verteilung der Glukosewerte" : MessageLookupByLibrary.simpleMessage("Distribution of glucose values"),
    "Verzögerter Bolus" : MessageLookupByLibrary.simpleMessage("Delayed Bolus"),
    "Vier" : MessageLookupByLibrary.simpleMessage("Four"),
    "Viertes Quartal" : MessageLookupByLibrary.simpleMessage("Fourth Quarter"),
    "ViewWhatsnewComponent0__message_47" : m0,
    "ViewWhatsnewComponent0__message_6" : m1,
    "ViewWhatsnewComponent0__message_9" : m2,
    "Von" : MessageLookupByLibrary.simpleMessage("from"),
    "Vor der Erzeugung eines PDFs wird noch ein Dialog angezeigt, auf dem man Parameter für alle erzeugten PDFs eingeben kann. Man kann dort den Zielbereich auf den Standardbereich festlegen, den Ärzte gerne sehen. Das hat Auswirkungen auf alle Darstellungen des Zielbereichs, sowie auf die Verteilung der Werte innerhalb und ausserhalb des Zielbereichs. Man kann dort auch den Maximalwert für Glukose in Grafiken festlegen. Dieser Wert wird in der Tagesgrafik, dem Perzentil Diagramm und der Wochengrafik verwendet. Wenn er auf \"Automatisch\" gesetzt wird, wird der Maximalwert wie bisher auch aus den vorhandenen Daten ermittelt. Ausserdem kann man hier angeben, ob man den aktuellen Zeitraum erzeugen möchte oder einen Vergleichszeitraum. Das ist nützlich, um dem Arzt die Gegenüberstellung von Werten der Vergangenheit und jetzt zu zeigen." : MessageLookupByLibrary.simpleMessage("Before a PDF is created, a dialog is displayed in which you can enter parameters for all PDFs created. You can set the target area to the standard area that doctors like to see. This has an impact on all representations of the target area, as well as on the distribution of the values inside and outside the target area. You can also set the maximum value for glucose in graphics there. This value is used in the daily graphics, the percentile diagram and the weekly graphics. If it is set to \"Automatic\", the maximum value is determined from the existing data as before. You can also specify here whether you want to generate the current period or a comparison period. This is useful to show the doctor a comparison of past and now values."),
    "Warnung" : MessageLookupByLibrary.simpleMessage("Warning"),
    "Warum werde ich mit mehreren Buttons genervt, statt eine einzelne PDF angezeigt zu kriegen?" : MessageLookupByLibrary.simpleMessage("Why am I annoyed with several buttons instead of getting a single PDF?"),
    "Was bisher geschah..." : MessageLookupByLibrary.simpleMessage("What happened up to now..."),
    "Wechsel" : MessageLookupByLibrary.simpleMessage("Change"),
    "Wechsel (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Changes (catheters etc.)"),
    "Weihnachten_theme selection - christmas" : MessageLookupByLibrary.simpleMessage("Christmas"),
    "Wenn Night-Watch beim Aufruf feststellt, dass noch keine Konfiguration vorgenommen wurde, dann kann man über das altbekannte Settingsfenster seine Einstellungen vornehmen. Das kommt vor, wenn man die Seite als WebApp installiert, da dort der Browserspeicher, in dem die Konfiguration gehalten wird, normalerweise noch nicht befüllt wurde." : MessageLookupByLibrary.simpleMessage("If Night-Watch is called without any configuration available, you can edit your settings via the well-known settings window. This happens when you install the page as a web app, since the browser memory, in which the configuration is stored, has usually not yet been filled."),
    "Wenn Sonderzeichen in den Daten vorhanden sind (z.B. Smileys in den Notizen), führte das zu einem Absturz während der PDF-Erstellung. Das wurde behoben, indem diese Sonderzeichen aus der Ausgabe entfernt werden." : MessageLookupByLibrary.simpleMessage("If special characters are present in the data (eg smileys in the notes), this caused a crash during the PDF creation. This has been fixed by removing these special characters from the output."),
    "Wenn auf der Profilseite leere Spalten vorkommen, führt das nicht mehr zu einer leeren Seite." : MessageLookupByLibrary.simpleMessage("If there are empty columns on the profile page, this no longer leads to an empty page."),
    "Wenn das erzeugte PDF zu gross wird, wird es nun auf mehrere PDF-Dateien aufgeteilt. In diesem Fall wird es nicht direkt geöffnet, sondern es wird eine Liste mit durchnummerierten Buttons angezeigt. Diese Buttons öffnen bei Betätigung das entsprechende PDF und erhalten einen Haken, um anzuzeigen, dass es geöffnet wurde. Das sollte es erleichtern, die PDFs nacheinander zu öffnen, weil normalerweise der Browser im Hintergrund verschwindet, wenn ein neues Fenster aufgemacht wird." : MessageLookupByLibrary.simpleMessage("If the generated PDF is too large, it is divided on several PDF files now. In this case, it will not directly open, but there will be shown a list of numbered buttons. These buttons open the corresponding PDF and get a checkmark, indicating that it has been opened. This should make it easier to open the PDFs, because usually the current browserwindow is moved to the background when a new window is opened."),
    "Wenn der Zeitraum leer ist, wird der Button für die Auswahl deutlich markiert und in dem Dialog zur Auswahl wird in der Titelzeile ein Hinweis darauf angezeigt." : MessageLookupByLibrary.simpleMessage("If the period is empty, the button for the selection is marked clearly and in the dialog to choose an indication appears in the title bar."),
    "Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet" : MessageLookupByLibrary.simpleMessage("If the thresholds in Nightscout (BG_TARGET_BOTTOM and BG_TARGET_TOP) are equal to 70 and 180, then the area for the default targets will be hidden on the analysis page"),
    "Wenn die Synchronisierung mit Google Drive aufgehoben wird, wird die Berechtigung nun korrekt zurückgesetzt. Wenn man sich danach wieder synchronisieren will, werden nochmal die Berechtigungen abgefragt." : MessageLookupByLibrary.simpleMessage("When syncing with Google Drive is canceled, the authorization is now reset properly. If you want to synchronize again afterwards, the authorizations are requested again."),
    "Wenn im CGP ein Wert den Maximalwert der Skala überschreitet, wird die entsprechende Ecke mit einem gelben Kreis markiert." : MessageLookupByLibrary.simpleMessage("If a value in the CGP exceeds the maximum value of the scale, the corresponding corner is marked with a yellow circle."),
    "Wenn in Nightscout die Daten für die täglich erzielten Schritte vorhanden sind, dann werden diese in der Tagesgrafik angezeigt, wenn dort die Option \"Bewegung anzeigen\" aktiviert ist." : MessageLookupByLibrary.simpleMessage("If the data for the daily steps taken is available in Nightscout, then these are displayed in the daily graph if the \"Show Exercises\" option is activated there."),
    "Wenn in den Einstellungen eine Verbindung zum Google-Konto hergestellt wird, werden die Cookies von Google verwendet und die Daten nicht mehr im localStorage des Browsers gespeichert, sondern im AppStorage auf Google Drive. Auf diese Art kann man die Daten zentralisiert verwalten und hat diese in jedem Browser zur Verfügung, der mit dem angegebenen Google Konto verbunden ist." : MessageLookupByLibrary.simpleMessage("When the settings are connected to the Google Account, Google\'s cookies are used and the data is no longer stored in the localStorage of the browser, but in the AppStorage on Google Drive. In this way you can manage the data centrally and have it available in any browser connected to the specified Google Account."),
    "Wenn in den Einträgen Lücken von 15 Minuten oder mehr sind, führen diese zu einer Unterbrechung der Linie in der Tagesgrafik." : MessageLookupByLibrary.simpleMessage("If there are gaps in the entries of 15 minutes or more, there will also be a gap in the daily chart."),
    "Wenn in einem Profil mehr Zeiten erfasst wurden, als auf eine Seite passen, wurden diese fortlaufend in die nächste Seite hineingeschrieben. Jetzt wird an geeigneter Stelle eine neue Seite ausgegeben." : MessageLookupByLibrary.simpleMessage("If more times were recorded in a profile than fit on one page, they were overlaying the content of the next page. Now a new page is created as needed."),
    "Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt." : MessageLookupByLibrary.simpleMessage("If no data is available, blank pages will be generated with an appropriate hint."),
    "Wert" : MessageLookupByLibrary.simpleMessage("Value"),
    "Wert & Prozent" : MessageLookupByLibrary.simpleMessage("Value & Percent"),
    "Werte über dem Maximum als Pfeile darstellen" : MessageLookupByLibrary.simpleMessage("Show values above the maximum as arrows"),
    "Willkommen" : MessageLookupByLibrary.simpleMessage("Welcome"),
    "Willkommen bei Nightscout Reporter!" : MessageLookupByLibrary.simpleMessage("Welcome to Nightscout Reporter!"),
    "Wochengrafik" : MessageLookupByLibrary.simpleMessage("Weekly Graphics"),
    "Zeilen mit gleichen Werten zusammenfassen" : MessageLookupByLibrary.simpleMessage("Combine entries with the same values"),
    "Zeit" : MessageLookupByLibrary.simpleMessage("Time"),
    "Zeitraum" : MessageLookupByLibrary.simpleMessage("Period"),
    "Zeitraum festlegen" : MessageLookupByLibrary.simpleMessage("Set the period"),
    "Zeitraum:" : MessageLookupByLibrary.simpleMessage("Period:"),
    "Zeitzone" : MessageLookupByLibrary.simpleMessage("Timezone"),
    "Zielbereich" : MessageLookupByLibrary.simpleMessage("Target area"),
    "Zielbereich mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Targetarea with decimals"),
    "Zielwert anzeigen" : MessageLookupByLibrary.simpleMessage("Show targetvalue"),
    "Zugriffsschlüssel" : MessageLookupByLibrary.simpleMessage("Access Token"),
    "Zur Berechnung der Analyse, Tagesstatistik und Tagesgrafik wird nun die gleiche Datenbasis verwendet, so dass die Werte auf allen PDFs gleich sind." : MessageLookupByLibrary.simpleMessage("The same database is used to calculate the analysis, daily statistics and daily graphs so that the values are the same on all PDFs."),
    "Zur Kachelansicht" : MessageLookupByLibrary.simpleMessage("To the tile view"),
    "Zur Listenansicht" : MessageLookupByLibrary.simpleMessage("To the list view"),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("Additional functions"),
    "Zusätzliche Informationen zu den PDFs und im UI hinzugefügt" : MessageLookupByLibrary.simpleMessage("added additional information about the PDFs and in the UI"),
    "Zusätzliche Spalte anzeigen" : MessageLookupByLibrary.simpleMessage("Show additional column"),
    "Zwei" : MessageLookupByLibrary.simpleMessage("Two"),
    "Zweites Quartal" : MessageLookupByLibrary.simpleMessage("Second Quarter"),
    "_msgAdjustCalc" : m3,
    "_msgAdjustLab" : m4,
    "_msgAdjustTarget" : m5,
    "_msgLowerGlucHint" : m6,
    "_msgPageCount" : m7,
    "_msgPageCountEst" : m8,
    "_msgRaiseGlucHint" : m9,
    "ab 4,6" : MessageLookupByLibrary.simpleMessage("from 4,6"),
    "bis" : MessageLookupByLibrary.simpleMessage("until"),
    "dd.MM." : MessageLookupByLibrary.simpleMessage("MM/dd"),
    "dd.MM.yyyy" : MessageLookupByLibrary.simpleMessage("MM/dd/yyyy"),
    "ersetzt werden?" : MessageLookupByLibrary.simpleMessage("?"),
    "extrem hohes Risiko" : MessageLookupByLibrary.simpleMessage("extremely high risk"),
    "g / Stunde" : MessageLookupByLibrary.simpleMessage("g / hour"),
    "geringes Risiko" : MessageLookupByLibrary.simpleMessage("low risk"),
    "gesch. HbA1c" : MessageLookupByLibrary.simpleMessage("est. A1C"),
    "hohes Risiko" : MessageLookupByLibrary.simpleMessage("high risk"),
    "https://nightscout-reporter.zreptil.de/beta" : MessageLookupByLibrary.simpleMessage("https://nightscout-reporter.zreptil.de/beta"),
    "iOS Loop missbraucht die Profiltabelle dazu, seine eigenen Settings zu speichern, was bei Benutzern dieser Software dazu führte, dass die Tabelle Profil nicht korrekt geladen werden kann. Deshalb gibt es jetzt in den Einstellungen die Möglichkeit, die Anzahl der Datensätze, die aus der Profiltabelle geladen werden einzuschränken." : MessageLookupByLibrary.simpleMessage("iOS Loop misuses the profile table to save its own settings, which for users of this software meant that the profile table could not be loaded correctly. Therefore, in the settings there is now the option of restricting the number of data records that are loaded from the profile table."),
    "mg/dL" : MessageLookupByLibrary.simpleMessage("mg/dL"),
    "mit dem Zeitraum" : MessageLookupByLibrary.simpleMessage("be replaced with the period"),
    "mit der Einheit" : MessageLookupByLibrary.simpleMessage("with the unit"),
    "mmol/L" : MessageLookupByLibrary.simpleMessage("mmol/L"),
    "moderates Risiko" : MessageLookupByLibrary.simpleMessage("moderate risk"),
    "msgAccessTokenHint" : m10,
    "msgBasalInfo" : m11,
    "msgBasalInfo1" : m12,
    "msgBasalrateDay" : m13,
    "msgBasalrateProfile" : m14,
    "msgBolusInsulin" : m15,
    "msgCV" : m16,
    "msgCalculatingDay" : m17,
    "msgCalibration" : m18,
    "msgCarbBolusInsulin" : m19,
    "msgCarbs" : m20,
    "msgCatheterDays" : m21,
    "msgChangedEntry" : m22,
    "msgCheckUser" : m23,
    "msgColumns" : m24,
    "msgCorrectBolusInsulin" : m25,
    "msgCount" : m26,
    "msgDaySum" : m27,
    "msgDuration" : m28,
    "msgEndDateHint" : m29,
    "msgFactorEntry" : m30,
    "msgFormsText" : m31,
    "msgGVIBad" : m32,
    "msgGVIGood" : m33,
    "msgGVINone" : m34,
    "msgGVIVeryGood" : m35,
    "msgGlucTime" : m36,
    "msgHYPER" : m37,
    "msgHYPERInfo" : m38,
    "msgHYPO" : m39,
    "msgHYPOInfo" : m40,
    "msgHigh" : m41,
    "msgHistorical" : m42,
    "msgHypoTitle" : m43,
    "msgISF" : m44,
    "msgKH" : m45,
    "msgKHBE" : m46,
    "msgKW" : m47,
    "msgLegendTDD" : m48,
    "msgLoadingData" : m49,
    "msgLoadingDataFor" : m50,
    "msgLogMicroBolus" : m51,
    "msgLogOverride" : m52,
    "msgLogSMB" : m53,
    "msgLogTempBasal" : m54,
    "msgLogTempBasalAbsolute" : m55,
    "msgLogTempTarget" : m56,
    "msgLow" : m57,
    "msgMBG" : m58,
    "msgMEAN" : m59,
    "msgMEANInfo" : m60,
    "msgNamedProfile" : m61,
    "msgNoNameHelp" : m62,
    "msgPGSBad" : m63,
    "msgPGSGood" : m64,
    "msgPGSVeryBad" : m65,
    "msgPGSVeryGood" : m66,
    "msgProfileSwitch" : m67,
    "msgProfileSwitchDuration" : m68,
    "msgReadingsInMinutes" : m69,
    "msgReadingsPerDay" : m70,
    "msgReadingsPerHour" : m71,
    "msgReservoirDays" : m72,
    "msgSMBInsulin" : m73,
    "msgSensorDays" : m74,
    "msgStandardLimits" : m75,
    "msgStartDateHint" : m76,
    "msgStdAbw" : m77,
    "msgTOR" : m78,
    "msgTORInfo" : m79,
    "msgTarget" : m80,
    "msgTargetArea" : m81,
    "msgTargetValue" : m82,
    "msgTimeOfDay24" : m83,
    "msgTimeOfDayAM" : m84,
    "msgTimeOfDayPM" : m85,
    "msgTooMuchProfiles" : m86,
    "msgTooMuchProfilesPrefix" : m87,
    "msgValidFrom" : m88,
    "msgValidRange" : m89,
    "msgValidTo" : m90,
    "msgValuesAbove" : m91,
    "msgValuesBelow" : m92,
    "msgValuesIn" : m93,
    "msgValuesNorm" : m94,
    "msgValuesNormHigh" : m95,
    "msgValuesNormLow" : m96,
    "msgValuesVeryHigh" : m97,
    "msgValuesVeryLow" : m98,
    "ok" : MessageLookupByLibrary.simpleMessage("ok"),
    "sehr geringes Risiko" : MessageLookupByLibrary.simpleMessage("very low risk"),
    "tl;dr" : MessageLookupByLibrary.simpleMessage("tl;dr"),
    "verwerfen" : MessageLookupByLibrary.simpleMessage("discard"),
    "vom Benutzer wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("Are you sure?"),
    "wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("really be deleted?"),
    "zu Vergleichszwecken (z.B. Arzt)" : MessageLookupByLibrary.simpleMessage("for comparison purposes (e.g. doctor)"),
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("Avg. Basal per day"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("Avg. Bolus per day"),
    "Ø ICR/Stunde" : MessageLookupByLibrary.simpleMessage("Avg. ICR/Hour"),
    "Ø ISF/Stunde" : MessageLookupByLibrary.simpleMessage("Avg. ISF/Hour"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("Avg. Insulin per day"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("Avg Insulinratio"),
    "Ø KH pro Mahlzeit" : MessageLookupByLibrary.simpleMessage("Avg. carbs per day"),
    "Ø KH pro Tag" : MessageLookupByLibrary.simpleMessage("Avg. Carbs per day"),
    "Ø Microbolus pro Tag" : MessageLookupByLibrary.simpleMessage("Avg. Microbolus per day"),
    "Ø Zuckerwert" : MessageLookupByLibrary.simpleMessage("Avg. Glucose"),
    "Überprüfe Zugriff auf Nightscout ..." : MessageLookupByLibrary.simpleMessage("Checking access to Nightscout ..."),
    "Übersetzungen korrigiert" : MessageLookupByLibrary.simpleMessage("Corrected translations"),
    "日本の" : MessageLookupByLibrary.simpleMessage("日本の")
  };
}
