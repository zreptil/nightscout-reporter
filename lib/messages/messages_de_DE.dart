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

  static m0(startTag0, endTag0) => "Die Möglichkeit für Beta-Funktionen wurde entfernt; die Betaversion ist nun unter ${startTag0}https://nightscout-reporter.zreptil.de/beta${endTag0} zu finden";

  static m1(value) => "Basalrate für den Tag (${value})";

  static m2(value) => "Basalrate aus dem Profil (${value})";

  static m3(value) => "Bolus Insulin (${value})";

  static m4(value) => "Mahlzeiten Bolus (${value})";

  static m5(value) => "Kohlenhydrate (${value}g)";

  static m6(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} Tag pro Katheter)', other: '(${txt} Tage pro Katheter)')}";

  static m7(name, from, to) => "${name} geändert von ${from} auf ${to}";

  static m8(url) => "Überprüfe Zugriff auf ${url}...";

  static m9(value) => "Korrektur Bolus (${value})";

  static m10(value) => "${Intl.plural(value, zero: 'Kein Wert', one: '1 Wert', other: '${value} Werte')}";

  static m11(value) => "${value} Tage";

  static m12(beg, end) => "${beg} - ${end}";

  static m13(max) => "schlecht (grösser ${max})";

  static m14(min, max) => "gut (${min} bis ${max})";

  static m15(min) => "nicht vorhanden (kleiner ${min})";

  static m16(min, max) => "sehr gut (${min} bis ${max})";

  static m17(value) => "Hoch${value}";

  static m18(value) => "Historisch ${value}";

  static m19(unit) => "Insulin Sensitivitäts Faktoren (ISF)\n1 IE senkt BG um X ${unit}";

  static m20(value) => "${value}g";

  static m21(value) => "g KH (${value} BE)";

  static m22(value) => "Gesamtinsulin (${value})";

  static m23(error, stacktrace) => "Fehler beim Laden der Daten:\n${error}\n${stacktrace}";

  static m24(date) => "Lade Daten für ${date}...";

  static m25(value) => "Tief${value}";

  static m26(min, max) => "schlecht (${min} bis ${max})";

  static m27(min, max) => "gut (${min} bis ${max})";

  static m28(max) => "sehr schlecht (grösser ${max})";

  static m29(min) => "exzellent (kleiner ${min})";

  static m30(oldName, newName) => "Profilwechsel - ${oldName} => ${newName}";

  static m31(howMany, fmt) => "${Intl.plural(howMany, zero: 'Keine Messwerte vorhanden', one: '1 Messung pro Minute', other: 'Messung alle ${fmt} Minuten')}";

  static m32(howMany, fmt) => "${Intl.plural(howMany, zero: 'Keine Messwerte vorhanden', one: '1 Messung am Tag', other: '${fmt} Messungen am Tag')}";

  static m33(howMany, fmt) => "${Intl.plural(howMany, zero: 'Keine Messwerte vorhanden', one: '1 Messung pro Stunde', other: '${fmt} Messungen pro Stunde')}";

  static m34(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} Tag pro Ampulle)', other: '(${txt} Tage pro Ampulle)')}";

  static m35(value) => "SMB (${value})";

  static m36(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} Tag pro Sensor)', other: '(${txt} Tage pro Sensor)')}";

  static m37(value) => "(StdAbw ${value})";

  static m38(unit) => "Glukose-Zielbereich\n${unit}";

  static m39(min, max, units) => "Zielbereich (${min} - ${max} ${units})";

  static m40(value) => "Zielwert";

  static m41(time) => "${time} Uhr";

  static m42(time) => "${time} am";

  static m43(time) => "${time} pm";

  static m44(begDate) => "gültig ab ${begDate}";

  static m45(begDate, endDate) => "gültig von ${begDate} bis ${endDate}";

  static m46(endDate) => "gültig bis ${endDate}";

  static m47(high) => "Werte über ${high}";

  static m48(low) => "Werte unter ${low}";

  static m49(low, high) => "Werte zwischen ${low} und ${high}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "1.0.0 - 20.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.0 - 20.10.2018"),
    "1.0.1 - 23.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.1 - 23.10.2018"),
    "1.0.2 - 23.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.2 - 23.10.2018"),
    "1.0.3 - 26.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.3 - 26.10.2018"),
    "1.0.4 - 28.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.4 - 28.10.2018"),
    "1.1.0 - 09.11.2018" : MessageLookupByLibrary.simpleMessage("1.1.0 - 09.11.2018"),
    "1.1.1 - 19.11.2018" : MessageLookupByLibrary.simpleMessage("1.1.1 - 19.11.2018"),
    "1.1.2 - 08.01.2019" : MessageLookupByLibrary.simpleMessage("1.1.2 - 08.01.2019"),
    "1.2.0 - 21.01.2019" : MessageLookupByLibrary.simpleMessage("1.2.0 - 21.01.2019"),
    "1.2.1 - 22.01.2019" : MessageLookupByLibrary.simpleMessage("1.2.1 - 22.01.2019"),
    "1.2.10 - 18.04.2019" : MessageLookupByLibrary.simpleMessage("1.2.10 - 18.04.2019"),
    "1.2.11 - 17.05.2019" : MessageLookupByLibrary.simpleMessage("1.2.11 - 17.05.2019"),
    "1.2.2 - 24.01.2019" : MessageLookupByLibrary.simpleMessage("1.2.2 - 24.01.2019"),
    "1.2.3 - 04.02.2019" : MessageLookupByLibrary.simpleMessage("1.2.3 - 04.02.2019"),
    "1.2.4 - 12.02.2019" : MessageLookupByLibrary.simpleMessage("1.2.4 - 12.02.2019"),
    "1.2.5 - 25.03.2019" : MessageLookupByLibrary.simpleMessage("1.2.5 - 25.03.2019"),
    "1.2.6 - 27.03.2019" : MessageLookupByLibrary.simpleMessage("1.2.6 - 27.03.2019"),
    "1.2.7 - 28.03.2019" : MessageLookupByLibrary.simpleMessage("1.2.7 - 28.03.2019"),
    "1.2.8 - 11.04.2019" : MessageLookupByLibrary.simpleMessage("1.2.8 - 11.04.2019"),
    "1.2.9 - 15.04.2019" : MessageLookupByLibrary.simpleMessage("1.2.9 - 15.04.2019"),
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("10% - 90% der Werte"),
    "25%" : MessageLookupByLibrary.simpleMessage("25%"),
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("25% - 75% der Werte"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "Absturz behoben, der auftrat, wenn kein passendes Profil für einen Zeitpunkt gefunden werden konnte" : MessageLookupByLibrary.simpleMessage("Absturz behoben, der auftrat, wenn kein passendes Profil für einen Zeitpunkt gefunden werden konnte"),
    "Aktuelle Periode" : MessageLookupByLibrary.simpleMessage("Aktuelle Periode"),
    "Als ersten Tag der Woche festlegen" : MessageLookupByLibrary.simpleMessage("Als ersten Tag der Woche festlegen"),
    "Anmelden" : MessageLookupByLibrary.simpleMessage("Anmelden"),
    "Anmeldung erfolgreich" : MessageLookupByLibrary.simpleMessage("Anmeldung erfolgreich"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("Anpas-\nsung"),
    "Anzahl Ampullen" : MessageLookupByLibrary.simpleMessage("Anzahl Ampullen"),
    "Anzahl Katheter" : MessageLookupByLibrary.simpleMessage("Anzahl Katheter"),
    "Anzahl Messungen" : MessageLookupByLibrary.simpleMessage("Anzahl Messungen"),
    "Anzahl Sensoren" : MessageLookupByLibrary.simpleMessage("Anzahl Sensoren"),
    "Anzahl der Sensoren zur Analyse hinzugefügt" : MessageLookupByLibrary.simpleMessage("Anzahl der Sensoren zur Analyse hinzugefügt"),
    "Auf der Analyseseite kann statt der Anzahl der Werte bei den Zielbereichen jetzt die Standardabweichung der Werte im Zielbereich angezeigt werden." : MessageLookupByLibrary.simpleMessage("Auf der Analyseseite kann statt der Anzahl der Werte bei den Zielbereichen jetzt die Standardabweichung der Werte im Zielbereich angezeigt werden."),
    "Auf der Analyseseite werden nun auch GVI und PGS ausgegeben." : MessageLookupByLibrary.simpleMessage("Auf der Analyseseite werden nun auch GVI und PGS ausgegeben."),
    "Auf der Analyseseite wird jetzt auch die Standardabweichung aller Werte der Periode angezeigt." : MessageLookupByLibrary.simpleMessage("Auf der Analyseseite wird jetzt auch die Standardabweichung aller Werte der Periode angezeigt."),
    "Auf der Profilseite wurde die Spalte für die Werte von ICR verbreitert." : MessageLookupByLibrary.simpleMessage("Auf der Profilseite wurde die Spalte für die Werte von ICR verbreitert."),
    "Aufsummierte Werte" : MessageLookupByLibrary.simpleMessage("Aufsummierte Werte"),
    "Ausgewertete Tage" : MessageLookupByLibrary.simpleMessage("Ausgewertete Tage"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("Auswertung"),
    "Basal" : MessageLookupByLibrary.simpleMessage("Basal"),
    "Basal mit zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Basal mit zwei Nachkommastellen"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("Basalrate"),
    "Basalrate\nIE / Stunde" : MessageLookupByLibrary.simpleMessage("Basalrate\nIE / Stunde"),
    "Behandlungen" : MessageLookupByLibrary.simpleMessage("Behandlungen"),
    "Bei Tagesgrafiken und Wochengrafiken gibt es jetzt die Möglichkeit 1, 2, 4, 8 oder 16 Grafiken auf einer Seite zu platzieren." : MessageLookupByLibrary.simpleMessage("Bei Tagesgrafiken und Wochengrafiken gibt es jetzt die Möglichkeit 1, 2, 4, 8 oder 16 Grafiken auf einer Seite zu platzieren."),
    "Bei der Berechnung der Kohlenhydrate werden weitere Datensätze berücksichtigt" : MessageLookupByLibrary.simpleMessage("Bei der Berechnung der Kohlenhydrate werden weitere Datensätze berücksichtigt"),
    "Beim Auslesen des Profils ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("Beim Auslesen des Profils ist ein Fehler aufgetreten."),
    "Beim Erzeugen des PDF ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("Beim Erzeugen des PDF ist ein Fehler aufgetreten."),
    "Beim Laden der Daten wird das entsprechende Datumsformat zur Anzeige verwendet" : MessageLookupByLibrary.simpleMessage("Beim Laden der Daten wird das entsprechende Datumsformat zur Anzeige verwendet"),
    "Benutzer können ein User-Token angeben, um sich mit geschützten Nightscout-Instanzen zu verbinden" : MessageLookupByLibrary.simpleMessage("Benutzer können ein User-Token angeben, um sich mit geschützten Nightscout-Instanzen zu verbinden"),
    "Benutzer können nun gelöscht werden" : MessageLookupByLibrary.simpleMessage("Benutzer können nun gelöscht werden"),
    "Benutzerdaten" : MessageLookupByLibrary.simpleMessage("Benutzerdaten"),
    "Benutzerdaten werden nun verschlüsselt im Browser gespeichert" : MessageLookupByLibrary.simpleMessage("Benutzerdaten werden nun verschlüsselt im Browser gespeichert"),
    "Bereite Daten vor..." : MessageLookupByLibrary.simpleMessage("Bereite Daten vor..."),
    "Bestätigung" : MessageLookupByLibrary.simpleMessage("Bestätigung"),
    "Bis" : MessageLookupByLibrary.simpleMessage("Bis"),
    "Bisher fehlende Summenwerte in der Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Bisher fehlende Summenwerte in der Tagesstatistik hinzugefügt"),
    "Bitte einen Zeitraum wählen." : MessageLookupByLibrary.simpleMessage("Bitte einen Zeitraum wählen."),
    "Bitte überprüfe die Aktivierung der Wochentage unter dem Monat" : MessageLookupByLibrary.simpleMessage("Bitte überprüfe die Aktivierung der Wochentage unter dem Monat"),
    "Blutwerte werden jetzt auch bei mmol/L in den Grafiken korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Blutwerte werden jetzt auch bei mmol/L in den Grafiken korrekt angezeigt."),
    "Bolus" : MessageLookupByLibrary.simpleMessage("Bolus"),
    "Bolusarten anzeigen" : MessageLookupByLibrary.simpleMessage("Bolusarten anzeigen"),
    "Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr." : MessageLookupByLibrary.simpleMessage("Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr."),
    "Das Control für die Eingabe des Zeitraums wurde angepasst, damit es auf schmalen Display auch korrekt dargestellt wird." : MessageLookupByLibrary.simpleMessage("Das Control für die Eingabe des Zeitraums wurde angepasst, damit es auf schmalen Display auch korrekt dargestellt wird."),
    "Das Enddatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("Das Enddatum ist nicht korrekt"),
    "Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag." : MessageLookupByLibrary.simpleMessage("Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag."),
    "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren." : MessageLookupByLibrary.simpleMessage("Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren."),
    "Das Profil-PDF wird nun im Querformat erzeugt, um auch Profile mit vielen Einträgen für die Parameter brauchbar darstellen zu können." : MessageLookupByLibrary.simpleMessage("Das Profil-PDF wird nun im Querformat erzeugt, um auch Profile mit vielen Einträgen für die Parameter brauchbar darstellen zu können."),
    "Das Startdatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("Das Startdatum ist nicht korrekt"),
    "Das User-Token wird nur benötigt, wenn der Zugriff in Nightscout über AUTH_DEFAULT_ROLES eingeschränkt wurde" : MessageLookupByLibrary.simpleMessage("Das User-Token wird nur benötigt, wenn der Zugriff in Nightscout über AUTH_DEFAULT_ROLES eingeschränkt wurde"),
    "Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen." : MessageLookupByLibrary.simpleMessage("Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen."),
    "Daten verschiedener Uploader werden nun besser interpretiert." : MessageLookupByLibrary.simpleMessage("Daten verschiedener Uploader werden nun besser interpretiert."),
    "Daten, die von xDrip als sync markiert wurden, werden bei der Auswertung ignoriert." : MessageLookupByLibrary.simpleMessage("Daten, die von xDrip als sync markiert wurden, werden bei der Auswertung ignoriert."),
    "Datenschutzerklärung" : MessageLookupByLibrary.simpleMessage("Datenschutzerklärung"),
    "Datum" : MessageLookupByLibrary.simpleMessage("Datum"),
    "Dauer der Insulinaktivität (DIA)" : MessageLookupByLibrary.simpleMessage("Dauer der Insulinaktivität (DIA)"),
    "Dauer der Kohlenhydrataktivität" : MessageLookupByLibrary.simpleMessage("Dauer der Kohlenhydrataktivität"),
    "Der Fehler im Profil, der dazu führte, dass die Werte für ISF und Zielbereich falsch umgerechnet werden, wurde behoben." : MessageLookupByLibrary.simpleMessage("Der Fehler im Profil, der dazu führte, dass die Werte für ISF und Zielbereich falsch umgerechnet werden, wurde behoben."),
    "Der Zeitraum enthält keine auswertbaren Tage" : MessageLookupByLibrary.simpleMessage("Der Zeitraum enthält keine auswertbaren Tage"),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("Deutsch"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("Diabetes seit"),
    "Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an" : MessageLookupByLibrary.simpleMessage("Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an"),
    "Die Angabe DIA auf der Profilseite wird nun mit zwei Nachkommastellen angezeigt." : MessageLookupByLibrary.simpleMessage("Die Angabe DIA auf der Profilseite wird nun mit zwei Nachkommastellen angezeigt."),
    "Die Aufteilung auf mehrere PDF-Dateien funktioniert jetzt besser." : MessageLookupByLibrary.simpleMessage("Die Aufteilung auf mehrere PDF-Dateien funktioniert jetzt besser."),
    "Die Auswahl des Zeitraums ist nun flexibler. Die Auswahl erfolgt in einem Dialog, der die eingestellte Sprache berücksichtigt. Mit der Auswahl der vorbelegten Bereiche (Heute, Letzte Woche, usw.) wird festgelegt, dass beim nächsten Aufruf das aktuelle Datum als Grundlage für den Bereich verwendet wird. Wenn der Bereich direkt im Kalender festgelegt wird, dann gilt dieser beim nächsten Aufruf so wie er festgelegt wurde. Standardmässig ist der erste Tag der Woche jetzt ein Montag. Dieser kann aber durch Anklicken des Wochentags in der Titelzeile des Monats auf die eigene Präferenz festgelegt werden. Die Eingabe der Datumsfelder erfolgt in der Form, die der Sprache entspricht (Tag.Monat.Jahr für deutsch, Monat/Tag/Jahr für englisch)." : MessageLookupByLibrary.simpleMessage("Die Auswahl des Zeitraums ist nun flexibler. Die Auswahl erfolgt in einem Dialog, der die eingestellte Sprache berücksichtigt. Mit der Auswahl der vorbelegten Bereiche (Heute, Letzte Woche, usw.) wird festgelegt, dass beim nächsten Aufruf das aktuelle Datum als Grundlage für den Bereich verwendet wird. Wenn der Bereich direkt im Kalender festgelegt wird, dann gilt dieser beim nächsten Aufruf so wie er festgelegt wurde. Standardmässig ist der erste Tag der Woche jetzt ein Montag. Dieser kann aber durch Anklicken des Wochentags in der Titelzeile des Monats auf die eigene Präferenz festgelegt werden. Die Eingabe der Datumsfelder erfolgt in der Form, die der Sprache entspricht (Tag.Monat.Jahr für deutsch, Monat/Tag/Jahr für englisch)."),
    "Die Balken für das Bolusinsulin in der Tagesgrafik werden nun entsprechend dem Maximalwert an Bolusinsulin an dem Tag skaliert." : MessageLookupByLibrary.simpleMessage("Die Balken für das Bolusinsulin in der Tagesgrafik werden nun entsprechend dem Maximalwert an Bolusinsulin an dem Tag skaliert."),
    "Die Berechnung der Summenzeile auf der Seite Tagesstatistik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Die Berechnung der Summenzeile auf der Seite Tagesstatistik wurde korrigiert."),
    "Die Berechnung der tatsächlichen Basalrate wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Die Berechnung der tatsächlichen Basalrate wurde korrigiert."),
    "Die Berechnung des täglichen Insulins berücksichtigt nun auch die SMB." : MessageLookupByLibrary.simpleMessage("Die Berechnung des täglichen Insulins berücksichtigt nun auch die SMB."),
    "Die Daten, die Du hier eingibst, werden normalerweise im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. In diesem Fall werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("Die Daten, die Du hier eingibst, werden normalerweise im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. In diesem Fall werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden."),
    "Die Farben für Dialoge und Scrollbars wurden angepasst." : MessageLookupByLibrary.simpleMessage("Die Farben für Dialoge und Scrollbars wurden angepasst."),
    "Die Genauigkeit der Insulindosierung wird aus dem Profil ermittelt. Der Wert mit der höchsten Genauigkeit legt fest, mit wieviel Nachkommastellen Basalratenwerte angezeigt werden." : MessageLookupByLibrary.simpleMessage("Die Genauigkeit der Insulindosierung wird aus dem Profil ermittelt. Der Wert mit der höchsten Genauigkeit legt fest, mit wieviel Nachkommastellen Basalratenwerte angezeigt werden."),
    "Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit." : MessageLookupByLibrary.simpleMessage("Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit."),
    "Die Icons auf einigen Buttons waren zu nahe am Text" : MessageLookupByLibrary.simpleMessage("Die Icons auf einigen Buttons waren zu nahe am Text"),
    "Die Kohlenhydratangaben auf der Tagesgrafik werden jetzt ohne den Zusatz KH ausgegeben." : MessageLookupByLibrary.simpleMessage("Die Kohlenhydratangaben auf der Tagesgrafik werden jetzt ohne den Zusatz KH ausgegeben."),
    "Die Links zu Nightscout und den Reports von Nightscout im Menü funktionieren jetzt auch richtig, wenn ein Usertoken angegeben wurde." : MessageLookupByLibrary.simpleMessage("Die Links zu Nightscout und den Reports von Nightscout im Menü funktionieren jetzt auch richtig, wenn ein Usertoken angegeben wurde."),
    "Die Microboli des Minimed 600 Uploaders werden jetzt auch ermittelt und in der Analyse ausgegeben, wenn sie vorhanden sind." : MessageLookupByLibrary.simpleMessage("Die Microboli des Minimed 600 Uploaders werden jetzt auch ermittelt und in der Analyse ausgegeben, wenn sie vorhanden sind."),
    "Die Mischung von zwei Seiten auf einer PDF-Seite, die manchmal vorkam, wurde behoben." : MessageLookupByLibrary.simpleMessage("Die Mischung von zwei Seiten auf einer PDF-Seite, die manchmal vorkam, wurde behoben."),
    "Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird" : MessageLookupByLibrary.simpleMessage("Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird"),
    "Die Positionierung der Notizen in der Tagesgrafik wurde korrigiert, so dass sie näher an der Uhrzeit stehen. Die Striche wurden so verkürzt, dass sie nur noch bis zum unteren Rand der Grafik gehen und nicht mehr durch die Wertetabelle." : MessageLookupByLibrary.simpleMessage("Die Positionierung der Notizen in der Tagesgrafik wurde korrigiert, so dass sie näher an der Uhrzeit stehen. Die Striche wurden so verkürzt, dass sie nur noch bis zum unteren Rand der Grafik gehen und nicht mehr durch die Wertetabelle."),
    "Die Profilseite wurde angepasst, damit Einträge für 24 Stunden auf eine Seite passen." : MessageLookupByLibrary.simpleMessage("Die Profilseite wurde angepasst, damit Einträge für 24 Stunden auf eine Seite passen."),
    "Die Reihenfolge der Formulare kann nun verändert werden. Dazu einfach das Handle auf der linken Seite des Buttons für das Formular anklicken, festhalten und an die Stelle ziehen, vor der es ausgedruckt werden soll." : MessageLookupByLibrary.simpleMessage("Die Reihenfolge der Formulare kann nun verändert werden. Dazu einfach das Handle auf der linken Seite des Buttons für das Formular anklicken, festhalten und an die Stelle ziehen, vor der es ausgedruckt werden soll."),
    "Die Skalen an den Grafiken wurden überarbeitet. Sie zeigen jetzt für mmol/L ganzzahlige Werte an und die Einheiten wurden entfernt. Diese stehen nur noch unten an der Grafik. Das betrifft die täglichen Grafiken, wöchentlichen Grafiken und das Glukose Percentil Diagramm." : MessageLookupByLibrary.simpleMessage("Die Skalen an den Grafiken wurden überarbeitet. Sie zeigen jetzt für mmol/L ganzzahlige Werte an und die Einheiten wurden entfernt. Diese stehen nur noch unten an der Grafik. Das betrifft die täglichen Grafiken, wöchentlichen Grafiken und das Glukose Percentil Diagramm."),
    "Die Spalten auf der Profilseite wurden korrigiert, damit auch längere Zeitnamen (z.B. in spanisch) Platz finden." : MessageLookupByLibrary.simpleMessage("Die Spalten auf der Profilseite wurden korrigiert, damit auch längere Zeitnamen (z.B. in spanisch) Platz finden."),
    "Die Standardabweichung wird jetzt auch bei mmol/L korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Die Standardabweichung wird jetzt auch bei mmol/L korrekt angezeigt."),
    "Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an" : MessageLookupByLibrary.simpleMessage("Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an"),
    "Die URL wurde noch nicht festgelegt" : MessageLookupByLibrary.simpleMessage("Die URL wurde noch nicht festgelegt"),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("Die URL wurde noch nicht festgelegt."),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz."),
    "Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt" : MessageLookupByLibrary.simpleMessage("Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt"),
    "Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools, wie dieses hier, auf die Daten zugreifen dürfen.<br><br>Wenn diese URL geschützt ist, muss ausserdem das UserToken korrekt definiert sein." : MessageLookupByLibrary.simpleMessage("Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools, wie dieses hier, auf die Daten zugreifen dürfen.<br><br>Wenn diese URL geschützt ist, muss ausserdem das UserToken korrekt definiert sein."),
    "Die eigenen Grenzwerte auf der Analyseseite in mmol/L werden nun korrekt berechnet." : MessageLookupByLibrary.simpleMessage("Die eigenen Grenzwerte auf der Analyseseite in mmol/L werden nun korrekt berechnet."),
    "Die fehlerhafte Platzierug der blutigen Werte bei mmol/L in der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Die fehlerhafte Platzierug der blutigen Werte bei mmol/L in der Tagesgrafik wurde korrigiert."),
    "Die fehlerhafte Zentrierung der Auswahlbuttons wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Die fehlerhafte Zentrierung der Auswahlbuttons wurde korrigiert."),
    "Die mittlerweile überflüssige Option zur Darstellung der Basalrate mit zwei Nachkommastellen wurde aus der Tagesgrafik entfernt." : MessageLookupByLibrary.simpleMessage("Die mittlerweile überflüssige Option zur Darstellung der Basalrate mit zwei Nachkommastellen wurde aus der Tagesgrafik entfernt."),
    "Die teilweise falsch zugewiesenen Grenzwerte für die Bereiche (niedrig, normal, hoch) wurden korrigiert." : MessageLookupByLibrary.simpleMessage("Die teilweise falsch zugewiesenen Grenzwerte für die Bereiche (niedrig, normal, hoch) wurden korrigiert."),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun."),
    "Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden." : MessageLookupByLibrary.simpleMessage("Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden."),
    "Dieser Regler legt fest, wie gross eine Ausgabe maximal werden darf, bevor sie auf mehrere PDF-Dateien aufgeteilt wird. Wenn bei Erstellung eines PDFs ein leeres Fenster angezeigt wird, dann hilft es normalerweise, diesen Regler weiter nach links zu bewegen." : MessageLookupByLibrary.simpleMessage("Dieser Regler legt fest, wie gross eine Ausgabe maximal werden darf, bevor sie auf mehrere PDF-Dateien aufgeteilt wird. Wenn bei Erstellung eines PDFs ein leeres Fenster angezeigt wird, dann hilft es normalerweise, diesen Regler weiter nach links zu bewegen."),
    "Diverse Abstürze beim Auslesen der Daten bereinigt" : MessageLookupByLibrary.simpleMessage("Diverse Abstürze beim Auslesen der Daten bereinigt"),
    "Eigene Grenzwerte" : MessageLookupByLibrary.simpleMessage("Eigene Grenzwerte"),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die letzten Tage bestimmter Monate nicht im Kalender-Control angezeigt wurden." : MessageLookupByLibrary.simpleMessage("Ein Fehler wurde behoben, der dafür sorgte, dass die letzten Tage bestimmter Monate nicht im Kalender-Control angezeigt wurden."),
    "Ein Fehler wurde wahrscheinlich behoben, der dazu führt, dass bei manchen Profilen der Wert für DIA nicht korrekt ausgelesen wurde." : MessageLookupByLibrary.simpleMessage("Ein Fehler wurde wahrscheinlich behoben, der dazu führt, dass bei manchen Profilen der Wert für DIA nicht korrekt ausgelesen wurde."),
    "Ein Link zur Facebookseite von Nightscout Reporter wurde im Menü hinzugefügt." : MessageLookupByLibrary.simpleMessage("Ein Link zur Facebookseite von Nightscout Reporter wurde im Menü hinzugefügt."),
    "Einige Browser sind nicht in der Lage PDF Dateien anzuzeigen, die eine bestimmte Grösse überschreiten. Da das von verschiedenen Faktoren abhängt, die sich nicht ohne Weiteres automatisch ermitteln lassen, gibt es die Möglichkeit, statt einer grossen PDF Datei, die nicht angezeigt werden kann, mehrere kleinere PDF Dateien zu erzeugen, die der Browser anzeigen kann. In den Einstellungen und hier kann diese Grösse festgelegt werden. Diese Seite hier wird nur angezeigt, wenn das PDF aufgeteilt werden musste. Wenn nur ein PDF erzeugt wurde, dann wird es direkt angezeigt." : MessageLookupByLibrary.simpleMessage("Einige Browser sind nicht in der Lage PDF Dateien anzuzeigen, die eine bestimmte Grösse überschreiten. Da das von verschiedenen Faktoren abhängt, die sich nicht ohne Weiteres automatisch ermitteln lassen, gibt es die Möglichkeit, statt einer grossen PDF Datei, die nicht angezeigt werden kann, mehrere kleinere PDF Dateien zu erzeugen, die der Browser anzeigen kann. In den Einstellungen und hier kann diese Grösse festgelegt werden. Diese Seite hier wird nur angezeigt, wenn das PDF aufgeteilt werden musste. Wenn nur ein PDF erzeugt wurde, dann wird es direkt angezeigt."),
    "Einige Formulare können nun mit Parametern konfiguriert werden; hierzu den Pfeil am rechten Rand des Formularbuttons anklicken und im aufgeklappten Bereich die entsprechenden Einstellungen vornehmen; der Pfeil erscheint erst, wenn das Formular zum Ausdruck markiert wurde" : MessageLookupByLibrary.simpleMessage("Einige Formulare können nun mit Parametern konfiguriert werden; hierzu den Pfeil am rechten Rand des Formularbuttons anklicken und im aufgeklappten Bereich die entsprechenden Einstellungen vornehmen; der Pfeil erscheint erst, wenn das Formular zum Ausdruck markiert wurde"),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("Einstellungen"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("Einstellungen für die Verwendung der Seite vornehmen"),
    "Einstellungen von Release-Version übernehmen" : MessageLookupByLibrary.simpleMessage("Einstellungen von Release-Version übernehmen"),
    "English (GB)" : MessageLookupByLibrary.simpleMessage("English (GB)"),
    "English (USA)" : MessageLookupByLibrary.simpleMessage("English (USA)"),
    "Erzeuge PDF..." : MessageLookupByLibrary.simpleMessage("Erzeuge PDF..."),
    "Es gibt in den Einstellungen eine Option, das PDF herunterladen zu lassen, statt es im Browser direkt anzeigen zu lassen. Das wird für Browser wie Edge benötigt." : MessageLookupByLibrary.simpleMessage("Es gibt in den Einstellungen eine Option, das PDF herunterladen zu lassen, statt es im Browser direkt anzeigen zu lassen. Das wird für Browser wie Edge benötigt."),
    "Es gibt in den Einstellungen eine neue Option, um den letzten in Nightscout gespeicherten Glukosewert in der Titelzeile anzeigen zu lassen. Wenn diese Option aktiviert ist, wird der aktuelle Wert, das Alter des Wertes, der Trendpfeil und die Differenz zum vorherigen Wert rechts in der Titelzeile angezeigt. Diese Anzeige wird jede Minute aktualisiert, solange das Browserfenster den Eingabefokus besitzt. Wenn es diesen nicht hat, wird die Aktualisierung angehalten und der Wert ausgeblendet, um nicht unnötig Systemresourcen zu belasten." : MessageLookupByLibrary.simpleMessage("Es gibt in den Einstellungen eine neue Option, um den letzten in Nightscout gespeicherten Glukosewert in der Titelzeile anzeigen zu lassen. Wenn diese Option aktiviert ist, wird der aktuelle Wert, das Alter des Wertes, der Trendpfeil und die Differenz zum vorherigen Wert rechts in der Titelzeile angezeigt. Diese Anzeige wird jede Minute aktualisiert, solange das Browserfenster den Eingabefokus besitzt. Wenn es diesen nicht hat, wird die Aktualisierung angehalten und der Wert ausgeblendet, um nicht unnötig Systemresourcen zu belasten."),
    "Es gibt jetzt auch die Möglichkeit, Nightscout Reporter in europäischem Englisch darzustellen. Der Unterschied zum amerikanischen Englisch besteht derzeit lediglich im Datumsformat (gb: dd/MM/yyyy, us: MM/dd/yyyy)." : MessageLookupByLibrary.simpleMessage("Es gibt jetzt auch die Möglichkeit, Nightscout Reporter in europäischem Englisch darzustellen. Der Unterschied zum amerikanischen Englisch besteht derzeit lediglich im Datumsformat (gb: dd/MM/yyyy, us: MM/dd/yyyy)."),
    "Es gibt jetzt die Möglichkeit, PDFs vergangener Zeiträume zu erzeugen, ohne den Zeitraum anpassen zu müssen. Oberhalb des Buttons zur PDF-Erzeugung gibt es zwei Buttons, welche die PDFs für eine frühere Periode erzeugen. Der untere der beiden Buttons erzeugt die Vorperiode, der obere die vorletzte Periode. Auf den Buttons wird das Startdatum und das Enddatum angezeigt. Wenn z.B. als Zeitraum \"Letzte 2 Wochen\" gewählt wurde, dann wird mit dem unteren Button der Zeitraum von zwei Wochen beginnend vor vier Wochen erzeugt und mit dem oberen Button der Zeitraum von zwei Wochen beginnend vor sechs Wochen. Auf diese Art kann man recht einfach Vergleichsberichte erzeugen, um die Entwicklung der Werte zu erkennen. Auf den Seiten wird für diese Ausdrucke in der Kopfzeile das Wort \"Historisch 1\", bzw. \"Historisch 2\" oberhalb des Zeitraums ausgegeben. So kann man beim Vergleich der Werte die Daten voneinander unterscheiden." : MessageLookupByLibrary.simpleMessage("Es gibt jetzt die Möglichkeit, PDFs vergangener Zeiträume zu erzeugen, ohne den Zeitraum anpassen zu müssen. Oberhalb des Buttons zur PDF-Erzeugung gibt es zwei Buttons, welche die PDFs für eine frühere Periode erzeugen. Der untere der beiden Buttons erzeugt die Vorperiode, der obere die vorletzte Periode. Auf den Buttons wird das Startdatum und das Enddatum angezeigt. Wenn z.B. als Zeitraum \"Letzte 2 Wochen\" gewählt wurde, dann wird mit dem unteren Button der Zeitraum von zwei Wochen beginnend vor vier Wochen erzeugt und mit dem oberen Button der Zeitraum von zwei Wochen beginnend vor sechs Wochen. Auf diese Art kann man recht einfach Vergleichsberichte erzeugen, um die Entwicklung der Werte zu erkennen. Auf den Seiten wird für diese Ausdrucke in der Kopfzeile das Wort \"Historisch 1\", bzw. \"Historisch 2\" oberhalb des Zeitraums ausgegeben. So kann man beim Vergleich der Werte die Daten voneinander unterscheiden."),
    "Es ist jetzt möglich, die Wochentage festzulegen, die im Zeitraum berücksichtigt werden sollen. Die entsprechenden Tage werden bei der Auswahl des Zeitraums mit den Buttons unterhalb des Monats festgelegt. Auf den PDFs werden Zeiträume dann zusätzlich mit der Information versehen, welche Wochentage berücksichtigt werden, wenn es nicht alle sind." : MessageLookupByLibrary.simpleMessage("Es ist jetzt möglich, die Wochentage festzulegen, die im Zeitraum berücksichtigt werden sollen. Die entsprechenden Tage werden bei der Auswahl des Zeitraums mit den Buttons unterhalb des Monats festgelegt. Auf den PDFs werden Zeiträume dann zusätzlich mit der Information versehen, welche Wochentage berücksichtigt werden, wenn es nicht alle sind."),
    "Es sind keine Daten für den Ausdruck vorhanden" : MessageLookupByLibrary.simpleMessage("Es sind keine Daten für den Ausdruck vorhanden"),
    "Español" : MessageLookupByLibrary.simpleMessage("Español"),
    "Facebook Seite" : MessageLookupByLibrary.simpleMessage("Facebook Seite"),
    "Fehler beim Laden der Daten" : MessageLookupByLibrary.simpleMessage("Fehler beim Laden der Daten"),
    "Fehler werden besser abgefangen und mit sinnvollem Text ersetzt." : MessageLookupByLibrary.simpleMessage("Fehler werden besser abgefangen und mit sinnvollem Text ersetzt."),
    "Fehlerhafte Ausgabe der Blutzuckerwerte in der täglichen Grafik korrigiert." : MessageLookupByLibrary.simpleMessage("Fehlerhafte Ausgabe der Blutzuckerwerte in der täglichen Grafik korrigiert."),
    "Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt" : MessageLookupByLibrary.simpleMessage("Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt"),
    "Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt." : MessageLookupByLibrary.simpleMessage("Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt."),
    "Für die Tagesgrafik gibt es jetzt eine Option, um die Aufsummierung nahe beieinander liegender Werte umzuschalten." : MessageLookupByLibrary.simpleMessage("Für die Tagesgrafik gibt es jetzt eine Option, um die Aufsummierung nahe beieinander liegender Werte umzuschalten."),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("Geburtstag"),
    "Ges." : MessageLookupByLibrary.simpleMessage("Ges."),
    "Geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("Geschätzter HbA1c"),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Glukose Perzentil Diagramm"),
    "Glukose im Zielbereich" : MessageLookupByLibrary.simpleMessage("Glukose im Zielbereich"),
    "Glukose zu hoch" : MessageLookupByLibrary.simpleMessage("Glukose zu hoch"),
    "Glukose zu niedrig" : MessageLookupByLibrary.simpleMessage("Glukose zu niedrig"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("Glukosekurve"),
    "Glykämischer Variabilitäts Index (GVI)" : MessageLookupByLibrary.simpleMessage("Glykämischer Variabilitäts Index (GVI)"),
    "Grafiken pro Seite" : MessageLookupByLibrary.simpleMessage("Grafiken pro Seite"),
    "Gross" : MessageLookupByLibrary.simpleMessage("Gross"),
    "Heute" : MessageLookupByLibrary.simpleMessage("Heute"),
    "Hinweise auf Nightscout in der Kopf- und Fusszeile des PDFs ausblenden" : MessageLookupByLibrary.simpleMessage("Hinweise auf Nightscout in der Kopf- und Fusszeile des PDFs ausblenden"),
    "Hohe Basalraten werden jetzt besser dargestellt." : MessageLookupByLibrary.simpleMessage("Hohe Basalraten werden jetzt besser dargestellt."),
    "Höchster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Höchster Wert im Zeitraum"),
    "IE" : MessageLookupByLibrary.simpleMessage("IE"),
    "Im Kalender-Control kann kein Datum nach dem aktuellen Tag mehr ausgewählt werden." : MessageLookupByLibrary.simpleMessage("Im Kalender-Control kann kein Datum nach dem aktuellen Tag mehr ausgewählt werden."),
    "Im Kalender-Control wird ein eingestellter Bereich (Heute, Letzte Woche, etc.) jetzt korrekt auf den aktuellen Tag bezogen." : MessageLookupByLibrary.simpleMessage("Im Kalender-Control wird ein eingestellter Bereich (Heute, Letzte Woche, etc.) jetzt korrekt auf den aktuellen Tag bezogen."),
    "Im Kalender-Control wird jetzt der Monat des entsprechenden Datums angezeigt, wenn eines der Felder Von oder bis den Fokus erhält." : MessageLookupByLibrary.simpleMessage("Im Kalender-Control wird jetzt der Monat des entsprechenden Datums angezeigt, wenn eines der Felder Von oder bis den Fokus erhält."),
    "Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert" : MessageLookupByLibrary.simpleMessage("Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert"),
    "Im Profil werden jetzt die richtigen Einheiten verwendet (mg/dL oder mmol/l)." : MessageLookupByLibrary.simpleMessage("Im Profil werden jetzt die richtigen Einheiten verwendet (mg/dL oder mmol/l)."),
    "Impressum" : MessageLookupByLibrary.simpleMessage("Impressum"),
    "In Firefox ist es jetzt auch möglich, die Hauptseite zu scrollen, wenn sie länger ist, als das Browserfenster." : MessageLookupByLibrary.simpleMessage("In Firefox ist es jetzt auch möglich, die Hauptseite zu scrollen, wenn sie länger ist, als das Browserfenster."),
    "In den Einstellungen gibt es einen Regler, der festlegt, wie gross die erzeugten PDF-Dateien maximal sein dürfen. Wenn nur ein leeres PDF erzeugt wird, dann sollte dieser Regler weiter nach links geschoben werden, um die Dateigrösse zu verringern." : MessageLookupByLibrary.simpleMessage("In den Einstellungen gibt es einen Regler, der festlegt, wie gross die erzeugten PDF-Dateien maximal sein dürfen. Wenn nur ein leeres PDF erzeugt wird, dann sollte dieser Regler weiter nach links geschoben werden, um die Dateigrösse zu verringern."),
    "In der Analyse können die Prozentzahlen für die Zielbereiche mit Nachkommazahl angezeigt werden. Das verringert die Differenz zu 100%, wenn man sie zusammenzählt. Der verbleibende Rest sind Rundungsdifferenzen." : MessageLookupByLibrary.simpleMessage("In der Analyse können die Prozentzahlen für die Zielbereiche mit Nachkommazahl angezeigt werden. Das verringert die Differenz zu 100%, wenn man sie zusammenzählt. Der verbleibende Rest sind Rundungsdifferenzen."),
    "In der Auswertung können die Angaben für Material (Katheter, Sensor, Ampulle) mit Nachkommastellen angezeigt werden." : MessageLookupByLibrary.simpleMessage("In der Auswertung können die Angaben für Material (Katheter, Sensor, Ampulle) mit Nachkommastellen angezeigt werden."),
    "In der Legende unter der Tagesgrafik wird die Summe der Kohlenhydrate für den Tag angezeigt." : MessageLookupByLibrary.simpleMessage("In der Legende unter der Tagesgrafik wird die Summe der Kohlenhydrate für den Tag angezeigt."),
    "In der Tagesgrafik gibt es eine Option, mit dem man die verschiedenen Arten der Boli kenntlich machen lassen kann. Wenn diese Option gesetzt ist, wird ein Bolus, der zu einer Mahlzeit abgegeben wurde mit einer anderen Farbe markiert, als ein Bolus zur Korrektur. In der Legende werden dann Korrektur-, Mahlzeiten-Boli und SMB getrennt angezeigt." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik gibt es eine Option, mit dem man die verschiedenen Arten der Boli kenntlich machen lassen kann. Wenn diese Option gesetzt ist, wird ein Bolus, der zu einer Mahlzeit abgegeben wurde mit einer anderen Farbe markiert, als ein Bolus zur Korrektur. In der Legende werden dann Korrektur-, Mahlzeiten-Boli und SMB getrennt angezeigt."),
    "In der Tagesgrafik gibt es eine Option, mit der man sich die erfassten Trainingsdaten anzeigen lassen kann. Diese werden dann am unteren Rand über der Tabelle der Glukosewerte eingefügt." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik gibt es eine Option, mit der man sich die erfassten Trainingsdaten anzeigen lassen kann. Diese werden dann am unteren Rand über der Tabelle der Glukosewerte eingefügt."),
    "In der Tagesgrafik kann die Anzeige der SMB nun ausgeblendet werden." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik kann die Anzeige der SMB nun ausgeblendet werden."),
    "In der Tagesgrafik werden die Insulinangaben jetzt kleiner dargestellt, wenn die Basalrate eine Genauigkeit von mehr als 2 Nachkommastellen hat." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik werden die Insulinangaben jetzt kleiner dargestellt, wenn die Basalrate eine Genauigkeit von mehr als 2 Nachkommastellen hat."),
    "In der Tagesgrafik werden jetzt auch Blutzuckermessungen angezeigt. Sie werden als rote Quadrate dargestellt und die zugehörigen Werte in der Tabelle unterhalb der Grafik werden ebenfalls mit roter Schrift angezeigt." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik werden jetzt auch Blutzuckermessungen angezeigt. Sie werden als rote Quadrate dargestellt und die zugehörigen Werte in der Tabelle unterhalb der Grafik werden ebenfalls mit roter Schrift angezeigt."),
    "In der Tagesgrafik werden nun SMBs auch angezeigt, wenn die Option für die Darstellung von Insulin akitivert wurde. Man kann festlegen, ob die SMBs an der Glukosekurve oder am Zielwert angezeigt werden." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik werden nun SMBs auch angezeigt, wenn die Option für die Darstellung von Insulin akitivert wurde. Man kann festlegen, ob die SMBs an der Glukosekurve oder am Zielwert angezeigt werden."),
    "In der Tagesgrafik werden nun auch Kohlenhydratkorrekturen angezeigt." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik werden nun auch Kohlenhydratkorrekturen angezeigt."),
    "In der Tagesgrafik werden nun auch Reservoirwechsel angezeigt." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik werden nun auch Reservoirwechsel angezeigt."),
    "In der Tagesgrafik werden nun der geschätzte HbA1C und die prozentuale Menge an Bolusinsulin und Basalinsulin für den Tag angezeigt. Diese Anzeige erfolgt innerhalb der Legende, weshalb diese aktiviert sein muss, damit die Werte angezeigt werden." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik werden nun der geschätzte HbA1C und die prozentuale Menge an Bolusinsulin und Basalinsulin für den Tag angezeigt. Diese Anzeige erfolgt innerhalb der Legende, weshalb diese aktiviert sein muss, damit die Werte angezeigt werden."),
    "In der Tagesgrafik wird jetzt eine Tabelle mit halbstündigen Glukosewerten eingeblendet angezeigt. Diese kann über einen Parameter ausgeschaltet werden." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik wird jetzt eine Tabelle mit halbstündigen Glukosewerten eingeblendet angezeigt. Diese kann über einen Parameter ausgeschaltet werden."),
    "In der Tagesgraphic werden jetzt Insulinwerte und Kohlenhydratwerte zusammengefasst, wenn es mehrere innerhalb einer Stunde gibt. Die Balken werden nach wie vor für jeden Wert einzeln ausgegeben. Auf diese Art sollte es keine überlappende Ausgabe der Werte mehr geben. Die zusammengefassten Werte werden in eckigen Klammern ausgegeben, um anzuzeigen, dass hier Werte aufsummiert wurden." : MessageLookupByLibrary.simpleMessage("In der Tagesgraphic werden jetzt Insulinwerte und Kohlenhydratwerte zusammengefasst, wenn es mehrere innerhalb einer Stunde gibt. Die Balken werden nach wie vor für jeden Wert einzeln ausgegeben. Auf diese Art sollte es keine überlappende Ausgabe der Werte mehr geben. Die zusammengefassten Werte werden in eckigen Klammern ausgegeben, um anzuzeigen, dass hier Werte aufsummiert wurden."),
    "In der Tagesstatistik und in den täglichen Grafiken werden jetzt zum Datum die Wochentage mit angezeigt." : MessageLookupByLibrary.simpleMessage("In der Tagesstatistik und in den täglichen Grafiken werden jetzt zum Datum die Wochentage mit angezeigt."),
    "In der Tagesstatistik wurde die Spalte Varianzkoeffizient hinzugefügt (VarK)." : MessageLookupByLibrary.simpleMessage("In der Tagesstatistik wurde die Spalte Varianzkoeffizient hinzugefügt (VarK)."),
    "Info-Linien bis zur Kurve zeichnen" : MessageLookupByLibrary.simpleMessage("Info-Linien bis zur Kurve zeichnen"),
    "Initiale Version, alles ist neu!" : MessageLookupByLibrary.simpleMessage("Initiale Version, alles ist neu!"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("Insulin"),
    "Insulin Kohlenhydrate Verhältnis (ICR)" : MessageLookupByLibrary.simpleMessage("Insulin Kohlenhydrate Verhältnis (ICR)"),
    "Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE" : MessageLookupByLibrary.simpleMessage("Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE"),
    "Insulin Sensitivitäts Faktoren (ISF)" : MessageLookupByLibrary.simpleMessage("Insulin Sensitivitäts Faktoren (ISF)"),
    "Ja" : MessageLookupByLibrary.simpleMessage("Ja"),
    "Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember" : MessageLookupByLibrary.simpleMessage("Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember"),
    "Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez" : MessageLookupByLibrary.simpleMessage("Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez"),
    "Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Katheterwechsel"),
    "Keine" : MessageLookupByLibrary.simpleMessage("Keine"),
    "Keine Änderung" : MessageLookupByLibrary.simpleMessage("Keine Änderung"),
    "Klein" : MessageLookupByLibrary.simpleMessage("Klein"),
    "Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Kohlenhydrate"),
    "Kohlenhydrate und Bolusinsulin werden jetzt in den täglichen Grafiken angezeigt" : MessageLookupByLibrary.simpleMessage("Kohlenhydrate und Bolusinsulin werden jetzt in den täglichen Grafiken angezeigt"),
    "Legende" : MessageLookupByLibrary.simpleMessage("Legende"),
    "Legende für Katheter- und Sensorwechsel zur Tagesgrafik hinzugefügt." : MessageLookupByLibrary.simpleMessage("Legende für Katheter- und Sensorwechsel zur Tagesgrafik hinzugefügt."),
    "Letzte 2 Tage" : MessageLookupByLibrary.simpleMessage("Letzte 2 Tage"),
    "Letzte 2 Wochen" : MessageLookupByLibrary.simpleMessage("Letzte 2 Wochen"),
    "Letzte 3 Monate" : MessageLookupByLibrary.simpleMessage("Letzte 3 Monate"),
    "Letzte 3 Tage" : MessageLookupByLibrary.simpleMessage("Letzte 3 Tage"),
    "Letzte 3 Wochen" : MessageLookupByLibrary.simpleMessage("Letzte 3 Wochen"),
    "Letzte Woche" : MessageLookupByLibrary.simpleMessage("Letzte Woche"),
    "Letzten Messwert in der Titelzeile anzeigen" : MessageLookupByLibrary.simpleMessage("Letzten Messwert in der Titelzeile anzeigen"),
    "Letzter Monat" : MessageLookupByLibrary.simpleMessage("Letzter Monat"),
    "Man kann jetzt mehrere Benutzer anlegen. Das ist nützlich, um mehrere Nightscout-Instanzen auszuwerten (z.B. für Ärzte, Betreuer oder den Entwickler dieser Software)" : MessageLookupByLibrary.simpleMessage("Man kann jetzt mehrere Benutzer anlegen. Das ist nützlich, um mehrere Nightscout-Instanzen auszuwerten (z.B. für Ärzte, Betreuer oder den Entwickler dieser Software)"),
    "Material mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Material mit Nachkommastellen"),
    "Max" : MessageLookupByLibrary.simpleMessage("Max"),
    "Median" : MessageLookupByLibrary.simpleMessage("Median"),
    "Mess-\nwerte" : MessageLookupByLibrary.simpleMessage("Mess-\nwerte"),
    "Min" : MessageLookupByLibrary.simpleMessage("Min"),
    "Mittel-\nwert" : MessageLookupByLibrary.simpleMessage("Mittel-\nwert"),
    "Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|Sonntag" : MessageLookupByLibrary.simpleMessage("Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|Sonntag"),
    "Mo|Di|Mi|Do|Fr|Sa|So" : MessageLookupByLibrary.simpleMessage("Mo|Di|Mi|Do|Fr|Sa|So"),
    "Nahe zusammen liegende Werte aufsummieren" : MessageLookupByLibrary.simpleMessage("Nahe zusammen liegende Werte aufsummieren"),
    "Name" : MessageLookupByLibrary.simpleMessage("Name"),
    "Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat." : MessageLookupByLibrary.simpleMessage("Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat."),
    "Nein" : MessageLookupByLibrary.simpleMessage("Nein"),
    "Neue Option im Profil, um fortlaufende Zeiten mit gleichen Werten zu einem Eintrag zusammen zu fassen." : MessageLookupByLibrary.simpleMessage("Neue Option im Profil, um fortlaufende Zeiten mit gleichen Werten zu einem Eintrag zusammen zu fassen."),
    "Neuer Parameter für die Tagesgrafik, der festlegt, ob die Linien für die Notizen unter der Grafik bis zur Glukosekurve gezeichnet werden sollen oder nicht." : MessageLookupByLibrary.simpleMessage("Neuer Parameter für die Tagesgrafik, der festlegt, ob die Linien für die Notizen unter der Grafik bis zur Glukosekurve gezeichnet werden sollen oder nicht."),
    "Neues PDF für eine Wochengrafik hinzugefügt, auf der die Glukosekurven der Woche übereinander gelegt werden." : MessageLookupByLibrary.simpleMessage("Neues PDF für eine Wochengrafik hinzugefügt, auf der die Glukosekurven der Woche übereinander gelegt werden."),
    "Neueste Woche zuerst" : MessageLookupByLibrary.simpleMessage("Neueste Woche zuerst"),
    "Neuester Tag zuerst" : MessageLookupByLibrary.simpleMessage("Neuester Tag zuerst"),
    "Niedrigster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Niedrigster Wert im Zeitraum"),
    "Nightscout Berichte" : MessageLookupByLibrary.simpleMessage("Nightscout Berichte"),
    "Nightscout Reporter ist nun auch grösstenteils in Spanisch und Polnisch verfügbar. Entsprechende Buttons wurden dem Hauptmenü hinzugefügt. Danke an die fleissigen Übersetzer :)." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter ist nun auch grösstenteils in Spanisch und Polnisch verfügbar. Entsprechende Buttons wurden dem Hauptmenü hinzugefügt. Danke an die fleissigen Übersetzer :)."),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("Nightscout Seite"),
    "Normal" : MessageLookupByLibrary.simpleMessage("Normal"),
    "Notiz" : MessageLookupByLibrary.simpleMessage("Notiz"),
    "Notizen" : MessageLookupByLibrary.simpleMessage("Notizen"),
    "Ok" : MessageLookupByLibrary.simpleMessage("Ok"),
    "PDF anzeigen" : MessageLookupByLibrary.simpleMessage("PDF anzeigen"),
    "PDF erneut erzeugen" : MessageLookupByLibrary.simpleMessage("PDF erneut erzeugen"),
    "PDF für Profildaten" : MessageLookupByLibrary.simpleMessage("PDF für Profildaten"),
    "PDF herunterladen (bei einigen Browsern benötigt)" : MessageLookupByLibrary.simpleMessage("PDF herunterladen (bei einigen Browsern benötigt)"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("PDF im selben Fenster öffnen"),
    "Patient Glykämischer Status (PGS)" : MessageLookupByLibrary.simpleMessage("Patient Glykämischer Status (PGS)"),
    "Pausiert" : MessageLookupByLibrary.simpleMessage("Pausiert"),
    "Polski" : MessageLookupByLibrary.simpleMessage("Polski"),
    "Problem auf GitHub melden" : MessageLookupByLibrary.simpleMessage("Problem auf GitHub melden"),
    "Profil" : MessageLookupByLibrary.simpleMessage("Profil"),
    "Profil-Basalrate" : MessageLookupByLibrary.simpleMessage("Profil-Basalrate"),
    "Profileinstellungen" : MessageLookupByLibrary.simpleMessage("Profileinstellungen"),
    "Profilwechsel" : MessageLookupByLibrary.simpleMessage("Profilwechsel"),
    "Protokoll" : MessageLookupByLibrary.simpleMessage("Protokoll"),
    "Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse." : MessageLookupByLibrary.simpleMessage("Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse."),
    "Reservoirwechsel" : MessageLookupByLibrary.simpleMessage("Reservoirwechsel"),
    "SMB" : MessageLookupByLibrary.simpleMessage("SMB"),
    "SMB Werte anzeigen" : MessageLookupByLibrary.simpleMessage("SMB Werte anzeigen"),
    "SMB an der Kurve platzieren" : MessageLookupByLibrary.simpleMessage("SMB an der Kurve platzieren"),
    "Schliessen" : MessageLookupByLibrary.simpleMessage("Schliessen"),
    "Schliessen Button im Nachrichtenbereich hinzugefügt." : MessageLookupByLibrary.simpleMessage("Schliessen Button im Nachrichtenbereich hinzugefügt."),
    "Sensorwechsel" : MessageLookupByLibrary.simpleMessage("Sensorwechsel"),
    "Soll der Benutzer mit der URL" : MessageLookupByLibrary.simpleMessage("Soll der Benutzer mit der URL"),
    "Spalte HbA1c" : MessageLookupByLibrary.simpleMessage("Spalte HbA1c"),
    "Spalte HbA1c zu Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Spalte HbA1c zu Tagesstatistik hinzugefügt"),
    "Spalte Messwerte" : MessageLookupByLibrary.simpleMessage("Spalte Messwerte"),
    "Spalte Standardabweichung" : MessageLookupByLibrary.simpleMessage("Spalte Standardabweichung"),
    "Spalte Variationskoeffizient" : MessageLookupByLibrary.simpleMessage("Spalte Variationskoeffizient"),
    "Spalten Perzentile" : MessageLookupByLibrary.simpleMessage("Spalten Perzentile"),
    "Spaltenbreite der Informationen in der Analyse erhöht" : MessageLookupByLibrary.simpleMessage("Spaltenbreite der Informationen in der Analyse erhöht"),
    "Speichern" : MessageLookupByLibrary.simpleMessage("Speichern"),
    "Standardabweichung" : MessageLookupByLibrary.simpleMessage("Standardabweichung"),
    "Standardabweichung statt Anzahl" : MessageLookupByLibrary.simpleMessage("Standardabweichung statt Anzahl"),
    "Standardgrenzwerte" : MessageLookupByLibrary.simpleMessage("Standardgrenzwerte"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("Std.\nAbw."),
    "Stunden" : MessageLookupByLibrary.simpleMessage("Stunden"),
    "Summen für Bolus Insulin, Basalrate für den Tag und Basalrate aus dem Profil zur Tagesgrafik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Summen für Bolus Insulin, Basalrate für den Tag und Basalrate aus dem Profil zur Tagesgrafik hinzugefügt"),
    "Symbole (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Symbole (Katheter etc.)"),
    "TDD" : MessageLookupByLibrary.simpleMessage("TDD"),
    "Tabelle mit Glukosewerten" : MessageLookupByLibrary.simpleMessage("Tabelle mit Glukosewerten"),
    "Tages-Basalrate" : MessageLookupByLibrary.simpleMessage("Tages-Basalrate"),
    "Tagesanalyse" : MessageLookupByLibrary.simpleMessage("Tagesanalyse"),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("Tagesgrafik"),
    "Tagesgrafikparameter zur Anzeige der Legende" : MessageLookupByLibrary.simpleMessage("Tagesgrafikparameter zur Anzeige der Legende"),
    "Tagesgrafikparameter zur Anzeige von Notizen" : MessageLookupByLibrary.simpleMessage("Tagesgrafikparameter zur Anzeige von Notizen"),
    "Tagesgrafikparameter zur umgekehrten Sortierung hinzugefügt. Die Tage werden damit beginnend mit dem höchsten Datum ausgegeben." : MessageLookupByLibrary.simpleMessage("Tagesgrafikparameter zur umgekehrten Sortierung hinzugefügt. Die Tage werden damit beginnend mit dem höchsten Datum ausgegeben."),
    "Tagesnamen in Grafik anzeigen" : MessageLookupByLibrary.simpleMessage("Tagesnamen in Grafik anzeigen"),
    "Tagesnotizen" : MessageLookupByLibrary.simpleMessage("Tagesnotizen"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("Tagesstatistik"),
    "Temporäre Basalraten" : MessageLookupByLibrary.simpleMessage("Temporäre Basalraten"),
    "Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt" : MessageLookupByLibrary.simpleMessage("Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt"),
    "Titelangaben für Datumsbereiche auf den PDFs vereinheitlicht" : MessageLookupByLibrary.simpleMessage("Titelangaben für Datumsbereiche auf den PDFs vereinheitlicht"),
    "Training anzeigen" : MessageLookupByLibrary.simpleMessage("Training anzeigen"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("Uhr-\nzeit"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("Uhrzeit"),
    "Unbegrenzt" : MessageLookupByLibrary.simpleMessage("Unbegrenzt"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)"),
    "User-Token" : MessageLookupByLibrary.simpleMessage("User-Token"),
    "VarK\nin %" : MessageLookupByLibrary.simpleMessage("VarK\nin %"),
    "Verbinde zu Google Drive..." : MessageLookupByLibrary.simpleMessage("Verbinde zu Google Drive..."),
    "Verbinde zu Google..." : MessageLookupByLibrary.simpleMessage("Verbinde zu Google..."),
    "Verbindung zu Google Drive herstellen" : MessageLookupByLibrary.simpleMessage("Verbindung zu Google Drive herstellen"),
    "Verbindung zu Google Drive trennen" : MessageLookupByLibrary.simpleMessage("Verbindung zu Google Drive trennen"),
    "Vergleich" : MessageLookupByLibrary.simpleMessage("Vergleich"),
    "Version" : MessageLookupByLibrary.simpleMessage("Version"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("Verteilung"),
    "ViewWhatsnewComponent0__message_102" : m0,
    "Von" : MessageLookupByLibrary.simpleMessage("Von"),
    "Vorherige Periode" : MessageLookupByLibrary.simpleMessage("Vorherige Periode"),
    "Vorletzte Periode" : MessageLookupByLibrary.simpleMessage("Vorletzte Periode"),
    "Warum werde ich mit mehreren Buttons genervt, statt eine einzelne PDF angezeigt zu kriegen?" : MessageLookupByLibrary.simpleMessage("Warum werde ich mit mehreren Buttons genervt, statt eine einzelne PDF angezeigt zu kriegen?"),
    "Was bisher geschah..." : MessageLookupByLibrary.simpleMessage("Was bisher geschah..."),
    "Wenn Sonderzeichen in den Daten vorhanden sind (z.B. Smileys in den Notizen), führte das zu einem Absturz während der PDF-Erstellung. Das wurde behoben, indem diese Sonderzeichen aus der Ausgabe entfernt werden." : MessageLookupByLibrary.simpleMessage("Wenn Sonderzeichen in den Daten vorhanden sind (z.B. Smileys in den Notizen), führte das zu einem Absturz während der PDF-Erstellung. Das wurde behoben, indem diese Sonderzeichen aus der Ausgabe entfernt werden."),
    "Wenn das erzeugte PDF zu gross wird, wird es nun auf mehrere PDF-Dateien aufgeteilt. In diesem Fall wird es nicht direkt geöffnet, sondern es wird eine Liste mit durchnummerierten Buttons angezeigt. Diese Buttons öffnen bei Betätigung das entsprechende PDF und erhalten einen Haken, um anzuzeigen, dass es geöffnet wurde. Das sollte es erleichtern, die PDFs nacheinander zu öffnen, weil normalerweise der Browser im Hintergrund verschwindet, wenn ein neues Fenster aufgemacht wird." : MessageLookupByLibrary.simpleMessage("Wenn das erzeugte PDF zu gross wird, wird es nun auf mehrere PDF-Dateien aufgeteilt. In diesem Fall wird es nicht direkt geöffnet, sondern es wird eine Liste mit durchnummerierten Buttons angezeigt. Diese Buttons öffnen bei Betätigung das entsprechende PDF und erhalten einen Haken, um anzuzeigen, dass es geöffnet wurde. Das sollte es erleichtern, die PDFs nacheinander zu öffnen, weil normalerweise der Browser im Hintergrund verschwindet, wenn ein neues Fenster aufgemacht wird."),
    "Wenn der Zeitraum leer ist, wird der Button für die Auswahl deutlich markiert und in dem Dialog zur Auswahl wird in der Titelzeile ein Hinweis darauf angezeigt." : MessageLookupByLibrary.simpleMessage("Wenn der Zeitraum leer ist, wird der Button für die Auswahl deutlich markiert und in dem Dialog zur Auswahl wird in der Titelzeile ein Hinweis darauf angezeigt."),
    "Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet" : MessageLookupByLibrary.simpleMessage("Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet"),
    "Wenn in den Einstellungen eine Verbindung zum Google-Konto hergestellt wird, werden die Cookies von Google verwendet und die Daten nicht mehr im localStorage des Browsers gespeichert, sondern im AppStorage auf Google Drive. Auf diese Art kann man die Daten zentralisiert verwalten und hat diese in jedem Browser zur Verfügung, der mit dem angegebenen Google Konto verbunden ist." : MessageLookupByLibrary.simpleMessage("Wenn in den Einstellungen eine Verbindung zum Google-Konto hergestellt wird, werden die Cookies von Google verwendet und die Daten nicht mehr im localStorage des Browsers gespeichert, sondern im AppStorage auf Google Drive. Auf diese Art kann man die Daten zentralisiert verwalten und hat diese in jedem Browser zur Verfügung, der mit dem angegebenen Google Konto verbunden ist."),
    "Wenn in den Einträgen Lücken von 15 Minuten oder mehr sind, führen diese zu einer Unterbrechung der Linie in der Tagesgrafik." : MessageLookupByLibrary.simpleMessage("Wenn in den Einträgen Lücken von 15 Minuten oder mehr sind, führen diese zu einer Unterbrechung der Linie in der Tagesgrafik."),
    "Wenn in einem Profil mehr Zeiten erfasst wurden, als auf eine Seite passen, wurden diese fortlaufend in die nächste Seite hineingeschrieben. Jetzt wird an geeigneter Stelle eine neue Seite ausgegeben." : MessageLookupByLibrary.simpleMessage("Wenn in einem Profil mehr Zeiten erfasst wurden, als auf eine Seite passen, wurden diese fortlaufend in die nächste Seite hineingeschrieben. Jetzt wird an geeigneter Stelle eine neue Seite ausgegeben."),
    "Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt." : MessageLookupByLibrary.simpleMessage("Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt."),
    "Willkommen" : MessageLookupByLibrary.simpleMessage("Willkommen"),
    "Willkommen bei Nightscout Reporter!" : MessageLookupByLibrary.simpleMessage("Willkommen bei Nightscout Reporter!"),
    "Wochengrafik" : MessageLookupByLibrary.simpleMessage("Wochengrafik"),
    "Zeilen mit gleichen Werten zusammenfassen" : MessageLookupByLibrary.simpleMessage("Zeilen mit gleichen Werten zusammenfassen"),
    "Zeitraum" : MessageLookupByLibrary.simpleMessage("Zeitraum"),
    "Zeitraum festlegen" : MessageLookupByLibrary.simpleMessage("Zeitraum festlegen"),
    "Zeitzone" : MessageLookupByLibrary.simpleMessage("Zeitzone"),
    "Zielbereich" : MessageLookupByLibrary.simpleMessage("Zielbereich"),
    "Zielbereich mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Zielbereich mit Nachkommastellen"),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("Zusatzfunktionen"),
    "Zusätzliche Informationen zu den PDFs und im UI hinzugefügt" : MessageLookupByLibrary.simpleMessage("Zusätzliche Informationen zu den PDFs und im UI hinzugefügt"),
    "Zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Zwei Nachkommastellen"),
    "bis" : MessageLookupByLibrary.simpleMessage("bis"),
    "dd.MM.yyyy" : MessageLookupByLibrary.simpleMessage("dd.MM.yyyy"),
    "g / Stunde" : MessageLookupByLibrary.simpleMessage("g / Stunde"),
    "gesch. HbA1c" : MessageLookupByLibrary.simpleMessage("gesch. HbA1c"),
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
    "verwerfen" : MessageLookupByLibrary.simpleMessage("verwerfen"),
    "wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("wirklich gelöscht werden?"),
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Basal pro Tag"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Bolus pro Tag"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Insulin pro Tag"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("Ø Insulinverhältnis"),
    "Ø KH pro Tag" : MessageLookupByLibrary.simpleMessage("Ø KH pro Tag"),
    "Ø Microbolus pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Microbolus pro Tag"),
    "Ø Zuckerwert" : MessageLookupByLibrary.simpleMessage("Ø Zuckerwert"),
    "Überprüfe Zugriff auf Nightscout ..." : MessageLookupByLibrary.simpleMessage("Überprüfe Zugriff auf Nightscout ..."),
    "Übersetzungen korrigiert" : MessageLookupByLibrary.simpleMessage("Übersetzungen korrigiert")
  };
}
