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

  static m4(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} Tag pro Katheter)', other: '(${txt} Tage pro Katheter)')}";

  static m5(url) => "Überprüfe Zugriff auf ${url}...";

  static m6(value) => "${value} Tage";

  static m7(beg, end) => "${beg} - ${end}";

  static m8(value) => "Hoch${value}";

  static m9(value) => "${value}g KH";

  static m10(value) => "g KH (${value} BE)";

  static m11(error, stacktrace) => "Fehler beim Laden der Daten:\n${error}\n${stacktrace}";

  static m12(date) => "Lade Daten für ${date}...";

  static m13(value) => "Tief${value}";

  static m14(howMany, fmt) => "${Intl.plural(howMany, zero: 'Keine Messwerte vorhanden', one: '1 Messung pro Minute', other: 'Messung alle ${fmt} Minuten')}";

  static m15(howMany, fmt) => "${Intl.plural(howMany, zero: 'Keine Messwerte vorhanden', one: '1 Messung am Tag', other: '${fmt} Messungen am Tag')}";

  static m16(howMany, fmt) => "${Intl.plural(howMany, zero: 'Keine Messwerte vorhanden', one: '1 Messung pro Stunde', other: '${fmt} Messungen pro Stunde')}";

  static m17(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} Tag pro Ampulle)', other: '(${txt} Tage pro Ampulle)')}";

  static m18(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} Tag pro Sensor)', other: '(${txt} Tage pro Sensor)')}";

  static m19(unit) => "Glukose-Zielbereich\n${unit}";

  static m20(min, max, units) => "Zielbereich (${min} - ${max} ${units})";

  static m21(value) => "Zielwert";

  static m22(begDate) => "gültig ab ${begDate}";

  static m23(begDate, endDate) => "gültig von ${begDate} bis ${endDate}";

  static m24(endDate) => "gültig bis ${endDate}";

  static m25(high) => "Werte über ${high}";

  static m26(low) => "Werte unter ${low}";

  static m27(low, high) => "Werte zwischen ${low} und ${high}";

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
    "1.2.0 - xx.xx.2019" : MessageLookupByLibrary.simpleMessage("1.2.0 - xx.xx.2019"),
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("10% - 90% der Werte"),
    "25%" : MessageLookupByLibrary.simpleMessage("25%"),
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("25% - 75% der Werte"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "Absturz behoben, der auftrat, wenn kein passendes Profil für einen Zeitpunkt gefunden werden konnte" : MessageLookupByLibrary.simpleMessage("Absturz behoben, der auftrat, wenn kein passendes Profil für einen Zeitpunkt gefunden werden konnte"),
    "Anmelden" : MessageLookupByLibrary.simpleMessage("Anmelden"),
    "Anmeldung erfolgreich" : MessageLookupByLibrary.simpleMessage("Anmeldung erfolgreich"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("Anpas-\nsung"),
    "Anzahl Ampullen" : MessageLookupByLibrary.simpleMessage("Anzahl Ampullen"),
    "Anzahl Katheter" : MessageLookupByLibrary.simpleMessage("Anzahl Katheter"),
    "Anzahl Messungen" : MessageLookupByLibrary.simpleMessage("Anzahl Messungen"),
    "Anzahl Sensoren" : MessageLookupByLibrary.simpleMessage("Anzahl Sensoren"),
    "Anzahl der Sensoren zur Analyse hinzugefügt" : MessageLookupByLibrary.simpleMessage("Anzahl der Sensoren zur Analyse hinzugefügt"),
    "Ausgewertete Tage" : MessageLookupByLibrary.simpleMessage("Ausgewertete Tage"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("Auswertung"),
    "Basal" : MessageLookupByLibrary.simpleMessage("Basal"),
    "Basal mit zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Basal mit zwei Nachkommastellen"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("Basalrate"),
    "Basalrate\nIE / Stunde" : MessageLookupByLibrary.simpleMessage("Basalrate\nIE / Stunde"),
    "Basalrate mit zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Basalrate mit zwei Nachkommastellen"),
    "Behandlungen" : MessageLookupByLibrary.simpleMessage("Behandlungen"),
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
    "Bisher fehlende Summenwerte in der Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Bisher fehlende Summenwerte in der Tagesstatistik hinzugefügt"),
    "Bitte einen Zeitraum wählen." : MessageLookupByLibrary.simpleMessage("Bitte einen Zeitraum wählen."),
    "Bolus" : MessageLookupByLibrary.simpleMessage("Bolus"),
    "Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr." : MessageLookupByLibrary.simpleMessage("Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr."),
    "Das Enddatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("Das Enddatum ist nicht korrekt"),
    "Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag." : MessageLookupByLibrary.simpleMessage("Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag."),
    "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren." : MessageLookupByLibrary.simpleMessage("Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren."),
    "Das Profil-PDF wird nun im Querformat erzeugt, um auch Profile mit vielen Einträgen für die Parameter brauchbar darstellen zu können." : MessageLookupByLibrary.simpleMessage("Das Profil-PDF wird nun im Querformat erzeugt, um auch Profile mit vielen Einträgen für die Parameter brauchbar darstellen zu können."),
    "Das Startdatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("Das Startdatum ist nicht korrekt"),
    "Das User-Token wird nur benötigt, wenn der Zugriff in Nightscout über AUTH_DEFAULT_ROLES eingeschränkt wurde" : MessageLookupByLibrary.simpleMessage("Das User-Token wird nur benötigt, wenn der Zugriff in Nightscout über AUTH_DEFAULT_ROLES eingeschränkt wurde"),
    "Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen." : MessageLookupByLibrary.simpleMessage("Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen."),
    "Datenschutzerklärung" : MessageLookupByLibrary.simpleMessage("Datenschutzerklärung"),
    "Datum" : MessageLookupByLibrary.simpleMessage("Datum"),
    "Dauer der Insulinaktivität (DIA)" : MessageLookupByLibrary.simpleMessage("Dauer der Insulinaktivität (DIA)"),
    "Dauer der Kohlenhydrataktivität" : MessageLookupByLibrary.simpleMessage("Dauer der Kohlenhydrataktivität"),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("Deutsch"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("Diabetes seit"),
    "Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an" : MessageLookupByLibrary.simpleMessage("Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an"),
    "Die Auswahl des Zeitraums ist nun flexibler. Die Auswahl erfolgt in einem Dialog, der die eingestellte Sprache berücksichtigt. Mit der Auswahl der vorbelegten Bereiche (Heute, Letzte Woche, usw.) wird festgelegt, dass beim nächsten Aufruf das aktuelle Datum als Grundlage für den Bereich verwendet wird. Wenn der Bereich direkt im Kalender festgelegt wird, dann gilt dieser beim nächsten Aufruf so wie er festgelegt wurde. Standardmässig ist der erste Tag der Woche jetzt ein Montag. Dieser kann aber durch Anklicken des Wochentags in der Titelzeile des Monats auf die eigene Präferenz festgelegt werden. Die Eingabe der Datumsfelder erfolgt in der Form, die der Sprache entspricht (Tag.Monat.Jahr für deutsch, Monat/Tag/Jahr für englisch)." : MessageLookupByLibrary.simpleMessage("Die Auswahl des Zeitraums ist nun flexibler. Die Auswahl erfolgt in einem Dialog, der die eingestellte Sprache berücksichtigt. Mit der Auswahl der vorbelegten Bereiche (Heute, Letzte Woche, usw.) wird festgelegt, dass beim nächsten Aufruf das aktuelle Datum als Grundlage für den Bereich verwendet wird. Wenn der Bereich direkt im Kalender festgelegt wird, dann gilt dieser beim nächsten Aufruf so wie er festgelegt wurde. Standardmässig ist der erste Tag der Woche jetzt ein Montag. Dieser kann aber durch Anklicken des Wochentags in der Titelzeile des Monats auf die eigene Präferenz festgelegt werden. Die Eingabe der Datumsfelder erfolgt in der Form, die der Sprache entspricht (Tag.Monat.Jahr für deutsch, Monat/Tag/Jahr für englisch)."),
    "Die Berechnung der Summenzeile auf der Seite Tagesstatistik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Die Berechnung der Summenzeile auf der Seite Tagesstatistik wurde korrigiert."),
    "Die Daten, die Du hier eingibst, werden normalerweise im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. In diesem Fall werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("Die Daten, die Du hier eingibst, werden normalerweise im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. In diesem Fall werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden."),
    "Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit." : MessageLookupByLibrary.simpleMessage("Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit."),
    "Die Icons auf einigen Buttons waren zu nahe am Text" : MessageLookupByLibrary.simpleMessage("Die Icons auf einigen Buttons waren zu nahe am Text"),
    "Die Microboli des Minimed 600 Uploaders werden jetzt auch ermittelt und in der Analyse ausgegeben, wenn sie vorhanden sind." : MessageLookupByLibrary.simpleMessage("Die Microboli des Minimed 600 Uploaders werden jetzt auch ermittelt und in der Analyse ausgegeben, wenn sie vorhanden sind."),
    "Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird" : MessageLookupByLibrary.simpleMessage("Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird"),
    "Die Positionierung der Notizen in der Tagesgrafik wurde korrigiert, so dass sie näher an der Uhrzeit stehen. Die Striche wurden so verkürzt, dass sie nur noch bis zum unteren Rand der Grafik gehen und nicht mehr durch die Wertetabelle." : MessageLookupByLibrary.simpleMessage("Die Positionierung der Notizen in der Tagesgrafik wurde korrigiert, so dass sie näher an der Uhrzeit stehen. Die Striche wurden so verkürzt, dass sie nur noch bis zum unteren Rand der Grafik gehen und nicht mehr durch die Wertetabelle."),
    "Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an" : MessageLookupByLibrary.simpleMessage("Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an"),
    "Die URL wurde noch nicht festgelegt" : MessageLookupByLibrary.simpleMessage("Die URL wurde noch nicht festgelegt"),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("Die URL wurde noch nicht festgelegt."),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz."),
    "Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt" : MessageLookupByLibrary.simpleMessage("Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt"),
    "Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools, wie dieses hier, auf die Daten zugreifen dürfen.<br><br>Wenn diese URL geschützt ist, muss ausserdem das UserToken korrekt definiert sein." : MessageLookupByLibrary.simpleMessage("Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools, wie dieses hier, auf die Daten zugreifen dürfen.<br><br>Wenn diese URL geschützt ist, muss ausserdem das UserToken korrekt definiert sein."),
    "Die eigenen Grenzwerte auf der Analyseseite in mmol/L werden nun korrekt berechnet." : MessageLookupByLibrary.simpleMessage("Die eigenen Grenzwerte auf der Analyseseite in mmol/L werden nun korrekt berechnet."),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun."),
    "Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden." : MessageLookupByLibrary.simpleMessage("Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden."),
    "Diverse Abstürze beim Auslesen der Daten bereinigt" : MessageLookupByLibrary.simpleMessage("Diverse Abstürze beim Auslesen der Daten bereinigt"),
    "Eigene Grenzwerte" : MessageLookupByLibrary.simpleMessage("Eigene Grenzwerte"),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die letzten Tage bestimmter Monate nicht im Kalender-Control angezeigt wurden." : MessageLookupByLibrary.simpleMessage("Ein Fehler wurde behoben, der dafür sorgte, dass die letzten Tage bestimmter Monate nicht im Kalender-Control angezeigt wurden."),
    "Ein Fehler wurde wahrscheinlich behoben, der dazu führt, dass bei manchen Profilen der Wert für DIA nicht korrekt ausgelesen wurde." : MessageLookupByLibrary.simpleMessage("Ein Fehler wurde wahrscheinlich behoben, der dazu führt, dass bei manchen Profilen der Wert für DIA nicht korrekt ausgelesen wurde."),
    "Einige Formulare können nun mit Parametern konfiguriert werden; hierzu den Pfeil am rechten Rand des Formularbuttons anklicken und im aufgeklappten Bereich die entsprechenden Einstellungen vornehmen; der Pfeil erscheint erst, wenn das Formular zum Ausdruck markiert wurde" : MessageLookupByLibrary.simpleMessage("Einige Formulare können nun mit Parametern konfiguriert werden; hierzu den Pfeil am rechten Rand des Formularbuttons anklicken und im aufgeklappten Bereich die entsprechenden Einstellungen vornehmen; der Pfeil erscheint erst, wenn das Formular zum Ausdruck markiert wurde"),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("Einstellungen"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("Einstellungen für die Verwendung der Seite vornehmen"),
    "Einstellungen von Release-Version übernehmen" : MessageLookupByLibrary.simpleMessage("Einstellungen von Release-Version übernehmen"),
    "English" : MessageLookupByLibrary.simpleMessage("English"),
    "Erzeuge PDF..." : MessageLookupByLibrary.simpleMessage("Erzeuge PDF..."),
    "Es gibt in den Einstellungen eine Option, das PDF herunterladen zu lassen, statt es im Browser direkt anzeigen zu lassen. Das wird für Browser wie Edge benötigt." : MessageLookupByLibrary.simpleMessage("Es gibt in den Einstellungen eine Option, das PDF herunterladen zu lassen, statt es im Browser direkt anzeigen zu lassen. Das wird für Browser wie Edge benötigt."),
    "Es sind keine Daten für den Ausdruck vorhanden" : MessageLookupByLibrary.simpleMessage("Es sind keine Daten für den Ausdruck vorhanden"),
    "Fehler beim Laden der Daten" : MessageLookupByLibrary.simpleMessage("Fehler beim Laden der Daten"),
    "Fehler werden besser abgefangen und mit sinnvollem Text ersetzt." : MessageLookupByLibrary.simpleMessage("Fehler werden besser abgefangen und mit sinnvollem Text ersetzt."),
    "Fehlerhafte Ausgabe der Blutzuckerwerte in der täglichen Grafik korrigiert." : MessageLookupByLibrary.simpleMessage("Fehlerhafte Ausgabe der Blutzuckerwerte in der täglichen Grafik korrigiert."),
    "Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt" : MessageLookupByLibrary.simpleMessage("Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt"),
    "Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt." : MessageLookupByLibrary.simpleMessage("Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt."),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("Geburtstag"),
    "Ges." : MessageLookupByLibrary.simpleMessage("Ges."),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Glukose Perzentil Diagramm"),
    "Glukose im Zielbereich" : MessageLookupByLibrary.simpleMessage("Glukose im Zielbereich"),
    "Glukose zu hoch" : MessageLookupByLibrary.simpleMessage("Glukose zu hoch"),
    "Glukose zu niedrig" : MessageLookupByLibrary.simpleMessage("Glukose zu niedrig"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("Glukosekurve"),
    "Heute" : MessageLookupByLibrary.simpleMessage("Heute"),
    "Hinweise auf Nightscout in der Kopf- und Fusszeile des PDFs ausblenden" : MessageLookupByLibrary.simpleMessage("Hinweise auf Nightscout in der Kopf- und Fusszeile des PDFs ausblenden"),
    "Hohe Basalraten werden jetzt besser dargestellt." : MessageLookupByLibrary.simpleMessage("Hohe Basalraten werden jetzt besser dargestellt."),
    "Höchster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Höchster Wert im Zeitraum"),
    "IE" : MessageLookupByLibrary.simpleMessage("IE"),
    "Im Kalender-Control kann kein Datum nach dem aktuellen Tag mehr ausgewählt werden." : MessageLookupByLibrary.simpleMessage("Im Kalender-Control kann kein Datum nach dem aktuellen Tag mehr ausgewählt werden."),
    "Im Kalender-Control wird ein eingestellter Bereich (Heute, Letzte Woche, etc.) jetzt korrekt auf den aktuellen Tag bezogen." : MessageLookupByLibrary.simpleMessage("Im Kalender-Control wird ein eingestellter Bereich (Heute, Letzte Woche, etc.) jetzt korrekt auf den aktuellen Tag bezogen."),
    "Im Kalender-Control wird jetzt der Monat des entsprechenden Datums angezeigt, wenn eines der Felder Von oder bis den Fokus erhält." : MessageLookupByLibrary.simpleMessage("Im Kalender-Control wird jetzt der Monat des entsprechenden Datums angezeigt, wenn eines der Felder Von oder bis den Fokus erhält."),
    "Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert" : MessageLookupByLibrary.simpleMessage("Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert"),
    "Impressum" : MessageLookupByLibrary.simpleMessage("Impressum"),
    "In der Auswertung können die Angaben für Material (Katheter, Sensor, Ampulle) mit Nachkommastellen angezeigt werden." : MessageLookupByLibrary.simpleMessage("In der Auswertung können die Angaben für Material (Katheter, Sensor, Ampulle) mit Nachkommastellen angezeigt werden."),
    "In der Tagesgrafik werden jetzt auch Blutzuckermessungen angezeigt. Sie werden als rote Quadrate dargestellt und die zugehörigen Werte in der Tabelle unterhalb der Grafik werden ebenfalls mit roter Schrift angezeigt." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik werden jetzt auch Blutzuckermessungen angezeigt. Sie werden als rote Quadrate dargestellt und die zugehörigen Werte in der Tabelle unterhalb der Grafik werden ebenfalls mit roter Schrift angezeigt."),
    "In der Tagesgrafik werden nun SMBs auch angezeigt, wenn die Option für die Darstellung von Insulin akitivert wurde. Man kann festlegen, ob die SMBs an der Glukosekurve oder am Zielwert angezeigt werden." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik werden nun SMBs auch angezeigt, wenn die Option für die Darstellung von Insulin akitivert wurde. Man kann festlegen, ob die SMBs an der Glukosekurve oder am Zielwert angezeigt werden."),
    "In der Tagesgrafik werden nun auch Kohlenhydratkorrekturen angezeigt." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik werden nun auch Kohlenhydratkorrekturen angezeigt."),
    "In der Tagesgrafik wird jetzt eine Tabelle mit halbstündigen Glukosewerten eingeblendet angezeigt. Diese kann über einen Parameter ausgeschaltet werden." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik wird jetzt eine Tabelle mit halbstündigen Glukosewerten eingeblendet angezeigt. Diese kann über einen Parameter ausgeschaltet werden."),
    "In der Tagesstatistik und in den täglichen Grafiken werden jetzt zum Datum die Wochentage mit angezeigt." : MessageLookupByLibrary.simpleMessage("In der Tagesstatistik und in den täglichen Grafiken werden jetzt zum Datum die Wochentage mit angezeigt."),
    "In der Tagesstatistik wurde die Spalte Varianzkoeffizient hinzugefügt (VarK)." : MessageLookupByLibrary.simpleMessage("In der Tagesstatistik wurde die Spalte Varianzkoeffizient hinzugefügt (VarK)."),
    "Initiale Version, alles ist neu!" : MessageLookupByLibrary.simpleMessage("Initiale Version, alles ist neu!"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("Insulin"),
    "Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE" : MessageLookupByLibrary.simpleMessage("Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE"),
    "Insulin Sensitivitäts Faktoren (ISF)\n1 IE senkt BG um X mg/dl" : MessageLookupByLibrary.simpleMessage("Insulin Sensitivitäts Faktoren (ISF)\n1 IE senkt BG um X mg/dl"),
    "Ja" : MessageLookupByLibrary.simpleMessage("Ja"),
    "Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember" : MessageLookupByLibrary.simpleMessage("Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember"),
    "Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez" : MessageLookupByLibrary.simpleMessage("Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez"),
    "Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Katheterwechsel"),
    "Keine" : MessageLookupByLibrary.simpleMessage("Keine"),
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
    "Name" : MessageLookupByLibrary.simpleMessage("Name"),
    "Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat." : MessageLookupByLibrary.simpleMessage("Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat."),
    "Nein" : MessageLookupByLibrary.simpleMessage("Nein"),
    "Neues PDF für eine Wochengrafik hinzugefügt, auf der die Glukosekurven der Woche übereinander gelegt werden." : MessageLookupByLibrary.simpleMessage("Neues PDF für eine Wochengrafik hinzugefügt, auf der die Glukosekurven der Woche übereinander gelegt werden."),
    "Niedrigster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Niedrigster Wert im Zeitraum"),
    "Nightscout Berichte" : MessageLookupByLibrary.simpleMessage("Nightscout Berichte"),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("Nightscout Seite"),
    "Normal" : MessageLookupByLibrary.simpleMessage("Normal"),
    "Notizen" : MessageLookupByLibrary.simpleMessage("Notizen"),
    "Ok" : MessageLookupByLibrary.simpleMessage("Ok"),
    "PDF anzeigen" : MessageLookupByLibrary.simpleMessage("PDF anzeigen"),
    "PDF für Profildaten" : MessageLookupByLibrary.simpleMessage("PDF für Profildaten"),
    "PDF herunterladen (bei einigen Browsern benötigt)" : MessageLookupByLibrary.simpleMessage("PDF herunterladen (bei einigen Browsern benötigt)"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("PDF im selben Fenster öffnen"),
    "Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Perzentil Diagramm"),
    "Problem auf GitHub melden" : MessageLookupByLibrary.simpleMessage("Problem auf GitHub melden"),
    "Profil" : MessageLookupByLibrary.simpleMessage("Profil"),
    "Profil-Basalrate" : MessageLookupByLibrary.simpleMessage("Profil-Basalrate"),
    "Profileinstellungen" : MessageLookupByLibrary.simpleMessage("Profileinstellungen"),
    "Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse." : MessageLookupByLibrary.simpleMessage("Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse."),
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
    "Standardgrenzwerte" : MessageLookupByLibrary.simpleMessage("Standardgrenzwerte"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("Std.\nAbw."),
    "Stunden" : MessageLookupByLibrary.simpleMessage("Stunden"),
    "Summen für Bolus Insulin, Basalrate für den Tag und Basalrate aus dem Profil zur Tagesgrafik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Summen für Bolus Insulin, Basalrate für den Tag und Basalrate aus dem Profil zur Tagesgrafik hinzugefügt"),
    "Symbole (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Symbole (Katheter etc.)"),
    "Tabelle mit Glukosewerten" : MessageLookupByLibrary.simpleMessage("Tabelle mit Glukosewerten"),
    "Tages-Basalrate" : MessageLookupByLibrary.simpleMessage("Tages-Basalrate"),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("Tagesgrafik"),
    "Tagesgrafikparameter zur Anzeige der Legende" : MessageLookupByLibrary.simpleMessage("Tagesgrafikparameter zur Anzeige der Legende"),
    "Tagesgrafikparameter zur Anzeige von Notizen" : MessageLookupByLibrary.simpleMessage("Tagesgrafikparameter zur Anzeige von Notizen"),
    "Tagesgrafikparameter zur umgekehrten Sortierung hinzugefügt. Die Tage werden damit beginnend mit dem höchsten Datum ausgegeben." : MessageLookupByLibrary.simpleMessage("Tagesgrafikparameter zur umgekehrten Sortierung hinzugefügt. Die Tage werden damit beginnend mit dem höchsten Datum ausgegeben."),
    "Tagesnamen in Grafik anzeigen" : MessageLookupByLibrary.simpleMessage("Tagesnamen in Grafik anzeigen"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("Tagesstatistik"),
    "Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt" : MessageLookupByLibrary.simpleMessage("Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt"),
    "This page is also available in english" : MessageLookupByLibrary.simpleMessage("This page is also available in english"),
    "Titelangaben für Datumsbereiche auf den PDFs vereinheitlicht" : MessageLookupByLibrary.simpleMessage("Titelangaben für Datumsbereiche auf den PDFs vereinheitlicht"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("Uhr-\nzeit"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("Uhrzeit"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)"),
    "User-Token" : MessageLookupByLibrary.simpleMessage("User-Token"),
    "VarK\nin %" : MessageLookupByLibrary.simpleMessage("VarK\nin %"),
    "Verbinde zu Google Drive..." : MessageLookupByLibrary.simpleMessage("Verbinde zu Google Drive..."),
    "Verbinde zu Google..." : MessageLookupByLibrary.simpleMessage("Verbinde zu Google..."),
    "Verbindung zu Google Drive herstellen" : MessageLookupByLibrary.simpleMessage("Verbindung zu Google Drive herstellen"),
    "Verbindung zu Google Drive trennen" : MessageLookupByLibrary.simpleMessage("Verbindung zu Google Drive trennen"),
    "Version" : MessageLookupByLibrary.simpleMessage("Version"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("Verteilung"),
    "Vier Grafiken pro Seite" : MessageLookupByLibrary.simpleMessage("Vier Grafiken pro Seite"),
    "ViewWhatsnewComponent0__message_38" : m0,
    "Von" : MessageLookupByLibrary.simpleMessage("Von"),
    "Was bisher geschah..." : MessageLookupByLibrary.simpleMessage("Was bisher geschah..."),
    "Wenn Sonderzeichen in den Daten vorhanden sind (z.B. Smileys in den Notizen), führte das zu einem Absturz während der PDF-Erstellung. Das wurde behoben, indem diese Sonderzeichen aus der Ausgabe entfernt werden." : MessageLookupByLibrary.simpleMessage("Wenn Sonderzeichen in den Daten vorhanden sind (z.B. Smileys in den Notizen), führte das zu einem Absturz während der PDF-Erstellung. Das wurde behoben, indem diese Sonderzeichen aus der Ausgabe entfernt werden."),
    "Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet" : MessageLookupByLibrary.simpleMessage("Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet"),
    "Wenn in den Einstellungen eine Verbindung zum Google-Konto hergestellt wird, werden die Cookies von Google verwendet und die Daten nicht mehr im localStorage des Browsers gespeichert, sondern im AppStorage auf Google Drive. Auf diese Art kann man die Daten zentralisiert verwalten und hat diese in jedem Browser zur Verfügung, der mit dem angegebenen Google Konto verbunden ist." : MessageLookupByLibrary.simpleMessage("Wenn in den Einstellungen eine Verbindung zum Google-Konto hergestellt wird, werden die Cookies von Google verwendet und die Daten nicht mehr im localStorage des Browsers gespeichert, sondern im AppStorage auf Google Drive. Auf diese Art kann man die Daten zentralisiert verwalten und hat diese in jedem Browser zur Verfügung, der mit dem angegebenen Google Konto verbunden ist."),
    "Wenn in den Einträgen Lücken von 15 Minuten oder mehr sind, führen diese zu einer Unterbrechung der Linie in der Tagesgrafik." : MessageLookupByLibrary.simpleMessage("Wenn in den Einträgen Lücken von 15 Minuten oder mehr sind, führen diese zu einer Unterbrechung der Linie in der Tagesgrafik."),
    "Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt." : MessageLookupByLibrary.simpleMessage("Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt."),
    "Willkommen" : MessageLookupByLibrary.simpleMessage("Willkommen"),
    "Willkommen bei Nightscout Reporter!" : MessageLookupByLibrary.simpleMessage("Willkommen bei Nightscout Reporter!"),
    "Wochengrafik" : MessageLookupByLibrary.simpleMessage("Wochengrafik"),
    "Zeitraum" : MessageLookupByLibrary.simpleMessage("Zeitraum"),
    "Zeitraum festlegen" : MessageLookupByLibrary.simpleMessage("Zeitraum festlegen"),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("Zusatzfunktionen"),
    "Zusätzliche Informationen zu den PDFs und im UI hinzugefügt" : MessageLookupByLibrary.simpleMessage("Zusätzliche Informationen zu den PDFs und im UI hinzugefügt"),
    "Zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Zwei Nachkommastellen"),
    "bis" : MessageLookupByLibrary.simpleMessage("bis"),
    "g / Stunde" : MessageLookupByLibrary.simpleMessage("g / Stunde"),
    "gesch.\nHbA1c" : MessageLookupByLibrary.simpleMessage("gesch.\nHbA1c"),
    "geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("geschätzter HbA1c"),
    "msgBE" : MessageLookupByLibrary.simpleMessage("msgBE"),
    "msgBasalrateDay" : m1,
    "msgBasalrateProfile" : m2,
    "msgBolusInsulin" : m3,
    "msgCatheterDays" : m4,
    "msgCheckUser" : m5,
    "msgDaySum" : m6,
    "msgFactorEntry" : m7,
    "msgHigh" : m8,
    "msgKE" : MessageLookupByLibrary.simpleMessage("msgKE"),
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
    "umgekehrte Sortierung" : MessageLookupByLibrary.simpleMessage("umgekehrte Sortierung"),
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
