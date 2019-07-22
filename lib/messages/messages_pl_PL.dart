// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl_PL locale. All the
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
  get localeName => 'pl_PL';

  static m0(value) => "Baza dobowa (${value})";

  static m1(value) => "Baza dobowa (nominalna z profilu) (${value})";

  static m2(value) => "Insulina z bolusów (${value})";

  static m3(value) => "Bolus posiłkowy (${value})";

  static m4(value) => "Węglowodany (${value}g)";

  static m5(count, txt) => "${Intl.plural(count, zero: 'brak danych', one: '(${txt} dzień na zestaw infuzyjny)', other: '(${txt} dni na zestaw infuzyjny)')}";

  static m6(name, from, to) => "${name} ${from} => ${to}";

  static m7(url) => "Sprawdzanie dostępu do ${url}...";

  static m8(value) => "Bolus korekcyjny (${value})";

  static m9(value) => "${Intl.plural(value, zero: 'No value', one: '1 value', other: '${value} values')}";

  static m10(value) => "${value} dni";

  static m11(beg, end) => "${beg} - ${end}";

  static m12(max) => "zły (powyżej ${max})";

  static m13(min, max) => "dobry (od ${min} do ${max})";

  static m14(min) => "niedostępne (poniżej ${min})";

  static m15(min, max) => "bardzo dobry (od ${min} do ${max})";

  static m16(unit) => "Intensity HYPER\n[${unit} x min²]";

  static m17(unit) => "The intensity of hyperglycaemia per day (values greater than or equal to ${unit}).";

  static m18(unit) => "Intensität HYPO\n[${unit} x min²]";

  static m19(unit) => "The intensity of hypoglycaemia per day (values less than or equal to ${unit}).";

  static m20(value) => "Wysoki ${value}";

  static m21(value) => "Historical ${value}";

  static m22(unit) => "??? Insulin Sensitivity Factors (ISF) 1 IU reduces BG by X ${unit}";

  static m23(value) => "${value}g";

  static m24(value) => "g węglowodanów (${value})";

  static m25(value) => "Dzienna Dawka Insuliny (DDI) (${value})";

  static m26(error, stacktrace) => "Błąd pobierania danych: ${error} ${stacktrace}";

  static m27(date) => "Pobierz dane dla ${date}...";

  static m28(value) => "Nisko ${value}";

  static m29(unit) => "Average glucose\n[${unit}]";

  static m30(hba1c) => "The mean glycemic value in specified period.";

  static m31(min, max) => "zły (od ${min} do ${max})";

  static m32(min, max) => "dobry (od ${min} do ${max})";

  static m33(max) => "bardzo zły (powyżej ${max})";

  static m34(min) => "wyśmienity (poniżej ${min})";

  static m35(oldName, newName) => "Zmiana profilu - ${oldName} => ${newName}";

  static m36(howMany, fmt) => "${Intl.plural(howMany, zero: 'brak pomiarów', one: '1 pomiar na minutę', other: '${fmt} pomiarów na minutę')}";

  static m37(howMany, fmt) => "${Intl.plural(howMany, zero: 'brak odczytów', one: '1 odczyt na dzień', other: '${fmt} odczytów na dzień')}";

  static m38(howMany, fmt) => "${Intl.plural(howMany, zero: 'brak pomiarów', one: '1 pomiar na godzinę', other: '${fmt} pomiarów na godzinę')}";

  static m39(count, txt) => "${Intl.plural(count, zero: 'brak danych', one: '(${txt} dzień na zbiorniczek)', other: '(${txt} dni na zbiorniczek)')}";

  static m40(value) => "SMB (${value})";

  static m41(count, txt) => "${Intl.plural(count, zero: 'brak danych', one: '(${txt} dzień na sensor)', other: '(${txt} dni na sensor)')}";

  static m42(value) => "(SD ${value})";

  static m43(min, max) => "The time per day in minutes in which the values are outside the range ${min} to ${max}.";

  static m44(unit) => "Zakres docelowy glikemii ${unit}";

  static m45(min, max, units) => "Zakres docelowy (${min} - ${max} ${units})";

  static m46(value) => "Wartość docelowa";

  static m47(time) => "${time}";

  static m48(time) => "${time} przed południem";

  static m49(time) => "${time}";

  static m50(begDate) => "obowiązuje od ${begDate}";

  static m51(begDate, endDate) => "obowiązuje od ${begDate} do ${endDate}";

  static m52(endDate) => "obowiązuje do ${endDate}";

  static m53(high) => "Odczyty powyżej ${high}";

  static m54(low) => "Odczyty poniżej ${low}";

  static m55(low, high) => "Odczyty między ${low} i ${high}";

  static m56(low, high) => "Target area (${low} - ${high})";

  static m57(value) => "High Values (${value})";

  static m58(value) => "Low Values (${value})";

  static m59(value) => "Very High Values ( > ${value})";

  static m60(value) => "Very Low Values (< ${value})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "0,0 bis 2,0" : MessageLookupByLibrary.simpleMessage("0,0 to 2,0"),
    "1 Stunde" : MessageLookupByLibrary.simpleMessage("1 Hour"),
    "1.0.0 - 20.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.0 - 20/10/2018"),
    "1.0.1 - 23.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.1 - 23/10/2018"),
    "1.0.2 - 23.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.2 - 23/10/2018"),
    "1.0.3 - 26.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.3 - 26/10/2018"),
    "1.0.4 - 28.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.4 - 28/10/2018"),
    "1.1.0 - 09.11.2018" : MessageLookupByLibrary.simpleMessage("1.1.0 - 09/11/2018"),
    "1.1.1 - 19.11.2018" : MessageLookupByLibrary.simpleMessage("1.1.1 - 19/11/2018"),
    "1.1.2 - 08.01.2019" : MessageLookupByLibrary.simpleMessage("1.1.2 - 01/08/2019"),
    "1.2.0 - 21.01.2019" : MessageLookupByLibrary.simpleMessage("1.2.0 - 01/21/2019"),
    "1.2.1 - 22.01.2019" : MessageLookupByLibrary.simpleMessage("1.2.1 - 01/22/2019"),
    "1.2.10 - 18.04.2019" : MessageLookupByLibrary.simpleMessage("1.2.10 - 04/18/2019"),
    "1.2.11 - 17.05.2019" : MessageLookupByLibrary.simpleMessage("1.2.11 - 17/05/2019"),
    "1.2.2 - 24.01.2019" : MessageLookupByLibrary.simpleMessage("1.2.2 - 01/24/2019"),
    "1.2.3 - 04.02.2019" : MessageLookupByLibrary.simpleMessage("1.2.3 - 02/04/2019"),
    "1.2.4 - 12.02.2019" : MessageLookupByLibrary.simpleMessage("1.2.4 - 12/02/2019"),
    "1.2.5 - 25.03.2019" : MessageLookupByLibrary.simpleMessage("1.2.5 - 25/03/2019"),
    "1.2.6 - 27.03.2019" : MessageLookupByLibrary.simpleMessage("1.2.6 - 27/03/2019"),
    "1.2.7 - 28.03.2019" : MessageLookupByLibrary.simpleMessage("1.2.7 - 28/03/2019"),
    "1.2.8 - 11.04.2019" : MessageLookupByLibrary.simpleMessage("1.2.8 - 11/04/2019"),
    "1.2.9 - 15.04.2019" : MessageLookupByLibrary.simpleMessage("1.2.9 - 15/04/2019"),
    "1.3.0 - xx.07.2019" : MessageLookupByLibrary.simpleMessage("1.3.0 - xx/07/2019"),
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("10% - 90% wartości"),
    "15 Minuten" : MessageLookupByLibrary.simpleMessage("15 Minutes"),
    "2,1 bis 3,0" : MessageLookupByLibrary.simpleMessage("2,1 to 3,0"),
    "25%" : MessageLookupByLibrary.simpleMessage("25%"),
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("25% - 75% wartości"),
    "3,1 bis 4,0" : MessageLookupByLibrary.simpleMessage("3,1 to 4,0"),
    "30 Minuten" : MessageLookupByLibrary.simpleMessage("30 Minutes"),
    "4,1 bis 4,5" : MessageLookupByLibrary.simpleMessage("4,1 to 4,5"),
    "5 Minuten" : MessageLookupByLibrary.simpleMessage("5 Minutes"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "Absturz behoben, der auftrat, wenn kein passendes Profil für einen Zeitpunkt gefunden werden konnte" : MessageLookupByLibrary.simpleMessage("Fixed a crash that occurred when no matching profile could be found for a given time"),
    "Acht" : MessageLookupByLibrary.simpleMessage("Eight"),
    "Aktuelle Periode" : MessageLookupByLibrary.simpleMessage("Current period"),
    "Als ersten Tag der Woche festlegen" : MessageLookupByLibrary.simpleMessage("Define as first day of week"),
    "Anmelden" : MessageLookupByLibrary.simpleMessage("Zaloguj się"),
    "Anmeldung erfolgreich" : MessageLookupByLibrary.simpleMessage("Zalogowano pomyślnie"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("Dostosowanie"),
    "Anzahl Ampullen" : MessageLookupByLibrary.simpleMessage("Ilość zbiorniczków"),
    "Anzahl Katheter" : MessageLookupByLibrary.simpleMessage("Ilość zestawów infuzyjnych"),
    "Anzahl Messungen" : MessageLookupByLibrary.simpleMessage("Ilość pomiarów"),
    "Anzahl Sensoren" : MessageLookupByLibrary.simpleMessage("Ilość sensorów CGM"),
    "Anzahl der Sensoren zur Analyse hinzugefügt" : MessageLookupByLibrary.simpleMessage("Added number of sensors to analysis"),
    "Auf der Analyseseite kann statt der Anzahl der Werte bei den Zielbereichen jetzt die Standardabweichung der Werte im Zielbereich angezeigt werden." : MessageLookupByLibrary.simpleMessage("Odchylenie standardowe wartości w obszarze docelowym może być teraz wyświetlane na stronie analizy zamiast ilości odczytów CGM."),
    "Auf der Analyseseite werden nun auch GVI und PGS ausgegeben." : MessageLookupByLibrary.simpleMessage("Analiza strony pokazuje teraz również wskaźniki GVI i PGS."),
    "Auf der Analyseseite wird jetzt auch die Standardabweichung aller Werte der Periode angezeigt." : MessageLookupByLibrary.simpleMessage("Teraz także odchylenie standardowe wszystkich wartości okresu pojawi się na stronie analizy."),
    "Auf der Profilseite wurde die Spalte für die Werte von ICR verbreitert." : MessageLookupByLibrary.simpleMessage("Increased the width of column for ICR on the profilepage."),
    "Aufsummierte Werte" : MessageLookupByLibrary.simpleMessage("Wartości zsumowane"),
    "Ausgewertete Tage" : MessageLookupByLibrary.simpleMessage("Dni objętych raportem"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("Analiza statystyczna"),
    "Basal" : MessageLookupByLibrary.simpleMessage("Dawka podstawowa (baza)"),
    "Basal mit zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Dawka podstawowa (baza) z dwoma miejscami po przecinku"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("Dawka podstawowa (bazowa)"),
    "Basalrate\nIE / Stunde" : MessageLookupByLibrary.simpleMessage("Dawka bazowa (baza) j/godz."),
    "Behandlungen" : MessageLookupByLibrary.simpleMessage("Terapia"),
    "Bei Tagesgrafiken und Wochengrafiken gibt es jetzt die Möglichkeit 1, 2, 4, 8 oder 16 Grafiken auf einer Seite zu platzieren." : MessageLookupByLibrary.simpleMessage("In daily graphics and weekly graphics there is now the possibility to place 1, 2, 4, 8 or 16 images on a page."),
    "Bei der Berechnung der Kohlenhydrate werden weitere Datensätze berücksichtigt" : MessageLookupByLibrary.simpleMessage("Additional data is used for the calculation of carbohydrates"),
    "Beim Auslesen des Profils ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("Wystąpił błąd podczas odczytu profilu Nightscout."),
    "Beim Erzeugen des PDF ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("Wystąpił błąd podczas tworzenia pliku PDF."),
    "Beim Laden der Daten wird das entsprechende Datumsformat zur Anzeige verwendet" : MessageLookupByLibrary.simpleMessage("When loading the data, the corresponding date format is used for display of progress"),
    "Benutzer können ein User-Token angeben, um sich mit geschützten Nightscout-Instanzen zu verbinden" : MessageLookupByLibrary.simpleMessage("Users can specify a user token to connect to protected nightscout instances"),
    "Benutzer können nun gelöscht werden" : MessageLookupByLibrary.simpleMessage("Users can now be deleted"),
    "Benutzerdaten" : MessageLookupByLibrary.simpleMessage("Dane użytkownika"),
    "Benutzerdaten werden nun verschlüsselt im Browser gespeichert" : MessageLookupByLibrary.simpleMessage("User data is now stored encrypted in the browser"),
    "Berechnete IE für Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Calculated U for carbs"),
    "Berechnete IE für Kohlenhydrate anzeigen" : MessageLookupByLibrary.simpleMessage("Show calculated U for carbs"),
    "Bereite Daten vor..." : MessageLookupByLibrary.simpleMessage("Obróbka danych..."),
    "Bestätigung" : MessageLookupByLibrary.simpleMessage("Potwierdzenie"),
    "Bis" : MessageLookupByLibrary.simpleMessage("To"),
    "Bisher fehlende Summenwerte in der Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Added missing totals in daily statistics"),
    "Bitte einen Zeitraum wählen." : MessageLookupByLibrary.simpleMessage("Wybierz okres."),
    "Bitte überprüfe die Aktivierung der Wochentage unter dem Monat" : MessageLookupByLibrary.simpleMessage("Please check activation of the days of the week below the month"),
    "Blutwerte werden jetzt auch bei mmol/L in den Grafiken korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Glikemia jest wyświetlana poprawnie także w mmol/L na wykresach."),
    "Bolus" : MessageLookupByLibrary.simpleMessage("Bolus"),
    "Bolusarten anzeigen" : MessageLookupByLibrary.simpleMessage("Show bolus types"),
    "CGP" : MessageLookupByLibrary.simpleMessage("CGP"),
    "Comprehensive Glucose Pentagon" : MessageLookupByLibrary.simpleMessage("Comprehensive Glucose Pentagon"),
    "Das \"Comprehensive Glucose Pentagon\" (Umfassendes Glukose Fünfeck) wurde als eigenes PDF und als Zusatzseite zur Tagesgrafik und Wochengrafik hinzugefügt. Es handelt sich hierbei um eine Darstellung von fünf Messgrössen, mit deren Hilfe sich die Qualität der Therapie ermitteln und mit anderen vergleichen lässt. Auf den Ausdrucken wird ein Verweis auf die zugrunde liegende Abhandlung ausgegeben." : MessageLookupByLibrary.simpleMessage("The \"Comprehensive Glucose Pentagon\" has been added as a separate PDF and as an additional page to the daily and weekly chart. It is a representation of five measures, with the help of which the quality of the therapy can be determined and compared with others. On the printouts, a reference is output to the underlying paper."),
    "Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr." : MessageLookupByLibrary.simpleMessage("Clicking on the message area no longer closes it."),
    "Das Control für die Eingabe des Zeitraums wurde angepasst, damit es auf schmalen Display auch korrekt dargestellt wird." : MessageLookupByLibrary.simpleMessage("??? Przyciski wyboru okresu zostały dostosowane tak, aby były poprawnie wyświetlan na wąskich wyświetlaczach."),
    "Das Enddatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("Data końcowa jest niepoprawna"),
    "Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag." : MessageLookupByLibrary.simpleMessage("The basal rate PDF was incorrect if there was not a value for each hour."),
    "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren." : MessageLookupByLibrary.simpleMessage("Plik PDF został wygenerowany. Jeśli nie został wyświetlony, prawdopodobnie włączona jest blokada wyskakujących okienek. Proszę zmienić ustawienia przeglądarki."),
    "Das Profil-PDF wird nun im Querformat erzeugt, um auch Profile mit vielen Einträgen für die Parameter brauchbar darstellen zu können." : MessageLookupByLibrary.simpleMessage("The profile PDF is now created in landscape format so that profiles with many entries for the parameters can also be displayed."),
    "Das Startdatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("Data początkowa jest niepoprawna"),
    "Das User-Token wird nur benötigt, wenn der Zugriff in Nightscout über AUTH_DEFAULT_ROLES eingeschränkt wurde" : MessageLookupByLibrary.simpleMessage("Token użytkownika jest wymagane tylko jeśli dostęp do strony Nightscout został ograniczony w zmiennej AUTH_DEFAULT_ROLES"),
    "Das gelbe Fünfeck stellt den Wertebereich des angegebenen Zeitraums dar." : MessageLookupByLibrary.simpleMessage("The yellow pentagon represents the value range of the specified period."),
    "Das grüne Fünfeck stellt den Wertebereich eines gesunden Menschen ohne Diabetes dar." : MessageLookupByLibrary.simpleMessage("The green pentagon represents the value range of a healthy person without diabetes."),
    "Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen." : MessageLookupByLibrary.simpleMessage("Data for the glucose values ​​with incorrect date format are read out correctly."),
    "Daten verschiedener Uploader werden nun besser interpretiert." : MessageLookupByLibrary.simpleMessage("Dane z różnych źródeł są teraz lepiej interpretowane."),
    "Daten, die von xDrip als sync markiert wurden, werden bei der Auswertung ignoriert." : MessageLookupByLibrary.simpleMessage("Dane, które zostały oznaczone jako \"sync\" przez xDrip+ są ignorowane podczas analizy."),
    "Datenschutzerklärung" : MessageLookupByLibrary.simpleMessage("Polityka prywatności"),
    "Datum" : MessageLookupByLibrary.simpleMessage("Data"),
    "Dauer der Insulinaktivität (DIA)" : MessageLookupByLibrary.simpleMessage("Czas trwania aktywnej insuliny (DIA)"),
    "Dauer der Kohlenhydrataktivität" : MessageLookupByLibrary.simpleMessage("Czas wchłaniania węglowodanów"),
    "Der Fehler im Profil, der dazu führte, dass die Werte für ISF und Zielbereich falsch umgerechnet werden, wurde behoben." : MessageLookupByLibrary.simpleMessage("Fixed the bug in the profile that caused the ISF and target range values to be incorrectly converted."),
    "Der Zeitraum enthält keine auswertbaren Tage" : MessageLookupByLibrary.simpleMessage("The period contains no evaluable days"),
    "Der prognostische glykämische Risikoparameter stellt das Risiko von Langzeitkomplikationen dar (bisher nicht durch Studien belegt)." : MessageLookupByLibrary.simpleMessage("The Prognostic Glycemic Riskparameter represents the risk of long-term complications (not proven by studies up to now)."),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("Niemiecki"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("Data diagnozy CT1"),
    "Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an" : MessageLookupByLibrary.simpleMessage("The analysis page has been redesigned and now displays headings above the areas"),
    "Die Angabe DIA auf der Profilseite wird nun mit zwei Nachkommastellen angezeigt." : MessageLookupByLibrary.simpleMessage("DIA on the profile page is now displayed with two decimal places."),
    "Die Aufteilung auf mehrere PDF-Dateien funktioniert jetzt besser." : MessageLookupByLibrary.simpleMessage("The division into multiple PDF files works better now."),
    "Die Auswahl des Zeitraums ist nun flexibler. Die Auswahl erfolgt in einem Dialog, der die eingestellte Sprache berücksichtigt. Mit der Auswahl der vorbelegten Bereiche (Heute, Letzte Woche, usw.) wird festgelegt, dass beim nächsten Aufruf das aktuelle Datum als Grundlage für den Bereich verwendet wird. Wenn der Bereich direkt im Kalender festgelegt wird, dann gilt dieser beim nächsten Aufruf so wie er festgelegt wurde. Standardmässig ist der erste Tag der Woche jetzt ein Montag. Dieser kann aber durch Anklicken des Wochentags in der Titelzeile des Monats auf die eigene Präferenz festgelegt werden. Die Eingabe der Datumsfelder erfolgt in der Form, die der Sprache entspricht (Tag.Monat.Jahr für deutsch, Monat/Tag/Jahr für englisch)." : MessageLookupByLibrary.simpleMessage("The selection of the period is now more flexible. The selection is done in a dialog that takes the language into account. Selecting the default ranges (today, last week, etc.) sets the current date as the basis for the range at the next call. If the range is set directly in the calendar, then it will be applied the next time as defined. By default, the first day of the week is now a Monday. However, this can be set to your own preference by clicking on the day of the week in the title bar of the month. The date fields are entered in the form that corresponds to the language (day.month.year for German, month/day / year for English)."),
    "Die Balken für das Bolusinsulin in der Tagesgrafik werden nun entsprechend dem Maximalwert an Bolusinsulin an dem Tag skaliert." : MessageLookupByLibrary.simpleMessage("The bars for the bolus insulin in the daily graph are now scaled according to the maximum bolus insulin at that day."),
    "Die Basalratenprofile für den Tag werden nun auch anhand der Behandlungsdaten ermittelt. Profilwechsel werden in der Tagesgrafik angezeigt und sollten ab dem Zeitpunkt des Wechsels auch eine korrekte Basalratenanpassung anzeigen." : MessageLookupByLibrary.simpleMessage("The basalrate profiles for the day are now also determined based on the treatment data. Profile changes are displayed in the daily graph and should also show a correct basal rate adjustment from the moment of change."),
    "Die Berechnung der PDF-Grössen wurde korrigiert, so dass nun weniger PDFs erstellt werden, wenn sie aufgrund der Grösse aufgeteilt werden." : MessageLookupByLibrary.simpleMessage("The calculation of the PDF sizes has been corrected, so that fewer PDFs are created when they are divided due to the size."),
    "Die Berechnung der Summenzeile auf der Seite Tagesstatistik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("The calculation of the totals row on the Daily Statistics page has been corrected."),
    "Die Berechnung der tatsächlichen Basalrate wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Kalkulacja aktualnego schematu dawki podstawowej (bazy) zostały poprawiona."),
    "Die Berechnung des täglichen Insulins berücksichtigt nun auch die SMB." : MessageLookupByLibrary.simpleMessage("The calculation of the daily insulin now also takes the SMB into account."),
    "Die Buttons für die vergangenen Perioden werden nicht angezeigt, wenn kein Zeitraum oder kein PDF ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("The Buttons for past periods will not be displayed if no period or PDF is selected."),
    "Die Daten, die Du hier eingibst, werden normalerweise im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. In diesem Fall werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("Dane, które wpisujesz tutaj będą przechowywane w pamięci podręcznej przeglądarki. Są to zarówno dane związane z wyświetlaniem witryny, oraz te, które zostały pobrane ze strony Nightscout. Pliki cookie i dane użytkownika nie są przechowywane nigdzie, poza komputerem użytkownika. Połączenie ze stroną Nightscout i import danych są dokonywane jednorazowo w trakcie generowania pliku PDF, a dane nie są zapisywane w innym miejscu. Wygenerowany PDF jest gotowym dokumentem, który można przekazać diabetologowi lub doradcy w poradni cukrzycowej celem omówienia postępów w terapii."),
    "Die Ermittlung der Einheit (mg/dl oder mmol/l) wird nun flexibler gehandhabt, so dass auch Leerzeichen in der entsprechenden Einstellung nicht mehr zu einer Fehlinterpretation führen." : MessageLookupByLibrary.simpleMessage("The determination of the unit (mg/dl or mmol/l) is now handled more flexibly, so that even spaces in the corresponding setting no longer lead to a misinterpretation."),
    "Die Farben für Dialoge und Scrollbars wurden angepasst." : MessageLookupByLibrary.simpleMessage("Kolory dla okien dialogowych i pasków przewijania zostały dopasowane."),
    "Die Genauigkeit der Insulindosierung wird aus dem Profil ermittelt. Der Wert mit der höchsten Genauigkeit legt fest, mit wieviel Nachkommastellen Basalratenwerte angezeigt werden." : MessageLookupByLibrary.simpleMessage("Dokładność dawkowania insuliny jest uzależniona od ustawień profilu Nightscout. Wartość z najwyższą precyzją określa, ile miejsc po przecinku ma być wyświetlane w przypadku wartości dawek podstawowych (baz)."),
    "Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit." : MessageLookupByLibrary.simpleMessage("The glucose graph of the daily graphs has been freed from missing data."),
    "Die Icons auf einigen Buttons waren zu nahe am Text" : MessageLookupByLibrary.simpleMessage("The icons on some buttons were too close to the text"),
    "Die Kohlenhydratangaben auf der Tagesgrafik werden jetzt ohne den Zusatz KH ausgegeben." : MessageLookupByLibrary.simpleMessage("The carbohydrate information on the daily graph is now output without the suffix KH."),
    "Die Links zu Nightscout und den Reports von Nightscout im Menü funktionieren jetzt auch richtig, wenn ein Usertoken angegeben wurde." : MessageLookupByLibrary.simpleMessage("Łącza menu do profilu i raportów Nightscout działają teraz poprawnie, również w przypadku używania tokenu użytkownika."),
    "Die Microboli des Minimed 600 Uploaders werden jetzt auch ermittelt und in der Analyse ausgegeben, wenn sie vorhanden sind." : MessageLookupByLibrary.simpleMessage("The microboli of the Minimed 600 Uploader are now also identified and output in the analysis, if they exist."),
    "Die Mischung von zwei Seiten auf einer PDF-Seite, die manchmal vorkam, wurde behoben." : MessageLookupByLibrary.simpleMessage("The mixture of two pages on one PDF page, which sometimes occurred has been fixed."),
    "Die Möglichkeit für Beta-Funktionen wurde entfernt; die Betaversion ist nun hier zu finden:" : MessageLookupByLibrary.simpleMessage("The possibility for beta functions has been removed; the beta version is now available at:"),
    "Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird" : MessageLookupByLibrary.simpleMessage("The ability to display the URL in the title bar has been removed since the current user or his URL is now displayed directly"),
    "Die Positionierung der Notizen in der Tagesgrafik wurde korrigiert, so dass sie näher an der Uhrzeit stehen. Die Striche wurden so verkürzt, dass sie nur noch bis zum unteren Rand der Grafik gehen und nicht mehr durch die Wertetabelle." : MessageLookupByLibrary.simpleMessage("The positioning of the notes in the daily chart has been corrected so that they are closer to the time. The strokes were shortened so that they go only to the bottom of the graph and not through the table of values."),
    "Die Profilseite wurde angepasst, damit Einträge für 24 Stunden auf eine Seite passen." : MessageLookupByLibrary.simpleMessage("Strona Profil została dostosowana tak, aby odczyty dla 24 godzin mieściły się na jednej stronie."),
    "Die Reihenfolge der Formulare kann nun verändert werden. Dazu einfach das Handle auf der linken Seite des Buttons für das Formular anklicken, festhalten und an die Stelle ziehen, vor der es ausgedruckt werden soll." : MessageLookupByLibrary.simpleMessage("Można teraz zmieniać kolejność raportów w pliku PDF. Po prostu kliknij na uchwycie po lewej stronie przycisku na formularzu, przytrzymaj go i przeciągnij go aby uzyskać żądaną kolejność."),
    "Die Seiten Profil und Basalrate zeigen nun bei einem Profil, das nur temporär während eines Tages aktiv war den Zeitraum an, in dem es aktiv war." : MessageLookupByLibrary.simpleMessage("The pages profile and basalrate for a profile that was temporarily active during one day now only show this timespan."),
    "Die Skalen an den Grafiken wurden überarbeitet. Sie zeigen jetzt für mmol/L ganzzahlige Werte an und die Einheiten wurden entfernt. Diese stehen nur noch unten an der Grafik. Das betrifft die täglichen Grafiken, wöchentlichen Grafiken und das Glukose Percentil Diagramm." : MessageLookupByLibrary.simpleMessage("The scales on the graphics have been updated. Now they show whole numbers for mmol/L and the units have been removed. These are shown at the bottom of the graphics. This includes the daily graphics, weekly graphics and the glucose percentile chart."),
    "Die Spalten auf der Profilseite wurden korrigiert, damit auch längere Zeitnamen (z.B. in spanisch) Platz finden." : MessageLookupByLibrary.simpleMessage("The columns on the page have been corrected to accommodate longer time names (e.g. in Spanish)."),
    "Die Standardabweichung wird jetzt auch bei mmol/L korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Odchylenie standardowe jest teraz wyświetlane poprawnie podczas korzystania mmol/L."),
    "Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an" : MessageLookupByLibrary.simpleMessage("The daily statistics now display mmol/l values ​​correctly"),
    "Die URL wurde noch nicht festgelegt" : MessageLookupByLibrary.simpleMessage("Adres URL nie został jeszcze określony"),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("Adres URL nie został jeszcze określony."),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("Witryna wykorzystuje Javascript, aby prawidłowo realizować swoje zadania. Podczas generowania pliku PDF wykorzystywane są Javascript i PHP."),
    "Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt" : MessageLookupByLibrary.simpleMessage("The values ​​for the default target range on the analysis page are now calculated correctly"),
    "Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools, wie dieses hier, auf die Daten zugreifen dürfen.<br><br>Wenn diese URL geschützt ist, muss ausserdem das UserToken korrekt definiert sein." : MessageLookupByLibrary.simpleMessage("Określony adres URL nie jest osiągalny. Jeśli adres URL jest poprawny, to może być ze względu na ustawienia Nightscout. W Włącz zmiennej musi być słowo \"cors\", tak, że zewnętrznych narzędzi, takich jak ten, można uzyskać dostęp do danych. <br> <br> Jeśli ten adres URL jest chroniony, API Secret i UserToken musi również być zdefiniowane poprawnie."),
    "Die eigenen Grenzwerte auf der Analyseseite in mmol/L werden nun korrekt berechnet." : MessageLookupByLibrary.simpleMessage("The own limits on the analysis page in mmol/L are now calculated correctly."),
    "Die fehlerhafte Platzierug der blutigen Werte bei mmol/L in der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Fixed the erroneous placement of the bloody values in the daily graph when using mmol/L."),
    "Die fehlerhafte Zentrierung der Auswahlbuttons wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Wrong alignment of buttons on mainpage has been fixed."),
    "Die glykämische Variabilität stellt die Streuung der Werte um den glykämischen Mittelwert herum in Prozent dar." : MessageLookupByLibrary.simpleMessage("Glycemic variability represents the variation of values around the glycemic average value in percent."),
    "Die mittlerweile überflüssige Option zur Darstellung der Basalrate mit zwei Nachkommastellen wurde aus der Tagesgrafik entfernt." : MessageLookupByLibrary.simpleMessage("Removed the obsolete option for the decimals of the basalrate from the daily graphics."),
    "Die teilweise falsch zugewiesenen Grenzwerte für die Bereiche (niedrig, normal, hoch) wurden korrigiert." : MessageLookupByLibrary.simpleMessage("The partially misallocated limits for the areas (low, normal, high) have been corrected."),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("Ta strona jest używana do generowania raportów diabetologicznych w formie PDF na podstawie danych pobranych ze strony Nightscout. W związku z tym konieczne jest nadanie uprawnień do odczytu tych danych. Tak długo, jak dane te nie będą dostępne, Nightscout Reporter nie jest w stanie wygenerować raportu dla Ciebie."),
    "Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden." : MessageLookupByLibrary.simpleMessage("Added this page. It is displayed each time Nightscout Reporter starts, if it has not been displayed in the current version. In addition, it can be called up again in the burgermenu."),
    "Dieser Regler legt fest, wie gross eine Ausgabe maximal werden darf, bevor sie auf mehrere PDF-Dateien aufgeteilt wird. Wenn bei Erstellung eines PDFs ein leeres Fenster angezeigt wird, dann hilft es normalerweise, diesen Regler weiter nach links zu bewegen." : MessageLookupByLibrary.simpleMessage("Suwak ten określa maksymalny rozmiar pojedynczej części raportu PDF. Skorzystaj z niego, jeśli wyświetlane jest puste okno w przeglądarce podczas tworzenia pliku PDF."),
    "Diverse Abstürze beim Auslesen der Daten bereinigt" : MessageLookupByLibrary.simpleMessage("Fixed various crashes when reading data"),
    "Eigene Grenzwerte" : MessageLookupByLibrary.simpleMessage("Indywidualny zakres docelowy "),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die letzten Tage bestimmter Monate nicht im Kalender-Control angezeigt wurden." : MessageLookupByLibrary.simpleMessage("Fixed a bug that caused the last days of certain months not to be displayed in the calendar control."),
    "Ein Fehler wurde behoben, der in der Tagesgrafik dazu führte, dass Texte in der Legende andere Texte überschrieben haben." : MessageLookupByLibrary.simpleMessage("A bug has been fixed that caused the daily graphics to overwrite texts in the legend."),
    "Ein Fehler wurde wahrscheinlich behoben, der dazu führt, dass bei manchen Profilen der Wert für DIA nicht korrekt ausgelesen wurde." : MessageLookupByLibrary.simpleMessage("An error has probably been fixed that causes some profiles to miss the value for DIA incorrectly."),
    "Ein Link zur Facebookseite von Nightscout Reporter wurde im Menü hinzugefügt." : MessageLookupByLibrary.simpleMessage("A link to the Facebook page of Nightscout Reporter was added to the menu."),
    "Eine" : MessageLookupByLibrary.simpleMessage("One"),
    "Einige Browser sind nicht in der Lage PDF Dateien anzuzeigen, die eine bestimmte Grösse überschreiten. Da das von verschiedenen Faktoren abhängt, die sich nicht ohne Weiteres automatisch ermitteln lassen, gibt es die Möglichkeit, statt einer grossen PDF Datei, die nicht angezeigt werden kann, mehrere kleinere PDF Dateien zu erzeugen, die der Browser anzeigen kann. In den Einstellungen und hier kann diese Grösse festgelegt werden. Diese Seite hier wird nur angezeigt, wenn das PDF aufgeteilt werden musste. Wenn nur ein PDF erzeugt wurde, dann wird es direkt angezeigt." : MessageLookupByLibrary.simpleMessage("Niektóre przeglądarki nie są w stanie wyświetlać plików PDF, które przekraczają określoną wielkość. Ponieważ zależy to od różnych czynników, których nie można łatwo ustalić automatycznie, istnieje możliwość wygenerowania kilku mniejszych plików PDF, które mogą być wyświetlane przez przeglądarki zamiast jednego, dużego pliku PDF - z którym przeglądarka ma problem. Ten rozmiar można określić w ustawieniach oraz właśnie tutaj. Ta strona zostaje wyświetlona tylko wtedy, gdy plik PDF musiał zostać podzielony. Jeśli jednak uda się utworzyć jeden plik PDF to zostanie on wyświetlony bezpośrednio."),
    "Einige Formulare können nun mit Parametern konfiguriert werden; hierzu den Pfeil am rechten Rand des Formularbuttons anklicken und im aufgeklappten Bereich die entsprechenden Einstellungen vornehmen; der Pfeil erscheint erst, wenn das Formular zum Ausdruck markiert wurde" : MessageLookupByLibrary.simpleMessage("Some forms can now be configured with parameters; click on the arrow on the right side of the formbutton and make the appropriate settings in the opened area; the arrow will not appear until the form has been marked for printout"),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("Ustawienia"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("Ustawienia strony"),
    "Einstellungen von Release-Version übernehmen" : MessageLookupByLibrary.simpleMessage("Przenieś ustawienia z wersji stabilnej"),
    "English (GB)" : MessageLookupByLibrary.simpleMessage("Angielski (Wielka Brytania)"),
    "English (USA)" : MessageLookupByLibrary.simpleMessage("Angielski (USA)"),
    "Erzeuge PDF..." : MessageLookupByLibrary.simpleMessage("Tworzenie pliku PDF..."),
    "Es gibt in den Einstellungen eine Option, das PDF herunterladen zu lassen, statt es im Browser direkt anzeigen zu lassen. Das wird für Browser wie Edge benötigt." : MessageLookupByLibrary.simpleMessage("There is an option in the settings to download the PDF instead of having it displayed directly in the browser. This is needed for browsers like Edge."),
    "Es gibt in den Einstellungen eine neue Option, um den letzten in Nightscout gespeicherten Glukosewert in der Titelzeile anzeigen zu lassen. Wenn diese Option aktiviert ist, wird der aktuelle Wert, das Alter des Wertes, der Trendpfeil und die Differenz zum vorherigen Wert rechts in der Titelzeile angezeigt. Diese Anzeige wird jede Minute aktualisiert, solange das Browserfenster den Eingabefokus besitzt. Wenn es diesen nicht hat, wird die Aktualisierung angehalten und der Wert ausgeblendet, um nicht unnötig Systemresourcen zu belasten." : MessageLookupByLibrary.simpleMessage("There is a new option in the settings to display the last glucose value stored in Nightscout in the title bar. If this option is enabled, the current value, the age of the value, the trend arrow and the difference to the previous value is displayed at the right side of the title bar. This display is updated every minute as long as your browser window has the input focus. If it hasn\'t the focus, the update is stopped and the value is hidden to avoid unnecessary burden on system resources."),
    "Es gibt jetzt auch die Möglichkeit, Nightscout Reporter in europäischem Englisch darzustellen. Der Unterschied zum amerikanischen Englisch besteht derzeit lediglich im Datumsformat (gb: dd/MM/yyyy, us: MM/dd/yyyy)." : MessageLookupByLibrary.simpleMessage("There is now also the possibility to use Nightscout Reporter in European English. The difference to American English currently exists only in the date format (gb: dd/MM/yyyy, us: MM/dd/yyyy)."),
    "Es gibt jetzt die Möglichkeit, PDFs vergangener Zeiträume zu erzeugen, ohne den Zeitraum anpassen zu müssen. Oberhalb des Buttons zur PDF-Erzeugung gibt es zwei Buttons, welche die PDFs für eine frühere Periode erzeugen. Der untere der beiden Buttons erzeugt die Vorperiode, der obere die vorletzte Periode. Auf den Buttons wird das Startdatum und das Enddatum angezeigt. Wenn z.B. als Zeitraum \"Letzte 2 Wochen\" gewählt wurde, dann wird mit dem unteren Button der Zeitraum von zwei Wochen beginnend vor vier Wochen erzeugt und mit dem oberen Button der Zeitraum von zwei Wochen beginnend vor sechs Wochen. Auf diese Art kann man recht einfach Vergleichsberichte erzeugen, um die Entwicklung der Werte zu erkennen. Auf den Seiten wird für diese Ausdrucke in der Kopfzeile das Wort \"Historisch 1\", bzw. \"Historisch 2\" oberhalb des Zeitraums ausgegeben. So kann man beim Vergleich der Werte die Daten voneinander unterscheiden." : MessageLookupByLibrary.simpleMessage("There is now the ability to generate PDFs of past periods without having to adjust the period. there are two buttons for earlier periods above the button for creating PDF which generate the PDFs. The lower of the two buttons generates the previous period, the upper one the penultimate period. The buttons show the start date and the end date. If the period \"last 2 weeks\" is selected, then the lower button creates the period from two weeks starting four weeks ago and the upper button the period from two weeks starting six weeks ago. In this way, it is easy to generate comparison reports to detect the development of the values. The words \"Historical 1\" or \"Historical 2\" are placed above the period on the pages for these printouts in the header. So you can distinguish the data from each other when comparing the sheets."),
    "Es ist jetzt möglich, die Wochentage festzulegen, die im Zeitraum berücksichtigt werden sollen. Die entsprechenden Tage werden bei der Auswahl des Zeitraums mit den Buttons unterhalb des Monats festgelegt. Auf den PDFs werden Zeiträume dann zusätzlich mit der Information versehen, welche Wochentage berücksichtigt werden, wenn es nicht alle sind." : MessageLookupByLibrary.simpleMessage("It is now possible to set the days of the week that should be used in the period. When selecting a period the corresponding days are set with the buttons below the month. On the PDFs, the periods are shown with the days of the week that are used, if at least one is missing."),
    "Es sind keine Daten für den Ausdruck vorhanden" : MessageLookupByLibrary.simpleMessage("Brak danych do analizy"),
    "Español" : MessageLookupByLibrary.simpleMessage("Hiszpański"),
    "Facebook Seite" : MessageLookupByLibrary.simpleMessage("Facebook page"),
    "Fehler beim Laden der Daten" : MessageLookupByLibrary.simpleMessage("Błąd pobierania danych"),
    "Fehler werden besser abgefangen und mit sinnvollem Text ersetzt." : MessageLookupByLibrary.simpleMessage("Errors are better intercepted and replaced with more meaningful text."),
    "Fehlerhafte Ausgabe der Blutzuckerwerte in der täglichen Grafik korrigiert." : MessageLookupByLibrary.simpleMessage("Fixed incorrect output of blood glucose levels in the daily graph."),
    "Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt" : MessageLookupByLibrary.simpleMessage("Faulty values ​​are no longer considered in the evaluation of the graphics; these are recognized by the value \"NONE\" in the data field \"direction\""),
    "Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt." : MessageLookupByLibrary.simpleMessage("Error message when loading profiles without start date removed."),
    "Für die Tagesgrafik gibt es jetzt eine Option, um die Aufsummierung nahe beieinander liegender Werte umzuschalten." : MessageLookupByLibrary.simpleMessage("There is now an option for the daily graphics to toggle the accumulation of close values."),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("Data urodzin"),
    "Ges." : MessageLookupByLibrary.simpleMessage("Suma"),
    "Geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("przewidywana HbA1c"),
    "Glukose Pentagon erzeugen" : MessageLookupByLibrary.simpleMessage("Create glucose pentagon"),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Wykres percentyl"),
    "Glukose im Zielbereich" : MessageLookupByLibrary.simpleMessage("Poziom glukozy w zakresie docelowym"),
    "Glukose zu hoch" : MessageLookupByLibrary.simpleMessage("Zbyt wysoki poziom glukozy"),
    "Glukose zu niedrig" : MessageLookupByLibrary.simpleMessage("Zbyt niski poziom glukozy"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("Krzywa cukrowa"),
    "Glykämischer Variabilitäts Index (GVI)" : MessageLookupByLibrary.simpleMessage("Wskaźnik Zmienności Glikemicznej (GVI)"),
    "Grafiken pro Seite" : MessageLookupByLibrary.simpleMessage("Graphics per page"),
    "Gross" : MessageLookupByLibrary.simpleMessage("Duży"),
    "Gruppierung der Zeiten" : MessageLookupByLibrary.simpleMessage("Grouping of times"),
    "Heute" : MessageLookupByLibrary.simpleMessage("Dzisiaj"),
    "Hinweise auf Nightscout in der Kopf- und Fusszeile des PDFs ausblenden" : MessageLookupByLibrary.simpleMessage("Ukryj tekst o Nightscout w nagłówku i stopce dokumentu PDF"),
    "Hohe Basalraten werden jetzt besser dargestellt." : MessageLookupByLibrary.simpleMessage("High basal rates are now better represented."),
    "Höchster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Najwyższa wartość w okresie"),
    "IE" : MessageLookupByLibrary.simpleMessage("j"),
    "Im Kalender-Control kann kein Datum nach dem aktuellen Tag mehr ausgewählt werden." : MessageLookupByLibrary.simpleMessage("The calendar control can no longer select a date after the current day."),
    "Im Kalender-Control wird ein eingestellter Bereich (Heute, Letzte Woche, etc.) jetzt korrekt auf den aktuellen Tag bezogen." : MessageLookupByLibrary.simpleMessage("In the calendar control, a defined period (today, last week, etc.) is now correctly based on the current day."),
    "Im Kalender-Control wird jetzt der Monat des entsprechenden Datums angezeigt, wenn eines der Felder Von oder bis den Fokus erhält." : MessageLookupByLibrary.simpleMessage("The calendar control now displays the month of the corresponding date when one of the fields From or To receives the focus."),
    "Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert" : MessageLookupByLibrary.simpleMessage("Numbers and dates in the PDF are formatted according to the selected language"),
    "Im Profil werden jetzt die richtigen Einheiten verwendet (mg/dL oder mmol/l)." : MessageLookupByLibrary.simpleMessage("The profile now uses the correct units (mg/dL or mmol/l)."),
    "Impressum" : MessageLookupByLibrary.simpleMessage("Twórcy"),
    "In Firefox ist es jetzt auch möglich, die Hauptseite zu scrollen, wenn sie länger ist, als das Browserfenster." : MessageLookupByLibrary.simpleMessage("Możliwe jest przewijanie strony głównej w przeglądarce Firefox, jeśli jest dłuższa niż okno przeglądarki."),
    "In den Einstellungen gibt es einen Regler, der festlegt, wie gross die erzeugten PDF-Dateien maximal sein dürfen. Wenn nur ein leeres PDF erzeugt wird, dann sollte dieser Regler weiter nach links geschoben werden, um die Dateigrösse zu verringern." : MessageLookupByLibrary.simpleMessage("W ustawieniach jest suwak, który definiuje, jak duże mogą być wynikowe pliki PDF. W przypadku utworzeniu pustego PDF, suwak ten należy przesunąć w lewo, aby zmniejszyć rozmiary plików."),
    "In der Analyse können die Prozentzahlen für die Zielbereiche mit Nachkommazahl angezeigt werden. Das verringert die Differenz zu 100%, wenn man sie zusammenzählt. Der verbleibende Rest sind Rundungsdifferenzen." : MessageLookupByLibrary.simpleMessage("In the analysis the percentages for the target areas can be shown with decimal places. This reduces the difference to 100% if you sum it up. The remainder is because of rounding differences."),
    "In der Auswertung gibt es eine neue Option, um den Standardbereich feiner abzustufen. Dort werden dann zusätzlich sehr hohe Werte und sehr niedrige Werte angezeigt." : MessageLookupByLibrary.simpleMessage("There is a new option in the analysis to fine-tune the standard range. Very high values and very low values are displayed with this option."),
    "In der Auswertung können die Angaben für Material (Katheter, Sensor, Ampulle) mit Nachkommastellen angezeigt werden." : MessageLookupByLibrary.simpleMessage("In the analysis, the information for material (catheter, sensor, ampoule) can be displayed with decimal places."),
    "In der Legende unter der Tagesgrafik wird die Summe der Kohlenhydrate für den Tag angezeigt." : MessageLookupByLibrary.simpleMessage("The legend below the daily graph shows the sum of carbohydrates for the day."),
    "In der Tagesgrafik gibt es eine Option, die berechneten IE für aufgenommene Kohlenhydrate anzeigen zu lassen. Der Wert, der unmittelbar unter den Kohlenhydraten angezeigt wird, entspricht dem Bolus, der zu diesem Zeitpunkt für diese Kohlenhydratmenge abgegeben werden sollte. Dieser Wert kann niedriger als der tatsächlich abgegebene Wert ausfallen, weil für die Insulinabgabe noch IOB und andere Faktoren berücksichtigt werden." : MessageLookupByLibrary.simpleMessage("In the daily graph, there is an option to display the calculated IE for ingested carbohydrates. The value displayed below the carbs is the bolus that should be delivered for that amount of carbohydrate at that time. This value may be lower than the actual value delivered, because IOB and other factors are taken into account for insulin delivery."),
    "In der Tagesgrafik gibt es eine Option, mit dem man die verschiedenen Arten der Boli kenntlich machen lassen kann. Wenn diese Option gesetzt ist, wird ein Bolus, der zu einer Mahlzeit abgegeben wurde mit einer anderen Farbe markiert, als ein Bolus zur Korrektur. In der Legende werden dann Korrektur-, Mahlzeiten-Boli und SMB getrennt angezeigt." : MessageLookupByLibrary.simpleMessage("There is an option in the daily graphics there that makes it possible to distinguish the different types of bolus. If this option is set, a bolus that was given for a meal is marked with a different color than the bolus given as correction. In the legend there are also separate values for meal-bolus, correction-bolus and SMB."),
    "In der Tagesgrafik gibt es eine Option, mit der man sich die erfassten Trainingsdaten anzeigen lassen kann. Diese werden dann am unteren Rand über der Tabelle der Glukosewerte eingefügt." : MessageLookupByLibrary.simpleMessage("In the daily graphis there is an option, that adds the exercise data to the graphic. It will be displayed at the bottom of the graphic right above the glucosetable."),
    "In der Tagesgrafik kann die Anzeige der SMB nun ausgeblendet werden." : MessageLookupByLibrary.simpleMessage("Wyświetlanie SMB może zostać wyłączone w raporcie dziennym."),
    "In der Tagesgrafik werden die Insulinangaben jetzt kleiner dargestellt, wenn die Basalrate eine Genauigkeit von mehr als 2 Nachkommastellen hat." : MessageLookupByLibrary.simpleMessage("If the basalrate has more than 2 decimals the insulin values are smaller on the daily graphics."),
    "In der Tagesgrafik werden jetzt auch Blutzuckermessungen angezeigt. Sie werden als rote Quadrate dargestellt und die zugehörigen Werte in der Tabelle unterhalb der Grafik werden ebenfalls mit roter Schrift angezeigt." : MessageLookupByLibrary.simpleMessage("The daily chart now also displays blood glucose values. They are displayed as red squares and the associated values ​​in the table below the graphic are also displayed in red."),
    "In der Tagesgrafik werden nun SMBs auch angezeigt, wenn die Option für die Darstellung von Insulin akitivert wurde. Man kann festlegen, ob die SMBs an der Glukosekurve oder am Zielwert angezeigt werden." : MessageLookupByLibrary.simpleMessage("SMBs are now also displayed in the daily graphics if the option for displaying insulin has been activated. You can specify whether the SMBs are displayed on the glucose curve or at the target value."),
    "In der Tagesgrafik werden nun auch Kohlenhydratkorrekturen angezeigt." : MessageLookupByLibrary.simpleMessage("Carbohydrate corrections are now displayed in the daily graph."),
    "In der Tagesgrafik werden nun auch Reservoirwechsel angezeigt." : MessageLookupByLibrary.simpleMessage("Reservoir changes are now also shown in the daily graph."),
    "In der Tagesgrafik werden nun auch bei Anzeige des Zielwertes die temporären Ziele berücksichtigt." : MessageLookupByLibrary.simpleMessage("In the daily graph, the temporary targets are now also taken into account when displaying the target value."),
    "In der Tagesgrafik werden nun der geschätzte HbA1C und die prozentuale Menge an Bolusinsulin und Basalinsulin für den Tag angezeigt. Diese Anzeige erfolgt innerhalb der Legende, weshalb diese aktiviert sein muss, damit die Werte angezeigt werden." : MessageLookupByLibrary.simpleMessage("The daily chart now shows the estimated A1C and the percentage of bolus insulin and basal insulin for the day. These values are displayed within the legend, which is why it must be enabled for the values to appear."),
    "In der Tagesgrafik wird jetzt eine Tabelle mit halbstündigen Glukosewerten eingeblendet angezeigt. Diese kann über einen Parameter ausgeschaltet werden." : MessageLookupByLibrary.simpleMessage("The daily graphics now displays a chart with half-hourly glucose values. This can be switched off via a parameter."),
    "In der Tagesgraphic werden jetzt Insulinwerte und Kohlenhydratwerte zusammengefasst, wenn es mehrere innerhalb einer Stunde gibt. Die Balken werden nach wie vor für jeden Wert einzeln ausgegeben. Auf diese Art sollte es keine überlappende Ausgabe der Werte mehr geben. Die zusammengefassten Werte werden in eckigen Klammern ausgegeben, um anzuzeigen, dass hier Werte aufsummiert wurden." : MessageLookupByLibrary.simpleMessage("The daily graphic now sums up insulin values and carbohydrate values when there are several values within an hour. The bars are still drawn individually for each value. In this way there should be no overlapping output of the values anymore. The summarized values are displayed in square brackets to indicate that values have been summed up here."),
    "In der Tagesstatistik und in den täglichen Grafiken werden jetzt zum Datum die Wochentage mit angezeigt." : MessageLookupByLibrary.simpleMessage("In the daily statistics and in the daily graphics, the days of the week are now displayed with the day of the week."),
    "In der Tagesstatistik wurde die Spalte Varianzkoeffizient hinzugefügt (VarK)." : MessageLookupByLibrary.simpleMessage("In the daily statistics, the column Coefficient of variation has been added (CV)."),
    "Info-Linien bis zur Kurve zeichnen" : MessageLookupByLibrary.simpleMessage("Poprowadź linie pomocnicze do notatek"),
    "Initiale Version, alles ist neu!" : MessageLookupByLibrary.simpleMessage("Initial version, everything is new!"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("Insulina"),
    "Insulin Kohlenhydrate Verhältnis (ICR)" : MessageLookupByLibrary.simpleMessage("Przelicznik węglowodanowy IC"),
    "Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE" : MessageLookupByLibrary.simpleMessage("Przelicznik węglowodanowy (IC) X g węglowodanów na 1j insuliny"),
    "Insulin Sensitivitäts Faktoren (ISF)" : MessageLookupByLibrary.simpleMessage("Wskaźnik wrażliwości na insulinę (ISF)"),
    "Insulin-Quelle" : MessageLookupByLibrary.simpleMessage("Insulin-source"),
    "Ja" : MessageLookupByLibrary.simpleMessage("Tak"),
    "Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember" : MessageLookupByLibrary.simpleMessage("Styczeń|Luty|Marzec|Kwiecień|Maj|Czerwiec|Lipiec|Sierpień|Wrzesień|Październik|Listopad|Grudzień"),
    "Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez" : MessageLookupByLibrary.simpleMessage("Sty|Lut|Mar|Kwi|Maj|Cze|Lip|Sie|Wrz|Paź|Lis|Gru"),
    "Japanisch" : MessageLookupByLibrary.simpleMessage("Japanese"),
    "Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Zmiana zestawu infuzyjnego"),
    "Keine" : MessageLookupByLibrary.simpleMessage("Brak"),
    "Keine Änderung" : MessageLookupByLibrary.simpleMessage("Bez zmian"),
    "Klein" : MessageLookupByLibrary.simpleMessage("Mały"),
    "Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Węglowodany"),
    "Kohlenhydrate und Bolusinsulin werden jetzt in den täglichen Grafiken angezeigt" : MessageLookupByLibrary.simpleMessage("Carbohydrates and bolus insulin are now displayed in the daily graphs"),
    "Legende" : MessageLookupByLibrary.simpleMessage("Legenda"),
    "Legende für Katheter- und Sensorwechsel zur Tagesgrafik hinzugefügt." : MessageLookupByLibrary.simpleMessage("Added legend for catheter and sensor changes to the daily chart."),
    "Letzte 2 Tage" : MessageLookupByLibrary.simpleMessage("Ostatnie 2 dni"),
    "Letzte 2 Wochen" : MessageLookupByLibrary.simpleMessage("Ostatnie 2 tygodnie"),
    "Letzte 3 Monate" : MessageLookupByLibrary.simpleMessage("Ostatnie 3 miesiące"),
    "Letzte 3 Tage" : MessageLookupByLibrary.simpleMessage("Ostatnie 3 dni"),
    "Letzte 3 Wochen" : MessageLookupByLibrary.simpleMessage("Ostatnie 3 tygodnie"),
    "Letzte Woche" : MessageLookupByLibrary.simpleMessage("Ostatni tydzień"),
    "Letzten Messwert in der Titelzeile anzeigen" : MessageLookupByLibrary.simpleMessage("Show last glucose value in titlebar"),
    "Letzter Monat" : MessageLookupByLibrary.simpleMessage("Ostatni miesiąc"),
    "Man kann jetzt mehrere Benutzer anlegen. Das ist nützlich, um mehrere Nightscout-Instanzen auszuwerten (z.B. für Ärzte, Betreuer oder den Entwickler dieser Software)" : MessageLookupByLibrary.simpleMessage("You can now create multiple users. This is useful for analyzing multiple nightscout instances (e.g. for doctors, caregivers or the developer of this software)"),
    "Material mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("??? Liczba miejsc po przecinku"),
    "Max" : MessageLookupByLibrary.simpleMessage("Max"),
    "Median" : MessageLookupByLibrary.simpleMessage("Mediana"),
    "Mess-\nwerte" : MessageLookupByLibrary.simpleMessage("Wartości\n"),
    "Min" : MessageLookupByLibrary.simpleMessage("Min"),
    "Mittel-\nwert" : MessageLookupByLibrary.simpleMessage("Średnia"),
    "Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|Sonntag" : MessageLookupByLibrary.simpleMessage("Poniedziałek|Wtorek|Środa|Czwartek|Piątek|Sobota|Niedziela"),
    "Mo|Di|Mi|Do|Fr|Sa|So" : MessageLookupByLibrary.simpleMessage("Pn|Wt|Śr|Cz|Pt|Sb|Nd"),
    "Nahe zusammen liegende Werte aufsummieren" : MessageLookupByLibrary.simpleMessage("Zsumuj sąsiadujące wartości"),
    "Name" : MessageLookupByLibrary.simpleMessage("Nazwa"),
    "Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat." : MessageLookupByLibrary.simpleMessage("Name, birthday, insulin and the start date of diabetes can now be left blank without any negative impact on the presentation in the PDF."),
    "Nein" : MessageLookupByLibrary.simpleMessage("Nie"),
    "Neue Option im Profil, um fortlaufende Zeiten mit gleichen Werten zu einem Eintrag zusammen zu fassen." : MessageLookupByLibrary.simpleMessage("New option in the profile to combine consecutive times with the same values into a single entry."),
    "Neuer Parameter für die Tagesgrafik, der festlegt, ob die Linien für die Notizen unter der Grafik bis zur Glukosekurve gezeichnet werden sollen oder nicht." : MessageLookupByLibrary.simpleMessage("New daily graph parameter that determines whether or not to draw the lines for the notes under the graph up to the glucose curve."),
    "Neues PDF für eine Wochengrafik hinzugefügt, auf der die Glukosekurven der Woche übereinander gelegt werden." : MessageLookupByLibrary.simpleMessage("Added a new PDF for a weekly graphics where the week\'s glucose curves are shown all at once."),
    "Neueste Woche zuerst" : MessageLookupByLibrary.simpleMessage("Newest week first"),
    "Neuester Tag zuerst" : MessageLookupByLibrary.simpleMessage("Od najnowszych"),
    "Niedrigster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Najniższa wartość w okresie"),
    "Nightscout Berichte" : MessageLookupByLibrary.simpleMessage("Raporty Nightscout"),
    "Nightscout Reporter ist nun auch grösstenteils in Spanisch und Polnisch verfügbar. Entsprechende Buttons wurden dem Hauptmenü hinzugefügt. Danke an die fleissigen Übersetzer :)." : MessageLookupByLibrary.simpleMessage("Most of Nightscout Reporter is now translated to Spanish and Polish. Corresponding buttons have been added to the main menu. Thanks to the diligent translators :)."),
    "Nightscout Reporter kann nun auch in Japanisch verwendet werden." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter can now be used in Japanese."),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("Strona Nightscout"),
    "Normal" : MessageLookupByLibrary.simpleMessage("W zakresie"),
    "Notiz" : MessageLookupByLibrary.simpleMessage("Notatka"),
    "Notizen" : MessageLookupByLibrary.simpleMessage("Notatki"),
    "Ok" : MessageLookupByLibrary.simpleMessage("OK"),
    "PDF anzeigen" : MessageLookupByLibrary.simpleMessage("Generuj plik PDF"),
    "PDF erneut erzeugen" : MessageLookupByLibrary.simpleMessage("Ponownie generuj plik PDF"),
    "PDF für Profildaten" : MessageLookupByLibrary.simpleMessage("PDF - profil Nightscout"),
    "PDF herunterladen (bei einigen Browsern benötigt)" : MessageLookupByLibrary.simpleMessage("Pobierz PDF (wymagane dla niektórych przeglądarek)"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("Otwórz PDF w tym samym oknie"),
    "PGR" : MessageLookupByLibrary.simpleMessage("PGR"),
    "Patient Glykämischer Status (PGS)" : MessageLookupByLibrary.simpleMessage("Status Glikemiczny Pacjenta (PGS)"),
    "Pausiert" : MessageLookupByLibrary.simpleMessage("Paused"),
    "Polski" : MessageLookupByLibrary.simpleMessage("Polski"),
    "Problem auf GitHub melden" : MessageLookupByLibrary.simpleMessage("Zgłoś błąd na GitHub"),
    "Profil" : MessageLookupByLibrary.simpleMessage("Profil"),
    "Profil-Basalrate" : MessageLookupByLibrary.simpleMessage("Dawka podstawowa (baza) z profilu Nightscout"),
    "Profileinstellungen" : MessageLookupByLibrary.simpleMessage("Ustawienia profilu Nightscout"),
    "Profilwechsel" : MessageLookupByLibrary.simpleMessage("Zmiana profilu"),
    "Protokoll" : MessageLookupByLibrary.simpleMessage("Log"),
    "Quelle: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)" : MessageLookupByLibrary.simpleMessage("Source: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)"),
    "Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse." : MessageLookupByLibrary.simpleMessage("Order of PDF pages changed - Percentile Diagram now comes after analysis."),
    "Reservoirwechsel" : MessageLookupByLibrary.simpleMessage("Zmiana zbiorniczka z insuliną"),
    "SMB" : MessageLookupByLibrary.simpleMessage("SMB"),
    "SMB Werte anzeigen" : MessageLookupByLibrary.simpleMessage("Pokaż wartość SMB"),
    "SMB an der Kurve platzieren" : MessageLookupByLibrary.simpleMessage("Umieść SMB na krzywej glikemii"),
    "Schliessen" : MessageLookupByLibrary.simpleMessage("Zamknij"),
    "Schliessen Button im Nachrichtenbereich hinzugefügt." : MessageLookupByLibrary.simpleMessage("Close button added in the message area."),
    "Sechzehn" : MessageLookupByLibrary.simpleMessage("Sixteen"),
    "Sensorwechsel" : MessageLookupByLibrary.simpleMessage("Zmiana sensora CGM"),
    "Soll der Benutzer mit der URL" : MessageLookupByLibrary.simpleMessage("??? Should the user with the URL"),
    "Spalte HbA1c" : MessageLookupByLibrary.simpleMessage("Kolumna HbA1c"),
    "Spalte HbA1c zu Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Added column A1C to daily statistics"),
    "Spalte Messwerte" : MessageLookupByLibrary.simpleMessage("Kolumna ilość odczytów"),
    "Spalte Standardabweichung" : MessageLookupByLibrary.simpleMessage("Kolumna odchylenie standardowe"),
    "Spalte Variationskoeffizient" : MessageLookupByLibrary.simpleMessage("Kolumna współczynnik zmienności"),
    "Spalten Perzentile" : MessageLookupByLibrary.simpleMessage("Kolumna percentyl"),
    "Spaltenbreite der Informationen in der Analyse erhöht" : MessageLookupByLibrary.simpleMessage("Column width of the information in the analysis increased"),
    "Speichern" : MessageLookupByLibrary.simpleMessage("Zapisz"),
    "Standardabweichung" : MessageLookupByLibrary.simpleMessage("Odchylenie standardowe"),
    "Standardabweichung statt Anzahl" : MessageLookupByLibrary.simpleMessage("Odchylenie standardowe zamiast liczby odczytów CGM"),
    "Standardbereich mit feinerer Abstufung" : MessageLookupByLibrary.simpleMessage("Standard range with finer gradation"),
    "Standardgrenzwerte" : MessageLookupByLibrary.simpleMessage("Indywidualny zakres docelowy "),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("SD"),
    "Stunden" : MessageLookupByLibrary.simpleMessage("godziny"),
    "Summen für Bolus Insulin, Basalrate für den Tag und Basalrate aus dem Profil zur Tagesgrafik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Sums for bolus insulin, basal rate for the day, and basalrate from the profile added to the daily chart"),
    "Symbole (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Ikonki (zestaw infuzyjny, itp.)"),
    "TDD" : MessageLookupByLibrary.simpleMessage("DDI"),
    "Tabelle mit Glukosewerten" : MessageLookupByLibrary.simpleMessage("Tabela wartości odczytów CGM"),
    "Tages-Basalrate" : MessageLookupByLibrary.simpleMessage("Dzienna dawka podstawowa (baza)"),
    "Tagesanalyse" : MessageLookupByLibrary.simpleMessage("Analiza dobowa"),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("Wykres dobowy"),
    "Tagesgrafikparameter zur Anzeige der Legende" : MessageLookupByLibrary.simpleMessage("??? Dzienne graficzny parametrów wyświetlania notatki"),
    "Tagesgrafikparameter zur Anzeige von Notizen" : MessageLookupByLibrary.simpleMessage("??? Dzienne graficzny parametrów wyświetlania notatki"),
    "Tagesgrafikparameter zur umgekehrten Sortierung hinzugefügt. Die Tage werden damit beginnend mit dem höchsten Datum ausgegeben." : MessageLookupByLibrary.simpleMessage("Added daily graphic parameters for reverse sorting. The daily graphics are created starting with the highest date."),
    "Tagesnamen in Grafik anzeigen" : MessageLookupByLibrary.simpleMessage("Pokaż nazwy dni na wykresie"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("Statystyki dzienne"),
    "Temporäre Basalraten" : MessageLookupByLibrary.simpleMessage("Baza tymczasowa"),
    "Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt" : MessageLookupByLibrary.simpleMessage("Temporary basal rates with absolute values ​​are displayed correctly"),
    "Temporäre Ziele" : MessageLookupByLibrary.simpleMessage("Temporary Targets"),
    "Titelangaben für Datumsbereiche auf den PDFs vereinheitlicht" : MessageLookupByLibrary.simpleMessage("Title information for date ranges on the PDFs are unified"),
    "ToR [min/d]" : MessageLookupByLibrary.simpleMessage("ToR [min/d]"),
    "Training anzeigen" : MessageLookupByLibrary.simpleMessage("Show exercises"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("Czas"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("Czas"),
    "Unbegrenzt" : MessageLookupByLibrary.simpleMessage("Nieograniczony"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("URL strony Nightscout (np. https://xxx.herokuapp.com)"),
    "User-Token" : MessageLookupByLibrary.simpleMessage("Token użytkownika"),
    "VarK\nin %" : MessageLookupByLibrary.simpleMessage("??? CV in %"),
    "VarK [%]" : MessageLookupByLibrary.simpleMessage("CV [%]"),
    "Verbinde zu Google Drive..." : MessageLookupByLibrary.simpleMessage("Połącz z Dyskiem Google..."),
    "Verbinde zu Google..." : MessageLookupByLibrary.simpleMessage("Połącz z Google"),
    "Verbindung zu Google Drive herstellen" : MessageLookupByLibrary.simpleMessage("Połącz z Dyskiem Google"),
    "Verbindung zu Google Drive trennen" : MessageLookupByLibrary.simpleMessage("Odłącz od Dysku Google"),
    "Vergleich" : MessageLookupByLibrary.simpleMessage("Comparison"),
    "Version" : MessageLookupByLibrary.simpleMessage("Wersja"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("Dystrybucja"),
    "Vier" : MessageLookupByLibrary.simpleMessage("Four"),
    "Von" : MessageLookupByLibrary.simpleMessage("od"),
    "Vorherige Periode" : MessageLookupByLibrary.simpleMessage("Previous period"),
    "Vorletzte Periode" : MessageLookupByLibrary.simpleMessage("Penultimate period"),
    "Warum werde ich mit mehreren Buttons genervt, statt eine einzelne PDF angezeigt zu kriegen?" : MessageLookupByLibrary.simpleMessage("Dlaczego mój plik jest podzielony na kilka części? Wolę jeden plik PDF"),
    "Was bisher geschah..." : MessageLookupByLibrary.simpleMessage("Co się stało do tej pory..."),
    "Wenn Sonderzeichen in den Daten vorhanden sind (z.B. Smileys in den Notizen), führte das zu einem Absturz während der PDF-Erstellung. Das wurde behoben, indem diese Sonderzeichen aus der Ausgabe entfernt werden." : MessageLookupByLibrary.simpleMessage("Występowanie znaków specjalnych w danych wejściowych (np. emotikonek w informacjach dodatkowych) było przyczyną awarii podczas tworzenia plików PDF. Naprawiono ten błąd usuwając wszystkie znaki specjalne z danych wyjściowych."),
    "Wenn das erzeugte PDF zu gross wird, wird es nun auf mehrere PDF-Dateien aufgeteilt. In diesem Fall wird es nicht direkt geöffnet, sondern es wird eine Liste mit durchnummerierten Buttons angezeigt. Diese Buttons öffnen bei Betätigung das entsprechende PDF und erhalten einen Haken, um anzuzeigen, dass es geöffnet wurde. Das sollte es erleichtern, die PDFs nacheinander zu öffnen, weil normalerweise der Browser im Hintergrund verschwindet, wenn ein neues Fenster aufgemacht wird." : MessageLookupByLibrary.simpleMessage("Jeśli wygenerowany plik PDF jest zbyt duży, to zostanie podzielony na kilka mniejszych plików PDF. W takim przypadku nie będzie można go bezpośrednio otworzyć, lecz pojawi się lista ponumerowanych przycisków. Te przyciski umożliwiają pobranie odpowiedniego pliku PDF. Po pobraniu pliku pojawi się znacznik wskazujący, że dany plik został już pobrany. To powinno ułatwić otwieranie plików PDF, ponieważ zazwyczaj nowe okienko przeglądarki jest otwierane w tle."),
    "Wenn der Zeitraum leer ist, wird der Button für die Auswahl deutlich markiert und in dem Dialog zur Auswahl wird in der Titelzeile ein Hinweis darauf angezeigt." : MessageLookupByLibrary.simpleMessage("If the period is empty, the button for the selection is marked clearly and in the dialog to choose an indication appears in the title bar."),
    "Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet" : MessageLookupByLibrary.simpleMessage("If the thresholds in Nightscout (BG_TARGET_BOTTOM and BG_TARGET_TOP) are equal to 70 and 180, then the area for the default targets will be hidden on the analysis page"),
    "Wenn in den Einstellungen eine Verbindung zum Google-Konto hergestellt wird, werden die Cookies von Google verwendet und die Daten nicht mehr im localStorage des Browsers gespeichert, sondern im AppStorage auf Google Drive. Auf diese Art kann man die Daten zentralisiert verwalten und hat diese in jedem Browser zur Verfügung, der mit dem angegebenen Google Konto verbunden ist." : MessageLookupByLibrary.simpleMessage("??? Gdy ustawienia są połączone z kontem Google, Google cookie i dane znajduje się już w localStorage przeglądarki, ale w AppStorage na dysku Google. W ten sposób można centralnie zarządzać dane i masz to dostępne w dowolnej przeglądarce, podłączony do określonego konta Google."),
    "Wenn in den Einträgen Lücken von 15 Minuten oder mehr sind, führen diese zu einer Unterbrechung der Linie in der Tagesgrafik." : MessageLookupByLibrary.simpleMessage("If there are gaps in the entries of 15 minutes or more, there will also be a gap in the daily chart."),
    "Wenn in einem Profil mehr Zeiten erfasst wurden, als auf eine Seite passen, wurden diese fortlaufend in die nächste Seite hineingeschrieben. Jetzt wird an geeigneter Stelle eine neue Seite ausgegeben." : MessageLookupByLibrary.simpleMessage("If more times were recorded in a profile than fit on one page, they were overlaying the content of the next page. Now a new page is created as needed."),
    "Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt." : MessageLookupByLibrary.simpleMessage("If no data is available, blank pages will be generated with an appropriate hint."),
    "Willkommen" : MessageLookupByLibrary.simpleMessage("Witamy"),
    "Willkommen bei Nightscout Reporter!" : MessageLookupByLibrary.simpleMessage("Witamy w Nightscout Reporter!"),
    "Wochengrafik" : MessageLookupByLibrary.simpleMessage("Wykres tygodniowy"),
    "Zeilen mit gleichen Werten zusammenfassen" : MessageLookupByLibrary.simpleMessage("Łącz odczyty o tej samej wartości"),
    "Zeitraum" : MessageLookupByLibrary.simpleMessage("Wybierz okres"),
    "Zeitraum festlegen" : MessageLookupByLibrary.simpleMessage("Wybierz okres"),
    "Zeitzone" : MessageLookupByLibrary.simpleMessage("Strefa czasowa"),
    "Zielbereich" : MessageLookupByLibrary.simpleMessage("Zakres docelowy"),
    "Zielbereich mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Zakres docelowy z miejscem po przecinku"),
    "Zur Berechnung der Analyse, Tagesstatistik und Tagesgrafik wird nun die gleiche Datenbasis verwendet, so dass die Werte auf allen PDFs gleich sind." : MessageLookupByLibrary.simpleMessage("The same database is used to calculate the analysis, daily statistics and daily graphs so that the values are the same on all PDFs."),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("Dodatkowe funkcje"),
    "Zusätzliche Informationen zu den PDFs und im UI hinzugefügt" : MessageLookupByLibrary.simpleMessage("added additional information about the PDFs and in the UI"),
    "Zwei" : MessageLookupByLibrary.simpleMessage("Two"),
    "ab 4,6" : MessageLookupByLibrary.simpleMessage("from 4,6"),
    "bis" : MessageLookupByLibrary.simpleMessage("do"),
    "dd.MM.yyyy" : MessageLookupByLibrary.simpleMessage("dd.MM.yyyy"),
    "extrem hohes Risiko" : MessageLookupByLibrary.simpleMessage("extremely high risk"),
    "g / Stunde" : MessageLookupByLibrary.simpleMessage("g / godz."),
    "geringes Risiko" : MessageLookupByLibrary.simpleMessage("low risk"),
    "gesch. HbA1c" : MessageLookupByLibrary.simpleMessage("Szacowana HbA1c"),
    "hohes Risiko" : MessageLookupByLibrary.simpleMessage("high risk"),
    "https://nightscout-reporter.zreptil.de/beta" : MessageLookupByLibrary.simpleMessage("https://nightscout-reporter.zreptil.de/beta"),
    "mg/dL" : MessageLookupByLibrary.simpleMessage("mg/dL"),
    "mmol/L" : MessageLookupByLibrary.simpleMessage("mmol/L"),
    "moderates Risiko" : MessageLookupByLibrary.simpleMessage("moderate risk"),
    "msgBasalrateDay" : m0,
    "msgBasalrateProfile" : m1,
    "msgBolusInsulin" : m2,
    "msgCarbBolusInsulin" : m3,
    "msgCarbs" : m4,
    "msgCatheterDays" : m5,
    "msgChangedEntry" : m6,
    "msgCheckUser" : m7,
    "msgCorrectBolusInsulin" : m8,
    "msgCount" : m9,
    "msgDaySum" : m10,
    "msgFactorEntry" : m11,
    "msgGVIBad" : m12,
    "msgGVIGood" : m13,
    "msgGVINone" : m14,
    "msgGVIVeryGood" : m15,
    "msgHYPER" : m16,
    "msgHYPERInfo" : m17,
    "msgHYPO" : m18,
    "msgHYPOInfo" : m19,
    "msgHigh" : m20,
    "msgHistorical" : m21,
    "msgISF" : m22,
    "msgKH" : m23,
    "msgKHBE" : m24,
    "msgLegendTDD" : m25,
    "msgLoadingData" : m26,
    "msgLoadingDataFor" : m27,
    "msgLow" : m28,
    "msgMEAN" : m29,
    "msgMEANInfo" : m30,
    "msgPGSBad" : m31,
    "msgPGSGood" : m32,
    "msgPGSVeryBad" : m33,
    "msgPGSVeryGood" : m34,
    "msgProfileSwitch" : m35,
    "msgReadingsInMinutes" : m36,
    "msgReadingsPerDay" : m37,
    "msgReadingsPerHour" : m38,
    "msgReservoirDays" : m39,
    "msgSMBInsulin" : m40,
    "msgSensorDays" : m41,
    "msgStdAbw" : m42,
    "msgTORInfo" : m43,
    "msgTarget" : m44,
    "msgTargetArea" : m45,
    "msgTargetValue" : m46,
    "msgTimeOfDay24" : m47,
    "msgTimeOfDayAM" : m48,
    "msgTimeOfDayPM" : m49,
    "msgValidFrom" : m50,
    "msgValidRange" : m51,
    "msgValidTo" : m52,
    "msgValuesAbove" : m53,
    "msgValuesBelow" : m54,
    "msgValuesIn" : m55,
    "msgValuesNorm" : m56,
    "msgValuesNormHigh" : m57,
    "msgValuesNormLow" : m58,
    "msgValuesVeryHigh" : m59,
    "msgValuesVeryLow" : m60,
    "ok" : MessageLookupByLibrary.simpleMessage("OK"),
    "sehr geringes Risiko" : MessageLookupByLibrary.simpleMessage("very low risk"),
    "verwerfen" : MessageLookupByLibrary.simpleMessage("Odrzuć"),
    "wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("Czy na pewno chcesz usunąć?"),
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("Średnia dawka podstawowa dziennie"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("Średnia wartość bolusa dziennie"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("Średnia dobowa dawka insuliny"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("Średni przelicznik węglowodanowy"),
    "Ø KH pro Tag" : MessageLookupByLibrary.simpleMessage("Średnia ilość węglowodanów dziennie"),
    "Ø Microbolus pro Tag" : MessageLookupByLibrary.simpleMessage("Średnia wartość mikrobolusów dziennie"),
    "Ø Zuckerwert" : MessageLookupByLibrary.simpleMessage("Średnia glikemia"),
    "Überprüfe Zugriff auf Nightscout ..." : MessageLookupByLibrary.simpleMessage("Sprawdzam dostęp do Nightscout ..."),
    "Übersetzungen korrigiert" : MessageLookupByLibrary.simpleMessage("Corrected translations")
  };
}
