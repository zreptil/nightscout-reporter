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

  static m0(count) => "${Intl.plural(count, zero: '', one: '(${count} Tag pro Katheter)', other: '(${count} Tage pro Katheter)')}";

  static m1(url) => "Überprüfe Zugriff auf ${url}...";

  static m2(value) => "${value} Tage";

  static m3(value) => "Hoch${value}";

  static m4(value) => "${value}g KH";

  static m5(value) => "g KH (${value} BE)";

  static m6(error, stacktrace) => "Fehler beim Laden der Daten:\n${error}\n${stacktrace}";

  static m7(date) => "Lade Daten für ${date}...";

  static m8(value) => "Tief${value}";

  static m9(howMany, fmt) => "${Intl.plural(howMany, zero: 'Keine Messwerte vorhanden', one: '1 Messung pro Minute', other: 'Messung alle ${fmt} Minuten')}";

  static m10(howMany, fmt) => "${Intl.plural(howMany, zero: 'Keine Messwerte vorhanden', one: '1 Messung am Tag', other: '${fmt} Messungen am Tag')}";

  static m11(howMany, fmt) => "${Intl.plural(howMany, zero: 'Keine Messwerte vorhanden', one: '1 Messung pro Stunde', other: '${fmt} Messungen pro Stunde')}";

  static m12(count) => "${Intl.plural(count, zero: '', one: '(${count} Tag pro Ampulle)', other: '(${count} Tage pro Ampulle)')}";

  static m13(min, max, units) => "Zielbereich (${min} - ${max} ${units})";

  static m14(value) => "Zielwert";

  static m15(begDate) => "gültig ab ${begDate}";

  static m16(begDate, endDate) => "gültig von ${begDate} bis ${endDate}";

  static m17(endDate) => "gültig bis ${endDate}";

  static m18(high) => "Werte über ${high}";

  static m19(low) => "Werte unter ${low}";

  static m20(low, high) => "Werte zwischen ${low} und ${high}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("10% - 90% der Werte"),
    "25%" : MessageLookupByLibrary.simpleMessage("25%"),
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("25% - 75% der Werte"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("Anpas-\nsung"),
    "Anzahl Ampullen" : MessageLookupByLibrary.simpleMessage("Anzahl Ampullen"),
    "Anzahl Katheter" : MessageLookupByLibrary.simpleMessage("Anzahl Katheter"),
    "Anzahl Messungen" : MessageLookupByLibrary.simpleMessage("Anzahl Messungen"),
    "Ausgewertete Tage" : MessageLookupByLibrary.simpleMessage("Ausgewertete Tage"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("Auswertung"),
    "Basal" : MessageLookupByLibrary.simpleMessage("Basal"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("Basalrate"),
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
    "Betafunktionen anzeigen" : MessageLookupByLibrary.simpleMessage("Betafunktionen anzeigen"),
    "Bitte einen Zeitraum wählen." : MessageLookupByLibrary.simpleMessage("Bitte einen Zeitraum wählen."),
    "Bolus" : MessageLookupByLibrary.simpleMessage("Bolus"),
    "Bolus Insulin" : MessageLookupByLibrary.simpleMessage("Bolus Insulin"),
    "Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr." : MessageLookupByLibrary.simpleMessage("Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr."),
    "Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag." : MessageLookupByLibrary.simpleMessage("Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag."),
    "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren." : MessageLookupByLibrary.simpleMessage("Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren."),
    "Das User-Token wird nur benötigt, wenn der Zugriff in Nightscout über AUTH_DEFAULT_ROLES eingeschränkt wurde" : MessageLookupByLibrary.simpleMessage("Das User-Token wird nur benötigt, wenn der Zugriff in Nightscout über AUTH_DEFAULT_ROLES eingeschränkt wurde"),
    "Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen." : MessageLookupByLibrary.simpleMessage("Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen."),
    "Datenschutzerklärung" : MessageLookupByLibrary.simpleMessage("Datenschutzerklärung"),
    "Datum" : MessageLookupByLibrary.simpleMessage("Datum"),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("Deutsch"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("Diabetes seit"),
    "Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an" : MessageLookupByLibrary.simpleMessage("Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an"),
    "Die Daten, die Du hier eingibst, werden im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. Es werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("Die Daten, die Du hier eingibst, werden im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. Es werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden."),
    "Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit." : MessageLookupByLibrary.simpleMessage("Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit."),
    "Die Icons auf einigen Buttons waren zu nahe am Text" : MessageLookupByLibrary.simpleMessage("Die Icons auf einigen Buttons waren zu nahe am Text"),
    "Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird" : MessageLookupByLibrary.simpleMessage("Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird"),
    "Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an" : MessageLookupByLibrary.simpleMessage("Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an"),
    "Die URL wurde noch nicht festgelegt" : MessageLookupByLibrary.simpleMessage("Die URL wurde noch nicht festgelegt"),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("Die URL wurde noch nicht festgelegt."),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz."),
    "Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt" : MessageLookupByLibrary.simpleMessage("Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt"),
    "Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools, wie dieses hier, auf die Daten zugreifen dürfen.<br><br>Wenn diese URL geschützt ist, muss ausserdem das UserToken korrekt definiert sein (bisher nicht funktionsfähig)." : MessageLookupByLibrary.simpleMessage("Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools, wie dieses hier, auf die Daten zugreifen dürfen.<br><br>Wenn diese URL geschützt ist, muss ausserdem das UserToken korrekt definiert sein (bisher nicht funktionsfähig)."),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun."),
    "Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden." : MessageLookupByLibrary.simpleMessage("Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden."),
    "Diverse Abstürze beim Auslesen der Daten bereinigt" : MessageLookupByLibrary.simpleMessage("Diverse Abstürze beim Auslesen der Daten bereinigt"),
    "Eigene Grenzwerte" : MessageLookupByLibrary.simpleMessage("Eigene Grenzwerte"),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("Einstellungen"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("Einstellungen für die Verwendung der Seite vornehmen"),
    "English" : MessageLookupByLibrary.simpleMessage("English"),
    "Erzeuge PDF..." : MessageLookupByLibrary.simpleMessage("Erzeuge PDF..."),
    "Es sind keine Daten für den Ausdruck vorhanden" : MessageLookupByLibrary.simpleMessage("Es sind keine Daten für den Ausdruck vorhanden"),
    "Fehler beim Laden der Daten" : MessageLookupByLibrary.simpleMessage("Fehler beim Laden der Daten"),
    "Fehler werden besser abgefangen und mit sinnvollem Text ersetzt." : MessageLookupByLibrary.simpleMessage("Fehler werden besser abgefangen und mit sinnvollem Text ersetzt."),
    "Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt" : MessageLookupByLibrary.simpleMessage("Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt"),
    "Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt." : MessageLookupByLibrary.simpleMessage("Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt."),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("Geburtstag"),
    "Ges." : MessageLookupByLibrary.simpleMessage("Ges."),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Glukose Perzentil Diagramm"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("Glukosekurve"),
    "Heute" : MessageLookupByLibrary.simpleMessage("Heute"),
    "Hohe Basalraten werden jetzt besser dargestellt." : MessageLookupByLibrary.simpleMessage("Hohe Basalraten werden jetzt besser dargestellt."),
    "Höchster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Höchster Wert im Zeitraum"),
    "IE" : MessageLookupByLibrary.simpleMessage("IE"),
    "Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert" : MessageLookupByLibrary.simpleMessage("Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert"),
    "Impressum" : MessageLookupByLibrary.simpleMessage("Impressum"),
    "Initiale Version, alles ist neu!" : MessageLookupByLibrary.simpleMessage("Initiale Version, alles ist neu!"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("Insulin"),
    "Ja" : MessageLookupByLibrary.simpleMessage("Ja"),
    "Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Katheterwechsel"),
    "Keine" : MessageLookupByLibrary.simpleMessage("Keine"),
    "Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Kohlenhydrate"),
    "Kohlenhydrate und Bolusinsulin werden jetzt in den täglichen Grafiken angezeigt" : MessageLookupByLibrary.simpleMessage("Kohlenhydrate und Bolusinsulin werden jetzt in den täglichen Grafiken angezeigt"),
    "Legende für Katheter- und Sensorwechsel zur Tagesgrafik hinzugefügt." : MessageLookupByLibrary.simpleMessage("Legende für Katheter- und Sensorwechsel zur Tagesgrafik hinzugefügt."),
    "Letzte 2 Tage" : MessageLookupByLibrary.simpleMessage("Letzte 2 Tage"),
    "Letzte 2 Wochen" : MessageLookupByLibrary.simpleMessage("Letzte 2 Wochen"),
    "Letzte 3 Monate" : MessageLookupByLibrary.simpleMessage("Letzte 3 Monate"),
    "Letzte 3 Tage" : MessageLookupByLibrary.simpleMessage("Letzte 3 Tage"),
    "Letzte 3 Wochen" : MessageLookupByLibrary.simpleMessage("Letzte 3 Wochen"),
    "Letzte Woche" : MessageLookupByLibrary.simpleMessage("Letzte Woche"),
    "Letzter Monat" : MessageLookupByLibrary.simpleMessage("Letzter Monat"),
    "Man kann jetzt mehrere Benutzer anlegen. Das ist nützlich, um mehrere Nightscout-Instanzen auszuwerten (z.B. für Ärzte, Betreuer oder den Entwickler dieser Software)" : MessageLookupByLibrary.simpleMessage("Man kann jetzt mehrere Benutzer anlegen. Das ist nützlich, um mehrere Nightscout-Instanzen auszuwerten (z.B. für Ärzte, Betreuer oder den Entwickler dieser Software)"),
    "Max" : MessageLookupByLibrary.simpleMessage("Max"),
    "Median" : MessageLookupByLibrary.simpleMessage("Median"),
    "Messwerte" : MessageLookupByLibrary.simpleMessage("Messwerte"),
    "Min" : MessageLookupByLibrary.simpleMessage("Min"),
    "Mittelwert" : MessageLookupByLibrary.simpleMessage("Mittelwert"),
    "Name" : MessageLookupByLibrary.simpleMessage("Name"),
    "Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat." : MessageLookupByLibrary.simpleMessage("Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat."),
    "Nein" : MessageLookupByLibrary.simpleMessage("Nein"),
    "Niedrigster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Niedrigster Wert im Zeitraum"),
    "Nightscout Berichte" : MessageLookupByLibrary.simpleMessage("Nightscout Berichte"),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("Nightscout Seite"),
    "Normal" : MessageLookupByLibrary.simpleMessage("Normal"),
    "PDF anzeigen" : MessageLookupByLibrary.simpleMessage("PDF anzeigen"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("PDF im selben Fenster öffnen"),
    "Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Perzentil Diagramm"),
    "Problem auf GitHub melden" : MessageLookupByLibrary.simpleMessage("Problem auf GitHub melden"),
    "Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse." : MessageLookupByLibrary.simpleMessage("Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse."),
    "Schliessen" : MessageLookupByLibrary.simpleMessage("Schliessen"),
    "Schliessen Button im Nachrichtenbereich hinzugefügt." : MessageLookupByLibrary.simpleMessage("Schliessen Button im Nachrichtenbereich hinzugefügt."),
    "Sensorwechsel" : MessageLookupByLibrary.simpleMessage("Sensorwechsel"),
    "Spaltenbreite der Informationen in der Analyse erhöht" : MessageLookupByLibrary.simpleMessage("Spaltenbreite der Informationen in der Analyse erhöht"),
    "Speichern" : MessageLookupByLibrary.simpleMessage("Speichern"),
    "Standardgrenzwerte" : MessageLookupByLibrary.simpleMessage("Standardgrenzwerte"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("Std.\nAbw."),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("Tagesgrafik"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("Tagesstatistik"),
    "Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt" : MessageLookupByLibrary.simpleMessage("Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt"),
    "This page is also available in english" : MessageLookupByLibrary.simpleMessage("This page is also available in english"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("Uhr-\nzeit"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("Uhrzeit"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)"),
    "User-Token" : MessageLookupByLibrary.simpleMessage("User-Token"),
    "Version" : MessageLookupByLibrary.simpleMessage("Version"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("Verteilung"),
    "Was bisher geschah..." : MessageLookupByLibrary.simpleMessage("Was bisher geschah..."),
    "Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet" : MessageLookupByLibrary.simpleMessage("Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet"),
    "Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt." : MessageLookupByLibrary.simpleMessage("Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt."),
    "Willkommen" : MessageLookupByLibrary.simpleMessage("Willkommen"),
    "Willkommen bei Nightscout Reporter!" : MessageLookupByLibrary.simpleMessage("Willkommen bei Nightscout Reporter!"),
    "Zeitraum" : MessageLookupByLibrary.simpleMessage("Zeitraum"),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("Zusatzfunktionen"),
    "bis" : MessageLookupByLibrary.simpleMessage("bis"),
    "geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("geschätzter HbA1c"),
    "msgCatheterDays" : m0,
    "msgCheckUser" : m1,
    "msgDaySum" : m2,
    "msgHigh" : m3,
    "msgKH" : m4,
    "msgKHBE" : m5,
    "msgLoadingData" : m6,
    "msgLoadingDataFor" : m7,
    "msgLow" : m8,
    "msgReadingsInMinutes" : m9,
    "msgReadingsPerDay" : m10,
    "msgReadingsPerHour" : m11,
    "msgReservoirDays" : m12,
    "msgTargetArea" : m13,
    "msgTargetValue" : m14,
    "msgValidFrom" : m15,
    "msgValidRange" : m16,
    "msgValidTo" : m17,
    "msgValuesAbove" : m18,
    "msgValuesBelow" : m19,
    "msgValuesIn" : m20,
    "ok" : MessageLookupByLibrary.simpleMessage("ok"),
    "verwerfen" : MessageLookupByLibrary.simpleMessage("verwerfen"),
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Basal pro Tag"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Bolus pro Tag"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Insulin pro Tag"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("Ø Insulinverhältnis"),
    "Ø KH pro Tag" : MessageLookupByLibrary.simpleMessage("Ø KH pro Tag"),
    "Ø Zuckerwert" : MessageLookupByLibrary.simpleMessage("Ø Zuckerwert"),
    "Überprüfe Zugriff auf Nightscout ..." : MessageLookupByLibrary.simpleMessage("Überprüfe Zugriff auf Nightscout ...")
  };
}
