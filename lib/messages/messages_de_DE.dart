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

  static m0(count) => "${Intl.plural(count, zero: '', one: '1 Seite', other: '${count} Seiten')}";

  static m1(count) => "${Intl.plural(count, zero: '', one: '1 Seite oder mehr', other: '${count} Seiten oder mehr')}";

  static m2(isVisible) => "Der Zugriffsschlüssel wird nur benötigt, wenn der Zugriff in Nightscout über AUTH_DEFAULT_ROLES eingeschränkt wurde";

  static m3(time) => "Die angezeigte Basalrate ist seit ${time}  gültig und beinhaltet keine temporären Änderungen.";

  static m4(unit) => "Diese Basalrate war am ${unit} aktiv.";

  static m5(value) => "Basalrate für den Tag (${value})";

  static m6(value) => "Basalrate aus dem Profil (${value})";

  static m7(value) => "Bolus Insulin (${value})";

  static m8(value) => "VarK [${value}%]";

  static m9(date) => "Überprüfe ${date} ...";

  static m10(scale, intercept, slope) => "Kalibrierung (scale ${scale} / intercept ${intercept} / slope ${slope})";

  static m11(value) => "Mahlzeiten Bolus (${value})";

  static m12(value) => "Kohlenhydrate (${value}g)";

  static m13(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} Tag pro Katheter)', other: '(${txt} Tage pro Katheter)')}";

  static m14(name, from, to) => "${name} ${from} => ${to}";

  static m15(url) => "Überprüfe Zugriff auf ${url}...";

  static m16(value) => "Korrektur Bolus (${value})";

  static m17(value) => "${Intl.plural(value, zero: 'Kein Wert', one: '1 Wert', other: '${value} Werte')}";

  static m18(value) => "${value} Tage";

  static m19(hours, minutes) => "${hours} Std ${minutes} Min";

  static m20(isVisible) => "Das Datum des letzten kompletten Tages mit Daten";

  static m21(beg, end) => "${beg} - ${end}";

  static m22(count) => "${Intl.plural(count, zero: '', one: '1 Formular', other: '${count} Formulare')}";

  static m23(max) => "schlecht (grösser ${max})";

  static m24(min, max) => "gut (${min} bis ${max})";

  static m25(min) => "nicht vorhanden (kleiner ${min})";

  static m26(min, max) => "sehr gut (${min} bis ${max})";

  static m27(unit, value) => "Intensität HYPER\n[${unit} x min²]";

  static m28(unit) => "Die Intensität von Hyperglykämien pro Tag (Werte grösser oder gleich ${unit}).";

  static m29(unit, value) => "Intensität HYPO\n[${unit} x min²]";

  static m30(unit) => "Die Intensität von Hypoglykämien pro Tag (Werte kleiner oder gleich ${unit}).";

  static m31(value) => "Hoch${value}";

  static m32(value) => "Historisch ${value}";

  static m33(value) => "Unterzuckerungen (< ${value})";

  static m34(unit) => "Insulin Sensitivitäts Faktoren (ISF)\n1 IE senkt BG um X ${unit}";

  static m35(value) => "${value}g";

  static m36(value) => "g KH (${value} BE)";

  static m37(value) => "Gesamtinsulin (${value})";

  static m38(error, stacktrace) => "Fehler beim Laden der Daten:\n${error}\n${stacktrace}";

  static m39(date) => "Lade Daten für ${date}...";

  static m40(insulin, unit) => "Microbolus ${insulin} ${unit}";

  static m41(insulin, unit) => "SMB ${insulin} ${unit}";

  static m42(percent, duration) => "temp. Basal ${percent}% / ${duration} min";

  static m43(value, duration) => "temp. Basal ${value} / ${duration} min";

  static m44(target, duration, reason) => "temp. Ziel ${target} für ${duration} min, Grund: ${reason}";

  static m45(value) => "Tief${value}";

  static m46(gluc, unit) => "Blutige Messung ${gluc} ${unit}";

  static m47(unit, value) => "Mittlere Glukose\n[${unit}]";

  static m48(hba1c) => "Der glykämische Mittelwert im betrachteten Zeitraum.";

  static m49(min, max) => "schlecht (${min} bis ${max})";

  static m50(min, max) => "gut (${min} bis ${max})";

  static m51(max) => "sehr schlecht (grösser ${max})";

  static m52(min) => "exzellent (kleiner ${min})";

  static m53(oldName, newName) => "Profilwechsel - ${oldName} => ${newName}";

  static m54(oldName, newName, duration) => "Profilwechsel - ${oldName} => ${newName} für ${duration} Minuten";

  static m55(howMany, fmt) => "${Intl.plural(howMany, zero: 'Keine Messwerte vorhanden', one: '1 Messung pro Minute', other: 'Messung alle ${fmt} Minuten')}";

  static m56(howMany, fmt) => "${Intl.plural(howMany, zero: 'Keine Messwerte vorhanden', one: '1 Messung am Tag', other: '${fmt} Messungen am Tag')}";

  static m57(howMany, fmt) => "${Intl.plural(howMany, zero: 'Keine Messwerte vorhanden', one: '1 Messung pro Stunde', other: '${fmt} Messungen pro Stunde')}";

  static m58(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} Tag pro Ampulle)', other: '(${txt} Tage pro Ampulle)')}";

  static m59(value) => "SMB (${value})";

  static m60(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} Tag pro Sensor)', other: '(${txt} Tage pro Sensor)')}";

  static m61(low, high, unit) => "Standard Zielbereich verwenden (${low} ${unit} - ${high} ${unit})";

  static m62(isVisible) => "Das Datum des ersten Tages mit Daten";

  static m63(value) => "(StdAbw ${value})";

  static m64(value) => "ToR [${value}min/d]";

  static m65(min, max) => "Die Zeit pro Tag in Minuten, in denen die Werte ausserhalb des Bereichs ${min} bis ${max} liegen.";

  static m66(unit) => "Glukose-Zielbereich\n${unit}";

  static m67(min, max, units) => "Zielbereich (${min} - ${max} ${units})";

  static m68(value) => "Zielwert";

  static m69(time) => "${time} Uhr";

  static m70(time) => "${time} am";

  static m71(time) => "${time} pm";

  static m72(begDate) => "gültig ab ${begDate}";

  static m73(begDate, endDate) => "gültig von ${begDate} bis ${endDate}";

  static m74(endDate) => "gültig bis ${endDate}";

  static m75(high) => "Werte über ${high}";

  static m76(low) => "Werte unter ${low}";

  static m77(low, high) => "Werte zwischen ${low} und ${high}";

  static m78(low, high) => "Zielbereich (${low} - ${high})";

  static m79(value) => "Hohe Werte (${value})";

  static m80(value) => "Niedrige Werte (${value})";

  static m81(value) => "Sehr hohe Werte ( > ${value})";

  static m82(value) => "Sehr niedrige Werte (< ${value})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "0,0 bis 2,0" : MessageLookupByLibrary.simpleMessage("0,0 bis 2,0"),
    "1 Minute" : MessageLookupByLibrary.simpleMessage("1 Minute"),
    "1 Stunde" : MessageLookupByLibrary.simpleMessage("1 Stunde"),
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
    "1.3.0 - 19.08.2019" : MessageLookupByLibrary.simpleMessage("1.3.0 - 19.08.2019"),
    "1.3.1 - 22.08.2019" : MessageLookupByLibrary.simpleMessage("1.3.1 - 22.08.2019"),
    "1.3.2 - 05.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.2 - 05.09.2019"),
    "1.3.3 - 12.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.3 - 12.09.2019"),
    "1.3.4 - 17.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.4 - 17.09.2019"),
    "1.3.5 - 23.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.5 - 23.09.2019"),
    "1.3.6 - 18.12.2019" : MessageLookupByLibrary.simpleMessage("1.3.6 - 18.12.2019"),
    "1.3.7 - 7.1.2020" : MessageLookupByLibrary.simpleMessage("1.3.7 - 7.1.2020"),
    "1.3.8 - 9.1.2020" : MessageLookupByLibrary.simpleMessage("1.3.8 - 9.1.2020"),
    "1.4 - 28.2.2020" : MessageLookupByLibrary.simpleMessage("1.4 - 28.2.2020"),
    "1.4.1 - 13.3.2020" : MessageLookupByLibrary.simpleMessage("1.4.1 - 13.3.2020"),
    "1.4.2 - 16.3.2020" : MessageLookupByLibrary.simpleMessage("1.4.2 - 16.3.2020"),
    "1.4.3 - 26.3.2020" : MessageLookupByLibrary.simpleMessage("1.4.3 - 26.3.2020"),
    "1.4.4 - 6.4.2020" : MessageLookupByLibrary.simpleMessage("1.4.4 - 6.4.2020"),
    "1.4.5 - 20.4.2020" : MessageLookupByLibrary.simpleMessage("1.4.5 - 20.4.2020"),
    "1.4.6 - 26.5.2020" : MessageLookupByLibrary.simpleMessage("1.4.6 - 26.5.2020"),
    "1.4.7 - 5.6.2020" : MessageLookupByLibrary.simpleMessage("1.4.7 - 5.6.2020"),
    "1.4.8 - 12.6.2020" : MessageLookupByLibrary.simpleMessage("1.4.8 - 12.6.2020"),
    "1.4.9 - 16.6.2020" : MessageLookupByLibrary.simpleMessage("1.4.9 - 16.6.2020"),
    "10%" : MessageLookupByLibrary.simpleMessage("10%"),
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("10% - 90% der Werte"),
    "15 Minuten" : MessageLookupByLibrary.simpleMessage("15 Minuten"),
    "2,1 bis 3,0" : MessageLookupByLibrary.simpleMessage("2,1 bis 3,0"),
    "2.0.0 - 15.7.2020" : MessageLookupByLibrary.simpleMessage("2.0.0 - 15.7.2020"),
    "25%" : MessageLookupByLibrary.simpleMessage("25%"),
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("25% - 75% der Werte"),
    "3,1 bis 4,0" : MessageLookupByLibrary.simpleMessage("3,1 bis 4,0"),
    "30 Minuten" : MessageLookupByLibrary.simpleMessage("30 Minuten"),
    "4,1 bis 4,5" : MessageLookupByLibrary.simpleMessage("4,1 bis 4,5"),
    "5 Minuten" : MessageLookupByLibrary.simpleMessage("5 Minuten"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "90%" : MessageLookupByLibrary.simpleMessage("90%"),
    "<br><br>Wenn diese URL geschützt ist, muss ausserdem der Zugriffsschlüssel korrekt definiert sein. Diesen erreicht man über \"Administrator-Werkzeuge\" auf der persönlichen Nightscout Seite." : MessageLookupByLibrary.simpleMessage("<br><br>Wenn diese URL geschützt ist, muss ausserdem der Zugriffsschlüssel korrekt definiert sein. Diesen erreicht man über \"Administrator-Werkzeuge\" auf der persönlichen Nightscout Seite."),
    "Abbruch" : MessageLookupByLibrary.simpleMessage("Abbruch"),
    "Absturz behoben, der auftrat, wenn kein passendes Profil für einen Zeitpunkt gefunden werden konnte" : MessageLookupByLibrary.simpleMessage("Absturz behoben, der auftrat, wenn kein passendes Profil für einen Zeitpunkt gefunden werden konnte"),
    "Acht" : MessageLookupByLibrary.simpleMessage("Acht"),
    "Alle Werte für den Tag anzeigen" : MessageLookupByLibrary.simpleMessage("Alle Werte für den Tag anzeigen"),
    "Alles" : MessageLookupByLibrary.simpleMessage("Alles"),
    "Allgemeines" : MessageLookupByLibrary.simpleMessage("Allgemeines"),
    "Als ersten Tag der Woche festlegen" : MessageLookupByLibrary.simpleMessage("Als ersten Tag der Woche festlegen"),
    "Ampullenwechsel" : MessageLookupByLibrary.simpleMessage("Ampullenwechsel"),
    "Anmelden" : MessageLookupByLibrary.simpleMessage("Anmelden"),
    "Anmeldung bei Google..." : MessageLookupByLibrary.simpleMessage("Anmeldung bei Google..."),
    "Anmeldung erfolgreich" : MessageLookupByLibrary.simpleMessage("Anmeldung erfolgreich"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("Anpas-\nsung"),
    "Anzahl Ampullenwechsel" : MessageLookupByLibrary.simpleMessage("Anzahl Ampullenwechsel"),
    "Anzahl Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Anzahl Katheterwechsel"),
    "Anzahl Messungen" : MessageLookupByLibrary.simpleMessage("Anzahl Messungen"),
    "Anzahl Sensorenwechsel" : MessageLookupByLibrary.simpleMessage("Anzahl Sensorenwechsel"),
    "Anzahl Unterzuckerungen" : MessageLookupByLibrary.simpleMessage("Anzahl Unterzuckerungen"),
    "Anzahl der Sensoren zur Analyse hinzugefügt" : MessageLookupByLibrary.simpleMessage("Anzahl der Sensoren zur Analyse hinzugefügt"),
    "Anzahl:" : MessageLookupByLibrary.simpleMessage("Anzahl:"),
    "Anzeigeeinstellungen" : MessageLookupByLibrary.simpleMessage("Anzeigeeinstellungen"),
    "Auf 10be muss beim Server in den Standardeinstellungen der Haken bei \"cors\" aktiviert werden, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen. Wenn \"cors\" aktiviert wurde, muss auf dem Server eventuell noch ReDeploy gemacht werden, bevor es wirklich verfügbar ist." : MessageLookupByLibrary.simpleMessage("Auf 10be muss beim Server in den Standardeinstellungen der Haken bei \"cors\" aktiviert werden, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen. Wenn \"cors\" aktiviert wurde, muss auf dem Server eventuell noch ReDeploy gemacht werden, bevor es wirklich verfügbar ist."),
    "Auf Kacheln Bilder statt Namen anzeigen" : MessageLookupByLibrary.simpleMessage("Auf Kacheln Bilder statt Namen anzeigen"),
    "Auf dem Einstellungen-Dialog gibt es neben den URL-Eingabefeldern jeweils einen Button, um die URL in einem neuen Browser-Fenster zu öffnen." : MessageLookupByLibrary.simpleMessage("Auf dem Einstellungen-Dialog gibt es neben den URL-Eingabefeldern jeweils einen Button, um die URL in einem neuen Browser-Fenster zu öffnen."),
    "Auf den Kacheln können nun Bilder statt der Namen angezeigt werden. Die Bilder zeigen dann das ungefähre Aussehen der entsprechenden Seite an. Sie entsprechen nicht den tatsächlichen Daten, sondern sind nur eine visuelle Darstellung, die es manchem Benutzer vielleicht einfacher machen, die gewünschten Seiten schneller auszuwählen. Die Aktivierung der Bilder erfolgt im Einstellungsdialog." : MessageLookupByLibrary.simpleMessage("Auf den Kacheln können nun Bilder statt der Namen angezeigt werden. Die Bilder zeigen dann das ungefähre Aussehen der entsprechenden Seite an. Sie entsprechen nicht den tatsächlichen Daten, sondern sind nur eine visuelle Darstellung, die es manchem Benutzer vielleicht einfacher machen, die gewünschten Seiten schneller auszuwählen. Die Aktivierung der Bilder erfolgt im Einstellungsdialog."),
    "Auf den Seiten Profil und Basalrate wird in der Titelzeile jetzt wieder das Datum angezeigt, ab dem das Profil gilt." : MessageLookupByLibrary.simpleMessage("Auf den Seiten Profil und Basalrate wird in der Titelzeile jetzt wieder das Datum angezeigt, ab dem das Profil gilt."),
    "Auf der Analyseseite kann statt der Anzahl der Werte bei den Zielbereichen jetzt die Standardabweichung der Werte im Zielbereich angezeigt werden." : MessageLookupByLibrary.simpleMessage("Auf der Analyseseite kann statt der Anzahl der Werte bei den Zielbereichen jetzt die Standardabweichung der Werte im Zielbereich angezeigt werden."),
    "Auf der Analyseseite werden nun auch GVI und PGS ausgegeben." : MessageLookupByLibrary.simpleMessage("Auf der Analyseseite werden nun auch GVI und PGS ausgegeben."),
    "Auf der Analyseseite wird jetzt auch die Standardabweichung aller Werte der Periode angezeigt." : MessageLookupByLibrary.simpleMessage("Auf der Analyseseite wird jetzt auch die Standardabweichung aller Werte der Periode angezeigt."),
    "Auf der Profilseite wurde die Spalte für die Werte von ICR verbreitert." : MessageLookupByLibrary.simpleMessage("Auf der Profilseite wurde die Spalte für die Werte von ICR verbreitert."),
    "Auf der Seite \"Profil\" wird die Gültigkeit jetzt mit Uhrzeit angezeigt." : MessageLookupByLibrary.simpleMessage("Auf der Seite \"Profil\" wird die Gültigkeit jetzt mit Uhrzeit angezeigt."),
    "Auf der Seite \"Stündliche Statistik\" gibt es eine neue Option, um auch Spalten mit 10% und 90% anzeigen zu lassen." : MessageLookupByLibrary.simpleMessage("Auf der Seite \"Stündliche Statistik\" gibt es eine neue Option, um auch Spalten mit 10% und 90% anzeigen zu lassen."),
    "Auf der Seite Protokoll werden jetzt auch Insulinabgaben angezeigt, die z.B. über xdrip eingegeben wurden." : MessageLookupByLibrary.simpleMessage("Auf der Seite Protokoll werden jetzt auch Insulinabgaben angezeigt, die z.B. über xdrip eingegeben wurden."),
    "Aufhebung von temp. Ziel" : MessageLookupByLibrary.simpleMessage("Aufhebung von temp. Ziel"),
    "Aufsummierte Werte" : MessageLookupByLibrary.simpleMessage("Aufsummierte Werte"),
    "Aus den Profilen ermitteln" : MessageLookupByLibrary.simpleMessage("Aus den Profilen ermitteln"),
    "Ausgabe" : MessageLookupByLibrary.simpleMessage("Ausgabe"),
    "Ausgabe Parameter" : MessageLookupByLibrary.simpleMessage("Ausgabe Parameter"),
    "Ausgewertete Tage" : MessageLookupByLibrary.simpleMessage("Ausgewertete Tage"),
    "Ausgewählter Zeitraum" : MessageLookupByLibrary.simpleMessage("Ausgewählter Zeitraum"),
    "Ausrichtung" : MessageLookupByLibrary.simpleMessage("Ausrichtung"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("Auswertung"),
    "Automatisch" : MessageLookupByLibrary.simpleMessage("Automatisch"),
    "Automatisch_theme selection - automatic" : MessageLookupByLibrary.simpleMessage("Automatisch"),
    "Basal" : MessageLookupByLibrary.simpleMessage("Basal"),
    "Basal 0%" : MessageLookupByLibrary.simpleMessage("Basal 0%"),
    "Basal ges." : MessageLookupByLibrary.simpleMessage("Basal ges."),
    "Basal mit zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Basal mit zwei Nachkommastellen"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("Basalrate"),
    "Basalrate\nIE / Stunde" : MessageLookupByLibrary.simpleMessage("Basalrate\nIE / Stunde"),
    "Basalrate anzeigen" : MessageLookupByLibrary.simpleMessage("Basalrate anzeigen"),
    "Batteriewechsel" : MessageLookupByLibrary.simpleMessage("Batteriewechsel"),
    "Behandlungen" : MessageLookupByLibrary.simpleMessage("Behandlungen"),
    "Bei Herokuapp und anderen Anbietern kostenloser Datenbankinstanzen ist der Speicherplatz der Instanz beschränkt, weshalb sie irgendwann voll ist. Dann kann man zwar eine neue Instanz anlegen, Nightscout Reporter benötigt aber für eine lückenlose Darstellung aller Tage Zugriff auf alle Instanzen, für die man eine Auswertung erhalten will. Deshalb können nun mehrere URLs für die Nightscout Instanzen eingegeben werden. Zusätzlich muss noch eingegeben werden, welches der erste und der letzte Tag mit Daten ist. Mit diesen Informationen ist es Nightscout Reporter dann möglich die benötigten Daten lückenlos auch über mehrere Instanzen hinweg auszuwerten." : MessageLookupByLibrary.simpleMessage("Bei Herokuapp und anderen Anbietern kostenloser Datenbankinstanzen ist der Speicherplatz der Instanz beschränkt, weshalb sie irgendwann voll ist. Dann kann man zwar eine neue Instanz anlegen, Nightscout Reporter benötigt aber für eine lückenlose Darstellung aller Tage Zugriff auf alle Instanzen, für die man eine Auswertung erhalten will. Deshalb können nun mehrere URLs für die Nightscout Instanzen eingegeben werden. Zusätzlich muss noch eingegeben werden, welches der erste und der letzte Tag mit Daten ist. Mit diesen Informationen ist es Nightscout Reporter dann möglich die benötigten Daten lückenlos auch über mehrere Instanzen hinweg auszuwerten."),
    "Bei Tagesgrafiken und Wochengrafiken gibt es jetzt die Möglichkeit 1, 2, 4, 8 oder 16 Grafiken auf einer Seite zu platzieren." : MessageLookupByLibrary.simpleMessage("Bei Tagesgrafiken und Wochengrafiken gibt es jetzt die Möglichkeit 1, 2, 4, 8 oder 16 Grafiken auf einer Seite zu platzieren."),
    "Bei der Auswertung kann nun ein Bereich angezeigt werden, in dem die Anzahl an Unterzuckerungen während des ausgewählten Zeitraums und der Zeitpunkt der letzten Unterzuckerung angezeigt werden." : MessageLookupByLibrary.simpleMessage("Bei der Auswertung kann nun ein Bereich angezeigt werden, in dem die Anzahl an Unterzuckerungen während des ausgewählten Zeitraums und der Zeitpunkt der letzten Unterzuckerung angezeigt werden."),
    "Bei der Basalrate und dem Profil gibt es nun eine Option jeweils nur das letzte im entsprechenden Zeitraum ausgeben zu lassen. Das verringert die Blätterflut bei häufigem Profilwechsel." : MessageLookupByLibrary.simpleMessage("Bei der Basalrate und dem Profil gibt es nun eine Option jeweils nur das letzte im entsprechenden Zeitraum ausgeben zu lassen. Das verringert die Blätterflut bei häufigem Profilwechsel."),
    "Bei der Berechnung der Kohlenhydrate werden weitere Datensätze berücksichtigt" : MessageLookupByLibrary.simpleMessage("Bei der Berechnung der Kohlenhydrate werden weitere Datensätze berücksichtigt"),
    "Bei der Profilermittlung wurde manchmal der letzte Profilwechsel ignoriert. Das ist nun behoben." : MessageLookupByLibrary.simpleMessage("Bei der Profilermittlung wurde manchmal der letzte Profilwechsel ignoriert. Das ist nun behoben."),
    "Beim Auslesen des Profils ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("Beim Auslesen des Profils ist ein Fehler aufgetreten."),
    "Beim CGP werden die aktuellen Werte jetzt in der Legende angezeigt." : MessageLookupByLibrary.simpleMessage("Beim CGP werden die aktuellen Werte jetzt in der Legende angezeigt."),
    "Beim Erzeugen des PDF ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("Beim Erzeugen des PDF ist ein Fehler aufgetreten."),
    "Beim Glukose Perzentil Diagramm kann man nun ein Maximum für die Skalierung festlegen. Wenn es auf \"Automatisch\" gesetzt wird, wird das Maximum wie bisher auch ermittelt. Bei einem anderen Wert wird die Obergrenze für das Diagramm auf diesen Wert festgesetzt. Damit ist es leichter möglich zwei Diagramme miteinander zu vergleichen, deren Obergrenze unterschiedlich ist." : MessageLookupByLibrary.simpleMessage("Beim Glukose Perzentil Diagramm kann man nun ein Maximum für die Skalierung festlegen. Wenn es auf \"Automatisch\" gesetzt wird, wird das Maximum wie bisher auch ermittelt. Bei einem anderen Wert wird die Obergrenze für das Diagramm auf diesen Wert festgesetzt. Damit ist es leichter möglich zwei Diagramme miteinander zu vergleichen, deren Obergrenze unterschiedlich ist."),
    "Beim Laden der Behandlungsdaten werden doppelte Datensätze herausgefiltert." : MessageLookupByLibrary.simpleMessage("Beim Laden der Behandlungsdaten werden doppelte Datensätze herausgefiltert."),
    "Beim Laden der Daten wird das entsprechende Datumsformat zur Anzeige verwendet" : MessageLookupByLibrary.simpleMessage("Beim Laden der Daten wird das entsprechende Datumsformat zur Anzeige verwendet"),
    "Beim Perzentil Diagramm gibt es eine neue Option, mit der man die Basalrate unter dem Diagramm anzeigen lassen kann. Da das Diagramm normalerweise einen grösseren Zeitraum umspannt, wird dort die Basalrate angezeigt, die zu Beginn des Zeitraums aktiv war." : MessageLookupByLibrary.simpleMessage("Beim Perzentil Diagramm gibt es eine neue Option, mit der man die Basalrate unter dem Diagramm anzeigen lassen kann. Da das Diagramm normalerweise einen grösseren Zeitraum umspannt, wird dort die Basalrate angezeigt, die zu Beginn des Zeitraums aktiv war."),
    "Benutzer können ein User-Token angeben, um sich mit geschützten Nightscout-Instanzen zu verbinden" : MessageLookupByLibrary.simpleMessage("Benutzer können ein User-Token angeben, um sich mit geschützten Nightscout-Instanzen zu verbinden"),
    "Benutzer können nun gelöscht werden" : MessageLookupByLibrary.simpleMessage("Benutzer können nun gelöscht werden"),
    "Benutzerdaten" : MessageLookupByLibrary.simpleMessage("Benutzerdaten"),
    "Benutzerdaten werden nun verschlüsselt im Browser gespeichert" : MessageLookupByLibrary.simpleMessage("Benutzerdaten werden nun verschlüsselt im Browser gespeichert"),
    "Berechnete IE für Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Berechnete IE für Kohlenhydrate"),
    "Berechnete IE für Kohlenhydrate anzeigen" : MessageLookupByLibrary.simpleMessage("Berechnete IE für Kohlenhydrate anzeigen"),
    "Bereite Daten vor..." : MessageLookupByLibrary.simpleMessage("Bereite Daten vor..."),
    "Bestätigung" : MessageLookupByLibrary.simpleMessage("Bestätigung"),
    "Bewegung" : MessageLookupByLibrary.simpleMessage("Bewegung"),
    "Bewegung anzeigen" : MessageLookupByLibrary.simpleMessage("Bewegung anzeigen"),
    "Bezeichnung" : MessageLookupByLibrary.simpleMessage("Bezeichnung"),
    "Bis" : MessageLookupByLibrary.simpleMessage("Bis"),
    "Bisher fehlende Summenwerte in der Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Bisher fehlende Summenwerte in der Tagesstatistik hinzugefügt"),
    "Bitte den Dateinamen für die Speicherung auswählen" : MessageLookupByLibrary.simpleMessage("Bitte den Dateinamen für die Speicherung auswählen"),
    "Bitte einen Zeitraum wählen." : MessageLookupByLibrary.simpleMessage("Bitte einen Zeitraum wählen."),
    "Bitte überprüfe die Aktivierung der Wochentage unter dem Monat" : MessageLookupByLibrary.simpleMessage("Bitte überprüfe die Aktivierung der Wochentage unter dem Monat"),
    "Blutige Messung" : MessageLookupByLibrary.simpleMessage("Blutige Messung"),
    "Blutige Werte sollten jetzt auch bei mmol-Daten korrekt in der Tagesgrafik angezeigt werden." : MessageLookupByLibrary.simpleMessage("Blutige Werte sollten jetzt auch bei mmol-Daten korrekt in der Tagesgrafik angezeigt werden."),
    "Blutwerte werden jetzt auch bei mmol/L in den Grafiken korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Blutwerte werden jetzt auch bei mmol/L in den Grafiken korrekt angezeigt."),
    "Bolus" : MessageLookupByLibrary.simpleMessage("Bolus"),
    "Bolus Rechner_bolus calculated by the bolus wizard" : MessageLookupByLibrary.simpleMessage("Bolus Rechner"),
    "Bolus ges." : MessageLookupByLibrary.simpleMessage("Bolus ges."),
    "Bolusarten anzeigen" : MessageLookupByLibrary.simpleMessage("Bolusarten anzeigen"),
    "Bolusspalte anzeigen" : MessageLookupByLibrary.simpleMessage("Bolusspalte anzeigen"),
    "CGP" : MessageLookupByLibrary.simpleMessage("CGP"),
    "CGP immer mit Standard Zielbereich" : MessageLookupByLibrary.simpleMessage("CGP immer mit Standard Zielbereich"),
    "COB (Carbs On Board) anzeigen" : MessageLookupByLibrary.simpleMessage("COB (Carbs On Board) anzeigen"),
    "Comprehensive Glucose Pentagon" : MessageLookupByLibrary.simpleMessage("Comprehensive Glucose Pentagon"),
    "Da wir seit einiger Zeit in Europa eine DSGVO haben, werden im Folgenden noch die Vorschriften dafür erfüllt. Der folgende Text ist nur auf Deutsch verfügbar:" : MessageLookupByLibrary.simpleMessage("Da wir seit einiger Zeit in Europa eine DSGVO haben, werden im Folgenden noch die Vorschriften dafür erfüllt. Der folgende Text ist nur auf Deutsch verfügbar:"),
    "Das \"Comprehensive Glucose Pentagon\" (Umfassendes Glukose Fünfeck) wurde als eigenes PDF und als Zusatzseite zur Tagesgrafik und Wochengrafik hinzugefügt. Es handelt sich hierbei um eine Darstellung von fünf Messgrössen, mit deren Hilfe sich die Qualität der Therapie ermitteln und mit anderen vergleichen lässt. Auf den Ausdrucken wird ein Verweis auf die zugrunde liegende Abhandlung ausgegeben." : MessageLookupByLibrary.simpleMessage("Das \"Comprehensive Glucose Pentagon\" (Umfassendes Glukose Fünfeck) wurde als eigenes PDF und als Zusatzseite zur Tagesgrafik und Wochengrafik hinzugefügt. Es handelt sich hierbei um eine Darstellung von fünf Messgrössen, mit deren Hilfe sich die Qualität der Therapie ermitteln und mit anderen vergleichen lässt. Auf den Ausdrucken wird ein Verweis auf die zugrunde liegende Abhandlung ausgegeben."),
    "Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr." : MessageLookupByLibrary.simpleMessage("Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr."),
    "Das CGP wird jetzt auch bei extremen Werten korrekt erzeugt." : MessageLookupByLibrary.simpleMessage("Das CGP wird jetzt auch bei extremen Werten korrekt erzeugt."),
    "Das Control für die Eingabe des Zeitraums wurde angepasst, damit es auf schmalen Display auch korrekt dargestellt wird." : MessageLookupByLibrary.simpleMessage("Das Control für die Eingabe des Zeitraums wurde angepasst, damit es auf schmalen Display auch korrekt dargestellt wird."),
    "Das Enddatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("Das Enddatum ist nicht korrekt"),
    "Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag." : MessageLookupByLibrary.simpleMessage("Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag."),
    "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren." : MessageLookupByLibrary.simpleMessage("Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren."),
    "Das Problem, dass bestimmte Tage nicht erzeugt werden konnten, wurde behoben." : MessageLookupByLibrary.simpleMessage("Das Problem, dass bestimmte Tage nicht erzeugt werden konnten, wurde behoben."),
    "Das Profil-PDF wird nun im Querformat erzeugt, um auch Profile mit vielen Einträgen für die Parameter brauchbar darstellen zu können." : MessageLookupByLibrary.simpleMessage("Das Profil-PDF wird nun im Querformat erzeugt, um auch Profile mit vielen Einträgen für die Parameter brauchbar darstellen zu können."),
    "Das Startdatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("Das Startdatum ist nicht korrekt"),
    "Das gelbe Fünfeck stellt den Wertebereich des angegebenen Zeitraums dar." : MessageLookupByLibrary.simpleMessage("Das gelbe Fünfeck stellt den Wertebereich des angegebenen Zeitraums dar."),
    "Das grüne Fünfeck stellt den Wertebereich eines gesunden Menschen ohne Diabetes dar." : MessageLookupByLibrary.simpleMessage("Das grüne Fünfeck stellt den Wertebereich eines gesunden Menschen ohne Diabetes dar."),
    "Daten bis" : MessageLookupByLibrary.simpleMessage("Daten bis"),
    "Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen." : MessageLookupByLibrary.simpleMessage("Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen."),
    "Daten verschiedener Uploader werden nun besser interpretiert." : MessageLookupByLibrary.simpleMessage("Daten verschiedener Uploader werden nun besser interpretiert."),
    "Daten von" : MessageLookupByLibrary.simpleMessage("Daten von"),
    "Daten, die von xDrip als sync markiert wurden, werden bei der Auswertung ignoriert." : MessageLookupByLibrary.simpleMessage("Daten, die von xDrip als sync markiert wurden, werden bei der Auswertung ignoriert."),
    "Datenschutzerklärung" : MessageLookupByLibrary.simpleMessage("Datenschutzerklärung"),
    "Datum" : MessageLookupByLibrary.simpleMessage("Datum"),
    "Dauer der Insulinaktivität (DIA)" : MessageLookupByLibrary.simpleMessage("Dauer der Insulinaktivität (DIA)"),
    "Dauer der Kohlenhydrataktivität" : MessageLookupByLibrary.simpleMessage("Dauer der Kohlenhydrataktivität"),
    "Dauer der abgeschalteten Basalrate anzeigen" : MessageLookupByLibrary.simpleMessage("Dauer der abgeschalteten Basalrate anzeigen"),
    "Dauer mit Minutenbruchteil" : MessageLookupByLibrary.simpleMessage("Dauer mit Minutenbruchteil"),
    "Der Fehler im Profil, der dazu führte, dass die Werte für ISF und Zielbereich falsch umgerechnet werden, wurde behoben." : MessageLookupByLibrary.simpleMessage("Der Fehler im Profil, der dazu führte, dass die Werte für ISF und Zielbereich falsch umgerechnet werden, wurde behoben."),
    "Der Fehler mit der Vervielfachung der Kohlenhydrate bei wiederholter Ausgabe der PDFs wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Der Fehler mit der Vervielfachung der Kohlenhydrate bei wiederholter Ausgabe der PDFs wurde korrigiert."),
    "Der Zeitraum enthält keine auswertbaren Tage" : MessageLookupByLibrary.simpleMessage("Der Zeitraum enthält keine auswertbaren Tage"),
    "Der prognostische glykämische Risikoparameter stellt das Risiko von Langzeitkomplikationen dar (bisher nicht durch Studien belegt)." : MessageLookupByLibrary.simpleMessage("Der prognostische glykämische Risikoparameter stellt das Risiko von Langzeitkomplikationen dar (bisher nicht durch Studien belegt)."),
    "Details des Profilwechsels" : MessageLookupByLibrary.simpleMessage("Details des Profilwechsels"),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("Deutsch"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("Diabetes seit"),
    "Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an" : MessageLookupByLibrary.simpleMessage("Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an"),
    "Die Analysewerte wurden nicht ganz korrekt ermittelt. Das wurde korrigiert und nun sollten die statistischen Daten über den Zeitraum richtig ausgewertet werden." : MessageLookupByLibrary.simpleMessage("Die Analysewerte wurden nicht ganz korrekt ermittelt. Das wurde korrigiert und nun sollten die statistischen Daten über den Zeitraum richtig ausgewertet werden."),
    "Die Angabe DIA auf der Profilseite wird nun mit zwei Nachkommastellen angezeigt." : MessageLookupByLibrary.simpleMessage("Die Angabe DIA auf der Profilseite wird nun mit zwei Nachkommastellen angezeigt."),
    "Die Aufsummierung der Werte in der Analyse wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Die Aufsummierung der Werte in der Analyse wurde korrigiert."),
    "Die Aufteilung auf mehrere PDF-Dateien funktioniert jetzt besser." : MessageLookupByLibrary.simpleMessage("Die Aufteilung auf mehrere PDF-Dateien funktioniert jetzt besser."),
    "Die Auswahl des Zeitraums ist nun flexibler. Die Auswahl erfolgt in einem Dialog, der die eingestellte Sprache berücksichtigt. Mit der Auswahl der vorbelegten Bereiche (Heute, Letzte Woche, usw.) wird festgelegt, dass beim nächsten Aufruf das aktuelle Datum als Grundlage für den Bereich verwendet wird. Wenn der Bereich direkt im Kalender festgelegt wird, dann gilt dieser beim nächsten Aufruf so wie er festgelegt wurde. Standardmässig ist der erste Tag der Woche jetzt ein Montag. Dieser kann aber durch Anklicken des Wochentags in der Titelzeile des Monats auf die eigene Präferenz festgelegt werden. Die Eingabe der Datumsfelder erfolgt in der Form, die der Sprache entspricht (Tag.Monat.Jahr für deutsch, Monat/Tag/Jahr für englisch)." : MessageLookupByLibrary.simpleMessage("Die Auswahl des Zeitraums ist nun flexibler. Die Auswahl erfolgt in einem Dialog, der die eingestellte Sprache berücksichtigt. Mit der Auswahl der vorbelegten Bereiche (Heute, Letzte Woche, usw.) wird festgelegt, dass beim nächsten Aufruf das aktuelle Datum als Grundlage für den Bereich verwendet wird. Wenn der Bereich direkt im Kalender festgelegt wird, dann gilt dieser beim nächsten Aufruf so wie er festgelegt wurde. Standardmässig ist der erste Tag der Woche jetzt ein Montag. Dieser kann aber durch Anklicken des Wochentags in der Titelzeile des Monats auf die eigene Präferenz festgelegt werden. Die Eingabe der Datumsfelder erfolgt in der Form, die der Sprache entspricht (Tag.Monat.Jahr für deutsch, Monat/Tag/Jahr für englisch)."),
    "Die Auswahl des Zeitraums und der Benutzer wurde in die Titelzeile verschoben." : MessageLookupByLibrary.simpleMessage("Die Auswahl des Zeitraums und der Benutzer wurde in die Titelzeile verschoben."),
    "Die Balken für das Bolusinsulin in der Tagesgrafik werden nun entsprechend dem Maximalwert an Bolusinsulin an dem Tag skaliert." : MessageLookupByLibrary.simpleMessage("Die Balken für das Bolusinsulin in der Tagesgrafik werden nun entsprechend dem Maximalwert an Bolusinsulin an dem Tag skaliert."),
    "Die Balken in der Analyse werden jetzt korrekt skaliert." : MessageLookupByLibrary.simpleMessage("Die Balken in der Analyse werden jetzt korrekt skaliert."),
    "Die Basalratenprofile für den Tag werden nun auch anhand der Behandlungsdaten ermittelt. Profilwechsel werden in der Tagesgrafik angezeigt und sollten ab dem Zeitpunkt des Wechsels auch eine korrekte Basalratenanpassung anzeigen." : MessageLookupByLibrary.simpleMessage("Die Basalratenprofile für den Tag werden nun auch anhand der Behandlungsdaten ermittelt. Profilwechsel werden in der Tagesgrafik angezeigt und sollten ab dem Zeitpunkt des Wechsels auch eine korrekte Basalratenanpassung anzeigen."),
    "Die Berechnung der PDF-Grössen wurde korrigiert, so dass nun weniger PDFs erstellt werden, wenn sie aufgrund der Grösse aufgeteilt werden." : MessageLookupByLibrary.simpleMessage("Die Berechnung der PDF-Grössen wurde korrigiert, so dass nun weniger PDFs erstellt werden, wenn sie aufgrund der Grösse aufgeteilt werden."),
    "Die Berechnung der Summenzeile auf der Seite Tagesstatistik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Die Berechnung der Summenzeile auf der Seite Tagesstatistik wurde korrigiert."),
    "Die Berechnung der tatsächlichen Basalrate wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Die Berechnung der tatsächlichen Basalrate wurde korrigiert."),
    "Die Berechnung des täglichen Insulins berücksichtigt nun auch die SMB." : MessageLookupByLibrary.simpleMessage("Die Berechnung des täglichen Insulins berücksichtigt nun auch die SMB."),
    "Die Bilder auf den Kacheln sind nun in der jeweiligen Sprache beschriftet." : MessageLookupByLibrary.simpleMessage("Die Bilder auf den Kacheln sind nun in der jeweiligen Sprache beschriftet."),
    "Die Buttons für die Erzeugung vergangener Zeiträume wurden entfernt. Das kann jetzt im neuen PDF-Dialog eingestellt werden." : MessageLookupByLibrary.simpleMessage("Die Buttons für die Erzeugung vergangener Zeiträume wurden entfernt. Das kann jetzt im neuen PDF-Dialog eingestellt werden."),
    "Die Buttons für die vergangenen Perioden werden nicht angezeigt, wenn kein Zeitraum oder kein PDF ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("Die Buttons für die vergangenen Perioden werden nicht angezeigt, wenn kein Zeitraum oder kein PDF ausgewählt wurde."),
    "Die Daten, die Du hier eingibst, werden normalerweise im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. In diesem Fall werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("Die Daten, die Du hier eingibst, werden normalerweise im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. In diesem Fall werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden."),
    "Die Eingabe des Zugriffsschlüssels auf dem Einstellungen-Dialog kann jetzt mit einem Button neben dem Eingabefeld lesbar gemacht werden." : MessageLookupByLibrary.simpleMessage("Die Eingabe des Zugriffsschlüssels auf dem Einstellungen-Dialog kann jetzt mit einem Button neben dem Eingabefeld lesbar gemacht werden."),
    "Die Einstellung für das Öffnen des PDF im gleichen Fenster, das Herunterladen des PDFs und den Hinweis auf Nightscout im PDF wurde aus den Einstellungen in die Ausgabe Parameter verschoben. Dadurch kann man das bei jedem Ausdruck schnell festlegen und ändern." : MessageLookupByLibrary.simpleMessage("Die Einstellung für das Öffnen des PDF im gleichen Fenster, das Herunterladen des PDFs und den Hinweis auf Nightscout im PDF wurde aus den Einstellungen in die Ausgabe Parameter verschoben. Dadurch kann man das bei jedem Ausdruck schnell festlegen und ändern."),
    "Die Einstellungen für das Herunterladen des PDFs, das Öffnen im gleichen Fenster und die Maximalgrösse der PDFs wurden von der Synchronisierung mit Google Drive ausgenommen, weil sie speziell für den verwendeten Browser oder das verwendete Gerät benötigt werden. Sie werden nach wie vor gespeichert, aber sie werden nicht zwischen verschiedenen Browsern synchronisiert." : MessageLookupByLibrary.simpleMessage("Die Einstellungen für das Herunterladen des PDFs, das Öffnen im gleichen Fenster und die Maximalgrösse der PDFs wurden von der Synchronisierung mit Google Drive ausgenommen, weil sie speziell für den verwendeten Browser oder das verwendete Gerät benötigt werden. Sie werden nach wie vor gespeichert, aber sie werden nicht zwischen verschiedenen Browsern synchronisiert."),
    "Die Einträge im Protokoll für temporäre Ziele werden jetzt auch bei mmol-Angaben richtig angezeigt." : MessageLookupByLibrary.simpleMessage("Die Einträge im Protokoll für temporäre Ziele werden jetzt auch bei mmol-Angaben richtig angezeigt."),
    "Die Ermittlung der Einheit (mg/dl oder mmol/l) wird nun flexibler gehandhabt, so dass auch Leerzeichen in der entsprechenden Einstellung nicht mehr zu einer Fehlinterpretation führen." : MessageLookupByLibrary.simpleMessage("Die Ermittlung der Einheit (mg/dl oder mmol/l) wird nun flexibler gehandhabt, so dass auch Leerzeichen in der entsprechenden Einstellung nicht mehr zu einer Fehlinterpretation führen."),
    "Die Ermittlung der effektiven täglichen Basalrate wurde umstrukturiert und sollte nun genauere Werte ergeben." : MessageLookupByLibrary.simpleMessage("Die Ermittlung der effektiven täglichen Basalrate wurde umstrukturiert und sollte nun genauere Werte ergeben."),
    "Die Farbe für Bewegung in der Tagesgrafik wurde geändert." : MessageLookupByLibrary.simpleMessage("Die Farbe für Bewegung in der Tagesgrafik wurde geändert."),
    "Die Farben für Dialoge und Scrollbars wurden angepasst." : MessageLookupByLibrary.simpleMessage("Die Farben für Dialoge und Scrollbars wurden angepasst."),
    "Die Genauigkeit der ISF Angaben im Profil wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Die Genauigkeit der ISF Angaben im Profil wurde korrigiert."),
    "Die Genauigkeit der Insulindosierung wird aus dem Profil ermittelt. Der Wert mit der höchsten Genauigkeit legt fest, mit wieviel Nachkommastellen Basalratenwerte angezeigt werden." : MessageLookupByLibrary.simpleMessage("Die Genauigkeit der Insulindosierung wird aus dem Profil ermittelt. Der Wert mit der höchsten Genauigkeit legt fest, mit wieviel Nachkommastellen Basalratenwerte angezeigt werden."),
    "Die Glucose Perzentil Grafik wurde um die Tabelle \"Stündliche Statistik\" erweitert. Diese listet tabellarisch die Werte des Zeitraums für jede Stunde des Tages auf. Man kann entweder nur die Grafik, nur die Tabelle oder beides zusammen erzeugen lassen." : MessageLookupByLibrary.simpleMessage("Die Glucose Perzentil Grafik wurde um die Tabelle \"Stündliche Statistik\" erweitert. Diese listet tabellarisch die Werte des Zeitraums für jede Stunde des Tages auf. Man kann entweder nur die Grafik, nur die Tabelle oder beides zusammen erzeugen lassen."),
    "Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit." : MessageLookupByLibrary.simpleMessage("Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit."),
    "Die Icons auf einigen Buttons waren zu nahe am Text" : MessageLookupByLibrary.simpleMessage("Die Icons auf einigen Buttons waren zu nahe am Text"),
    "Die Kohlenhydratangaben auf der Tagesgrafik werden jetzt ohne den Zusatz KH ausgegeben." : MessageLookupByLibrary.simpleMessage("Die Kohlenhydratangaben auf der Tagesgrafik werden jetzt ohne den Zusatz KH ausgegeben."),
    "Die Legende der Tagesgrafik wurde um den Eintrag für Bewegung erweitert." : MessageLookupByLibrary.simpleMessage("Die Legende der Tagesgrafik wurde um den Eintrag für Bewegung erweitert."),
    "Die Legende der Tagesgrafik wurde um den Eintrag für blutige Messungen erweitert." : MessageLookupByLibrary.simpleMessage("Die Legende der Tagesgrafik wurde um den Eintrag für blutige Messungen erweitert."),
    "Die Links zu Nightscout und den Reports von Nightscout im Menü funktionieren jetzt auch richtig, wenn ein Usertoken angegeben wurde." : MessageLookupByLibrary.simpleMessage("Die Links zu Nightscout und den Reports von Nightscout im Menü funktionieren jetzt auch richtig, wenn ein Usertoken angegeben wurde."),
    "Die Listenansicht ist jetzt wieder scrollbar." : MessageLookupByLibrary.simpleMessage("Die Listenansicht ist jetzt wieder scrollbar."),
    "Die Microboli des Minimed 600 Uploaders werden jetzt auch ermittelt und in der Analyse ausgegeben, wenn sie vorhanden sind." : MessageLookupByLibrary.simpleMessage("Die Microboli des Minimed 600 Uploaders werden jetzt auch ermittelt und in der Analyse ausgegeben, wenn sie vorhanden sind."),
    "Die Microboli vom Minimed 600 Uploader wurden aus der Ausgabe entfernt, da es sich dabei nur um Temporäre Basalraten handelt." : MessageLookupByLibrary.simpleMessage("Die Microboli vom Minimed 600 Uploader wurden aus der Ausgabe entfernt, da es sich dabei nur um Temporäre Basalraten handelt."),
    "Die Mischung von zwei Seiten auf einer PDF-Seite, die manchmal vorkam, wurde behoben." : MessageLookupByLibrary.simpleMessage("Die Mischung von zwei Seiten auf einer PDF-Seite, die manchmal vorkam, wurde behoben."),
    "Die Möglichkeit für Beta-Funktionen wurde entfernt; die Betaversion ist nun hier zu finden:" : MessageLookupByLibrary.simpleMessage("Die Möglichkeit für Beta-Funktionen wurde entfernt; die Betaversion ist nun hier zu finden:"),
    "Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird" : MessageLookupByLibrary.simpleMessage("Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird"),
    "Die Oberfläche kann jetzt verschiedene Darstellungen annehmen. Diese zeigen sich zur Zeit durch geänderte Farben und ein angepasstes Icon im Browsertab und beim Laden der Seite. Das hat keine Auswirkungen auf die erzeugten PDF-Dateien. Es ist die Vorbereitung für eine teilweise anpassbare Oberfläche. Das Thema der Darstellung wird standardmässig vom System festgelegt, was zur Zeit heisst, dass im Dezember ein weihnachtliches Thema angezeigt wird. Das kann aber durch Anklicken des Icons, das ab jetzt links unten zu sehen ist, geändert werden. Beim Anklicken wird rechts neben dem Icon ein Bereich mit den verfügbaren Darstellungen eingeblendet. Das erste Icon (der kleine Zauberer) bedeutet dabei, dass die Darstellung vom System ermittelt wird. Zur Zeit bedeutet das die weihnachtliche Darstellung im Dezember. Es kann in Zukunft aber auch weitere Kriterien geben, anhand derer das Thema angepasst wird. Die direkte Festlegung eines Themas mit einem der anderen icons hat aber immer Vorrang vor der systemeigenen Logik." : MessageLookupByLibrary.simpleMessage("Die Oberfläche kann jetzt verschiedene Darstellungen annehmen. Diese zeigen sich zur Zeit durch geänderte Farben und ein angepasstes Icon im Browsertab und beim Laden der Seite. Das hat keine Auswirkungen auf die erzeugten PDF-Dateien. Es ist die Vorbereitung für eine teilweise anpassbare Oberfläche. Das Thema der Darstellung wird standardmässig vom System festgelegt, was zur Zeit heisst, dass im Dezember ein weihnachtliches Thema angezeigt wird. Das kann aber durch Anklicken des Icons, das ab jetzt links unten zu sehen ist, geändert werden. Beim Anklicken wird rechts neben dem Icon ein Bereich mit den verfügbaren Darstellungen eingeblendet. Das erste Icon (der kleine Zauberer) bedeutet dabei, dass die Darstellung vom System ermittelt wird. Zur Zeit bedeutet das die weihnachtliche Darstellung im Dezember. Es kann in Zukunft aber auch weitere Kriterien geben, anhand derer das Thema angepasst wird. Die direkte Festlegung eines Themas mit einem der anderen icons hat aber immer Vorrang vor der systemeigenen Logik."),
    "Die Positionierung der Notizen in der Tagesgrafik wurde korrigiert, so dass sie näher an der Uhrzeit stehen. Die Striche wurden so verkürzt, dass sie nur noch bis zum unteren Rand der Grafik gehen und nicht mehr durch die Wertetabelle." : MessageLookupByLibrary.simpleMessage("Die Positionierung der Notizen in der Tagesgrafik wurde korrigiert, so dass sie näher an der Uhrzeit stehen. Die Striche wurden so verkürzt, dass sie nur noch bis zum unteren Rand der Grafik gehen und nicht mehr durch die Wertetabelle."),
    "Die Profile für den Zeitraum wurden teilweise nicht korrekt identifiziert. Das sollte behoben sein." : MessageLookupByLibrary.simpleMessage("Die Profile für den Zeitraum wurden teilweise nicht korrekt identifiziert. Das sollte behoben sein."),
    "Die Profilseite wurde angepasst, damit Einträge für 24 Stunden auf eine Seite passen." : MessageLookupByLibrary.simpleMessage("Die Profilseite wurde angepasst, damit Einträge für 24 Stunden auf eine Seite passen."),
    "Die Reihenfolge der Formulare kann nun verändert werden. Dazu einfach das Handle auf der linken Seite des Buttons für das Formular anklicken, festhalten und an die Stelle ziehen, vor der es ausgedruckt werden soll." : MessageLookupByLibrary.simpleMessage("Die Reihenfolge der Formulare kann nun verändert werden. Dazu einfach das Handle auf der linken Seite des Buttons für das Formular anklicken, festhalten und an die Stelle ziehen, vor der es ausgedruckt werden soll."),
    "Die Seiten Profil und Basalrate zeigen nun bei einem Profil, das nur temporär während eines Tages aktiv war den Zeitraum an, in dem es aktiv war." : MessageLookupByLibrary.simpleMessage("Die Seiten Profil und Basalrate zeigen nun bei einem Profil, das nur temporär während eines Tages aktiv war den Zeitraum an, in dem es aktiv war."),
    "Die Seitenzahlen auf den Kacheln wurden weiter an den unteren Rand verschoben, damit sie immer gut lesbar sind." : MessageLookupByLibrary.simpleMessage("Die Seitenzahlen auf den Kacheln wurden weiter an den unteren Rand verschoben, damit sie immer gut lesbar sind."),
    "Die Skalen an den Grafiken wurden überarbeitet. Sie zeigen jetzt für mmol/L ganzzahlige Werte an und die Einheiten wurden entfernt. Diese stehen nur noch unten an der Grafik. Das betrifft die täglichen Grafiken, wöchentlichen Grafiken und das Glukose Percentil Diagramm." : MessageLookupByLibrary.simpleMessage("Die Skalen an den Grafiken wurden überarbeitet. Sie zeigen jetzt für mmol/L ganzzahlige Werte an und die Einheiten wurden entfernt. Diese stehen nur noch unten an der Grafik. Das betrifft die täglichen Grafiken, wöchentlichen Grafiken und das Glukose Percentil Diagramm."),
    "Die Spalten auf der Profilseite wurden korrigiert, damit auch längere Zeitnamen (z.B. in spanisch) Platz finden." : MessageLookupByLibrary.simpleMessage("Die Spalten auf der Profilseite wurden korrigiert, damit auch längere Zeitnamen (z.B. in spanisch) Platz finden."),
    "Die Standardabweichung wird jetzt auch bei mmol/L korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Die Standardabweichung wird jetzt auch bei mmol/L korrekt angezeigt."),
    "Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an" : MessageLookupByLibrary.simpleMessage("Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an"),
    "Die URL wurde noch nicht festgelegt" : MessageLookupByLibrary.simpleMessage("Die URL wurde noch nicht festgelegt"),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("Die URL wurde noch nicht festgelegt."),
    "Die Url zur Nightscout-API muss mit https beginnen, da Nightscout Reporter auch auf https läuft. Ein Zugriff auf unsichere http-Resourcen ist nicht möglich." : MessageLookupByLibrary.simpleMessage("Die Url zur Nightscout-API muss mit https beginnen, da Nightscout Reporter auch auf https läuft. Ein Zugriff auf unsichere http-Resourcen ist nicht möglich."),
    "Die Vorschaubilder auf den Kacheln passen sich abhängig von den ausgewählten Optionen teilweise an (z.B. die Auswahl von CGP bei Tagesgrafiken)." : MessageLookupByLibrary.simpleMessage("Die Vorschaubilder auf den Kacheln passen sich abhängig von den ausgewählten Optionen teilweise an (z.B. die Auswahl von CGP bei Tagesgrafiken)."),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz."),
    "Die Werte VarK und ToR im CGP werden bei Tages- und Wochengrafiken in der Legende und in der Grafik korrekt ausgegeben." : MessageLookupByLibrary.simpleMessage("Die Werte VarK und ToR im CGP werden bei Tages- und Wochengrafiken in der Legende und in der Grafik korrekt ausgegeben."),
    "Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt" : MessageLookupByLibrary.simpleMessage("Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt"),
    "Die Werte im CGP werden jetzt bei mmol-Angaben auch korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Die Werte im CGP werden jetzt bei mmol-Angaben auch korrekt angezeigt."),
    "Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. " : MessageLookupByLibrary.simpleMessage("Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. "),
    "Die berechneten IE für Kohlenhydrate in der Tagesgrafik wurden teilweise mit falschen Faktoren ermittelt. Der Fehler wurde behoben." : MessageLookupByLibrary.simpleMessage("Die berechneten IE für Kohlenhydrate in der Tagesgrafik wurden teilweise mit falschen Faktoren ermittelt. Der Fehler wurde behoben."),
    "Die eigenen Grenzwerte auf der Analyseseite in mmol/L werden nun korrekt berechnet." : MessageLookupByLibrary.simpleMessage("Die eigenen Grenzwerte auf der Analyseseite in mmol/L werden nun korrekt berechnet."),
    "Die einzelne Seite CGP kann jetzt auch im Querformat ausgegeben werden." : MessageLookupByLibrary.simpleMessage("Die einzelne Seite CGP kann jetzt auch im Querformat ausgegeben werden."),
    "Die fehlerhafte Platzierug der blutigen Werte bei mmol/L in der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Die fehlerhafte Platzierug der blutigen Werte bei mmol/L in der Tagesgrafik wurde korrigiert."),
    "Die fehlerhafte Zentrierung der Auswahlbuttons wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Die fehlerhafte Zentrierung der Auswahlbuttons wurde korrigiert."),
    "Die glykämische Variabilität stellt die Streuung der Werte um den glykämischen Mittelwert herum in Prozent dar." : MessageLookupByLibrary.simpleMessage("Die glykämische Variabilität stellt die Streuung der Werte um den glykämischen Mittelwert herum in Prozent dar."),
    "Die glykämische Variabilität wird jetzt im CGP auch bei Tages- und Wochengrafiken korrekt ausgegeben." : MessageLookupByLibrary.simpleMessage("Die glykämische Variabilität wird jetzt im CGP auch bei Tages- und Wochengrafiken korrekt ausgegeben."),
    "Die meisten Spalten auf der Seite \"Stündliche Statistik\" werden bei nicht vorhandenen Daten leer gelassen." : MessageLookupByLibrary.simpleMessage("Die meisten Spalten auf der Seite \"Stündliche Statistik\" werden bei nicht vorhandenen Daten leer gelassen."),
    "Die mittlerweile überflüssige Option zur Darstellung der Basalrate mit zwei Nachkommastellen wurde aus der Tagesgrafik entfernt." : MessageLookupByLibrary.simpleMessage("Die mittlerweile überflüssige Option zur Darstellung der Basalrate mit zwei Nachkommastellen wurde aus der Tagesgrafik entfernt."),
    "Die teilweise falsch zugewiesenen Grenzwerte für die Bereiche (niedrig, normal, hoch) wurden korrigiert." : MessageLookupByLibrary.simpleMessage("Die teilweise falsch zugewiesenen Grenzwerte für die Bereiche (niedrig, normal, hoch) wurden korrigiert."),
    "Die temporäre Basalrate am Anfang des Tages wurde bisher falsch gesetzt, wenn sie im vorherigen Tag gesetzt wurde. Das wurde behoben." : MessageLookupByLibrary.simpleMessage("Die temporäre Basalrate am Anfang des Tages wurde bisher falsch gesetzt, wenn sie im vorherigen Tag gesetzt wurde. Das wurde behoben."),
    "Die Überschrift über der Tabelle vom Glucose Perzentil Diagramm wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Die Überschrift über der Tabelle vom Glucose Perzentil Diagramm wurde korrigiert."),
    "Die Überschrift über der mittleren Spalte im Tagesprofil wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Die Überschrift über der mittleren Spalte im Tagesprofil wurde korrigiert."),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun."),
    "Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden." : MessageLookupByLibrary.simpleMessage("Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden."),
    "Diese Webseite speichert keine Daten auf Servern. Die benötigten Daten werden von der eingegebenen URL zur Nightscout-Instanz geholt und als PDF aufbereitet. Die Daten, die zur Funktion der Webseite benötigt werden, werden im localStorage des Browsers gespeichert und nicht an den Server übermittelt. Wenn die Synchronisierung mit Google Drive aktiviert wird, dann werden diese Daten zusätzlich in den Anwendungsdaten auf dem Google Drive des verbundenen Kontos gespeichert." : MessageLookupByLibrary.simpleMessage("Diese Webseite speichert keine Daten auf Servern. Die benötigten Daten werden von der eingegebenen URL zur Nightscout-Instanz geholt und als PDF aufbereitet. Die Daten, die zur Funktion der Webseite benötigt werden, werden im localStorage des Browsers gespeichert und nicht an den Server übermittelt. Wenn die Synchronisierung mit Google Drive aktiviert wird, dann werden diese Daten zusätzlich in den Anwendungsdaten auf dem Google Drive des verbundenen Kontos gespeichert."),
    "Dieser Regler legt fest, wie gross eine Ausgabe maximal werden darf, bevor sie auf mehrere PDF-Dateien aufgeteilt wird. Wenn bei Erstellung eines PDFs ein leeres Fenster angezeigt wird, dann hilft es normalerweise, diesen Regler weiter nach links zu bewegen." : MessageLookupByLibrary.simpleMessage("Dieser Regler legt fest, wie gross eine Ausgabe maximal werden darf, bevor sie auf mehrere PDF-Dateien aufgeteilt wird. Wenn bei Erstellung eines PDFs ein leeres Fenster angezeigt wird, dann hilft es normalerweise, diesen Regler weiter nach links zu bewegen."),
    "Diverse Abstürze beim Auslesen der Daten bereinigt" : MessageLookupByLibrary.simpleMessage("Diverse Abstürze beim Auslesen der Daten bereinigt"),
    "Drei Monate vorher" : MessageLookupByLibrary.simpleMessage("Drei Monate vorher"),
    "Dämmerung (06:00 - 07:59, 18:00 - 20:59)" : MessageLookupByLibrary.simpleMessage("Dämmerung (06:00 - 07:59, 18:00 - 20:59)"),
    "Eigene Grenzwerte" : MessageLookupByLibrary.simpleMessage("Eigene Grenzwerte"),
    "Ein Fehler in der Zahlenformatierung wurde behoben." : MessageLookupByLibrary.simpleMessage("Ein Fehler in der Zahlenformatierung wurde behoben."),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die letzten Tage bestimmter Monate nicht im Kalender-Control angezeigt wurden." : MessageLookupByLibrary.simpleMessage("Ein Fehler wurde behoben, der dafür sorgte, dass die letzten Tage bestimmter Monate nicht im Kalender-Control angezeigt wurden."),
    "Ein Fehler wurde behoben, der in der Tagesgrafik dazu führte, dass Texte in der Legende andere Texte überschrieben haben." : MessageLookupByLibrary.simpleMessage("Ein Fehler wurde behoben, der in der Tagesgrafik dazu führte, dass Texte in der Legende andere Texte überschrieben haben."),
    "Ein Fehler wurde wahrscheinlich behoben, der dazu führt, dass bei manchen Profilen der Wert für DIA nicht korrekt ausgelesen wurde." : MessageLookupByLibrary.simpleMessage("Ein Fehler wurde wahrscheinlich behoben, der dazu führt, dass bei manchen Profilen der Wert für DIA nicht korrekt ausgelesen wurde."),
    "Ein Jahr vorher" : MessageLookupByLibrary.simpleMessage("Ein Jahr vorher"),
    "Ein Link zur Facebookseite von Nightscout Reporter wurde im Menü hinzugefügt." : MessageLookupByLibrary.simpleMessage("Ein Link zur Facebookseite von Nightscout Reporter wurde im Menü hinzugefügt."),
    "Ein Shortcut beinhaltet den Zeitraum und die ausgewählten Formulare mit den jeweils gesetzten Optionen. Wenn ein Shortcut aktiviert wird, werden die darin gespeicherten Einstellungen geladen und aktiviert." : MessageLookupByLibrary.simpleMessage("Ein Shortcut beinhaltet den Zeitraum und die ausgewählten Formulare mit den jeweils gesetzten Optionen. Wenn ein Shortcut aktiviert wird, werden die darin gespeicherten Einstellungen geladen und aktiviert."),
    "Ein möglicher Absturz bei der Ausgabe des CGP bei der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Ein möglicher Absturz bei der Ausgabe des CGP bei der Tagesgrafik wurde korrigiert."),
    "Eine" : MessageLookupByLibrary.simpleMessage("Eine"),
    "Einen Monat vorher" : MessageLookupByLibrary.simpleMessage("Einen Monat vorher"),
    "Einige Browser sind nicht in der Lage PDF Dateien anzuzeigen, die eine bestimmte Grösse überschreiten. Da das von verschiedenen Faktoren abhängt, die sich nicht ohne Weiteres automatisch ermitteln lassen, gibt es die Möglichkeit, statt einer grossen PDF Datei, die nicht angezeigt werden kann, mehrere kleinere PDF Dateien zu erzeugen, die der Browser anzeigen kann. In den Einstellungen und hier kann diese Grösse festgelegt werden. Diese Seite hier wird nur angezeigt, wenn das PDF aufgeteilt werden musste. Wenn nur ein PDF erzeugt wurde, dann wird es direkt angezeigt." : MessageLookupByLibrary.simpleMessage("Einige Browser sind nicht in der Lage PDF Dateien anzuzeigen, die eine bestimmte Grösse überschreiten. Da das von verschiedenen Faktoren abhängt, die sich nicht ohne Weiteres automatisch ermitteln lassen, gibt es die Möglichkeit, statt einer grossen PDF Datei, die nicht angezeigt werden kann, mehrere kleinere PDF Dateien zu erzeugen, die der Browser anzeigen kann. In den Einstellungen und hier kann diese Grösse festgelegt werden. Diese Seite hier wird nur angezeigt, wenn das PDF aufgeteilt werden musste. Wenn nur ein PDF erzeugt wurde, dann wird es direkt angezeigt."),
    "Einige Formulare können nun mit Parametern konfiguriert werden; hierzu den Pfeil am rechten Rand des Formularbuttons anklicken und im aufgeklappten Bereich die entsprechenden Einstellungen vornehmen; der Pfeil erscheint erst, wenn das Formular zum Ausdruck markiert wurde" : MessageLookupByLibrary.simpleMessage("Einige Formulare können nun mit Parametern konfiguriert werden; hierzu den Pfeil am rechten Rand des Formularbuttons anklicken und im aufgeklappten Bereich die entsprechenden Einstellungen vornehmen; der Pfeil erscheint erst, wenn das Formular zum Ausdruck markiert wurde"),
    "Einige der Optionen für die PDFs wurden hierarchisch angeordnet. Es macht z.B. keinen Sinn, die SMB Werte in der Tagesgrafik an der Kurve platzieren zu lassen, wenn die SMB Werte gar nicht angezeigt werden. Deswegen werden Optionen, die von einer anderen Option abhängen nur dann angezeigt, wenn die entsprechende Option markiert ist. Dadurch ändert sich leider auch die Speicherung der Optionen, weshalb sich die aktuelle Auswahl der Optionen bei manchen PDFs verändert. Da müssen die Optionen dann neu gesetzt werden." : MessageLookupByLibrary.simpleMessage("Einige der Optionen für die PDFs wurden hierarchisch angeordnet. Es macht z.B. keinen Sinn, die SMB Werte in der Tagesgrafik an der Kurve platzieren zu lassen, wenn die SMB Werte gar nicht angezeigt werden. Deswegen werden Optionen, die von einer anderen Option abhängen nur dann angezeigt, wenn die entsprechende Option markiert ist. Dadurch ändert sich leider auch die Speicherung der Optionen, weshalb sich die aktuelle Auswahl der Optionen bei manchen PDFs verändert. Da müssen die Optionen dann neu gesetzt werden."),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("Einstellungen"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("Einstellungen für die Verwendung der Seite vornehmen"),
    "Einstellungen von Release-Version übernehmen" : MessageLookupByLibrary.simpleMessage("Einstellungen von Release-Version übernehmen"),
    "English (GB)" : MessageLookupByLibrary.simpleMessage("English (GB)"),
    "English (USA)" : MessageLookupByLibrary.simpleMessage("English (USA)"),
    "Ermittle ersten Tag mit Daten" : MessageLookupByLibrary.simpleMessage("Ermittle ersten Tag mit Daten"),
    "Ermittle letzten Tag mit Daten" : MessageLookupByLibrary.simpleMessage("Ermittle letzten Tag mit Daten"),
    "Erzeuge PDF..." : MessageLookupByLibrary.simpleMessage("Erzeuge PDF..."),
    "Es gibt ein neues PDF namens Tagesstunden. Dieses zeigt die Durchschnittswerte eines Tages in jedem Stundenintervall an und färbt die Zellen entsprechend des Glukosewertes ein. So hat man eine gut Übersicht über die Werteverteilung im ausgewählten Zeitraum." : MessageLookupByLibrary.simpleMessage("Es gibt ein neues PDF namens Tagesstunden. Dieses zeigt die Durchschnittswerte eines Tages in jedem Stundenintervall an und färbt die Zellen entsprechend des Glukosewertes ein. So hat man eine gut Übersicht über die Werteverteilung im ausgewählten Zeitraum."),
    "Es gibt ein neues PDF namens Tagestrend. Dieses zeigt die Werte eines Tages zusammen mit dem Trend zu jeder vollen Stunde, sowie der eingestellten Basalrate aus dem Profil. Das ist eine gute Übersicht für Basalratentests, um zu erkennen, wo etwas anzupassen ist." : MessageLookupByLibrary.simpleMessage("Es gibt ein neues PDF namens Tagestrend. Dieses zeigt die Werte eines Tages zusammen mit dem Trend zu jeder vollen Stunde, sowie der eingestellten Basalrate aus dem Profil. Das ist eine gute Übersicht für Basalratentests, um zu erkennen, wo etwas anzupassen ist."),
    "Es gibt eine neue PDF-Seite für die Tagesprofile. Darauf ist eine Tabelle zu sehen, die die tatsächliche Basalrate für den Tag zeigt, inklusive aller temporären Anpassungen. Ich brauchte das für Debugzwecke, aber vielleicht findet das der eine oder andere Benutzer auch interessant. Das Profil, das dort angezeigt wird entspricht dem Tagesprofil auf der Seite Tagesgrafik. Beim Loopen können das sehr viele Seiten werden, da dort normalerweise alle paar Minuten Anpassungen an der Basalrate vorgenommen werden. Deswegen wird die Tabelle auch abhängig von der Datenmenge in maximal drei Spalten dargestellt, um die Anzahl an Seiten zu reduzieren." : MessageLookupByLibrary.simpleMessage("Es gibt eine neue PDF-Seite für die Tagesprofile. Darauf ist eine Tabelle zu sehen, die die tatsächliche Basalrate für den Tag zeigt, inklusive aller temporären Anpassungen. Ich brauchte das für Debugzwecke, aber vielleicht findet das der eine oder andere Benutzer auch interessant. Das Profil, das dort angezeigt wird entspricht dem Tagesprofil auf der Seite Tagesgrafik. Beim Loopen können das sehr viele Seiten werden, da dort normalerweise alle paar Minuten Anpassungen an der Basalrate vorgenommen werden. Deswegen wird die Tabelle auch abhängig von der Datenmenge in maximal drei Spalten dargestellt, um die Anzahl an Seiten zu reduzieren."),
    "Es gibt in den Einstellungen eine Option, das PDF herunterladen zu lassen, statt es im Browser direkt anzeigen zu lassen. Das wird für Browser wie Edge benötigt." : MessageLookupByLibrary.simpleMessage("Es gibt in den Einstellungen eine Option, das PDF herunterladen zu lassen, statt es im Browser direkt anzeigen zu lassen. Das wird für Browser wie Edge benötigt."),
    "Es gibt in den Einstellungen eine neue Option, um den letzten in Nightscout gespeicherten Glukosewert in der Titelzeile anzeigen zu lassen. Wenn diese Option aktiviert ist, wird der aktuelle Wert, das Alter des Wertes, der Trendpfeil und die Differenz zum vorherigen Wert rechts in der Titelzeile angezeigt. Diese Anzeige wird jede Minute aktualisiert, solange das Browserfenster den Eingabefokus besitzt. Wenn es diesen nicht hat, wird die Aktualisierung angehalten und der Wert ausgeblendet, um nicht unnötig Systemresourcen zu belasten." : MessageLookupByLibrary.simpleMessage("Es gibt in den Einstellungen eine neue Option, um den letzten in Nightscout gespeicherten Glukosewert in der Titelzeile anzeigen zu lassen. Wenn diese Option aktiviert ist, wird der aktuelle Wert, das Alter des Wertes, der Trendpfeil und die Differenz zum vorherigen Wert rechts in der Titelzeile angezeigt. Diese Anzeige wird jede Minute aktualisiert, solange das Browserfenster den Eingabefokus besitzt. Wenn es diesen nicht hat, wird die Aktualisierung angehalten und der Wert ausgeblendet, um nicht unnötig Systemresourcen zu belasten."),
    "Es gibt jetzt Shortcuts, mit denen man die aktuelle Auswahl der Formulare, deren Parameter und den ausgewählten Zeitraum speichern kann. Beim Aktivieren eines Shortcuts wird das alles wieder so eingestellt, wie es war, als der Shortcut gespeichert wurde." : MessageLookupByLibrary.simpleMessage("Es gibt jetzt Shortcuts, mit denen man die aktuelle Auswahl der Formulare, deren Parameter und den ausgewählten Zeitraum speichern kann. Beim Aktivieren eines Shortcuts wird das alles wieder so eingestellt, wie es war, als der Shortcut gespeichert wurde."),
    "Es gibt jetzt auch die Möglichkeit, Nightscout Reporter in europäischem Englisch darzustellen. Der Unterschied zum amerikanischen Englisch besteht derzeit lediglich im Datumsformat (gb: dd/MM/yyyy, us: MM/dd/yyyy)." : MessageLookupByLibrary.simpleMessage("Es gibt jetzt auch die Möglichkeit, Nightscout Reporter in europäischem Englisch darzustellen. Der Unterschied zum amerikanischen Englisch besteht derzeit lediglich im Datumsformat (gb: dd/MM/yyyy, us: MM/dd/yyyy)."),
    "Es gibt jetzt die Möglichkeit, PDFs vergangener Zeiträume zu erzeugen, ohne den Zeitraum anpassen zu müssen. Oberhalb des Buttons zur PDF-Erzeugung gibt es zwei Buttons, welche die PDFs für eine frühere Periode erzeugen. Der untere der beiden Buttons erzeugt die Vorperiode, der obere die vorletzte Periode. Auf den Buttons wird das Startdatum und das Enddatum angezeigt. Wenn z.B. als Zeitraum \"Letzte 2 Wochen\" gewählt wurde, dann wird mit dem unteren Button der Zeitraum von zwei Wochen beginnend vor vier Wochen erzeugt und mit dem oberen Button der Zeitraum von zwei Wochen beginnend vor sechs Wochen. Auf diese Art kann man recht einfach Vergleichsberichte erzeugen, um die Entwicklung der Werte zu erkennen. Auf den Seiten wird für diese Ausdrucke in der Kopfzeile das Wort \"Historisch 1\", bzw. \"Historisch 2\" oberhalb des Zeitraums ausgegeben. So kann man beim Vergleich der Werte die Daten voneinander unterscheiden." : MessageLookupByLibrary.simpleMessage("Es gibt jetzt die Möglichkeit, PDFs vergangener Zeiträume zu erzeugen, ohne den Zeitraum anpassen zu müssen. Oberhalb des Buttons zur PDF-Erzeugung gibt es zwei Buttons, welche die PDFs für eine frühere Periode erzeugen. Der untere der beiden Buttons erzeugt die Vorperiode, der obere die vorletzte Periode. Auf den Buttons wird das Startdatum und das Enddatum angezeigt. Wenn z.B. als Zeitraum \"Letzte 2 Wochen\" gewählt wurde, dann wird mit dem unteren Button der Zeitraum von zwei Wochen beginnend vor vier Wochen erzeugt und mit dem oberen Button der Zeitraum von zwei Wochen beginnend vor sechs Wochen. Auf diese Art kann man recht einfach Vergleichsberichte erzeugen, um die Entwicklung der Werte zu erkennen. Auf den Seiten wird für diese Ausdrucke in der Kopfzeile das Wort \"Historisch 1\", bzw. \"Historisch 2\" oberhalb des Zeitraums ausgegeben. So kann man beim Vergleich der Werte die Daten voneinander unterscheiden."),
    "Es ist jetzt möglich, die Buttons zur PDF-Auswahl als Kacheln darstellen zu lassen. Die Option dazu ist im Menü auf der linken Seite zu finden. In der Kachelansicht werden die Buttons über die verfügbare Fläche verteilt und sind so auf kleinen Geräten leichter zu treffen. Ausserdem sieht man dann normalerweise alle verfügbaren PDFs auf einen Blick und muss nicht scrollen. Auf den aktivierten Kacheln wird angezeigt, an welcher Stelle im PDF die entsprechenden Seiten ausgegeben werden und wieviele Seiten die entsprechende Kachel ausgibt. Diese Zahl kann für die meisten Kacheln korrekt ermittelt werden, bei einigen ist das aber ohne Auswertung der Daten nicht möglich (z.B. Profile und Protokoll). In diesem Fall wird entweder keine Seitenzahl oder eine Mindestzahl an Seiten angegeben. Sobald die Erstellung des PDFs erfolgt ist, werden die korrekten Zahlen angezeigt. Die Reihenfolge der Kacheln kann verändert werden, indem man sie festhält und an die Stelle verschiebt, an der man sie gerne hätte. Nach Anklicken des Icons in der oberen rechten Ecke können die Parameter für das entsprechende PDF erfasst werden." : MessageLookupByLibrary.simpleMessage("Es ist jetzt möglich, die Buttons zur PDF-Auswahl als Kacheln darstellen zu lassen. Die Option dazu ist im Menü auf der linken Seite zu finden. In der Kachelansicht werden die Buttons über die verfügbare Fläche verteilt und sind so auf kleinen Geräten leichter zu treffen. Ausserdem sieht man dann normalerweise alle verfügbaren PDFs auf einen Blick und muss nicht scrollen. Auf den aktivierten Kacheln wird angezeigt, an welcher Stelle im PDF die entsprechenden Seiten ausgegeben werden und wieviele Seiten die entsprechende Kachel ausgibt. Diese Zahl kann für die meisten Kacheln korrekt ermittelt werden, bei einigen ist das aber ohne Auswertung der Daten nicht möglich (z.B. Profile und Protokoll). In diesem Fall wird entweder keine Seitenzahl oder eine Mindestzahl an Seiten angegeben. Sobald die Erstellung des PDFs erfolgt ist, werden die korrekten Zahlen angezeigt. Die Reihenfolge der Kacheln kann verändert werden, indem man sie festhält und an die Stelle verschiebt, an der man sie gerne hätte. Nach Anklicken des Icons in der oberen rechten Ecke können die Parameter für das entsprechende PDF erfasst werden."),
    "Es ist jetzt möglich, die Einstellungen auf Google Drive zu speichern. Das hat den Vorteil, dass man die Einstellungen nicht nur im aktuellen Browser hat, sondern bei jedem Browser, mit dem man sich bei Google anmeldet. Die Einstellungen werden nach wie vor im Browser gespeichert. Bei einer Verbindung zu Google Drive werden sie aber zusätzlich auf Google Drive gespeichert. Beim Laden der Seite wird überprüft, ob eine Synchronisierung gewünscht ist. Wenn das der Fall ist, dann werden die Daten von Google Drive heruntergeladen. Wenn die Daten darin neuer sind als die Daten im Browser, werden sie verwendet. Nach dem Speichern der Daten werden bei aktivierter Synchronisierung diese Daten mit dem aktuellen Zeitstempel auf Google Drive gespeichert. Die Synchronisierung wird im Menü auf der linken Seite aktiviert und deaktiviert. Sie kann auch beim erstmaligen Aufruf der Seite in einem neuen Browser direkt im Willkommensbildschirm aktiviert werden. Nightscout Reporter verlangt nur die Berechtigung die eigenen App-Daten zu speichern und zu laden und benötigt keinen Zugriff auf andere Daten auf Google Drive." : MessageLookupByLibrary.simpleMessage("Es ist jetzt möglich, die Einstellungen auf Google Drive zu speichern. Das hat den Vorteil, dass man die Einstellungen nicht nur im aktuellen Browser hat, sondern bei jedem Browser, mit dem man sich bei Google anmeldet. Die Einstellungen werden nach wie vor im Browser gespeichert. Bei einer Verbindung zu Google Drive werden sie aber zusätzlich auf Google Drive gespeichert. Beim Laden der Seite wird überprüft, ob eine Synchronisierung gewünscht ist. Wenn das der Fall ist, dann werden die Daten von Google Drive heruntergeladen. Wenn die Daten darin neuer sind als die Daten im Browser, werden sie verwendet. Nach dem Speichern der Daten werden bei aktivierter Synchronisierung diese Daten mit dem aktuellen Zeitstempel auf Google Drive gespeichert. Die Synchronisierung wird im Menü auf der linken Seite aktiviert und deaktiviert. Sie kann auch beim erstmaligen Aufruf der Seite in einem neuen Browser direkt im Willkommensbildschirm aktiviert werden. Nightscout Reporter verlangt nur die Berechtigung die eigenen App-Daten zu speichern und zu laden und benötigt keinen Zugriff auf andere Daten auf Google Drive."),
    "Es ist jetzt möglich, die Wochentage festzulegen, die im Zeitraum berücksichtigt werden sollen. Die entsprechenden Tage werden bei der Auswahl des Zeitraums mit den Buttons unterhalb des Monats festgelegt. Auf den PDFs werden Zeiträume dann zusätzlich mit der Information versehen, welche Wochentage berücksichtigt werden, wenn es nicht alle sind." : MessageLookupByLibrary.simpleMessage("Es ist jetzt möglich, die Wochentage festzulegen, die im Zeitraum berücksichtigt werden sollen. Die entsprechenden Tage werden bei der Auswahl des Zeitraums mit den Buttons unterhalb des Monats festgelegt. Auf den PDFs werden Zeiträume dann zusätzlich mit der Information versehen, welche Wochentage berücksichtigt werden, wenn es nicht alle sind."),
    "Es sind keine Daten für den Ausdruck vorhanden" : MessageLookupByLibrary.simpleMessage("Es sind keine Daten für den Ausdruck vorhanden"),
    "Es sind keine Daten vorhanden." : MessageLookupByLibrary.simpleMessage("Es sind keine Daten vorhanden."),
    "Es werden jetzt auch blutige Werte erkannt, die von Loop auf dem IPhone eingetragen werden." : MessageLookupByLibrary.simpleMessage("Es werden jetzt auch blutige Werte erkannt, die von Loop auf dem IPhone eingetragen werden."),
    "Español" : MessageLookupByLibrary.simpleMessage("Español"),
    "Exportieren" : MessageLookupByLibrary.simpleMessage("Exportieren"),
    "Facebook Seite" : MessageLookupByLibrary.simpleMessage("Facebook Seite"),
    "Fehler behoben, der bei der Kachelansicht teilweise verhindert hat, dass die Parameter für die Kacheln aufgerufen werden konnten." : MessageLookupByLibrary.simpleMessage("Fehler behoben, der bei der Kachelansicht teilweise verhindert hat, dass die Parameter für die Kacheln aufgerufen werden konnten."),
    "Fehler beim Laden der Daten" : MessageLookupByLibrary.simpleMessage("Fehler beim Laden der Daten"),
    "Fehler werden besser abgefangen und mit sinnvollem Text ersetzt." : MessageLookupByLibrary.simpleMessage("Fehler werden besser abgefangen und mit sinnvollem Text ersetzt."),
    "Fehlerhafte Ausgabe der Blutzuckerwerte in der täglichen Grafik korrigiert." : MessageLookupByLibrary.simpleMessage("Fehlerhafte Ausgabe der Blutzuckerwerte in der täglichen Grafik korrigiert."),
    "Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt" : MessageLookupByLibrary.simpleMessage("Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt"),
    "Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt." : MessageLookupByLibrary.simpleMessage("Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt."),
    "Français" : MessageLookupByLibrary.simpleMessage("Français"),
    "Für die Tagesgrafik gibt es jetzt eine Option, um die Aufsummierung nahe beieinander liegender Werte umzuschalten." : MessageLookupByLibrary.simpleMessage("Für die Tagesgrafik gibt es jetzt eine Option, um die Aufsummierung nahe beieinander liegender Werte umzuschalten."),
    "GPD" : MessageLookupByLibrary.simpleMessage("GPD"),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("Geburtstag"),
    "Gelbe Kreise zeigen an, dass der entsprechende Wert die Skala überschreitet." : MessageLookupByLibrary.simpleMessage("Gelbe Kreise zeigen an, dass der entsprechende Wert die Skala überschreitet."),
    "Genauigkeit der Basalangaben:" : MessageLookupByLibrary.simpleMessage("Genauigkeit der Basalangaben:"),
    "Ges." : MessageLookupByLibrary.simpleMessage("Ges."),
    "Gesamt" : MessageLookupByLibrary.simpleMessage("Gesamt"),
    "Geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("Geschätzter HbA1c"),
    "Glukose Pentagon erzeugen" : MessageLookupByLibrary.simpleMessage("Glukose Pentagon erzeugen"),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Glukose Perzentil Diagramm"),
    "Glukose im Zielbereich" : MessageLookupByLibrary.simpleMessage("Glukose im Zielbereich"),
    "Glukose zu hoch" : MessageLookupByLibrary.simpleMessage("Glukose zu hoch"),
    "Glukose zu niedrig" : MessageLookupByLibrary.simpleMessage("Glukose zu niedrig"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("Glukosekurve"),
    "Glukosewert" : MessageLookupByLibrary.simpleMessage("Glukosewert"),
    "Glykämischer Variabilitäts Index (GVI)" : MessageLookupByLibrary.simpleMessage("Glykämischer Variabilitäts Index (GVI)"),
    "Google Assistant" : MessageLookupByLibrary.simpleMessage("Google Assistant"),
    "Grafik" : MessageLookupByLibrary.simpleMessage("Grafik"),
    "Grafiken pro Seite" : MessageLookupByLibrary.simpleMessage("Grafiken pro Seite"),
    "Gross" : MessageLookupByLibrary.simpleMessage("Gross"),
    "Gruppierung der Zeiten" : MessageLookupByLibrary.simpleMessage("Gruppierung der Zeiten"),
    "HTML-Notizen anzeigen" : MessageLookupByLibrary.simpleMessage("HTML-Notizen anzeigen"),
    "Heute" : MessageLookupByLibrary.simpleMessage("Heute"),
    "Hiermit wird festgelegt, um wieviel der Zeitraum des PDFs verschoben werden soll, um Vergleichswerte zu erhalten." : MessageLookupByLibrary.simpleMessage("Hiermit wird festgelegt, um wieviel der Zeitraum des PDFs verschoben werden soll, um Vergleichswerte zu erhalten."),
    "Hinweise auf Nightscout in der Kopf- und Fusszeile des PDFs ausblenden" : MessageLookupByLibrary.simpleMessage("Hinweise auf Nightscout in der Kopf- und Fusszeile des PDFs ausblenden"),
    "Hinzufügen" : MessageLookupByLibrary.simpleMessage("Hinzufügen"),
    "Historische Daten" : MessageLookupByLibrary.simpleMessage("Historische Daten"),
    "Hochformat" : MessageLookupByLibrary.simpleMessage("Hochformat"),
    "Hohe Basalraten werden jetzt besser dargestellt." : MessageLookupByLibrary.simpleMessage("Hohe Basalraten werden jetzt besser dargestellt."),
    "Höchster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Höchster Wert im Zeitraum"),
    "IE" : MessageLookupByLibrary.simpleMessage("IE"),
    "IE/std" : MessageLookupByLibrary.simpleMessage("IE/std"),
    "IOB (Insulin On Board) anzeigen" : MessageLookupByLibrary.simpleMessage("IOB (Insulin On Board) anzeigen"),
    "Im CGP wurden die Skalenbeschriftungen korrigiert." : MessageLookupByLibrary.simpleMessage("Im CGP wurden die Skalenbeschriftungen korrigiert."),
    "Im CGP wurden verschiedene Berechnungen korrigiert, die sich vor allem in Differenzen bei ToR und Mittelwerten zeigten." : MessageLookupByLibrary.simpleMessage("Im CGP wurden verschiedene Berechnungen korrigiert, die sich vor allem in Differenzen bei ToR und Mittelwerten zeigten."),
    "Im Dialog der Ausgabe Parameter gibt es nun die Möglichkeit, das CGP immer mit dem Standard Zielbereich zu erzeugen. Diese Option ist anfangs eingeschaltet, da das CGP ein standardisiertes Formular ist, das gerne zu Vergleichszwecken herangezogen wird. Man kann es aber für seine eigenen Zwecke ausschalten. Diese Einstellung wird dann auch beibehalten." : MessageLookupByLibrary.simpleMessage("Im Dialog der Ausgabe Parameter gibt es nun die Möglichkeit, das CGP immer mit dem Standard Zielbereich zu erzeugen. Diese Option ist anfangs eingeschaltet, da das CGP ein standardisiertes Formular ist, das gerne zu Vergleichszwecken herangezogen wird. Man kann es aber für seine eigenen Zwecke ausschalten. Diese Einstellung wird dann auch beibehalten."),
    "Im Dialog der Ausgabe Parameter wurde rechts oben der Schieberegler \"zu Vergleichszwecken\" hinzugefügt. Wenn dieser aktiviert ist, dann wird überall der Standard Zielbereich verwendet. Intern wird das auch noch für andere Anpassungen verwendet. Diese Option ist dafür gedacht, dass man seine Ausdrucke mit anderen Diabetikern vergleichen kann. Das ist zum Beispiel zur Vorlage bei Ärzten und Diabetesberatern sinnvoll." : MessageLookupByLibrary.simpleMessage("Im Dialog der Ausgabe Parameter wurde rechts oben der Schieberegler \"zu Vergleichszwecken\" hinzugefügt. Wenn dieser aktiviert ist, dann wird überall der Standard Zielbereich verwendet. Intern wird das auch noch für andere Anpassungen verwendet. Diese Option ist dafür gedacht, dass man seine Ausdrucke mit anderen Diabetikern vergleichen kann. Das ist zum Beispiel zur Vorlage bei Ärzten und Diabetesberatern sinnvoll."),
    "Im Einstellungen Dialog gibt es jetzt die Möglichkeit, die Einstellungen zu exportieren und zu importieren. Beim Export wird eine Datei mit den allgemeinen Einstellungen geschrieben, beim Import wird so eine Datei wieder eingelesen. Damit kann man auch ohne Google Drive Zugriff die Einstellungen über verschiedene Browser hinweg manuell synchronisieren." : MessageLookupByLibrary.simpleMessage("Im Einstellungen Dialog gibt es jetzt die Möglichkeit, die Einstellungen zu exportieren und zu importieren. Beim Export wird eine Datei mit den allgemeinen Einstellungen geschrieben, beim Import wird so eine Datei wieder eingelesen. Damit kann man auch ohne Google Drive Zugriff die Einstellungen über verschiedene Browser hinweg manuell synchronisieren."),
    "Im Einstellungsdialog wurden die Zeilen mit den Benutzerangaben und der URL gegeneinander ausgetauscht, um eine sinnvollere Verwaltung zu ermöglichen." : MessageLookupByLibrary.simpleMessage("Im Einstellungsdialog wurden die Zeilen mit den Benutzerangaben und der URL gegeneinander ausgetauscht, um eine sinnvollere Verwaltung zu ermöglichen."),
    "Im Kalender-Control kann kein Datum nach dem aktuellen Tag mehr ausgewählt werden." : MessageLookupByLibrary.simpleMessage("Im Kalender-Control kann kein Datum nach dem aktuellen Tag mehr ausgewählt werden."),
    "Im Kalender-Control wird ein eingestellter Bereich (Heute, Letzte Woche, etc.) jetzt korrekt auf den aktuellen Tag bezogen." : MessageLookupByLibrary.simpleMessage("Im Kalender-Control wird ein eingestellter Bereich (Heute, Letzte Woche, etc.) jetzt korrekt auf den aktuellen Tag bezogen."),
    "Im Kalender-Control wird jetzt der Monat des entsprechenden Datums angezeigt, wenn eines der Felder Von oder bis den Fokus erhält." : MessageLookupByLibrary.simpleMessage("Im Kalender-Control wird jetzt der Monat des entsprechenden Datums angezeigt, wenn eines der Felder Von oder bis den Fokus erhält."),
    "Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert" : MessageLookupByLibrary.simpleMessage("Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert"),
    "Im Profil werden jetzt die richtigen Einheiten verwendet (mg/dL oder mmol/l)." : MessageLookupByLibrary.simpleMessage("Im Profil werden jetzt die richtigen Einheiten verwendet (mg/dL oder mmol/l)."),
    "Im Profil werden nun die Gesamtsumme der Basalrate und die durchschnittlichen Werte für ICR und ISF pro Stunde angezeigt." : MessageLookupByLibrary.simpleMessage("Im Profil werden nun die Gesamtsumme der Basalrate und die durchschnittlichen Werte für ICR und ISF pro Stunde angezeigt."),
    "Im Protokoll gibt es jetzt die Möglichkeit, sich doppelte Datensätze markieren zu lassen. Sie werden von Nightscout Reporter zwar rausgefiltert, aber er kann anzeigen, wie oft ein bestimmter Datensatz in den Daten gefunden wurde. Man kann dort auch angeben, dass er nur mehrfach vorhandene Datensätze ausgeben soll. So kann man mögliche Diskrepanzen zwischen Nightscout Reporter und anderen Reporting Tools herausfinden." : MessageLookupByLibrary.simpleMessage("Im Protokoll gibt es jetzt die Möglichkeit, sich doppelte Datensätze markieren zu lassen. Sie werden von Nightscout Reporter zwar rausgefiltert, aber er kann anzeigen, wie oft ein bestimmter Datensatz in den Daten gefunden wurde. Man kann dort auch angeben, dass er nur mehrfach vorhandene Datensätze ausgeben soll. So kann man mögliche Diskrepanzen zwischen Nightscout Reporter und anderen Reporting Tools herausfinden."),
    "Im Protokoll können jetzt auch Batteriewechsel der Pumpe angezeigt werden." : MessageLookupByLibrary.simpleMessage("Im Protokoll können jetzt auch Batteriewechsel der Pumpe angezeigt werden."),
    "Im Protokoll werden die Angaben, die ein temporäres Ziel von 0 IE für 0 Minuten setzen als \"Aufhebung von temp. Ziel\" ausgegeben." : MessageLookupByLibrary.simpleMessage("Im Protokoll werden die Angaben, die ein temporäres Ziel von 0 IE für 0 Minuten setzen als \"Aufhebung von temp. Ziel\" ausgegeben."),
    "Importieren" : MessageLookupByLibrary.simpleMessage("Importieren"),
    "Impressum" : MessageLookupByLibrary.simpleMessage("Impressum"),
    "In Firefox ist es jetzt auch möglich, die Hauptseite zu scrollen, wenn sie länger ist, als das Browserfenster." : MessageLookupByLibrary.simpleMessage("In Firefox ist es jetzt auch möglich, die Hauptseite zu scrollen, wenn sie länger ist, als das Browserfenster."),
    "In dem Dialog mit den Ausgabe Parametern wurde die Option hinzugefügt, die Genauigkeit der Ausgabe von Basalangaben festzulegen. Diese wird normalerweise aus den Angaben zur Basalrate in den Profilen ermittelt. Das wird auch weiterhin getan, wenn der erste Eintrag in der Liste ausgewählt wird. Ansonsten werden alle Basalangaben mit der Genauigkeit ausgegeben, die bei dieser Option ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("In dem Dialog mit den Ausgabe Parametern wurde die Option hinzugefügt, die Genauigkeit der Ausgabe von Basalangaben festzulegen. Diese wird normalerweise aus den Angaben zur Basalrate in den Profilen ermittelt. Das wird auch weiterhin getan, wenn der erste Eintrag in der Liste ausgewählt wird. Ansonsten werden alle Basalangaben mit der Genauigkeit ausgegeben, die bei dieser Option ausgewählt wurde."),
    "In den Ausgabe Parametern kann nun angegeben werden, ob immer der neueste Tag zuerst angezeigt wird. Das hat Auswirkungen auf die Tagesgrafik, die Tagesstatistik und die Wochengrafik. In den Formularoptionen wurde die entsprechende Option entfernt." : MessageLookupByLibrary.simpleMessage("In den Ausgabe Parametern kann nun angegeben werden, ob immer der neueste Tag zuerst angezeigt wird. Das hat Auswirkungen auf die Tagesgrafik, die Tagesstatistik und die Wochengrafik. In den Formularoptionen wurde die entsprechende Option entfernt."),
    "In den Einstellungen gibt es einen Regler, der festlegt, wie gross die erzeugten PDF-Dateien maximal sein dürfen. Wenn nur ein leeres PDF erzeugt wird, dann sollte dieser Regler weiter nach links geschoben werden, um die Dateigrösse zu verringern." : MessageLookupByLibrary.simpleMessage("In den Einstellungen gibt es einen Regler, der festlegt, wie gross die erzeugten PDF-Dateien maximal sein dürfen. Wenn nur ein leeres PDF erzeugt wird, dann sollte dieser Regler weiter nach links geschoben werden, um die Dateigrösse zu verringern."),
    "In der Analyse können die Prozentzahlen für die Zielbereiche mit Nachkommazahl angezeigt werden. Das verringert die Differenz zu 100%, wenn man sie zusammenzählt. Der verbleibende Rest sind Rundungsdifferenzen." : MessageLookupByLibrary.simpleMessage("In der Analyse können die Prozentzahlen für die Zielbereiche mit Nachkommazahl angezeigt werden. Das verringert die Differenz zu 100%, wenn man sie zusammenzählt. Der verbleibende Rest sind Rundungsdifferenzen."),
    "In der Auswertung gibt es eine neue Option, um den Standardbereich feiner abzustufen. Dort werden dann zusätzlich sehr hohe Werte und sehr niedrige Werte angezeigt." : MessageLookupByLibrary.simpleMessage("In der Auswertung gibt es eine neue Option, um den Standardbereich feiner abzustufen. Dort werden dann zusätzlich sehr hohe Werte und sehr niedrige Werte angezeigt."),
    "In der Auswertung können die Angaben für Material (Katheter, Sensor, Ampulle) mit Nachkommastellen angezeigt werden." : MessageLookupByLibrary.simpleMessage("In der Auswertung können die Angaben für Material (Katheter, Sensor, Ampulle) mit Nachkommastellen angezeigt werden."),
    "In der Kachelansicht können die Parameter aller ausgewählten Seiten zusammen in einer Liste eingestellt werden. Dazu gibt es im Titelbereich der Parameterliste neben dem Schliessen-Button einen zusätzlichen Button, mit dem man zwischen den beiden Möglichkeiten umschalten kann." : MessageLookupByLibrary.simpleMessage("In der Kachelansicht können die Parameter aller ausgewählten Seiten zusammen in einer Liste eingestellt werden. Dazu gibt es im Titelbereich der Parameterliste neben dem Schliessen-Button einen zusätzlichen Button, mit dem man zwischen den beiden Möglichkeiten umschalten kann."),
    "In der Legende unter der Tagesgrafik wird die Summe der Kohlenhydrate für den Tag angezeigt." : MessageLookupByLibrary.simpleMessage("In der Legende unter der Tagesgrafik wird die Summe der Kohlenhydrate für den Tag angezeigt."),
    "In der Sprachauswahl ist jetzt auch Slowakisch verfügbar." : MessageLookupByLibrary.simpleMessage("In der Sprachauswahl ist jetzt auch Slowakisch verfügbar."),
    "In der Tagesgrafik gibt es die Option, HTML-Notizen zu unterdrücken. Manche Uploader schreiben in die Notizen komplette HTML-Seiten rein, was im PDF extrem schlecht darstellbar ist. Deswegen kann man diese mit Setzen der Option ausblenden." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik gibt es die Option, HTML-Notizen zu unterdrücken. Manche Uploader schreiben in die Notizen komplette HTML-Seiten rein, was im PDF extrem schlecht darstellbar ist. Deswegen kann man diese mit Setzen der Option ausblenden."),
    "In der Tagesgrafik gibt es eine Option, die berechneten IE für aufgenommene Kohlenhydrate anzeigen zu lassen. Der Wert, der unmittelbar unter den Kohlenhydraten angezeigt wird, entspricht dem Bolus, der zu diesem Zeitpunkt für diese Kohlenhydratmenge abgegeben werden sollte. Dieser Wert kann niedriger als der tatsächlich abgegebene Wert ausfallen, weil für die Insulinabgabe noch IOB und andere Faktoren berücksichtigt werden." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik gibt es eine Option, die berechneten IE für aufgenommene Kohlenhydrate anzeigen zu lassen. Der Wert, der unmittelbar unter den Kohlenhydraten angezeigt wird, entspricht dem Bolus, der zu diesem Zeitpunkt für diese Kohlenhydratmenge abgegeben werden sollte. Dieser Wert kann niedriger als der tatsächlich abgegebene Wert ausfallen, weil für die Insulinabgabe noch IOB und andere Faktoren berücksichtigt werden."),
    "In der Tagesgrafik gibt es eine Option, mit dem man die verschiedenen Arten der Boli kenntlich machen lassen kann. Wenn diese Option gesetzt ist, wird ein Bolus, der zu einer Mahlzeit abgegeben wurde mit einer anderen Farbe markiert, als ein Bolus zur Korrektur. In der Legende werden dann Korrektur-, Mahlzeiten-Boli und SMB getrennt angezeigt." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik gibt es eine Option, mit dem man die verschiedenen Arten der Boli kenntlich machen lassen kann. Wenn diese Option gesetzt ist, wird ein Bolus, der zu einer Mahlzeit abgegeben wurde mit einer anderen Farbe markiert, als ein Bolus zur Korrektur. In der Legende werden dann Korrektur-, Mahlzeiten-Boli und SMB getrennt angezeigt."),
    "In der Tagesgrafik gibt es eine Option, mit der man sich die erfassten Trainingsdaten anzeigen lassen kann. Diese werden dann am unteren Rand über der Tabelle der Glukosewerte eingefügt." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik gibt es eine Option, mit der man sich die erfassten Trainingsdaten anzeigen lassen kann. Diese werden dann am unteren Rand über der Tabelle der Glukosewerte eingefügt."),
    "In der Tagesgrafik gibt es eine neue Option, um die Rundung der Insulinwerte auf die maximale Genauigkeit im Profil zu unterbinden. Das macht da Sinn, wo entweder kein Profil vorhanden ist, oder wo Werte mit höherer Genauigkeit als im Profil eingegeben werden." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik gibt es eine neue Option, um die Rundung der Insulinwerte auf die maximale Genauigkeit im Profil zu unterbinden. Das macht da Sinn, wo entweder kein Profil vorhanden ist, oder wo Werte mit höherer Genauigkeit als im Profil eingegeben werden."),
    "In der Tagesgrafik kann die Anzeige der SMB nun ausgeblendet werden." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik kann die Anzeige der SMB nun ausgeblendet werden."),
    "In der Tagesgrafik kann jetzt bei Auswahl der Tages Basalrate angegeben werden, dass der Name des Profils angezeigt wird, das am Beginn des Tages aktiv war. Dieser wird dann so angezeigt, wie ein Profilwechsel um 0 Uhr." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik kann jetzt bei Auswahl der Tages Basalrate angegeben werden, dass der Name des Profils angezeigt wird, das am Beginn des Tages aktiv war. Dieser wird dann so angezeigt, wie ein Profilwechsel um 0 Uhr."),
    "In der Tagesgrafik kann man nun die IOB (Insulin On Board) und COB (Carbs On Board) anzeigen lassen. Die IOB werden am oberen Rand angezeigt, wo auch die Bolusabgaben dargestellt werden, die COB am unteren Rand, wo auch die Kohlenhydrate dargestellt werden." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik kann man nun die IOB (Insulin On Board) und COB (Carbs On Board) anzeigen lassen. Die IOB werden am oberen Rand angezeigt, wo auch die Bolusabgaben dargestellt werden, die COB am unteren Rand, wo auch die Kohlenhydrate dargestellt werden."),
    "In der Tagesgrafik kann nun angezeigt werden, wie lange die Basalrate auf 0% lief." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik kann nun angezeigt werden, wie lange die Basalrate auf 0% lief."),
    "In der Tagesgrafik werden die Insulinangaben jetzt kleiner dargestellt, wenn die Basalrate eine Genauigkeit von mehr als 2 Nachkommastellen hat." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik werden die Insulinangaben jetzt kleiner dargestellt, wenn die Basalrate eine Genauigkeit von mehr als 2 Nachkommastellen hat."),
    "In der Tagesgrafik werden jetzt auch Blutzuckermessungen angezeigt. Sie werden als rote Quadrate dargestellt und die zugehörigen Werte in der Tabelle unterhalb der Grafik werden ebenfalls mit roter Schrift angezeigt." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik werden jetzt auch Blutzuckermessungen angezeigt. Sie werden als rote Quadrate dargestellt und die zugehörigen Werte in der Tabelle unterhalb der Grafik werden ebenfalls mit roter Schrift angezeigt."),
    "In der Tagesgrafik werden nun SMBs auch angezeigt, wenn die Option für die Darstellung von Insulin akitivert wurde. Man kann festlegen, ob die SMBs an der Glukosekurve oder am Zielwert angezeigt werden." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik werden nun SMBs auch angezeigt, wenn die Option für die Darstellung von Insulin akitivert wurde. Man kann festlegen, ob die SMBs an der Glukosekurve oder am Zielwert angezeigt werden."),
    "In der Tagesgrafik werden nun auch Kohlenhydratkorrekturen angezeigt." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik werden nun auch Kohlenhydratkorrekturen angezeigt."),
    "In der Tagesgrafik werden nun auch Reservoirwechsel angezeigt." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik werden nun auch Reservoirwechsel angezeigt."),
    "In der Tagesgrafik werden nun auch bei Anzeige des Zielwertes die temporären Ziele berücksichtigt." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik werden nun auch bei Anzeige des Zielwertes die temporären Ziele berücksichtigt."),
    "In der Tagesgrafik werden nun auch verzögerte Boli angezeigt." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik werden nun auch verzögerte Boli angezeigt."),
    "In der Tagesgrafik werden nun der geschätzte HbA1C und die prozentuale Menge an Bolusinsulin und Basalinsulin für den Tag angezeigt. Diese Anzeige erfolgt innerhalb der Legende, weshalb diese aktiviert sein muss, damit die Werte angezeigt werden." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik werden nun der geschätzte HbA1C und die prozentuale Menge an Bolusinsulin und Basalinsulin für den Tag angezeigt. Diese Anzeige erfolgt innerhalb der Legende, weshalb diese aktiviert sein muss, damit die Werte angezeigt werden."),
    "In der Tagesgrafik wird jetzt eine Tabelle mit halbstündigen Glukosewerten eingeblendet angezeigt. Diese kann über einen Parameter ausgeschaltet werden." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik wird jetzt eine Tabelle mit halbstündigen Glukosewerten eingeblendet angezeigt. Diese kann über einen Parameter ausgeschaltet werden."),
    "In der Tagesgrafik wurde \"Training\" in \"Bewegung\" umbenannt. Das passt besser zu den Einträgen in AAPS." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik wurde \"Training\" in \"Bewegung\" umbenannt. Das passt besser zu den Einträgen in AAPS."),
    "In der Tagesgraphic werden jetzt Insulinwerte und Kohlenhydratwerte zusammengefasst, wenn es mehrere innerhalb einer Stunde gibt. Die Balken werden nach wie vor für jeden Wert einzeln ausgegeben. Auf diese Art sollte es keine überlappende Ausgabe der Werte mehr geben. Die zusammengefassten Werte werden in eckigen Klammern ausgegeben, um anzuzeigen, dass hier Werte aufsummiert wurden." : MessageLookupByLibrary.simpleMessage("In der Tagesgraphic werden jetzt Insulinwerte und Kohlenhydratwerte zusammengefasst, wenn es mehrere innerhalb einer Stunde gibt. Die Balken werden nach wie vor für jeden Wert einzeln ausgegeben. Auf diese Art sollte es keine überlappende Ausgabe der Werte mehr geben. Die zusammengefassten Werte werden in eckigen Klammern ausgegeben, um anzuzeigen, dass hier Werte aufsummiert wurden."),
    "In der Tagesstatistik und in den täglichen Grafiken werden jetzt zum Datum die Wochentage mit angezeigt." : MessageLookupByLibrary.simpleMessage("In der Tagesstatistik und in den täglichen Grafiken werden jetzt zum Datum die Wochentage mit angezeigt."),
    "In der Tagesstatistik wurde die Spalte Varianzkoeffizient hinzugefügt (VarK)." : MessageLookupByLibrary.simpleMessage("In der Tagesstatistik wurde die Spalte Varianzkoeffizient hinzugefügt (VarK)."),
    "In der Tagesstatistik wurden bei unvollständigen Daten teilweise fehlerhafte Werte ausgegeben. Das wurde korrigiert." : MessageLookupByLibrary.simpleMessage("In der Tagesstatistik wurden bei unvollständigen Daten teilweise fehlerhafte Werte ausgegeben. Das wurde korrigiert."),
    "In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen." : MessageLookupByLibrary.simpleMessage("In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen."),
    "Initiale Version, alles ist neu!" : MessageLookupByLibrary.simpleMessage("Initiale Version, alles ist neu!"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("Insulin"),
    "Insulin Kohlenhydrate Verhältnis (ICR)" : MessageLookupByLibrary.simpleMessage("Insulin Kohlenhydrate Verhältnis (ICR)"),
    "Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE" : MessageLookupByLibrary.simpleMessage("Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE"),
    "Insulin Sensitivitäts Faktoren (ISF)" : MessageLookupByLibrary.simpleMessage("Insulin Sensitivitäts Faktoren (ISF)"),
    "Insulin auf maximale Stellen im Profil runden" : MessageLookupByLibrary.simpleMessage("Insulin auf maximale Stellen im Profil runden"),
    "Insulin-Quelle" : MessageLookupByLibrary.simpleMessage("Insulin-Quelle"),
    "Ja" : MessageLookupByLibrary.simpleMessage("Ja"),
    "Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember" : MessageLookupByLibrary.simpleMessage("Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember"),
    "Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez" : MessageLookupByLibrary.simpleMessage("Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez"),
    "KH" : MessageLookupByLibrary.simpleMessage("KH"),
    "Kalibrierung und blutige Messungen" : MessageLookupByLibrary.simpleMessage("Kalibrierung und blutige Messungen"),
    "Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Katheterwechsel"),
    "Keine" : MessageLookupByLibrary.simpleMessage("Keine"),
    "Keine Änderung" : MessageLookupByLibrary.simpleMessage("Keine Änderung"),
    "Klein" : MessageLookupByLibrary.simpleMessage("Klein"),
    "Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Kohlenhydrate"),
    "Kohlenhydrate und Bolusinsulin werden jetzt in den täglichen Grafiken angezeigt" : MessageLookupByLibrary.simpleMessage("Kohlenhydrate und Bolusinsulin werden jetzt in den täglichen Grafiken angezeigt"),
    "Lade die Basisdaten..." : MessageLookupByLibrary.simpleMessage("Lade die Basisdaten..."),
    "Legende" : MessageLookupByLibrary.simpleMessage("Legende"),
    "Legende für Katheter- und Sensorwechsel zur Tagesgrafik hinzugefügt." : MessageLookupByLibrary.simpleMessage("Legende für Katheter- und Sensorwechsel zur Tagesgrafik hinzugefügt."),
    "Letzte 2 Tage" : MessageLookupByLibrary.simpleMessage("Letzte 2 Tage"),
    "Letzte 2 Wochen" : MessageLookupByLibrary.simpleMessage("Letzte 2 Wochen"),
    "Letzte 3 Monate" : MessageLookupByLibrary.simpleMessage("Letzte 3 Monate"),
    "Letzte 3 Tage" : MessageLookupByLibrary.simpleMessage("Letzte 3 Tage"),
    "Letzte 3 Wochen" : MessageLookupByLibrary.simpleMessage("Letzte 3 Wochen"),
    "Letzte Unterzuckerung" : MessageLookupByLibrary.simpleMessage("Letzte Unterzuckerung"),
    "Letzte Woche" : MessageLookupByLibrary.simpleMessage("Letzte Woche"),
    "Letzten Messwert in der Titelzeile anzeigen" : MessageLookupByLibrary.simpleMessage("Letzten Messwert in der Titelzeile anzeigen"),
    "Letzter Monat" : MessageLookupByLibrary.simpleMessage("Letzter Monat"),
    "Loopenthüllende Daten verbergen (die Markierung der andersfarbigen Optionen ignorieren)" : MessageLookupByLibrary.simpleMessage("Loopenthüllende Daten verbergen (die Markierung der andersfarbigen Optionen ignorieren)"),
    "Löschen" : MessageLookupByLibrary.simpleMessage("Löschen"),
    "Mahlzeitenbolus_bolus to handle a meal" : MessageLookupByLibrary.simpleMessage("Mahlzeitenbolus"),
    "Man kann jetzt mehrere Benutzer anlegen. Das ist nützlich, um mehrere Nightscout-Instanzen auszuwerten (z.B. für Ärzte, Betreuer oder den Entwickler dieser Software)" : MessageLookupByLibrary.simpleMessage("Man kann jetzt mehrere Benutzer anlegen. Das ist nützlich, um mehrere Nightscout-Instanzen auszuwerten (z.B. für Ärzte, Betreuer oder den Entwickler dieser Software)"),
    "Material mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Material mit Nachkommastellen"),
    "Max" : MessageLookupByLibrary.simpleMessage("Max"),
    "Max Mustermann" : MessageLookupByLibrary.simpleMessage("Max Mustermann"),
    "Maximaler Glukosewert in Grafiken:" : MessageLookupByLibrary.simpleMessage("Maximaler Glukosewert in Grafiken:"),
    "Median" : MessageLookupByLibrary.simpleMessage("Median"),
    "Mehr gibt es dazu eigentlich nicht zu sagen." : MessageLookupByLibrary.simpleMessage("Mehr gibt es dazu eigentlich nicht zu sagen."),
    "Mehrfache Datensätze kennzeichnen" : MessageLookupByLibrary.simpleMessage("Mehrfache Datensätze kennzeichnen"),
    "Menü" : MessageLookupByLibrary.simpleMessage("Menü"),
    "Mess-\nwerte" : MessageLookupByLibrary.simpleMessage("Mess-\nwerte"),
    "Min" : MessageLookupByLibrary.simpleMessage("Min"),
    "Mit Google Drive synchronisieren" : MessageLookupByLibrary.simpleMessage("Mit Google Drive synchronisieren"),
    "Mittel-\nwert" : MessageLookupByLibrary.simpleMessage("Mittel-\nwert"),
    "Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|Sonntag" : MessageLookupByLibrary.simpleMessage("Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|Sonntag"),
    "Mo|Di|Mi|Do|Fr|Sa|So" : MessageLookupByLibrary.simpleMessage("Mo|Di|Mi|Do|Fr|Sa|So"),
    "Nacht (21:00 - 05:59)" : MessageLookupByLibrary.simpleMessage("Nacht (21:00 - 05:59)"),
    "Nahe zusammen liegende Werte aufsummieren" : MessageLookupByLibrary.simpleMessage("Nahe zusammen liegende Werte aufsummieren"),
    "Name" : MessageLookupByLibrary.simpleMessage("Name"),
    "Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat." : MessageLookupByLibrary.simpleMessage("Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat."),
    "Nein" : MessageLookupByLibrary.simpleMessage("Nein"),
    "Neue Option im Profil, um fortlaufende Zeiten mit gleichen Werten zu einem Eintrag zusammen zu fassen." : MessageLookupByLibrary.simpleMessage("Neue Option im Profil, um fortlaufende Zeiten mit gleichen Werten zu einem Eintrag zusammen zu fassen."),
    "Neuer Parameter für die Tagesgrafik, der festlegt, ob die Linien für die Notizen unter der Grafik bis zur Glukosekurve gezeichnet werden sollen oder nicht." : MessageLookupByLibrary.simpleMessage("Neuer Parameter für die Tagesgrafik, der festlegt, ob die Linien für die Notizen unter der Grafik bis zur Glukosekurve gezeichnet werden sollen oder nicht."),
    "Neues PDF für eine Wochengrafik hinzugefügt, auf der die Glukosekurven der Woche übereinander gelegt werden." : MessageLookupByLibrary.simpleMessage("Neues PDF für eine Wochengrafik hinzugefügt, auf der die Glukosekurven der Woche übereinander gelegt werden."),
    "Neuester Tag zuerst" : MessageLookupByLibrary.simpleMessage("Neuester Tag zuerst"),
    "Niedrigster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Niedrigster Wert im Zeitraum"),
    "Nightscout Berichte" : MessageLookupByLibrary.simpleMessage("Nightscout Berichte"),
    "Nightscout Reporter ist nun auch grösstenteils in Spanisch und Polnisch verfügbar. Entsprechende Buttons wurden dem Hauptmenü hinzugefügt. Danke an die fleissigen Übersetzer :)." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter ist nun auch grösstenteils in Spanisch und Polnisch verfügbar. Entsprechende Buttons wurden dem Hauptmenü hinzugefügt. Danke an die fleissigen Übersetzer :)."),
    "Nightscout Reporter kann nun auch auf Portugiesisch verwendet werden." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter kann nun auch auf Portugiesisch verwendet werden."),
    "Nightscout Reporter kann nun auch in Japanisch verwendet werden." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter kann nun auch in Japanisch verwendet werden."),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("Nightscout Seite"),
    "Nightscout Url in der Fusszeile des PDFs anzeigen" : MessageLookupByLibrary.simpleMessage("Nightscout Url in der Fusszeile des PDFs anzeigen"),
    "Normal" : MessageLookupByLibrary.simpleMessage("Normal"),
    "Notiz" : MessageLookupByLibrary.simpleMessage("Notiz"),
    "Notiz-Linien bis zur Kurve zeichnen" : MessageLookupByLibrary.simpleMessage("Notiz-Linien bis zur Kurve zeichnen"),
    "Notizen" : MessageLookupByLibrary.simpleMessage("Notizen"),
    "Nur letzte Basalrate ausgeben" : MessageLookupByLibrary.simpleMessage("Nur letzte Basalrate ausgeben"),
    "Nur letztes Profil ausgeben" : MessageLookupByLibrary.simpleMessage("Nur letztes Profil ausgeben"),
    "Nur mehrfache Datensätze anzeigen" : MessageLookupByLibrary.simpleMessage("Nur mehrfache Datensätze anzeigen"),
    "Ok" : MessageLookupByLibrary.simpleMessage("Ok"),
    "Optionen für die PDFs, die eine eindeutige Beziehung zu einem laufenden Loop haben, werden nun in Blau dargestellt. Das vereinfacht es, PDFs zu erstellen, denen man nicht ohne Weiteres entnehmen kann, dass ein Loop vorliegt. Dazu müssen nur die Haken bei den blauen Optionen entfernt werden." : MessageLookupByLibrary.simpleMessage("Optionen für die PDFs, die eine eindeutige Beziehung zu einem laufenden Loop haben, werden nun in Blau dargestellt. Das vereinfacht es, PDFs zu erstellen, denen man nicht ohne Weiteres entnehmen kann, dass ein Loop vorliegt. Dazu müssen nur die Haken bei den blauen Optionen entfernt werden."),
    "PDF anzeigen" : MessageLookupByLibrary.simpleMessage("PDF anzeigen"),
    "PDF erneut erzeugen" : MessageLookupByLibrary.simpleMessage("PDF erneut erzeugen"),
    "PDF erzeugen" : MessageLookupByLibrary.simpleMessage("PDF erzeugen"),
    "PDF für Profildaten" : MessageLookupByLibrary.simpleMessage("PDF für Profildaten"),
    "PDF herunterladen (bei einigen Browsern benötigt)" : MessageLookupByLibrary.simpleMessage("PDF herunterladen (bei einigen Browsern benötigt)"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("PDF im selben Fenster öffnen"),
    "PGR" : MessageLookupByLibrary.simpleMessage("PGR"),
    "Patient Glykämischer Status (PGS)" : MessageLookupByLibrary.simpleMessage("Patient Glykämischer Status (PGS)"),
    "Pausiert" : MessageLookupByLibrary.simpleMessage("Pausiert"),
    "Polski" : MessageLookupByLibrary.simpleMessage("Polski"),
    "Português" : MessageLookupByLibrary.simpleMessage("Português"),
    "Problem auf GitHub melden" : MessageLookupByLibrary.simpleMessage("Problem auf GitHub melden"),
    "Profil" : MessageLookupByLibrary.simpleMessage("Profil"),
    "Profil-Basalrate" : MessageLookupByLibrary.simpleMessage("Profil-Basalrate"),
    "Profileinstellungen" : MessageLookupByLibrary.simpleMessage("Profileinstellungen"),
    "Profilwechsel" : MessageLookupByLibrary.simpleMessage("Profilwechsel"),
    "Protokoll" : MessageLookupByLibrary.simpleMessage("Protokoll"),
    "Quelle: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)" : MessageLookupByLibrary.simpleMessage("Quelle: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)"),
    "Querformat" : MessageLookupByLibrary.simpleMessage("Querformat"),
    "Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse." : MessageLookupByLibrary.simpleMessage("Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse."),
    "Reservoirwechsel" : MessageLookupByLibrary.simpleMessage("Reservoirwechsel"),
    "SMB" : MessageLookupByLibrary.simpleMessage("SMB"),
    "SMB Werte anzeigen" : MessageLookupByLibrary.simpleMessage("SMB Werte anzeigen"),
    "SMB an der Kurve platzieren" : MessageLookupByLibrary.simpleMessage("SMB an der Kurve platzieren"),
    "Schliessen" : MessageLookupByLibrary.simpleMessage("Schliessen"),
    "Schliessen Button im Nachrichtenbereich hinzugefügt." : MessageLookupByLibrary.simpleMessage("Schliessen Button im Nachrichtenbereich hinzugefügt."),
    "Sechs Monate vorher" : MessageLookupByLibrary.simpleMessage("Sechs Monate vorher"),
    "Sechzehn" : MessageLookupByLibrary.simpleMessage("Sechzehn"),
    "Sekunden anzeigen" : MessageLookupByLibrary.simpleMessage("Sekunden anzeigen"),
    "Sensorwechsel" : MessageLookupByLibrary.simpleMessage("Sensorwechsel"),
    "Shortcut anlegen" : MessageLookupByLibrary.simpleMessage("Shortcut anlegen"),
    "Shortcut ändern" : MessageLookupByLibrary.simpleMessage("Shortcut ändern"),
    "Shortcuts" : MessageLookupByLibrary.simpleMessage("Shortcuts"),
    "Slovenský" : MessageLookupByLibrary.simpleMessage("Slovenský"),
    "Soll der Benutzer mit der URL" : MessageLookupByLibrary.simpleMessage("Soll der Benutzer mit der URL"),
    "Soll der Shortcut mit der Bezeichnung" : MessageLookupByLibrary.simpleMessage("Soll der Shortcut mit der Bezeichnung"),
    "Soll der Zeitraum" : MessageLookupByLibrary.simpleMessage("Soll der Zeitraum"),
    "Soll die Formularauswahl mit der aktuellen Auswahl ersetzt werden?" : MessageLookupByLibrary.simpleMessage("Soll die Formularauswahl mit der aktuellen Auswahl ersetzt werden?"),
    "Soll die URL" : MessageLookupByLibrary.simpleMessage("Soll die URL"),
    "Spalte HbA1c" : MessageLookupByLibrary.simpleMessage("Spalte HbA1c"),
    "Spalte HbA1c zu Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Spalte HbA1c zu Tagesstatistik hinzugefügt"),
    "Spalte Messwerte" : MessageLookupByLibrary.simpleMessage("Spalte Messwerte"),
    "Spalte Standardabweichung" : MessageLookupByLibrary.simpleMessage("Spalte Standardabweichung"),
    "Spalte TDD" : MessageLookupByLibrary.simpleMessage("Spalte TDD"),
    "Spalte Variationskoeffizient" : MessageLookupByLibrary.simpleMessage("Spalte Variationskoeffizient"),
    "Spalten Perzentile" : MessageLookupByLibrary.simpleMessage("Spalten Perzentile"),
    "Spalten für 10% und 90% anzeigen" : MessageLookupByLibrary.simpleMessage("Spalten für 10% und 90% anzeigen"),
    "Spaltenbreite der Informationen in der Analyse erhöht" : MessageLookupByLibrary.simpleMessage("Spaltenbreite der Informationen in der Analyse erhöht"),
    "Speichern" : MessageLookupByLibrary.simpleMessage("Speichern"),
    "Standard_theme selection - standard" : MessageLookupByLibrary.simpleMessage("Standard"),
    "Standardabweichung" : MessageLookupByLibrary.simpleMessage("Standardabweichung"),
    "Standardabweichung statt Anzahl" : MessageLookupByLibrary.simpleMessage("Standardabweichung statt Anzahl"),
    "Standardbereich mit feinerer Abstufung" : MessageLookupByLibrary.simpleMessage("Standardbereich mit feinerer Abstufung"),
    "Standardgrenzwerte" : MessageLookupByLibrary.simpleMessage("Standardgrenzwerte"),
    "Startstunde" : MessageLookupByLibrary.simpleMessage("Startstunde"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("Std.\nAbw."),
    "Stunden" : MessageLookupByLibrary.simpleMessage("Stunden"),
    "Stündliche Statistik" : MessageLookupByLibrary.simpleMessage("Stündliche Statistik"),
    "Summe" : MessageLookupByLibrary.simpleMessage("Summe"),
    "Summen für Bolus Insulin, Basalrate für den Tag und Basalrate aus dem Profil zur Tagesgrafik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Summen für Bolus Insulin, Basalrate für den Tag und Basalrate aus dem Profil zur Tagesgrafik hinzugefügt"),
    "Symbole (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Symbole (Katheter etc.)"),
    "Synchronisierung aufheben" : MessageLookupByLibrary.simpleMessage("Synchronisierung aufheben"),
    "TDD" : MessageLookupByLibrary.simpleMessage("TDD"),
    "Tabelle" : MessageLookupByLibrary.simpleMessage("Tabelle"),
    "Tabelle mit Glukosewerten" : MessageLookupByLibrary.simpleMessage("Tabelle mit Glukosewerten"),
    "Tag (08:00 - 17:59)" : MessageLookupByLibrary.simpleMessage("Tag (08:00 - 17:59)"),
    "Tages-Basalrate" : MessageLookupByLibrary.simpleMessage("Tages-Basalrate"),
    "Tagesanalyse" : MessageLookupByLibrary.simpleMessage("Tagesanalyse"),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("Tagesgrafik"),
    "Tagesgrafikparameter zur Anzeige der Legende" : MessageLookupByLibrary.simpleMessage("Tagesgrafikparameter zur Anzeige der Legende"),
    "Tagesgrafikparameter zur Anzeige von Notizen" : MessageLookupByLibrary.simpleMessage("Tagesgrafikparameter zur Anzeige von Notizen"),
    "Tagesgrafikparameter zur umgekehrten Sortierung hinzugefügt. Die Tage werden damit beginnend mit dem höchsten Datum ausgegeben." : MessageLookupByLibrary.simpleMessage("Tagesgrafikparameter zur umgekehrten Sortierung hinzugefügt. Die Tage werden damit beginnend mit dem höchsten Datum ausgegeben."),
    "Tagesnamen in Grafik anzeigen" : MessageLookupByLibrary.simpleMessage("Tagesnamen in Grafik anzeigen"),
    "Tagesprofil" : MessageLookupByLibrary.simpleMessage("Tagesprofil"),
    "Tagesstartprofil anzeigen" : MessageLookupByLibrary.simpleMessage("Tagesstartprofil anzeigen"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("Tagesstatistik"),
    "Tagesstunden" : MessageLookupByLibrary.simpleMessage("Tagesstunden"),
    "Tagestrend" : MessageLookupByLibrary.simpleMessage("Tagestrend"),
    "Temporäre Basalraten" : MessageLookupByLibrary.simpleMessage("Temporäre Basalraten"),
    "Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt" : MessageLookupByLibrary.simpleMessage("Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt"),
    "Temporäre Profilwechsel werden jetzt erkannt und in der Tagesgrafik korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Temporäre Profilwechsel werden jetzt erkannt und in der Tagesgrafik korrekt angezeigt."),
    "Temporäre Ziele" : MessageLookupByLibrary.simpleMessage("Temporäre Ziele"),
    "Titelangaben für Datumsbereiche auf den PDFs vereinheitlicht" : MessageLookupByLibrary.simpleMessage("Titelangaben für Datumsbereiche auf den PDFs vereinheitlicht"),
    "Trend" : MessageLookupByLibrary.simpleMessage("Trend"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("Uhr-\nzeit"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("Uhrzeit"),
    "Unbegrenzt" : MessageLookupByLibrary.simpleMessage("Unbegrenzt"),
    "Unterzuckerungen anzeigen" : MessageLookupByLibrary.simpleMessage("Unterzuckerungen anzeigen"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)"),
    "VarK\nin %" : MessageLookupByLibrary.simpleMessage("VarK\nin %"),
    "Verbinde zu Google Drive..." : MessageLookupByLibrary.simpleMessage("Verbinde zu Google Drive..."),
    "Verbinde zu Google..." : MessageLookupByLibrary.simpleMessage("Verbinde zu Google..."),
    "Verbindung zu Google Drive herstellen" : MessageLookupByLibrary.simpleMessage("Verbindung zu Google Drive herstellen"),
    "Verbindung zu Google Drive trennen" : MessageLookupByLibrary.simpleMessage("Verbindung zu Google Drive trennen"),
    "Vergleich" : MessageLookupByLibrary.simpleMessage("Vergleich"),
    "Version" : MessageLookupByLibrary.simpleMessage("Version"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("Verteilung"),
    "Verzögerter Bolus" : MessageLookupByLibrary.simpleMessage("Verzögerter Bolus"),
    "Vier" : MessageLookupByLibrary.simpleMessage("Vier"),
    "Von" : MessageLookupByLibrary.simpleMessage("Von"),
    "Vor der Erzeugung eines PDFs wird noch ein Dialog angezeigt, auf dem man Parameter für alle erzeugten PDFs eingeben kann. Man kann dort den Zielbereich auf den Standardbereich festlegen, den Ärzte gerne sehen. Das hat Auswirkungen auf alle Darstellungen des Zielbereichs, sowie auf die Verteilung der Werte innerhalb und ausserhalb des Zielbereichs. Man kann dort auch den Maximalwert für Glukose in Grafiken festlegen. Dieser Wert wird in der Tagesgrafik, dem Perzentil Diagramm und der Wochengrafik verwendet. Wenn er auf \"Automatisch\" gesetzt wird, wird der Maximalwert wie bisher auch aus den vorhandenen Daten ermittelt. Ausserdem kann man hier angeben, ob man den aktuellen Zeitraum erzeugen möchte oder einen Vergleichszeitraum. Das ist nützlich, um dem Arzt die Gegenüberstellung von Werten der Vergangenheit und jetzt zu zeigen." : MessageLookupByLibrary.simpleMessage("Vor der Erzeugung eines PDFs wird noch ein Dialog angezeigt, auf dem man Parameter für alle erzeugten PDFs eingeben kann. Man kann dort den Zielbereich auf den Standardbereich festlegen, den Ärzte gerne sehen. Das hat Auswirkungen auf alle Darstellungen des Zielbereichs, sowie auf die Verteilung der Werte innerhalb und ausserhalb des Zielbereichs. Man kann dort auch den Maximalwert für Glukose in Grafiken festlegen. Dieser Wert wird in der Tagesgrafik, dem Perzentil Diagramm und der Wochengrafik verwendet. Wenn er auf \"Automatisch\" gesetzt wird, wird der Maximalwert wie bisher auch aus den vorhandenen Daten ermittelt. Ausserdem kann man hier angeben, ob man den aktuellen Zeitraum erzeugen möchte oder einen Vergleichszeitraum. Das ist nützlich, um dem Arzt die Gegenüberstellung von Werten der Vergangenheit und jetzt zu zeigen."),
    "Warum werde ich mit mehreren Buttons genervt, statt eine einzelne PDF angezeigt zu kriegen?" : MessageLookupByLibrary.simpleMessage("Warum werde ich mit mehreren Buttons genervt, statt eine einzelne PDF angezeigt zu kriegen?"),
    "Was bisher geschah..." : MessageLookupByLibrary.simpleMessage("Was bisher geschah..."),
    "Wechsel" : MessageLookupByLibrary.simpleMessage("Wechsel"),
    "Wechsel (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Wechsel (Katheter etc.)"),
    "Weihnachten_theme selection - christmas" : MessageLookupByLibrary.simpleMessage("Weihnachten"),
    "Wenn Sonderzeichen in den Daten vorhanden sind (z.B. Smileys in den Notizen), führte das zu einem Absturz während der PDF-Erstellung. Das wurde behoben, indem diese Sonderzeichen aus der Ausgabe entfernt werden." : MessageLookupByLibrary.simpleMessage("Wenn Sonderzeichen in den Daten vorhanden sind (z.B. Smileys in den Notizen), führte das zu einem Absturz während der PDF-Erstellung. Das wurde behoben, indem diese Sonderzeichen aus der Ausgabe entfernt werden."),
    "Wenn auf der Profilseite leere Spalten vorkommen, führt das nicht mehr zu einer leeren Seite." : MessageLookupByLibrary.simpleMessage("Wenn auf der Profilseite leere Spalten vorkommen, führt das nicht mehr zu einer leeren Seite."),
    "Wenn das erzeugte PDF zu gross wird, wird es nun auf mehrere PDF-Dateien aufgeteilt. In diesem Fall wird es nicht direkt geöffnet, sondern es wird eine Liste mit durchnummerierten Buttons angezeigt. Diese Buttons öffnen bei Betätigung das entsprechende PDF und erhalten einen Haken, um anzuzeigen, dass es geöffnet wurde. Das sollte es erleichtern, die PDFs nacheinander zu öffnen, weil normalerweise der Browser im Hintergrund verschwindet, wenn ein neues Fenster aufgemacht wird." : MessageLookupByLibrary.simpleMessage("Wenn das erzeugte PDF zu gross wird, wird es nun auf mehrere PDF-Dateien aufgeteilt. In diesem Fall wird es nicht direkt geöffnet, sondern es wird eine Liste mit durchnummerierten Buttons angezeigt. Diese Buttons öffnen bei Betätigung das entsprechende PDF und erhalten einen Haken, um anzuzeigen, dass es geöffnet wurde. Das sollte es erleichtern, die PDFs nacheinander zu öffnen, weil normalerweise der Browser im Hintergrund verschwindet, wenn ein neues Fenster aufgemacht wird."),
    "Wenn der Zeitraum leer ist, wird der Button für die Auswahl deutlich markiert und in dem Dialog zur Auswahl wird in der Titelzeile ein Hinweis darauf angezeigt." : MessageLookupByLibrary.simpleMessage("Wenn der Zeitraum leer ist, wird der Button für die Auswahl deutlich markiert und in dem Dialog zur Auswahl wird in der Titelzeile ein Hinweis darauf angezeigt."),
    "Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet" : MessageLookupByLibrary.simpleMessage("Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet"),
    "Wenn im CGP ein Wert den Maximalwert der Skala überschreitet, wird die entsprechende Ecke mit einem gelben Kreis markiert." : MessageLookupByLibrary.simpleMessage("Wenn im CGP ein Wert den Maximalwert der Skala überschreitet, wird die entsprechende Ecke mit einem gelben Kreis markiert."),
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
    "Zeitraum:" : MessageLookupByLibrary.simpleMessage("Zeitraum:"),
    "Zeitzone" : MessageLookupByLibrary.simpleMessage("Zeitzone"),
    "Zielbereich" : MessageLookupByLibrary.simpleMessage("Zielbereich"),
    "Zielbereich mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Zielbereich mit Nachkommastellen"),
    "Zugriffsschlüssel" : MessageLookupByLibrary.simpleMessage("Zugriffsschlüssel"),
    "Zur Berechnung der Analyse, Tagesstatistik und Tagesgrafik wird nun die gleiche Datenbasis verwendet, so dass die Werte auf allen PDFs gleich sind." : MessageLookupByLibrary.simpleMessage("Zur Berechnung der Analyse, Tagesstatistik und Tagesgrafik wird nun die gleiche Datenbasis verwendet, so dass die Werte auf allen PDFs gleich sind."),
    "Zur Kachelansicht" : MessageLookupByLibrary.simpleMessage("Zur Kachelansicht"),
    "Zur Listenansicht" : MessageLookupByLibrary.simpleMessage("Zur Listenansicht"),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("Zusatzfunktionen"),
    "Zusätzliche Informationen zu den PDFs und im UI hinzugefügt" : MessageLookupByLibrary.simpleMessage("Zusätzliche Informationen zu den PDFs und im UI hinzugefügt"),
    "Zusätzliche Spalte anzeigen" : MessageLookupByLibrary.simpleMessage("Zusätzliche Spalte anzeigen"),
    "Zwei" : MessageLookupByLibrary.simpleMessage("Zwei"),
    "_msgPageCount" : m0,
    "_msgPageCountEst" : m1,
    "ab 4,6" : MessageLookupByLibrary.simpleMessage("ab 4,6"),
    "bis" : MessageLookupByLibrary.simpleMessage("bis"),
    "dd.MM.yyyy" : MessageLookupByLibrary.simpleMessage("dd.MM.yyyy"),
    "ersetzt werden?" : MessageLookupByLibrary.simpleMessage("ersetzt werden?"),
    "extrem hohes Risiko" : MessageLookupByLibrary.simpleMessage("extrem hohes Risiko"),
    "g / Stunde" : MessageLookupByLibrary.simpleMessage("g / Stunde"),
    "geringes Risiko" : MessageLookupByLibrary.simpleMessage("geringes Risiko"),
    "gesch. HbA1c" : MessageLookupByLibrary.simpleMessage("gesch. HbA1c"),
    "hohes Risiko" : MessageLookupByLibrary.simpleMessage("hohes Risiko"),
    "https://nightscout-reporter.zreptil.de/beta" : MessageLookupByLibrary.simpleMessage("https://nightscout-reporter.zreptil.de/beta"),
    "mg/dL" : MessageLookupByLibrary.simpleMessage("mg/dL"),
    "mit dem Zeitraum" : MessageLookupByLibrary.simpleMessage("mit dem Zeitraum"),
    "mmol/L" : MessageLookupByLibrary.simpleMessage("mmol/L"),
    "moderates Risiko" : MessageLookupByLibrary.simpleMessage("moderates Risiko"),
    "msgAccessTokenHint" : m2,
    "msgBasalInfo" : m3,
    "msgBasalInfo1" : m4,
    "msgBasalrateDay" : m5,
    "msgBasalrateProfile" : m6,
    "msgBolusInsulin" : m7,
    "msgCV" : m8,
    "msgCalculatingDay" : m9,
    "msgCalibration" : m10,
    "msgCarbBolusInsulin" : m11,
    "msgCarbs" : m12,
    "msgCatheterDays" : m13,
    "msgChangedEntry" : m14,
    "msgCheckUser" : m15,
    "msgCorrectBolusInsulin" : m16,
    "msgCount" : m17,
    "msgDaySum" : m18,
    "msgDuration" : m19,
    "msgEndDateHint" : m20,
    "msgFactorEntry" : m21,
    "msgFormsText" : m22,
    "msgGVIBad" : m23,
    "msgGVIGood" : m24,
    "msgGVINone" : m25,
    "msgGVIVeryGood" : m26,
    "msgHYPER" : m27,
    "msgHYPERInfo" : m28,
    "msgHYPO" : m29,
    "msgHYPOInfo" : m30,
    "msgHigh" : m31,
    "msgHistorical" : m32,
    "msgHypoTitle" : m33,
    "msgISF" : m34,
    "msgKH" : m35,
    "msgKHBE" : m36,
    "msgLegendTDD" : m37,
    "msgLoadingData" : m38,
    "msgLoadingDataFor" : m39,
    "msgLogMicroBolus" : m40,
    "msgLogSMB" : m41,
    "msgLogTempBasal" : m42,
    "msgLogTempBasalAbsolute" : m43,
    "msgLogTempTarget" : m44,
    "msgLow" : m45,
    "msgMBG" : m46,
    "msgMEAN" : m47,
    "msgMEANInfo" : m48,
    "msgPGSBad" : m49,
    "msgPGSGood" : m50,
    "msgPGSVeryBad" : m51,
    "msgPGSVeryGood" : m52,
    "msgProfileSwitch" : m53,
    "msgProfileSwitchDuration" : m54,
    "msgReadingsInMinutes" : m55,
    "msgReadingsPerDay" : m56,
    "msgReadingsPerHour" : m57,
    "msgReservoirDays" : m58,
    "msgSMBInsulin" : m59,
    "msgSensorDays" : m60,
    "msgStandardLimits" : m61,
    "msgStartDateHint" : m62,
    "msgStdAbw" : m63,
    "msgTOR" : m64,
    "msgTORInfo" : m65,
    "msgTarget" : m66,
    "msgTargetArea" : m67,
    "msgTargetValue" : m68,
    "msgTimeOfDay24" : m69,
    "msgTimeOfDayAM" : m70,
    "msgTimeOfDayPM" : m71,
    "msgValidFrom" : m72,
    "msgValidRange" : m73,
    "msgValidTo" : m74,
    "msgValuesAbove" : m75,
    "msgValuesBelow" : m76,
    "msgValuesIn" : m77,
    "msgValuesNorm" : m78,
    "msgValuesNormHigh" : m79,
    "msgValuesNormLow" : m80,
    "msgValuesVeryHigh" : m81,
    "msgValuesVeryLow" : m82,
    "ok" : MessageLookupByLibrary.simpleMessage("ok"),
    "sehr geringes Risiko" : MessageLookupByLibrary.simpleMessage("sehr geringes Risiko"),
    "tl;dr" : MessageLookupByLibrary.simpleMessage("tl;dr"),
    "verwerfen" : MessageLookupByLibrary.simpleMessage("verwerfen"),
    "vom Benutzer wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("vom Benutzer wirklich gelöscht werden?"),
    "wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("wirklich gelöscht werden?"),
    "zu Vergleichszwecken (z.B. Arzt)" : MessageLookupByLibrary.simpleMessage("zu Vergleichszwecken (z.B. Arzt)"),
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Basal pro Tag"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Bolus pro Tag"),
    "Ø ICR/Stunde" : MessageLookupByLibrary.simpleMessage("Ø ICR/Stunde"),
    "Ø ISF/Stunde" : MessageLookupByLibrary.simpleMessage("Ø ISF/Stunde"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Insulin pro Tag"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("Ø Insulinverhältnis"),
    "Ø KH pro Tag" : MessageLookupByLibrary.simpleMessage("Ø KH pro Tag"),
    "Ø Microbolus pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Microbolus pro Tag"),
    "Ø Zuckerwert" : MessageLookupByLibrary.simpleMessage("Ø Zuckerwert"),
    "Überprüfe Zugriff auf Nightscout ..." : MessageLookupByLibrary.simpleMessage("Überprüfe Zugriff auf Nightscout ..."),
    "Übersetzungen korrigiert" : MessageLookupByLibrary.simpleMessage("Übersetzungen korrigiert"),
    "日本の" : MessageLookupByLibrary.simpleMessage("日本の")
  };
}
