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

  static m0(count) => "${Intl.plural(count, zero: '', one: '1 strona', few: '${count} strony', many: '${count} strony', other: '${count} strony')}";

  static m1(count) => "${Intl.plural(count, zero: '', one: '1 strona lub więcej', few: '${count} stron lub więcej', many: '${count} stron lub więcej', other: '${count} stron lub więcej')}";

  static m2(isVisible) => "The Access Token is only required if access in Nightscout was restricted via AUTH_DEFAULT_ROLES";

  static m3(time) => "Dawka bazowa jest ważna od ${time} i nie zawiera żadnych tymczasowych zmian.";

  static m4(unit) => "Ta baza była aktywna na ${unit}.";

  static m5(value) => "baza: realna (${value})";

  static m6(value) => "Baza: nominalna (${value})";

  static m7(value) => "Insulina z bolusów (${value})";

  static m8(value) => "CV [${value}%]";

  static m9(date) => "Checking ${date} ...";

  static m10(scale, intercept, slope) => "Kalibracja (skala ${scale} / punkt przecięcia ${intercept} / nachylenie ${slope})";

  static m11(value) => "bolus: posiłek (${value})";

  static m12(value) => "węglowodany ${value}g";

  static m13(count, txt) => "${Intl.plural(count, zero: 'brak danych', one: '(zmiana co ${txt} dn.)', other: '(zmiana co ${txt} dn.)')}";

  static m14(name, from, to) => "${name} ${from} => ${to}";

  static m15(url) => "Sprawdzanie dostępu do ${url}...";

  static m16(value) => "bolus: korekta (${value})";

  static m17(value) => "${Intl.plural(value, zero: 'Brak wartości', one: '1 wartość', few: '${value} Wartość', many: '${value} Wartość', other: '${value} Wartość')}";

  static m18(value) => "${value} dni";

  static m19(hours, minutes) => "${hours} h ${minutes} m";

  static m20(isVisible) => "The date of the last complete day with data";

  static m21(beg, end) => "${beg} - ${end}";

  static m22(count) => "${Intl.plural(count, zero: '', one: '1 Form', few: '${count} Forms', many: '${count} Forms', other: '${count} Forms')}";

  static m23(max) => "zły (powyżej ${max})";

  static m24(min, max) => "dobry (od ${min} do ${max})";

  static m25(min) => "niedostępne (poniżej ${min})";

  static m26(min, max) => "bardzo dobry (od ${min} do ${max})";

  static m27(unit, value) => "Intensywność hiperglikemii [${unit} x min²]";

  static m28(unit) => "Epizody hiperglikemii na dobę (wartości większe lub równe ${unit}).";

  static m29(unit, value) => "Epizody hiperglikemii\n[${unit} x min²]";

  static m30(unit) => "Epizody hipoglikemii na dobę (wartości mniejsze lub równe ${unit}).";

  static m31(value) => "powyżej zakresu ${value}";

  static m32(value) => "Historyczny ${value}";

  static m33(value) => "Hipoglikemia (< ${value})";

  static m34(unit) => "Wrażliwość na insulinę ISF \n(o ile ${unit} 1j insuliny redukuje stężenie glukozy) ";

  static m35(value) => "${value}g";

  static m36(value) => "g (średnio ${value}g/godz.)";

  static m37(value) => "Dobowa Dawka Insuliny DDI (${value})";

  static m38(error, stacktrace) => "Błąd pobierania danych: ${error} ${stacktrace}";

  static m39(date) => "Pobierz dane dla ${date}...";

  static m40(insulin, unit) => "Microbolus ${insulin} ${unit}";

  static m41(insulin, unit) => "SMB ${insulin} ${unit}";

  static m42(percent, duration) => "baza tymczasowa ${percent}% / ${duration} min";

  static m43(value, duration) => "baza tymczasowa ${value}% / ${duration} min";

  static m44(target, duration, reason) => "cel tymczasowy ${target} na ${duration} min, powód: ${reason}";

  static m45(value) => "poniżej zakresu ${value}";

  static m46(gluc, unit) => "Pomiar z krwi ${gluc} ${unit}";

  static m47(unit, value) => "Średnie stężenie glukozy\n[${unit}]";

  static m48(hba1c) => "Średnia wartość glikemii w określonym okresie.";

  static m49(min, max) => "zły (od ${min} do ${max})";

  static m50(min, max) => "dobry (od ${min} do ${max})";

  static m51(max) => "bardzo zły (powyżej ${max})";

  static m52(min) => "wyśmienity (poniżej ${min})";

  static m53(oldName, newName) => "zmiana profilu - ${oldName} => ${newName}";

  static m54(oldName, newName, duration) => "Zmiana profilu - ${oldName} => ${newName} na ${duration} minut";

  static m55(howMany, fmt) => "${Intl.plural(howMany, zero: 'brak pomiarów', one: 'pomiar co 1 minutę', other: 'pomiar co ${fmt} minut')}";

  static m56(howMany, fmt) => "${Intl.plural(howMany, zero: 'brak odczytów', one: '1 odczyt na dzień', other: '${fmt} odczytów na dzień')}";

  static m57(howMany, fmt) => "${Intl.plural(howMany, zero: 'brak pomiarów', one: '1 pomiar na godzinę', other: '${fmt} pomiarów na godzinę')}";

  static m58(count, txt) => "${Intl.plural(count, zero: 'brak danych', one: '(${txt} dzień na zbiorniczek)', other: '(${txt} dni na zbiorniczek)')}";

  static m59(value) => "bolus: SMB (${value})";

  static m60(count, txt) => "${Intl.plural(count, zero: 'brak danych', one: '(${txt} dzień na sensor)', other: '(${txt} dni na sensor)')}";

  static m61(low, high, unit) => "Użyj standardowego obszaru docelowego (${low} ${unit} - ${high} ${unit})";

  static m62(isVisible) => "The date of the first day with data";

  static m63(value) => "(SD ${value})";

  static m64(value) => "Czas poza zakresem \n[${value}min/d]";

  static m65(min, max) => "Czas dziennie w minutach, w którym wartości znajdują się poza zakresem od ${min} do ${max}.";

  static m66(unit) => "Zakres docelowy glikemii \n(${unit})";

  static m67(min, max, units) => "zakres docelowy (${min} - ${max} ${units})";

  static m68(value) => "wartość docelowa";

  static m69(time) => "${time}";

  static m70(time) => "${time} przed południem";

  static m71(time) => "${time}";

  static m72(begDate) => "wprowadzony ${begDate}";

  static m73(begDate, endDate) => "obowiązuje od ${begDate} do ${endDate}";

  static m74(endDate) => "obowiązuje do ${endDate}";

  static m75(high) => "Odczyty powyżej zakresu: ${high}";

  static m76(low) => "Odczyty poniżej ${low}";

  static m77(low, high) => "Odczyty w zakresie: ${low} - ${high}";

  static m78(low, high) => "W zakresie (${low} - ${high})";

  static m79(value) => "Powyżej zakresu, poziom 1 (${value})";

  static m80(value) => "Poniżej zakresu, poziom 1 (${value})";

  static m81(value) => "Powyżej zakresu, poziom 2 ( > ${value})";

  static m82(value) => "Poniżej zakresu, poziom 2 (< ${value})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "0,0 bis 2,0" : MessageLookupByLibrary.simpleMessage("0,0 to 2,0"),
    "1 Minute" : MessageLookupByLibrary.simpleMessage("1 Minuta"),
    "1 Stunde" : MessageLookupByLibrary.simpleMessage("1 Godzina"),
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
    "1.2.10 - 18.04.2019" : MessageLookupByLibrary.simpleMessage("1.2.10 - 04.18.2019"),
    "1.2.11 - 17.05.2019" : MessageLookupByLibrary.simpleMessage("1.2.11 - 17.05.2019"),
    "1.2.2 - 24.01.2019" : MessageLookupByLibrary.simpleMessage("1.2.2 - 01/24/2019"),
    "1.2.3 - 04.02.2019" : MessageLookupByLibrary.simpleMessage("1.2.3 - 02/04/2019"),
    "1.2.4 - 12.02.2019" : MessageLookupByLibrary.simpleMessage("1.2.4 - 12/02/2019"),
    "1.2.5 - 25.03.2019" : MessageLookupByLibrary.simpleMessage("1.2.5 - 25.03.2019"),
    "1.2.6 - 27.03.2019" : MessageLookupByLibrary.simpleMessage("1.2.6 - 27.03.2019"),
    "1.2.7 - 28.03.2019" : MessageLookupByLibrary.simpleMessage("1.2.7 - 28.03.2019"),
    "1.2.8 - 11.04.2019" : MessageLookupByLibrary.simpleMessage("1.2.8 - 11.04.2019"),
    "1.2.9 - 15.04.2019" : MessageLookupByLibrary.simpleMessage("1.2.9 - 15.04.2019"),
    "1.3.0 - 19.08.2019" : MessageLookupByLibrary.simpleMessage("1.3.0 - 19/08/2019"),
    "1.3.1 - 22.08.2019" : MessageLookupByLibrary.simpleMessage("1.3.1 - 22/08/2019"),
    "1.3.2 - 05.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.2 - 05/09/2019"),
    "1.3.3 - 12.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.3 - 12/09/2019"),
    "1.3.4 - 17.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.4 - 17/09/2019"),
    "1.3.5 - 23.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.5 - 23/09/2019"),
    "1.3.6 - 18.12.2019" : MessageLookupByLibrary.simpleMessage("1.3.6 - 18/12/2019"),
    "1.3.7 - 7.1.2020" : MessageLookupByLibrary.simpleMessage("1.3.7 - 07.01.2020"),
    "1.3.8 - 9.1.2020" : MessageLookupByLibrary.simpleMessage("1.3.8 - 09.01.2020"),
    "1.4 - 28.2.2020" : MessageLookupByLibrary.simpleMessage("1.4 - 28.02.2020"),
    "1.4.1 - 13.3.2020" : MessageLookupByLibrary.simpleMessage("1.4.1 - 13.03.2020"),
    "1.4.2 - 16.3.2020" : MessageLookupByLibrary.simpleMessage("1.4.2 - 16.03.2020"),
    "1.4.3 - 26.3.2020" : MessageLookupByLibrary.simpleMessage("1.4.3 - 26.03.2020"),
    "1.4.4 - 6.4.2020" : MessageLookupByLibrary.simpleMessage("1.4.4 - 06.04.2020"),
    "1.4.5 - 20.4.2020" : MessageLookupByLibrary.simpleMessage("1.4.5 - 20.04.2020"),
    "1.4.6 - 26.5.2020" : MessageLookupByLibrary.simpleMessage("1.4.6 - 26.05.2020"),
    "1.4.7 - 5.6.2020" : MessageLookupByLibrary.simpleMessage("1.4.7 - 05.06.2020"),
    "1.4.8 - 12.6.2020" : MessageLookupByLibrary.simpleMessage("1.4.8 - 12.06.2020"),
    "1.4.9 - 16.6.2020" : MessageLookupByLibrary.simpleMessage("1.4.9 - 16.06.2020"),
    "10%" : MessageLookupByLibrary.simpleMessage("10%"),
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("10% - 90% wartości"),
    "15 Minuten" : MessageLookupByLibrary.simpleMessage("15 Minut"),
    "2,1 bis 3,0" : MessageLookupByLibrary.simpleMessage("2,1 to 3,0"),
    "2.0.0 - 15.7.2020" : MessageLookupByLibrary.simpleMessage("2.0.0 - 15/7/2020"),
    "25%" : MessageLookupByLibrary.simpleMessage("25%"),
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("25% - 75% wartości"),
    "3,1 bis 4,0" : MessageLookupByLibrary.simpleMessage("3,1 to 4,0"),
    "30 Minuten" : MessageLookupByLibrary.simpleMessage("30 Minut"),
    "4,1 bis 4,5" : MessageLookupByLibrary.simpleMessage("4,1 to 4,5"),
    "5 Minuten" : MessageLookupByLibrary.simpleMessage("5 Minut"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "90%" : MessageLookupByLibrary.simpleMessage("90%"),
    "<br><br>Wenn diese URL geschützt ist, muss ausserdem der Zugriffsschlüssel korrekt definiert sein. Diesen erreicht man über \"Administrator-Werkzeuge\" auf der persönlichen Nightscout Seite." : MessageLookupByLibrary.simpleMessage("<br> <br> Jeśli ten adres URL jest chroniony, token dostępu musi być również poprawnie zdefiniowany. Można to osiągnąć za pomocą \"Narzędzi Administratora\" na stronie z parametrami serwisu Nightscout."),
    "Abbruch" : MessageLookupByLibrary.simpleMessage("Cancel"),
    "Absturz behoben, der auftrat, wenn kein passendes Profil für einen Zeitpunkt gefunden werden konnte" : MessageLookupByLibrary.simpleMessage("Fixed a crash that occurred when no matching profile could be found for a given time"),
    "Acht" : MessageLookupByLibrary.simpleMessage("Osiem"),
    "Alle Werte für den Tag anzeigen" : MessageLookupByLibrary.simpleMessage("Pokaż wszystkie wartości dla dnia"),
    "Alles" : MessageLookupByLibrary.simpleMessage("Wykres i tabelę"),
    "Allgemeines" : MessageLookupByLibrary.simpleMessage("Ogólne"),
    "Als ersten Tag der Woche festlegen" : MessageLookupByLibrary.simpleMessage("Zdefiniuj jako pierwszy dzień tygodnia"),
    "Ampullenwechsel" : MessageLookupByLibrary.simpleMessage("Zmiana zbiornika z insuliną"),
    "Anmelden" : MessageLookupByLibrary.simpleMessage("Zaloguj się"),
    "Anmeldung bei Google..." : MessageLookupByLibrary.simpleMessage("Logowanie do Google…"),
    "Anmeldung erfolgreich" : MessageLookupByLibrary.simpleMessage("Zalogowano pomyślnie"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("modyf."),
    "Anzahl Ampullenwechsel" : MessageLookupByLibrary.simpleMessage("Liczba zmian zbiornika na insulinę"),
    "Anzahl Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Liczba zmian zestawu infuzyjnego"),
    "Anzahl Messungen" : MessageLookupByLibrary.simpleMessage("Liczba pomiarów (z krwi i CGM razem)"),
    "Anzahl Sensorenwechsel" : MessageLookupByLibrary.simpleMessage("Liczba zmian sensora CGM"),
    "Anzahl Unterzuckerungen" : MessageLookupByLibrary.simpleMessage("Liczba incydentów hipoglikemii"),
    "Anzahl der Sensoren zur Analyse hinzugefügt" : MessageLookupByLibrary.simpleMessage("Added number of sensors to analysis"),
    "Anzahl:" : MessageLookupByLibrary.simpleMessage("Count:"),
    "Anzeigeeinstellungen" : MessageLookupByLibrary.simpleMessage("Ustawienia wyświetlania"),
    "Auf 10be muss beim Server in den Standardeinstellungen der Haken bei \"cors\" aktiviert werden, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen. Wenn \"cors\" aktiviert wurde, muss auf dem Server eventuell noch ReDeploy gemacht werden, bevor es wirklich verfügbar ist." : MessageLookupByLibrary.simpleMessage("Na 10be domyślne ustawienia serwera muszą włączyć pole wyboru \"cors\", aby narzędzia zewnętrzne takie jak ta miały dostęp do danych. Jeśli \"cors\" został aktywowany, może być konieczne wdrożenie na serwerze zanim będzie on naprawdę dostępny."),
    "Auf Kacheln Bilder statt Namen anzeigen" : MessageLookupByLibrary.simpleMessage("Pokaż miniaturki stron zamiast nazw w widoku kafelków"),
    "Auf dem Einstellungen-Dialog gibt es neben den URL-Eingabefeldern jeweils einen Button, um die URL in einem neuen Browser-Fenster zu öffnen." : MessageLookupByLibrary.simpleMessage("In addition to the URL input fields, there is a button on the Settings dialog to open the URL in a new browser window."),
    "Auf den Kacheln können nun Bilder statt der Namen angezeigt werden. Die Bilder zeigen dann das ungefähre Aussehen der entsprechenden Seite an. Sie entsprechen nicht den tatsächlichen Daten, sondern sind nur eine visuelle Darstellung, die es manchem Benutzer vielleicht einfacher machen, die gewünschten Seiten schneller auszuwählen. Die Aktivierung der Bilder erfolgt im Einstellungsdialog." : MessageLookupByLibrary.simpleMessage("Zdjęcia mogą być teraz wyświetlane na kafelkach zamiast na nazwach. Zdjęcia pokazują przybliżony wygląd odpowiedniej strony. Nie odpowiadają one faktycznym danym, ale są tylko prezentacją wizualną, która może ułatwić niektórym użytkownikom szybki wybór stron, których chcą. Aktywacja obrazów może być wykonana za pomocą okna ustawień."),
    "Auf den Seiten Profil und Basalrate wird in der Titelzeile jetzt wieder das Datum angezeigt, ab dem das Profil gilt." : MessageLookupByLibrary.simpleMessage("Na stronach profilu i stawek bazowych, pasek tytułu ponownie pokazuje datę rozpoczęcia tego profilu."),
    "Auf der Analyseseite kann statt der Anzahl der Werte bei den Zielbereichen jetzt die Standardabweichung der Werte im Zielbereich angezeigt werden." : MessageLookupByLibrary.simpleMessage("Odchylenie standardowe wartości w obszarze docelowym może być teraz wyświetlane na stronie analizy zamiast ilości odczytów CGM."),
    "Auf der Analyseseite werden nun auch GVI und PGS ausgegeben." : MessageLookupByLibrary.simpleMessage("Analiza strony pokazuje teraz również wskaźniki GVI i PGS."),
    "Auf der Analyseseite wird jetzt auch die Standardabweichung aller Werte der Periode angezeigt." : MessageLookupByLibrary.simpleMessage("Teraz także odchylenie standardowe wszystkich wartości okresu pojawi się na stronie analizy."),
    "Auf der Profilseite wurde die Spalte für die Werte von ICR verbreitert." : MessageLookupByLibrary.simpleMessage("Zwiększono szerokość kolumny dla ICR na profilu."),
    "Auf der Seite \"Profil\" wird die Gültigkeit jetzt mit Uhrzeit angezeigt." : MessageLookupByLibrary.simpleMessage("The validity is now displayed with the time on the \"Profile\" page."),
    "Auf der Seite \"Stündliche Statistik\" gibt es eine neue Option, um auch Spalten mit 10% und 90% anzeigen zu lassen." : MessageLookupByLibrary.simpleMessage("Na stronie \"Statystyki godzinowe\" znajduje się nowa opcja, aby pokazać również kolumny z 10% i 90%."),
    "Auf der Seite Protokoll werden jetzt auch Insulinabgaben angezeigt, die z.B. über xdrip eingegeben wurden." : MessageLookupByLibrary.simpleMessage("Dawki insuliny są teraz wyświetlane na stronie protokołu, np. jeśli zostały wprowadzone przez xDrip."),
    "Aufhebung von temp. Ziel" : MessageLookupByLibrary.simpleMessage("Wyłącz bazę tymczasową"),
    "Aufsummierte Werte" : MessageLookupByLibrary.simpleMessage("wartości zsumowane"),
    "Aus den Profilen ermitteln" : MessageLookupByLibrary.simpleMessage("Wyodrębnij z profili"),
    "Ausgabe" : MessageLookupByLibrary.simpleMessage("Generuj"),
    "Ausgabe Parameter" : MessageLookupByLibrary.simpleMessage("Parametry wyjściowe"),
    "Ausgewertete Tage" : MessageLookupByLibrary.simpleMessage("Liczba dni uwzględniona w raporcie"),
    "Ausgewählter Zeitraum" : MessageLookupByLibrary.simpleMessage("Wybrany okres"),
    "Ausrichtung" : MessageLookupByLibrary.simpleMessage("Orientacja"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("Podsumowanie"),
    "Automatisch" : MessageLookupByLibrary.simpleMessage("Automatycznie"),
    "Automatisch_theme selection - automatic" : MessageLookupByLibrary.simpleMessage("Automatycznie"),
    "Basal" : MessageLookupByLibrary.simpleMessage("Dawka podstawowa (baza)"),
    "Basal 0%" : MessageLookupByLibrary.simpleMessage("baza: zatrzymanie (0%)"),
    "Basal ges." : MessageLookupByLibrary.simpleMessage("baza udział"),
    "Basal mit zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Dawka podstawowa (baza) z dwoma miejscami po przecinku"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("Schemat bazy"),
    "Basalrate\nIE / Stunde" : MessageLookupByLibrary.simpleMessage("Dawka bazowa \n(j/godz.)"),
    "Basalrate anzeigen" : MessageLookupByLibrary.simpleMessage("Pokaż dawki podstawowe"),
    "Batteriewechsel" : MessageLookupByLibrary.simpleMessage("Wymiana baterii"),
    "Behandlungen" : MessageLookupByLibrary.simpleMessage("statystyka: terapia"),
    "Bei Herokuapp und anderen Anbietern kostenloser Datenbankinstanzen ist der Speicherplatz der Instanz beschränkt, weshalb sie irgendwann voll ist. Dann kann man zwar eine neue Instanz anlegen, Nightscout Reporter benötigt aber für eine lückenlose Darstellung aller Tage Zugriff auf alle Instanzen, für die man eine Auswertung erhalten will. Deshalb können nun mehrere URLs für die Nightscout Instanzen eingegeben werden. Zusätzlich muss noch eingegeben werden, welches der erste und der letzte Tag mit Daten ist. Mit diesen Informationen ist es Nightscout Reporter dann möglich die benötigten Daten lückenlos auch über mehrere Instanzen hinweg auszuwerten." : MessageLookupByLibrary.simpleMessage("With herokuapp and other providers of free database instances, the instance\'s storage space is limited, which is why it becomes full at some point. Then you can create a new instance, but Nightscout Reporter needs access to all instances for which you want to receive a PDF in order to be able to display it seamlessly every day. Therefore, multiple URLs can now be entered for the Nightscout instances. In addition, you have to enter which is the first and the last day with data. With this information, Nightscout Reporter can then seamlessly evaluate the required data across multiple instances."),
    "Bei Tagesgrafiken und Wochengrafiken gibt es jetzt die Möglichkeit 1, 2, 4, 8 oder 16 Grafiken auf einer Seite zu platzieren." : MessageLookupByLibrary.simpleMessage("W codziennej grafice i tygodniowej grafice można umieścić na stronie 1, 2, 4, 8 lub 16 obrazów."),
    "Bei der Auswertung kann nun ein Bereich angezeigt werden, in dem die Anzahl an Unterzuckerungen während des ausgewählten Zeitraums und der Zeitpunkt der letzten Unterzuckerung angezeigt werden." : MessageLookupByLibrary.simpleMessage("In the analysis, an area can now be displayed, showing the number of hypos in the selected period and the time of the last hypo."),
    "Bei der Basalrate und dem Profil gibt es nun eine Option jeweils nur das letzte im entsprechenden Zeitraum ausgeben zu lassen. Das verringert die Blätterflut bei häufigem Profilwechsel." : MessageLookupByLibrary.simpleMessage("With the basalrate and the profile, there is now an option to have only the last one printed in the corresponding period. This reduces the number of pages with frequent profile changes."),
    "Bei der Berechnung der Kohlenhydrate werden weitere Datensätze berücksichtigt" : MessageLookupByLibrary.simpleMessage("Additional data is used for the calculation of carbohydrates"),
    "Bei der Profilermittlung wurde manchmal der letzte Profilwechsel ignoriert. Das ist nun behoben." : MessageLookupByLibrary.simpleMessage("Ostatnia zmiana profilu była czasami ignorowana podczas określania profilu. To jest teraz naprawione."),
    "Beim Auslesen des Profils ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("Wystąpił błąd podczas odczytu profilu Nightscout."),
    "Beim CGP werden die aktuellen Werte jetzt in der Legende angezeigt." : MessageLookupByLibrary.simpleMessage("The CGP now displays the current values in the legend."),
    "Beim Erzeugen des PDF ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("Wystąpił błąd podczas tworzenia pliku PDF."),
    "Beim Glukose Perzentil Diagramm kann man nun ein Maximum für die Skalierung festlegen. Wenn es auf \"Automatisch\" gesetzt wird, wird das Maximum wie bisher auch ermittelt. Bei einem anderen Wert wird die Obergrenze für das Diagramm auf diesen Wert festgesetzt. Damit ist es leichter möglich zwei Diagramme miteinander zu vergleichen, deren Obergrenze unterschiedlich ist." : MessageLookupByLibrary.simpleMessage("W schemacie percentyla glikemii można teraz ustawić maksymalną wartość skalowania. Jeżeli jest ustawiony na \"automatyczny\", to wartość maksymalną określa się jak poprzednio. Dla każdej innej wartości górna granica dla wykresu jest ustawiona na tę wartość. Ułatwia to porównywanie dwóch schematów z różnymi górnymi granicami."),
    "Beim Laden der Behandlungsdaten werden doppelte Datensätze herausgefiltert." : MessageLookupByLibrary.simpleMessage("Po załadowaniu danych dotyczących obróbki odfiltrowane są zduplikowane zapisy danych."),
    "Beim Laden der Daten wird das entsprechende Datumsformat zur Anzeige verwendet" : MessageLookupByLibrary.simpleMessage("When loading the data, the corresponding date format is used for display of progress"),
    "Beim Perzentil Diagramm gibt es eine neue Option, mit der man die Basalrate unter dem Diagramm anzeigen lassen kann. Da das Diagramm normalerweise einen grösseren Zeitraum umspannt, wird dort die Basalrate angezeigt, die zu Beginn des Zeitraums aktiv war." : MessageLookupByLibrary.simpleMessage("Na schemacie percentyla istnieje nowa opcja, z którą dawkę bazową można wyświetlić pod schematem. Ponieważ schemat zazwyczaj obejmuje dłuższy okres, wyświetlana jest dawka podstawowa, która była aktywna na na początku okresu."),
    "Benutzer können ein User-Token angeben, um sich mit geschützten Nightscout-Instanzen zu verbinden" : MessageLookupByLibrary.simpleMessage("Użytkownicy mogą określić token użytkownika, aby połączyć się z chronionymi instalacjami Nightscout"),
    "Benutzer können nun gelöscht werden" : MessageLookupByLibrary.simpleMessage("Użytkownicy mogą być teraz usuwani"),
    "Benutzerdaten" : MessageLookupByLibrary.simpleMessage("Dane pacjenta"),
    "Benutzerdaten werden nun verschlüsselt im Browser gespeichert" : MessageLookupByLibrary.simpleMessage("User data is now stored encrypted in the browser"),
    "Berechnete IE für Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("bolus"),
    "Berechnete IE für Kohlenhydrate anzeigen" : MessageLookupByLibrary.simpleMessage("Pokaż bolusy"),
    "Bereite Daten vor..." : MessageLookupByLibrary.simpleMessage("Obróbka danych..."),
    "Bestätigung" : MessageLookupByLibrary.simpleMessage("Potwierdzenie"),
    "Bewegung" : MessageLookupByLibrary.simpleMessage("Ćwiczenia"),
    "Bewegung anzeigen" : MessageLookupByLibrary.simpleMessage("Pokaż ćwiczenia"),
    "Bezeichnung" : MessageLookupByLibrary.simpleMessage("Nazwa"),
    "Bis" : MessageLookupByLibrary.simpleMessage("do"),
    "Bisher fehlende Summenwerte in der Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Added missing totals in daily statistics"),
    "Bitte den Dateinamen für die Speicherung auswählen" : MessageLookupByLibrary.simpleMessage("Please select the filename for saving"),
    "Bitte einen Zeitraum wählen." : MessageLookupByLibrary.simpleMessage("Wybierz okres."),
    "Bitte überprüfe die Aktivierung der Wochentage unter dem Monat" : MessageLookupByLibrary.simpleMessage("Proszę sprawdzić zaznaczenia dni tygodnia poniżej nazwy miesiąca"),
    "Blutige Messung" : MessageLookupByLibrary.simpleMessage("Pomiary z krwi"),
    "Blutige Werte sollten jetzt auch bei mmol-Daten korrekt in der Tagesgrafik angezeigt werden." : MessageLookupByLibrary.simpleMessage("Blood values should now also be displayed correctly in the daily graph for mmol data."),
    "Blutwerte werden jetzt auch bei mmol/L in den Grafiken korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Glikemia jest wyświetlana poprawnie także w mmol/L na wykresach."),
    "Bolus" : MessageLookupByLibrary.simpleMessage("Bolus"),
    "Bolus Rechner_bolus calculated by the bolus wizard" : MessageLookupByLibrary.simpleMessage("Kalkulator bolusa"),
    "Bolus ges." : MessageLookupByLibrary.simpleMessage("bolus udział"),
    "Bolusarten anzeigen" : MessageLookupByLibrary.simpleMessage("Pokaż typ bolusa"),
    "Bolusspalte anzeigen" : MessageLookupByLibrary.simpleMessage("Pokaż kolumnę Bolusy"),
    "CGP" : MessageLookupByLibrary.simpleMessage("Kompleksowy Pentagon Glukozowy"),
    "CGP immer mit Standard Zielbereich" : MessageLookupByLibrary.simpleMessage("CGP zawsze z standardowym Targetarea"),
    "COB (Carbs On Board) anzeigen" : MessageLookupByLibrary.simpleMessage("Pokaż COB (węglowodany w obiegu)"),
    "Comprehensive Glucose Pentagon" : MessageLookupByLibrary.simpleMessage("Kompleksowy Pentagon Glukozowy"),
    "Da wir seit einiger Zeit in Europa eine DSGVO haben, werden im Folgenden noch die Vorschriften dafür erfüllt. Der folgende Text ist nur auf Deutsch verfügbar:" : MessageLookupByLibrary.simpleMessage("Since we have a DSGVO in Europe, the following text meets the rules for it. The following text is only available in German:"),
    "Das \"Comprehensive Glucose Pentagon\" (Umfassendes Glukose Fünfeck) wurde als eigenes PDF und als Zusatzseite zur Tagesgrafik und Wochengrafik hinzugefügt. Es handelt sich hierbei um eine Darstellung von fünf Messgrössen, mit deren Hilfe sich die Qualität der Therapie ermitteln und mit anderen vergleichen lässt. Auf den Ausdrucken wird ein Verweis auf die zugrunde liegende Abhandlung ausgegeben." : MessageLookupByLibrary.simpleMessage("\"Kompleksowy Pentagon Glukozy\" został dodany jako oddzielny PDF oraz jako dodatkowa strona do dziennego i tygodniowego wykresu. Przedstawia ona pięć środków, dzięki którym można określić jakość leczenia i porównać go z innymi. Na wydrukach odsyła się do dokumentu wyjściowego."),
    "Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr." : MessageLookupByLibrary.simpleMessage("Clicking on the message area no longer closes it."),
    "Das CGP wird jetzt auch bei extremen Werten korrekt erzeugt." : MessageLookupByLibrary.simpleMessage("The CGP is now generated correctly even with extreme values."),
    "Das Control für die Eingabe des Zeitraums wurde angepasst, damit es auf schmalen Display auch korrekt dargestellt wird." : MessageLookupByLibrary.simpleMessage("??? Przyciski wyboru okresu zostały dostosowane tak, aby były poprawnie wyświetlan na wąskich wyświetlaczach."),
    "Das Enddatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("Data końcowa jest niepoprawna"),
    "Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag." : MessageLookupByLibrary.simpleMessage("The basal rate PDF was incorrect if there was not a value for each hour."),
    "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren." : MessageLookupByLibrary.simpleMessage("Plik PDF został wygenerowany. Jeśli nie został wyświetlony, prawdopodobnie włączona jest blokada wyskakujących okienek. Proszę zmienić ustawienia przeglądarki."),
    "Das Problem, dass bestimmte Tage nicht erzeugt werden konnten, wurde behoben." : MessageLookupByLibrary.simpleMessage("The problem that certain days could not be created has been fixed."),
    "Das Profil-PDF wird nun im Querformat erzeugt, um auch Profile mit vielen Einträgen für die Parameter brauchbar darstellen zu können." : MessageLookupByLibrary.simpleMessage("The profile PDF is now created in landscape format so that profiles with many entries for the parameters can also be displayed."),
    "Das Startdatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("Data początkowa jest niepoprawna"),
    "Das gelbe Fünfeck stellt den Wertebereich des angegebenen Zeitraums dar." : MessageLookupByLibrary.simpleMessage("Żółty pięciokąt reprezentuje zakres wartości określonego okresu."),
    "Das grüne Fünfeck stellt den Wertebereich eines gesunden Menschen ohne Diabetes dar." : MessageLookupByLibrary.simpleMessage("Zielony pięciokąt reprezentuje zakres wartości zdrowej osoby bez cukrzycy."),
    "Daten bis" : MessageLookupByLibrary.simpleMessage("Data to"),
    "Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen." : MessageLookupByLibrary.simpleMessage("Data for the glucose values ​​with incorrect date format are read out correctly."),
    "Daten verschiedener Uploader werden nun besser interpretiert." : MessageLookupByLibrary.simpleMessage("Dane z różnych źródeł są teraz lepiej interpretowane."),
    "Daten von" : MessageLookupByLibrary.simpleMessage("Data from"),
    "Daten, die von xDrip als sync markiert wurden, werden bei der Auswertung ignoriert." : MessageLookupByLibrary.simpleMessage("Dane, które zostały oznaczone jako \"sync\" przez xDrip+ są ignorowane podczas analizy."),
    "Datenschutzerklärung" : MessageLookupByLibrary.simpleMessage("Polityka prywatności"),
    "Datum" : MessageLookupByLibrary.simpleMessage("Data"),
    "Dauer der Insulinaktivität (DIA)" : MessageLookupByLibrary.simpleMessage("Czas trwania aktywnej insuliny (DIA):"),
    "Dauer der Kohlenhydrataktivität" : MessageLookupByLibrary.simpleMessage("Czas wchłaniania węglowodanów:"),
    "Dauer der abgeschalteten Basalrate anzeigen" : MessageLookupByLibrary.simpleMessage("Pokaż czas zatrzymania podaży dawki podstawowej (baza 0%)"),
    "Dauer mit Minutenbruchteil" : MessageLookupByLibrary.simpleMessage("Dokładny czas trwania"),
    "Der Fehler im Profil, der dazu führte, dass die Werte für ISF und Zielbereich falsch umgerechnet werden, wurde behoben." : MessageLookupByLibrary.simpleMessage("Fixed the bug in the profile that caused the ISF and target range values to be incorrectly converted."),
    "Der Fehler mit der Vervielfachung der Kohlenhydrate bei wiederholter Ausgabe der PDFs wurde korrigiert." : MessageLookupByLibrary.simpleMessage("The error with the multiplication of the carbohydrates with the repeated output of the PDFs was corrected."),
    "Der Zeitraum enthält keine auswertbaren Tage" : MessageLookupByLibrary.simpleMessage("Okres nie zawiera dni dających się ocenić"),
    "Der prognostische glykämische Risikoparameter stellt das Risiko von Langzeitkomplikationen dar (bisher nicht durch Studien belegt)." : MessageLookupByLibrary.simpleMessage("Parametr Ryzyka Prognostycznego opisuje ryzyko długotrwałych powikłań \n(niepotwierdzonych dotychczas badaniami)."),
    "Details des Profilwechsels" : MessageLookupByLibrary.simpleMessage("Szczegóły profilu"),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("Niemiecki"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("Data diagnozy CT1"),
    "Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an" : MessageLookupByLibrary.simpleMessage("The analysis page has been redesigned and now displays headings above the areas"),
    "Die Analysewerte wurden nicht ganz korrekt ermittelt. Das wurde korrigiert und nun sollten die statistischen Daten über den Zeitraum richtig ausgewertet werden." : MessageLookupByLibrary.simpleMessage("Wartości analizy nie zostały prawidłowo ustalone, a dane statystyczne oceniane w tym okresie powinny być poprawne."),
    "Die Angabe DIA auf der Profilseite wird nun mit zwei Nachkommastellen angezeigt." : MessageLookupByLibrary.simpleMessage("DIA na stronie profilu jest teraz wyświetlana z dwoma miejscami po przecinku."),
    "Die Aufsummierung der Werte in der Analyse wurde korrigiert." : MessageLookupByLibrary.simpleMessage("The accumulation of the values in the analysis has been corrected."),
    "Die Aufteilung auf mehrere PDF-Dateien funktioniert jetzt besser." : MessageLookupByLibrary.simpleMessage("Podział na wiele plików PDF działa teraz lepiej."),
    "Die Auswahl des Zeitraums ist nun flexibler. Die Auswahl erfolgt in einem Dialog, der die eingestellte Sprache berücksichtigt. Mit der Auswahl der vorbelegten Bereiche (Heute, Letzte Woche, usw.) wird festgelegt, dass beim nächsten Aufruf das aktuelle Datum als Grundlage für den Bereich verwendet wird. Wenn der Bereich direkt im Kalender festgelegt wird, dann gilt dieser beim nächsten Aufruf so wie er festgelegt wurde. Standardmässig ist der erste Tag der Woche jetzt ein Montag. Dieser kann aber durch Anklicken des Wochentags in der Titelzeile des Monats auf die eigene Präferenz festgelegt werden. Die Eingabe der Datumsfelder erfolgt in der Form, die der Sprache entspricht (Tag.Monat.Jahr für deutsch, Monat/Tag/Jahr für englisch)." : MessageLookupByLibrary.simpleMessage("The selection of the period is now more flexible. The selection is done in a dialog that takes the language into account. Selecting the default ranges (today, last week, etc.) sets the current date as the basis for the range at the next call. If the range is set directly in the calendar, then it will be applied the next time as defined. By default, the first day of the week is now a Monday. However, this can be set to your own preference by clicking on the day of the week in the title bar of the month. The date fields are entered in the form that corresponds to the language (day.month.year for German, month/day / year for English)."),
    "Die Auswahl des Zeitraums und der Benutzer wurde in die Titelzeile verschoben." : MessageLookupByLibrary.simpleMessage("The selection of the period and the user has been moved to the title bar."),
    "Die Balken für das Bolusinsulin in der Tagesgrafik werden nun entsprechend dem Maximalwert an Bolusinsulin an dem Tag skaliert." : MessageLookupByLibrary.simpleMessage("The bars for the bolus insulin in the daily graph are now scaled according to the maximum bolus insulin at that day."),
    "Die Balken in der Analyse werden jetzt korrekt skaliert." : MessageLookupByLibrary.simpleMessage("The bars in the analysis are now scaled correctly."),
    "Die Basalratenprofile für den Tag werden nun auch anhand der Behandlungsdaten ermittelt. Profilwechsel werden in der Tagesgrafik angezeigt und sollten ab dem Zeitpunkt des Wechsels auch eine korrekte Basalratenanpassung anzeigen." : MessageLookupByLibrary.simpleMessage("The basalrate profiles for the day are now also determined based on the treatment data. Profile changes are displayed in the daily graph and should also show a correct basal rate adjustment from the moment of change."),
    "Die Berechnung der PDF-Grössen wurde korrigiert, so dass nun weniger PDFs erstellt werden, wenn sie aufgrund der Grösse aufgeteilt werden." : MessageLookupByLibrary.simpleMessage("The calculation of the PDF sizes has been corrected, so that fewer PDFs are created when they are divided due to the size."),
    "Die Berechnung der Summenzeile auf der Seite Tagesstatistik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("The calculation of the totals row on the Daily Statistics page has been corrected."),
    "Die Berechnung der tatsächlichen Basalrate wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Kalkulacja aktualnego schematu dawki podstawowej (bazy) zostały poprawiona."),
    "Die Berechnung des täglichen Insulins berücksichtigt nun auch die SMB." : MessageLookupByLibrary.simpleMessage("The calculation of the daily insulin now also takes the SMB into account."),
    "Die Bilder auf den Kacheln sind nun in der jeweiligen Sprache beschriftet." : MessageLookupByLibrary.simpleMessage("Obrazy na płytkach są teraz oznaczone w odpowiednim języku."),
    "Die Buttons für die Erzeugung vergangener Zeiträume wurden entfernt. Das kann jetzt im neuen PDF-Dialog eingestellt werden." : MessageLookupByLibrary.simpleMessage("Przyciski tworzenia poprzednich okresów zostały usunięte. Można je teraz ustawić w nowym oknie dialogowym PDF."),
    "Die Buttons für die vergangenen Perioden werden nicht angezeigt, wenn kein Zeitraum oder kein PDF ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("The Buttons for past periods will not be displayed if no period or PDF is selected."),
    "Die Daten, die Du hier eingibst, werden normalerweise im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. In diesem Fall werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("Dane, które wpisujesz tutaj będą przechowywane w pamięci podręcznej przeglądarki. Są to zarówno dane związane z wyświetlaniem witryny, oraz te, które zostały pobrane ze strony Nightscout. Pliki cookie i dane użytkownika nie są przechowywane nigdzie poza komputerem użytkownika. Połączenie ze stroną Nightscout i import danych są dokonywane jednorazowo w trakcie generowania pliku PDF, a dane nie są zapisywane w innym miejscu. Wygenerowany PDF jest gotowym dokumentem, który można przekazać diabetologowi lub doradcy/edukatorowi w poradni cukrzycowej celem omówienia postępów w terapii."),
    "Die Eingabe des Zugriffsschlüssels auf dem Einstellungen-Dialog kann jetzt mit einem Button neben dem Eingabefeld lesbar gemacht werden." : MessageLookupByLibrary.simpleMessage("The entry of the access key in the settings dialog can now be made readable with a button next to the input field."),
    "Die Einstellung für das Öffnen des PDF im gleichen Fenster, das Herunterladen des PDFs und den Hinweis auf Nightscout im PDF wurde aus den Einstellungen in die Ausgabe Parameter verschoben. Dadurch kann man das bei jedem Ausdruck schnell festlegen und ändern." : MessageLookupByLibrary.simpleMessage("Ustawienie otwierania PDF w tym samym oknie, pobieranie pliku PDF i ukrywanie tekstu o Nightscout w pliku PDF zostało przeniesione z ustawień na parametry wyjściowe. Pozwala to szybko ustawić i zmienić to dla każdego wyjścia."),
    "Die Einstellungen für das Herunterladen des PDFs, das Öffnen im gleichen Fenster und die Maximalgrösse der PDFs wurden von der Synchronisierung mit Google Drive ausgenommen, weil sie speziell für den verwendeten Browser oder das verwendete Gerät benötigt werden. Sie werden nach wie vor gespeichert, aber sie werden nicht zwischen verschiedenen Browsern synchronisiert." : MessageLookupByLibrary.simpleMessage("The settings for downloading the PDF, opening the PDF in the same window, and the maximum size of the PDFs were excluded from syncing with Google Drive because they are specific to the browser or device you are using. They are still saved, but they are not synchronized between different browsers."),
    "Die Einträge im Protokoll für temporäre Ziele werden jetzt auch bei mmol-Angaben richtig angezeigt." : MessageLookupByLibrary.simpleMessage("The entries in the log for temporary targets are now displayed correctly even with mmol data."),
    "Die Ermittlung der Einheit (mg/dl oder mmol/l) wird nun flexibler gehandhabt, so dass auch Leerzeichen in der entsprechenden Einstellung nicht mehr zu einer Fehlinterpretation führen." : MessageLookupByLibrary.simpleMessage("The determination of the unit (mg/dl or mmol/l) is now handled more flexibly, so that even spaces in the corresponding setting no longer lead to a misinterpretation."),
    "Die Ermittlung der effektiven täglichen Basalrate wurde umstrukturiert und sollte nun genauere Werte ergeben." : MessageLookupByLibrary.simpleMessage("The determination of the effective daily basal rate has been restructured and should now give more accurate values."),
    "Die Farbe für Bewegung in der Tagesgrafik wurde geändert." : MessageLookupByLibrary.simpleMessage("The color for exercises in the daily graphic changed."),
    "Die Farben für Dialoge und Scrollbars wurden angepasst." : MessageLookupByLibrary.simpleMessage("Kolory dla okien dialogowych i pasków przewijania zostały dopasowane."),
    "Die Genauigkeit der ISF Angaben im Profil wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Precyzja ISF w profilu została skorygowana."),
    "Die Genauigkeit der Insulindosierung wird aus dem Profil ermittelt. Der Wert mit der höchsten Genauigkeit legt fest, mit wieviel Nachkommastellen Basalratenwerte angezeigt werden." : MessageLookupByLibrary.simpleMessage("Dokładność dawkowania insuliny jest uzależniona od ustawień profilu Nightscout. Wartość z najwyższą precyzją określa, ile miejsc po przecinku ma być wyświetlane w przypadku wartości dawek podstawowych (baz)."),
    "Die Glucose Perzentil Grafik wurde um die Tabelle \"Stündliche Statistik\" erweitert. Diese listet tabellarisch die Werte des Zeitraums für jede Stunde des Tages auf. Man kann entweder nur die Grafik, nur die Tabelle oder beides zusammen erzeugen lassen." : MessageLookupByLibrary.simpleMessage("The Glucose Percentile Graph has been expanded to include the Hourly Statistics table. This tabulates the values of the period for each hour of the day. You can either create just the graphic, just the table or both together."),
    "Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit." : MessageLookupByLibrary.simpleMessage("The glucose graph of the daily graphs has been freed from missing data."),
    "Die Icons auf einigen Buttons waren zu nahe am Text" : MessageLookupByLibrary.simpleMessage("The icons on some buttons were too close to the text"),
    "Die Kohlenhydratangaben auf der Tagesgrafik werden jetzt ohne den Zusatz KH ausgegeben." : MessageLookupByLibrary.simpleMessage("The carbohydrate information on the daily graph is now output without the suffix KH."),
    "Die Legende der Tagesgrafik wurde um den Eintrag für Bewegung erweitert." : MessageLookupByLibrary.simpleMessage("Legenda codziennej grafiki została rozszerzona o wpis dotyczący ćwiczeń."),
    "Die Legende der Tagesgrafik wurde um den Eintrag für blutige Messungen erweitert." : MessageLookupByLibrary.simpleMessage("Legenda codziennej grafiki zawiera obecnie wpis dotyczący wartości krwi."),
    "Die Links zu Nightscout und den Reports von Nightscout im Menü funktionieren jetzt auch richtig, wenn ein Usertoken angegeben wurde." : MessageLookupByLibrary.simpleMessage("Łącza menu do profilu i raportów Nightscout działają teraz poprawnie, również w przypadku używania tokenu użytkownika."),
    "Die Listenansicht ist jetzt wieder scrollbar." : MessageLookupByLibrary.simpleMessage("Widok listy jest ponownie przewijany."),
    "Die Microboli des Minimed 600 Uploaders werden jetzt auch ermittelt und in der Analyse ausgegeben, wenn sie vorhanden sind." : MessageLookupByLibrary.simpleMessage("The microboli of the Minimed 600 Uploader are now also identified and output in the analysis, if they exist."),
    "Die Microboli vom Minimed 600 Uploader wurden aus der Ausgabe entfernt, da es sich dabei nur um Temporäre Basalraten handelt." : MessageLookupByLibrary.simpleMessage("Mikroboli z minionego 600 Uploadera zostały usunięte z wyjścia, ponieważ są to tylko tymczasowe dawki bazowe."),
    "Die Mischung von zwei Seiten auf einer PDF-Seite, die manchmal vorkam, wurde behoben." : MessageLookupByLibrary.simpleMessage("Mieszanka dwóch stron na jednej stronie PDF, która czasami miała miejsce, została naprawiona."),
    "Die Möglichkeit für Beta-Funktionen wurde entfernt; die Betaversion ist nun hier zu finden:" : MessageLookupByLibrary.simpleMessage("The possibility for beta functions has been removed; the beta version is now available at:"),
    "Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird" : MessageLookupByLibrary.simpleMessage("The ability to display the URL in the title bar has been removed since the current user or his URL is now displayed directly"),
    "Die Oberfläche kann jetzt verschiedene Darstellungen annehmen. Diese zeigen sich zur Zeit durch geänderte Farben und ein angepasstes Icon im Browsertab und beim Laden der Seite. Das hat keine Auswirkungen auf die erzeugten PDF-Dateien. Es ist die Vorbereitung für eine teilweise anpassbare Oberfläche. Das Thema der Darstellung wird standardmässig vom System festgelegt, was zur Zeit heisst, dass im Dezember ein weihnachtliches Thema angezeigt wird. Das kann aber durch Anklicken des Icons, das ab jetzt links unten zu sehen ist, geändert werden. Beim Anklicken wird rechts neben dem Icon ein Bereich mit den verfügbaren Darstellungen eingeblendet. Das erste Icon (der kleine Zauberer) bedeutet dabei, dass die Darstellung vom System ermittelt wird. Zur Zeit bedeutet das die weihnachtliche Darstellung im Dezember. Es kann in Zukunft aber auch weitere Kriterien geben, anhand derer das Thema angepasst wird. Die direkte Festlegung eines Themas mit einem der anderen icons hat aber immer Vorrang vor der systemeigenen Logik." : MessageLookupByLibrary.simpleMessage("The UI can now assume different representations. These show themselves at the moment by different colours and an adapted icon in the Browser tab and with the loading of the side. This does not affect the generated PDF files. It\'s the preparation for a partially customizable surface. The theme of the UI is set by default by the system, which currently means that a Christmas theme will be displayed in December. But this can be changed by clicking on the icon, which can be seen at the bottom left. When clicking the icon, an area with the available themes is displayed to the right of the icon. The first icon (the little wizard) means that the theme is determined by the system. At the moment this means the Christmas presentation in December. However, there may be other criteria in the future that will be used to adjust the theme. However, the direct definition of a theme with one of the other icons always takes precedence over the system logic."),
    "Die Positionierung der Notizen in der Tagesgrafik wurde korrigiert, so dass sie näher an der Uhrzeit stehen. Die Striche wurden so verkürzt, dass sie nur noch bis zum unteren Rand der Grafik gehen und nicht mehr durch die Wertetabelle." : MessageLookupByLibrary.simpleMessage("The positioning of the notes in the daily chart has been corrected so that they are closer to the time. The strokes were shortened so that they go only to the bottom of the graph and not through the table of values."),
    "Die Profile für den Zeitraum wurden teilweise nicht korrekt identifiziert. Das sollte behoben sein." : MessageLookupByLibrary.simpleMessage("The profiles for the period were partially incorrectly identified. That should be fixed."),
    "Die Profilseite wurde angepasst, damit Einträge für 24 Stunden auf eine Seite passen." : MessageLookupByLibrary.simpleMessage("Strona Profil została dostosowana tak, aby odczyty dla 24 godzin mieściły się na jednej stronie."),
    "Die Reihenfolge der Formulare kann nun verändert werden. Dazu einfach das Handle auf der linken Seite des Buttons für das Formular anklicken, festhalten und an die Stelle ziehen, vor der es ausgedruckt werden soll." : MessageLookupByLibrary.simpleMessage("Można teraz zmieniać kolejność raportów w pliku PDF. Po prostu kliknij na uchwycie po lewej stronie przycisku na formularzu, przytrzymaj go i przeciągnij go aby uzyskać żądaną kolejność."),
    "Die Seiten Profil und Basalrate zeigen nun bei einem Profil, das nur temporär während eines Tages aktiv war den Zeitraum an, in dem es aktiv war." : MessageLookupByLibrary.simpleMessage("The pages profile and basalrate for a profile that was temporarily active during one day now only show this timespan."),
    "Die Seitenzahlen auf den Kacheln wurden weiter an den unteren Rand verschoben, damit sie immer gut lesbar sind." : MessageLookupByLibrary.simpleMessage("The page numbers on the tiles have been moved further to the bottom so they are always easy to read."),
    "Die Skalen an den Grafiken wurden überarbeitet. Sie zeigen jetzt für mmol/L ganzzahlige Werte an und die Einheiten wurden entfernt. Diese stehen nur noch unten an der Grafik. Das betrifft die täglichen Grafiken, wöchentlichen Grafiken und das Glukose Percentil Diagramm." : MessageLookupByLibrary.simpleMessage("Skala na grafice została zaktualizowana. Teraz pokazują one liczby całkowite dla mmol/L, a jednostki zostały usunięte. Są one przedstawione na dole grafiki. Obejmuje to dobową grafikę, tygodniową grafikę oraz schemat percentylowy glukozy."),
    "Die Spalten auf der Profilseite wurden korrigiert, damit auch längere Zeitnamen (z.B. in spanisch) Platz finden." : MessageLookupByLibrary.simpleMessage("Kolumny na stronie zostały skorygowane w celu uwzględnienia dłuższych nazw czasu (np. w języku hiszpańskim)."),
    "Die Standardabweichung wird jetzt auch bei mmol/L korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Odchylenie standardowe jest teraz wyświetlane poprawnie podczas korzystania mmol/L."),
    "Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an" : MessageLookupByLibrary.simpleMessage("The daily statistics now display mmol/l values ​​correctly"),
    "Die URL wurde noch nicht festgelegt" : MessageLookupByLibrary.simpleMessage("Adres URL nie został jeszcze określony"),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("Adres URL nie został jeszcze określony."),
    "Die Url zur Nightscout-API muss mit https beginnen, da Nightscout Reporter auch auf https läuft. Ein Zugriff auf unsichere http-Resourcen ist nicht möglich." : MessageLookupByLibrary.simpleMessage("Adres URL do API Nightscout musi zaczynać się od https, ponieważ Nightscout Reporter działa również w trybie bezpiecznym. Dostęp do zasobów nieszyfrowanym połączeniem http nie jest możliwy."),
    "Die Vorschaubilder auf den Kacheln passen sich abhängig von den ausgewählten Optionen teilweise an (z.B. die Auswahl von CGP bei Tagesgrafiken)." : MessageLookupByLibrary.simpleMessage("The preview images on the tiles will partially adjust depending on the options selected (for example, choosing CGP for day graphics)."),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("Witryna wykorzystuje Javascript, aby prawidłowo realizować swoje zadania. Podczas generowania pliku PDF wykorzystywane są Javascript i PHP."),
    "Die Werte VarK und ToR im CGP werden bei Tages- und Wochengrafiken in der Legende und in der Grafik korrekt ausgegeben." : MessageLookupByLibrary.simpleMessage("Wartości VarK i ToR w CGP są poprawne dla grafiki dnia i tygodnia w legendzie i w grafiki."),
    "Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt" : MessageLookupByLibrary.simpleMessage("The values ​​for the default target range on the analysis page are now calculated correctly"),
    "Die Werte im CGP werden jetzt bei mmol-Angaben auch korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Wartości w CGP są obecnie poprawnie wyświetlane dla danych mmol."),
    "Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. " : MessageLookupByLibrary.simpleMessage("Podany adres URL jest nieosiągalny. Jeśli adres URL jest poprawny, może to być spowodowane ustawieniami Nightscout. "),
    "Die berechneten IE für Kohlenhydrate in der Tagesgrafik wurden teilweise mit falschen Faktoren ermittelt. Der Fehler wurde behoben." : MessageLookupByLibrary.simpleMessage("Obliczone IE dla węglowodanów na wykresie dziennym zostały częściowo określone z niewłaściwymi czynnikami. Błędy zostały naprawione."),
    "Die eigenen Grenzwerte auf der Analyseseite in mmol/L werden nun korrekt berechnet." : MessageLookupByLibrary.simpleMessage("The own limits on the analysis page in mmol/L are now calculated correctly."),
    "Die einzelne Seite CGP kann jetzt auch im Querformat ausgegeben werden." : MessageLookupByLibrary.simpleMessage("The single page CGP can now also be output in landscape format."),
    "Die fehlerhafte Platzierug der blutigen Werte bei mmol/L in der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Fixed the erroneous placement of the blood values in the daily graph when using mmol/L."),
    "Die fehlerhafte Zentrierung der Auswahlbuttons wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Nieprawidłowe wyrównanie przycisków na głównej stronie zostało naprawione."),
    "Die glykämische Variabilität stellt die Streuung der Werte um den glykämischen Mittelwert herum in Prozent dar." : MessageLookupByLibrary.simpleMessage("Zmienność glikemiczna stanowi zmienność wartości w procentach."),
    "Die glykämische Variabilität wird jetzt im CGP auch bei Tages- und Wochengrafiken korrekt ausgegeben." : MessageLookupByLibrary.simpleMessage("Zmienność glikemii jest teraz poprawnie wyświetlana w CGP nawet z codzienną i tygodniową grafiką."),
    "Die meisten Spalten auf der Seite \"Stündliche Statistik\" werden bei nicht vorhandenen Daten leer gelassen." : MessageLookupByLibrary.simpleMessage("Most of the columns on the page \"Hourly Statistics\" are left blank if there is no data."),
    "Die mittlerweile überflüssige Option zur Darstellung der Basalrate mit zwei Nachkommastellen wurde aus der Tagesgrafik entfernt." : MessageLookupByLibrary.simpleMessage("Usunięto przestarzałą opcję dla miejsc po przecinku bazy z dziennej grafiki."),
    "Die teilweise falsch zugewiesenen Grenzwerte für die Bereiche (niedrig, normal, hoch) wurden korrigiert." : MessageLookupByLibrary.simpleMessage("częściowo niewłaściwie przydzielone limity dla obszarów (niskie, normalne, wysokie) zostały skorygowane."),
    "Die temporäre Basalrate am Anfang des Tages wurde bisher falsch gesetzt, wenn sie im vorherigen Tag gesetzt wurde. Das wurde behoben." : MessageLookupByLibrary.simpleMessage("The temporary basal rate at the beginning of the day has been set incorrectly if it was set in the previous day. This has been fixed."),
    "Die Überschrift über der Tabelle vom Glucose Perzentil Diagramm wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Tytuł powyżej tabeli schematu percentyla glukozy został poprawiony."),
    "Die Überschrift über der mittleren Spalte im Tagesprofil wurde korrigiert." : MessageLookupByLibrary.simpleMessage("The heading above the middle column in the daily profile has been corrected."),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("Niniejsza strona służy do generowania raportów diabetologicznych w formie PDF na podstawie danych pobranych z serwisu Nightscout. W związku z tym konieczne jest nadanie uprawnień do odczytu tych danych. Tak długo, jak uprawnienia te nie będą nadane, Nightscout Reporter nie będzie w stanie wygenerować raportu."),
    "Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden." : MessageLookupByLibrary.simpleMessage("Added this page. It is displayed each time Nightscout Reporter starts, if it has not been displayed in the current version. In addition, it can be called up again in the burgermenu."),
    "Diese Webseite speichert keine Daten auf Servern. Die benötigten Daten werden von der eingegebenen URL zur Nightscout-Instanz geholt und als PDF aufbereitet. Die Daten, die zur Funktion der Webseite benötigt werden, werden im localStorage des Browsers gespeichert und nicht an den Server übermittelt. Wenn die Synchronisierung mit Google Drive aktiviert wird, dann werden diese Daten zusätzlich in den Anwendungsdaten auf dem Google Drive des verbundenen Kontos gespeichert." : MessageLookupByLibrary.simpleMessage("Ta strona nie przechowuje danych na serwerach. Wymagane dane są pobierane z wprowadzonego adresu URL do instancji Nightscout i sformatowane jako PDF. Dane wymagane do pracy witryny są przechowywane w localStorage przeglądarki i nie są przesyłane na serwer. Jeśli synchronizacja z Dyskiem Google jest włączona, dane te będą również przechowywane w danych aplikacji na koncie Google Drive."),
    "Dieser Regler legt fest, wie gross eine Ausgabe maximal werden darf, bevor sie auf mehrere PDF-Dateien aufgeteilt wird. Wenn bei Erstellung eines PDFs ein leeres Fenster angezeigt wird, dann hilft es normalerweise, diesen Regler weiter nach links zu bewegen." : MessageLookupByLibrary.simpleMessage("Suwak ten określa maksymalny rozmiar pojedynczej części raportu PDF. Skorzystaj z niego, jeśli wyświetlane jest puste okno w przeglądarce podczas tworzenia pliku PDF."),
    "Diverse Abstürze beim Auslesen der Daten bereinigt" : MessageLookupByLibrary.simpleMessage("Fixed various crashes when reading data"),
    "Drei Monate vorher" : MessageLookupByLibrary.simpleMessage("Trzy miesiące wcześniej"),
    "Dämmerung (06:00 - 07:59, 18:00 - 20:59)" : MessageLookupByLibrary.simpleMessage("Świt / zmierzch (06:00 - 07:59, 18:00 - 20:59)"),
    "Eigene Grenzwerte" : MessageLookupByLibrary.simpleMessage("czas w zakresie wg wytycznych ATTD 2019\n"),
    "Ein Fehler in der Zahlenformatierung wurde behoben." : MessageLookupByLibrary.simpleMessage("An error in number formatting has been fixed."),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die letzten Tage bestimmter Monate nicht im Kalender-Control angezeigt wurden." : MessageLookupByLibrary.simpleMessage("Fixed a bug that caused the last days of certain months not to be displayed in the calendar control."),
    "Ein Fehler wurde behoben, der in der Tagesgrafik dazu führte, dass Texte in der Legende andere Texte überschrieben haben." : MessageLookupByLibrary.simpleMessage("A bug has been fixed that caused the daily graphics to overwrite texts in the legend."),
    "Ein Fehler wurde wahrscheinlich behoben, der dazu führt, dass bei manchen Profilen der Wert für DIA nicht korrekt ausgelesen wurde." : MessageLookupByLibrary.simpleMessage("An error has probably been fixed that causes some profiles to miss the value for DIA incorrectly."),
    "Ein Jahr vorher" : MessageLookupByLibrary.simpleMessage("Rok wcześniej"),
    "Ein Link zur Facebookseite von Nightscout Reporter wurde im Menü hinzugefügt." : MessageLookupByLibrary.simpleMessage("Link do strony Nightscout Reporter został dodany do menu."),
    "Ein Shortcut beinhaltet den Zeitraum und die ausgewählten Formulare mit den jeweils gesetzten Optionen. Wenn ein Shortcut aktiviert wird, werden die darin gespeicherten Einstellungen geladen und aktiviert." : MessageLookupByLibrary.simpleMessage("A shortcut contains the period and the selected forms with the options set. When a shortcut is activated, the settings saved in it are loaded and activated."),
    "Ein möglicher Absturz bei der Ausgabe des CGP bei der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Ustanowiono ewentualną awarię wynikającą z CGP w dziennej grafice."),
    "Eine" : MessageLookupByLibrary.simpleMessage("Jeden"),
    "Einen Monat vorher" : MessageLookupByLibrary.simpleMessage("Miesiąc wcześniej"),
    "Einige Browser sind nicht in der Lage PDF Dateien anzuzeigen, die eine bestimmte Grösse überschreiten. Da das von verschiedenen Faktoren abhängt, die sich nicht ohne Weiteres automatisch ermitteln lassen, gibt es die Möglichkeit, statt einer grossen PDF Datei, die nicht angezeigt werden kann, mehrere kleinere PDF Dateien zu erzeugen, die der Browser anzeigen kann. In den Einstellungen und hier kann diese Grösse festgelegt werden. Diese Seite hier wird nur angezeigt, wenn das PDF aufgeteilt werden musste. Wenn nur ein PDF erzeugt wurde, dann wird es direkt angezeigt." : MessageLookupByLibrary.simpleMessage("Niektóre przeglądarki nie są w stanie wyświetlać plików PDF, które przekraczają określoną wielkość. Ponieważ zależy to od różnych czynników, których nie można łatwo ustalić automatycznie, istnieje możliwość wygenerowania kilku mniejszych plików PDF, które mogą być wyświetlane przez przeglądarki zamiast jednego, dużego pliku PDF - z którym przeglądarka ma problem. Ten rozmiar można określić w ustawieniach oraz właśnie tutaj. Ta strona zostaje wyświetlona tylko wtedy, gdy plik PDF musiał zostać podzielony. Jeśli jednak uda się utworzyć jeden plik PDF to zostanie on wyświetlony bezpośrednio."),
    "Einige Formulare können nun mit Parametern konfiguriert werden; hierzu den Pfeil am rechten Rand des Formularbuttons anklicken und im aufgeklappten Bereich die entsprechenden Einstellungen vornehmen; der Pfeil erscheint erst, wenn das Formular zum Ausdruck markiert wurde" : MessageLookupByLibrary.simpleMessage("Some forms can now be configured with parameters; click on the arrow on the right side of the formbutton and make the appropriate settings in the opened area; the arrow will not appear until the form has been marked for printout"),
    "Einige der Optionen für die PDFs wurden hierarchisch angeordnet. Es macht z.B. keinen Sinn, die SMB Werte in der Tagesgrafik an der Kurve platzieren zu lassen, wenn die SMB Werte gar nicht angezeigt werden. Deswegen werden Optionen, die von einer anderen Option abhängen nur dann angezeigt, wenn die entsprechende Option markiert ist. Dadurch ändert sich leider auch die Speicherung der Optionen, weshalb sich die aktuelle Auswahl der Optionen bei manchen PDFs verändert. Da müssen die Optionen dann neu gesetzt werden." : MessageLookupByLibrary.simpleMessage("Some of the options for the PDFs have been arranged hierarchically. There is no point in having the SMB values placed in the daily graph at the curve if the SMB values are not displayed at all. Therefore, options that depend on another option are only displayed if the corresponding option is selected. This unfortunately also changes the storage of options, which is why the current selection of options for some PDFs changed. These options have to be set again."),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("Ustawienia"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("Ustawienia strony"),
    "Einstellungen von Release-Version übernehmen" : MessageLookupByLibrary.simpleMessage("Przenieś ustawienia z wersji stabilnej"),
    "English (GB)" : MessageLookupByLibrary.simpleMessage("Angielski (Wielka Brytania)"),
    "English (USA)" : MessageLookupByLibrary.simpleMessage("Angielski (USA)"),
    "Ermittle ersten Tag mit Daten" : MessageLookupByLibrary.simpleMessage("Searching first day with data"),
    "Ermittle letzten Tag mit Daten" : MessageLookupByLibrary.simpleMessage("Searching last day with data"),
    "Erzeuge PDF..." : MessageLookupByLibrary.simpleMessage("Tworzenie pliku PDF..."),
    "Es gibt ein neues PDF namens Tagesstunden. Dieses zeigt die Durchschnittswerte eines Tages in jedem Stundenintervall an und färbt die Zellen entsprechend des Glukosewertes ein. So hat man eine gut Übersicht über die Werteverteilung im ausgewählten Zeitraum." : MessageLookupByLibrary.simpleMessage("Istnieje nowy plik PDF o nazwie Dni Godzin. To pokazuje średnie wartości dzienne w odstępach godzinowych i wypełnia kolor tła komórek w zależności od wartości glukozy. To daje dobry przegląd rozkładu wartości w wybranym okresie."),
    "Es gibt ein neues PDF namens Tagestrend. Dieses zeigt die Werte eines Tages zusammen mit dem Trend zu jeder vollen Stunde, sowie der eingestellten Basalrate aus dem Profil. Das ist eine gute Übersicht für Basalratentests, um zu erkennen, wo etwas anzupassen ist." : MessageLookupByLibrary.simpleMessage("Istnieje nowy plik PDF zwany codziennym trendem. To pokazuje wartości dnia wraz z trendem godziny i dawki bazowej ustawionej w profilu. Jest to dobry przegląd dla testów dawki podstawowej, aby sprawdzić, gdzie należy coś zmienić."),
    "Es gibt eine neue PDF-Seite für die Tagesprofile. Darauf ist eine Tabelle zu sehen, die die tatsächliche Basalrate für den Tag zeigt, inklusive aller temporären Anpassungen. Ich brauchte das für Debugzwecke, aber vielleicht findet das der eine oder andere Benutzer auch interessant. Das Profil, das dort angezeigt wird entspricht dem Tagesprofil auf der Seite Tagesgrafik. Beim Loopen können das sehr viele Seiten werden, da dort normalerweise alle paar Minuten Anpassungen an der Basalrate vorgenommen werden. Deswegen wird die Tabelle auch abhängig von der Datenmenge in maximal drei Spalten dargestellt, um die Anzahl an Seiten zu reduzieren." : MessageLookupByLibrary.simpleMessage("There is a new PDF page for the daily profiles. It contains a table showing the actual basal rate for the day, including all temporary adjustments. I needed that for debugging, but maybe the some users find it interesting too. The profile displayed there corresponds to the day profile on the page Daily Graphics. Loops can produce many pages, as the basalrate is usually adjusted every few minutes. Therefore, depending on the amount of data, the table is displayed in a maximum of three columns to reduce the number of pages."),
    "Es gibt in den Einstellungen eine Option, das PDF herunterladen zu lassen, statt es im Browser direkt anzeigen zu lassen. Das wird für Browser wie Edge benötigt." : MessageLookupByLibrary.simpleMessage("There is an option in the settings to download the PDF instead of having it displayed directly in the browser. This is needed for browsers like Edge."),
    "Es gibt in den Einstellungen eine neue Option, um den letzten in Nightscout gespeicherten Glukosewert in der Titelzeile anzeigen zu lassen. Wenn diese Option aktiviert ist, wird der aktuelle Wert, das Alter des Wertes, der Trendpfeil und die Differenz zum vorherigen Wert rechts in der Titelzeile angezeigt. Diese Anzeige wird jede Minute aktualisiert, solange das Browserfenster den Eingabefokus besitzt. Wenn es diesen nicht hat, wird die Aktualisierung angehalten und der Wert ausgeblendet, um nicht unnötig Systemresourcen zu belasten." : MessageLookupByLibrary.simpleMessage("W ustawieniach jest nowa opcja wyświetlania ostatniej wartości glukozy zapisanej w Nightscout na pasku tytułu. Jeśli ta opcja jest włączona, aktualna wartość, wiek wartości, strzałka trendu i różnica względem poprzedniej wartości są wyświetlane po prawej stronie paska tytułu. Wyświetlacz jest aktualizowany co minutę, dopóki okno przeglądarki ma ostrość wprowadzania. Jeśli nie koncentruje się, aktualizacja zostaje zatrzymana i wartość jest ukryta, aby uniknąć niepotrzebnego obciążenia zasobów systemowych."),
    "Es gibt jetzt Shortcuts, mit denen man die aktuelle Auswahl der Formulare, deren Parameter und den ausgewählten Zeitraum speichern kann. Beim Aktivieren eines Shortcuts wird das alles wieder so eingestellt, wie es war, als der Shortcut gespeichert wurde." : MessageLookupByLibrary.simpleMessage("Istnieją teraz skróty, z którymi możesz zapisać bieżący wybór formularzy, ich parametry i wybrany okres. Podczas aktywowania skrótu, wszystko jest ustawione z powrotem na to, co było po zapisaniu skrótu."),
    "Es gibt jetzt auch die Möglichkeit, Nightscout Reporter in europäischem Englisch darzustellen. Der Unterschied zum amerikanischen Englisch besteht derzeit lediglich im Datumsformat (gb: dd/MM/yyyy, us: MM/dd/yyyy)." : MessageLookupByLibrary.simpleMessage("Obecnie istnieje również możliwość korzystania z raportu Nightscout w języku angielskim. Różnica w stosunku do angielskiego amerykańskiego istnieje obecnie tylko w formacie daty (gb: dd/MM/yyyy, nas: MM/dd/yyyy)."),
    "Es gibt jetzt die Möglichkeit, PDFs vergangener Zeiträume zu erzeugen, ohne den Zeitraum anpassen zu müssen. Oberhalb des Buttons zur PDF-Erzeugung gibt es zwei Buttons, welche die PDFs für eine frühere Periode erzeugen. Der untere der beiden Buttons erzeugt die Vorperiode, der obere die vorletzte Periode. Auf den Buttons wird das Startdatum und das Enddatum angezeigt. Wenn z.B. als Zeitraum \"Letzte 2 Wochen\" gewählt wurde, dann wird mit dem unteren Button der Zeitraum von zwei Wochen beginnend vor vier Wochen erzeugt und mit dem oberen Button der Zeitraum von zwei Wochen beginnend vor sechs Wochen. Auf diese Art kann man recht einfach Vergleichsberichte erzeugen, um die Entwicklung der Werte zu erkennen. Auf den Seiten wird für diese Ausdrucke in der Kopfzeile das Wort \"Historisch 1\", bzw. \"Historisch 2\" oberhalb des Zeitraums ausgegeben. So kann man beim Vergleich der Werte die Daten voneinander unterscheiden." : MessageLookupByLibrary.simpleMessage("Obecnie istnieje możliwość generowania plików PDF z poprzednich okresów bez konieczności dostosowywania tego okresu. istnieją dwa przyciski dla wcześniejszych okresów powyżej przycisku do tworzenia PDF, które generują PDF. Dolna z dwóch przycisków generuje poprzedni okres, a górna z przedostatnim okresem. Przyciski pokazują datę rozpoczęcia i datę zakończenia. Jeśli wybrany zostanie okres „ostatnie 2 tygodnie”, następnie dolny przycisk tworzy okres od dwóch tygodni od czterech tygodni temu, a górny przycisk - okres od dwóch tygodni od sześciu tygodni. W ten sposób łatwo jest generować raporty porównawcze w celu wykrycia rozwoju wartości. Słowa \"Historyczne 1\" lub \"Historyczne 2\" znajdują się powyżej okresu na stronach tych wydruków w nagłówku. Porównując arkusze, można zatem odróżnić dane od siebie."),
    "Es ist jetzt möglich, die Buttons zur PDF-Auswahl als Kacheln darstellen zu lassen. Die Option dazu ist im Menü auf der linken Seite zu finden. In der Kachelansicht werden die Buttons über die verfügbare Fläche verteilt und sind so auf kleinen Geräten leichter zu treffen. Ausserdem sieht man dann normalerweise alle verfügbaren PDFs auf einen Blick und muss nicht scrollen. Auf den aktivierten Kacheln wird angezeigt, an welcher Stelle im PDF die entsprechenden Seiten ausgegeben werden und wieviele Seiten die entsprechende Kachel ausgibt. Diese Zahl kann für die meisten Kacheln korrekt ermittelt werden, bei einigen ist das aber ohne Auswertung der Daten nicht möglich (z.B. Profile und Protokoll). In diesem Fall wird entweder keine Seitenzahl oder eine Mindestzahl an Seiten angegeben. Sobald die Erstellung des PDFs erfolgt ist, werden die korrekten Zahlen angezeigt. Die Reihenfolge der Kacheln kann verändert werden, indem man sie festhält und an die Stelle verschiebt, an der man sie gerne hätte. Nach Anklicken des Icons in der oberen rechten Ecke können die Parameter für das entsprechende PDF erfasst werden." : MessageLookupByLibrary.simpleMessage("It is now possible to display the buttons for PDF selection as tiles. The option can be found in the menu on the left. In the tile view, the buttons are distributed over the available area and are thus easier to hit on small devices. In addition, you normally see all available PDFs at a glance and do not have to scroll. The activated tiles indicate at which point in the PDF the corresponding pages are created and how many pages the corresponding tile creates. The number of pages can be determined correctly for most tiles, but for some this is not possible without data insight (for example, profiles and protocol). In this case, either no page number or a minimum number of pages is shown. Once the PDF is created, the correct numbers will be displayed. The sortorder of the tiles can be changed by dragging it to where you want it. After clicking the icon in the upper right corner, the parameters for the corresponding PDF can be set."),
    "Es ist jetzt möglich, die Einstellungen auf Google Drive zu speichern. Das hat den Vorteil, dass man die Einstellungen nicht nur im aktuellen Browser hat, sondern bei jedem Browser, mit dem man sich bei Google anmeldet. Die Einstellungen werden nach wie vor im Browser gespeichert. Bei einer Verbindung zu Google Drive werden sie aber zusätzlich auf Google Drive gespeichert. Beim Laden der Seite wird überprüft, ob eine Synchronisierung gewünscht ist. Wenn das der Fall ist, dann werden die Daten von Google Drive heruntergeladen. Wenn die Daten darin neuer sind als die Daten im Browser, werden sie verwendet. Nach dem Speichern der Daten werden bei aktivierter Synchronisierung diese Daten mit dem aktuellen Zeitstempel auf Google Drive gespeichert. Die Synchronisierung wird im Menü auf der linken Seite aktiviert und deaktiviert. Sie kann auch beim erstmaligen Aufruf der Seite in einem neuen Browser direkt im Willkommensbildschirm aktiviert werden. Nightscout Reporter verlangt nur die Berechtigung die eigenen App-Daten zu speichern und zu laden und benötigt keinen Zugriff auf andere Daten auf Google Drive." : MessageLookupByLibrary.simpleMessage("It is now possible to save the settings to Google Drive. This has the advantage that you have the settings not only in the current browser, but in any browser, which is connected to your Google account. The settings are still stored in the browser. When connected to Google Drive, they will also be stored on Google Drive. When loading the page, it checks if synchronization is desired. If that\'s the case then the data will be downloaded from Google Drive. If the downloaded data is newer than the data in the browser, it will be used. Once the data is saved, syncing will save that data with the current timestamp to Google Drive. The synchronization is activated and deactivated in the menu on the left side. It can also be activated when calling the page fpr the first time in a new browser directly in the welcome screen. Nightscout Reporter only requires permission to save and load your own app data and does not require access to other data on Google Drive."),
    "Es ist jetzt möglich, die Wochentage festzulegen, die im Zeitraum berücksichtigt werden sollen. Die entsprechenden Tage werden bei der Auswahl des Zeitraums mit den Buttons unterhalb des Monats festgelegt. Auf den PDFs werden Zeiträume dann zusätzlich mit der Information versehen, welche Wochentage berücksichtigt werden, wenn es nicht alle sind." : MessageLookupByLibrary.simpleMessage("Obecnie możliwe jest ustalenie dni tygodnia, które powinny być wykorzystane w tym okresie. Przy wyborze okresu odpowiednie dni są ustawione z przyciskami poniżej miesiąca. W odniesieniu do PDF okresy są wykazywane wraz z dniami tygodnia, w przypadku braku co najmniej jednego."),
    "Es sind keine Daten für den Ausdruck vorhanden" : MessageLookupByLibrary.simpleMessage("Brak danych do analizy"),
    "Es sind keine Daten vorhanden." : MessageLookupByLibrary.simpleMessage("Brak dostępnych danych."),
    "Es werden jetzt auch blutige Werte erkannt, die von Loop auf dem IPhone eingetragen werden." : MessageLookupByLibrary.simpleMessage("Wartości krwi, które są wprowadzane przez pętlę na iPhone\'a, są już rozpoznane."),
    "Español" : MessageLookupByLibrary.simpleMessage("Hiszpański"),
    "Exportieren" : MessageLookupByLibrary.simpleMessage("Export"),
    "Facebook Seite" : MessageLookupByLibrary.simpleMessage("Strona na facebooku"),
    "Fehler behoben, der bei der Kachelansicht teilweise verhindert hat, dass die Parameter für die Kacheln aufgerufen werden konnten." : MessageLookupByLibrary.simpleMessage("Naprawiono błąd, który czasami uniemożliwił wywołanie parametrów kafelków w widoku kafelka."),
    "Fehler beim Laden der Daten" : MessageLookupByLibrary.simpleMessage("Błąd pobierania danych"),
    "Fehler werden besser abgefangen und mit sinnvollem Text ersetzt." : MessageLookupByLibrary.simpleMessage("Errors are better intercepted and replaced with more meaningful text."),
    "Fehlerhafte Ausgabe der Blutzuckerwerte in der täglichen Grafik korrigiert." : MessageLookupByLibrary.simpleMessage("Fixed incorrect output of blood glucose levels in the daily graph."),
    "Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt" : MessageLookupByLibrary.simpleMessage("Faulty values ​​are no longer considered in the evaluation of the graphics; these are recognized by the value \"NONE\" in the data field \"direction\""),
    "Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt." : MessageLookupByLibrary.simpleMessage("Error message when loading profiles without start date removed."),
    "Français" : MessageLookupByLibrary.simpleMessage("Français"),
    "Für die Tagesgrafik gibt es jetzt eine Option, um die Aufsummierung nahe beieinander liegender Werte umzuschalten." : MessageLookupByLibrary.simpleMessage("There is now an option for the daily graphics to toggle the accumulation of close values."),
    "GPD" : MessageLookupByLibrary.simpleMessage("GPD"),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("Data urodzin"),
    "Gelbe Kreise zeigen an, dass der entsprechende Wert die Skala überschreitet." : MessageLookupByLibrary.simpleMessage("Yellow circles indicate that the corresponding value exceeds the scale."),
    "Genauigkeit der Basalangaben:" : MessageLookupByLibrary.simpleMessage("Precision of basalvalues:"),
    "Ges." : MessageLookupByLibrary.simpleMessage("Suma"),
    "Gesamt" : MessageLookupByLibrary.simpleMessage("Baza dobowa \n"),
    "Geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("Przewidywana HbA1c"),
    "Glukose Pentagon erzeugen" : MessageLookupByLibrary.simpleMessage("Generuj pentagon glukozowy"),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Wykres percentyl"),
    "Glukose im Zielbereich" : MessageLookupByLibrary.simpleMessage("glikemia w zakresie"),
    "Glukose zu hoch" : MessageLookupByLibrary.simpleMessage("glikemia powyżej zakresu"),
    "Glukose zu niedrig" : MessageLookupByLibrary.simpleMessage("glikemia poniżej zakresu"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("wykres glikemii"),
    "Glukosewert" : MessageLookupByLibrary.simpleMessage("Glukoza"),
    "Glykämischer Variabilitäts Index (GVI)" : MessageLookupByLibrary.simpleMessage("Wskaźnik Zmienności Glikemicznej (GVI)"),
    "Google Assistant" : MessageLookupByLibrary.simpleMessage("Asystent Google"),
    "Grafik" : MessageLookupByLibrary.simpleMessage("Wykres"),
    "Grafiken pro Seite" : MessageLookupByLibrary.simpleMessage("Wykresów na stronę"),
    "Gross" : MessageLookupByLibrary.simpleMessage("Duży"),
    "Gruppierung der Zeiten" : MessageLookupByLibrary.simpleMessage("Grupowanie okresów"),
    "HTML-Notizen anzeigen" : MessageLookupByLibrary.simpleMessage("Pokaż notatki"),
    "Heute" : MessageLookupByLibrary.simpleMessage("Dzisiaj"),
    "Hiermit wird festgelegt, um wieviel der Zeitraum des PDFs verschoben werden soll, um Vergleichswerte zu erhalten." : MessageLookupByLibrary.simpleMessage("This determines how much the period of the PDF should be shifted in order to obtain comparative values."),
    "Hinweise auf Nightscout in der Kopf- und Fusszeile des PDFs ausblenden" : MessageLookupByLibrary.simpleMessage("Ukryj tekst o Nightscout w nagłówku i stopce dokumentu PDF"),
    "Hinzufügen" : MessageLookupByLibrary.simpleMessage("Dodaj"),
    "Historische Daten" : MessageLookupByLibrary.simpleMessage("Historical Data"),
    "Hochformat" : MessageLookupByLibrary.simpleMessage("Pionowo"),
    "Hohe Basalraten werden jetzt besser dargestellt." : MessageLookupByLibrary.simpleMessage("High basal rates are now better represented."),
    "Höchster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Najwyższa wartość w okresie"),
    "IE" : MessageLookupByLibrary.simpleMessage("j"),
    "IE/std" : MessageLookupByLibrary.simpleMessage("U/godz."),
    "IOB (Insulin On Board) anzeigen" : MessageLookupByLibrary.simpleMessage("Pokaż IOB (insulina w obiegu)"),
    "Im CGP wurden die Skalenbeschriftungen korrigiert." : MessageLookupByLibrary.simpleMessage("The scale labels have been corrected in the CGP."),
    "Im CGP wurden verschiedene Berechnungen korrigiert, die sich vor allem in Differenzen bei ToR und Mittelwerten zeigten." : MessageLookupByLibrary.simpleMessage("Różne obliczenia zostały skorygowane w CGP, co wykazano głównie w różnicach w ToR i średnich wartościach."),
    "Im Dialog der Ausgabe Parameter gibt es nun die Möglichkeit, das CGP immer mit dem Standard Zielbereich zu erzeugen. Diese Option ist anfangs eingeschaltet, da das CGP ein standardisiertes Formular ist, das gerne zu Vergleichszwecken herangezogen wird. Man kann es aber für seine eigenen Zwecke ausschalten. Diese Einstellung wird dann auch beibehalten." : MessageLookupByLibrary.simpleMessage("W oknie dialogowym parametrów wyjściowych istnieje obecnie możliwość generowania CGP ze standardowym obszarem docelowym. Opcja ta jest początkowo aktywowana, ponieważ CGP jest standardową formą, która jest często wykorzystywana do celów porównawczych. Ale możesz go wyłączyć na własne cele. To ustawienie jest zachowane."),
    "Im Dialog der Ausgabe Parameter wurde rechts oben der Schieberegler \"zu Vergleichszwecken\" hinzugefügt. Wenn dieser aktiviert ist, dann wird überall der Standard Zielbereich verwendet. Intern wird das auch noch für andere Anpassungen verwendet. Diese Option ist dafür gedacht, dass man seine Ausdrucke mit anderen Diabetikern vergleichen kann. Das ist zum Beispiel zur Vorlage bei Ärzten und Diabetesberatern sinnvoll." : MessageLookupByLibrary.simpleMessage("W oknie dialogowym parametrów wyjściowych przełącznik \"do celów porównawczych\" został dodany w prawym górnym rogu. Jeśli to jest aktywowane, standardowy obszar docelowy jest używany wszędzie. Wewnętrznie jest to również używane do innych korekt. Ta opcja jest zaprojektowana tak, aby można było porównać wydruki z innymi cukrzycami. Jest to pomocne na przykład przy przekazywaniu informacji lekarzom i konsultantom w dziedzinie cukrzycy."),
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
    "Im Protokoll werden die Angaben, die ein temporäres Ziel von 0 IE für 0 Minuten setzen als \"Aufhebung von temp. Ziel\" ausgegeben." : MessageLookupByLibrary.simpleMessage("W logu informacja, która ustawia tymczasowy cel 0 U na 0 minut jest wyjściem jako \"Anuluj cel tymczasowy\"."),
    "Importieren" : MessageLookupByLibrary.simpleMessage("Import"),
    "Impressum" : MessageLookupByLibrary.simpleMessage("Twórcy"),
    "In Firefox ist es jetzt auch möglich, die Hauptseite zu scrollen, wenn sie länger ist, als das Browserfenster." : MessageLookupByLibrary.simpleMessage("Możliwe jest przewijanie strony głównej w przeglądarce Firefox, jeśli jest dłuższa niż okno przeglądarki."),
    "In dem Dialog mit den Ausgabe Parametern wurde die Option hinzugefügt, die Genauigkeit der Ausgabe von Basalangaben festzulegen. Diese wird normalerweise aus den Angaben zur Basalrate in den Profilen ermittelt. Das wird auch weiterhin getan, wenn der erste Eintrag in der Liste ausgewählt wird. Ansonsten werden alle Basalangaben mit der Genauigkeit ausgegeben, die bei dieser Option ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("W oknie dialogowym z parametrami wyjściowymi dodano opcję określającą dokładność danych wyjściowych. Zazwyczaj określa się to na podstawie informacji dotyczących dawki bazowej w profilach. Tak jest w przypadku wyboru pierwszego wpisu na liście. W przeciwnym razie wszystkie informacje bazowe są uzyskiwane z dokładnością wybraną dla tej opcji."),
    "In den Ausgabe Parametern kann nun angegeben werden, ob immer der neueste Tag zuerst angezeigt wird. Das hat Auswirkungen auf die Tagesgrafik, die Tagesstatistik und die Wochengrafik. In den Formularoptionen wurde die entsprechende Option entfernt." : MessageLookupByLibrary.simpleMessage("Możesz teraz określić w parametrach wyjściowych, czy najnowszy dzień jest zawsze wyświetlany jako pierwszy. Ma to wpływ na wykres dzienny, dzienne statystyki i wykres tygodniowy. Odpowiednia opcja została usunięta z opcji formularza."),
    "In den Einstellungen gibt es einen Regler, der festlegt, wie gross die erzeugten PDF-Dateien maximal sein dürfen. Wenn nur ein leeres PDF erzeugt wird, dann sollte dieser Regler weiter nach links geschoben werden, um die Dateigrösse zu verringern." : MessageLookupByLibrary.simpleMessage("W ustawieniach jest suwak, który definiuje, jak duże mogą być wynikowe pliki PDF. W przypadku utworzeniu pustego PDF, suwak ten należy przesunąć w lewo, aby zmniejszyć rozmiary plików."),
    "In der Analyse können die Prozentzahlen für die Zielbereiche mit Nachkommazahl angezeigt werden. Das verringert die Differenz zu 100%, wenn man sie zusammenzählt. Der verbleibende Rest sind Rundungsdifferenzen." : MessageLookupByLibrary.simpleMessage("In the analysis the percentages for the target areas can be shown with decimal places. This reduces the difference to 100% if you sum it up. The remainder is because of rounding differences."),
    "In der Auswertung gibt es eine neue Option, um den Standardbereich feiner abzustufen. Dort werden dann zusätzlich sehr hohe Werte und sehr niedrige Werte angezeigt." : MessageLookupByLibrary.simpleMessage("W analizie jest nowa opcja dopasowania standardowy zakresu. Z tą opcją wyświetlane są zarówno bardzo wysokie wartości jak i bardzo niskie wartości."),
    "In der Auswertung können die Angaben für Material (Katheter, Sensor, Ampulle) mit Nachkommastellen angezeigt werden." : MessageLookupByLibrary.simpleMessage("In the analysis, the information for material (catheter, sensor, ampoule) can be displayed with decimal places."),
    "In der Kachelansicht können die Parameter aller ausgewählten Seiten zusammen in einer Liste eingestellt werden. Dazu gibt es im Titelbereich der Parameterliste neben dem Schliessen-Button einen zusätzlichen Button, mit dem man zwischen den beiden Möglichkeiten umschalten kann." : MessageLookupByLibrary.simpleMessage("In the tile view, the parameters of all selected pages can be set together in a list. For this purpose, there is an additional button in the title area of the parameter list next to the close button, with which you can switch between the two options."),
    "In der Legende unter der Tagesgrafik wird die Summe der Kohlenhydrate für den Tag angezeigt." : MessageLookupByLibrary.simpleMessage("Legenda poniżej wykresu dziennego przedstawia sumę węglowodanów w danym dniu."),
    "In der Sprachauswahl ist jetzt auch Slowakisch verfügbar." : MessageLookupByLibrary.simpleMessage("Slovak is now also available In the language selection."),
    "In der Tagesgrafik gibt es die Option, HTML-Notizen zu unterdrücken. Manche Uploader schreiben in die Notizen komplette HTML-Seiten rein, was im PDF extrem schlecht darstellbar ist. Deswegen kann man diese mit Setzen der Option ausblenden." : MessageLookupByLibrary.simpleMessage("In the daily graphics, there is the option to suppress HTML notes. Some uploaders write complete HTML pages in the notes, which is extremely difficult to render in the PDF. That\'s why you can hide them by setting this option."),
    "In der Tagesgrafik gibt es eine Option, die berechneten IE für aufgenommene Kohlenhydrate anzeigen zu lassen. Der Wert, der unmittelbar unter den Kohlenhydraten angezeigt wird, entspricht dem Bolus, der zu diesem Zeitpunkt für diese Kohlenhydratmenge abgegeben werden sollte. Dieser Wert kann niedriger als der tatsächlich abgegebene Wert ausfallen, weil für die Insulinabgabe noch IOB und andere Faktoren berücksichtigt werden." : MessageLookupByLibrary.simpleMessage("Na wykresie dziennym istnieje możliwość wyświetlenia obliczonego IE dla węglowodanów. Wartość przedstawiona poniżej węglowodanów to bolus, który powinien zostać dostarczony dla tej ilości węglowodanów w tym czasie. Wartość ta może być niższa od rzeczywistej dostarczonej wartości, ponieważ IOB i inne czynniki są brane pod uwagę przy podawaniu insuliny."),
    "In der Tagesgrafik gibt es eine Option, mit dem man die verschiedenen Arten der Boli kenntlich machen lassen kann. Wenn diese Option gesetzt ist, wird ein Bolus, der zu einer Mahlzeit abgegeben wurde mit einer anderen Farbe markiert, als ein Bolus zur Korrektur. In der Legende werden dann Korrektur-, Mahlzeiten-Boli und SMB getrennt angezeigt." : MessageLookupByLibrary.simpleMessage("Grafika codzienna pozwala na rozróżnienie różnych rodzajów bolusów. Jeśli ta opcja jest ustawiona, bolus podany na posiłek jest oznaczony innym kolorem niż bolus podany jako korekta. W legendzie znajdują się również odrębne wartości dla bolusa posiłkowego, bolusa korekcyjnego i SMB."),
    "In der Tagesgrafik gibt es eine Option, mit der man sich die erfassten Trainingsdaten anzeigen lassen kann. Diese werden dann am unteren Rand über der Tabelle der Glukosewerte eingefügt." : MessageLookupByLibrary.simpleMessage("Na wykresach codziennych istnieje możliwość dodania danych z ćwiczeń do grafiki. Będzie on wyświetlany na dole grafiki znajdującej się bezpośrednio nad glukozą."),
    "In der Tagesgrafik gibt es eine neue Option, um die Rundung der Insulinwerte auf die maximale Genauigkeit im Profil zu unterbinden. Das macht da Sinn, wo entweder kein Profil vorhanden ist, oder wo Werte mit höherer Genauigkeit als im Profil eingegeben werden." : MessageLookupByLibrary.simpleMessage("Na wykresie dziennym znajduje się nowa opcja, aby zapobiec zaokrągleniu wartości insuliny do maksymalnej dokładności profilu. Ma to sens, gdy nie ma profilu lub gdy wartości są wprowadzane z większą precyzją niż w profilu."),
    "In der Tagesgrafik kann die Anzeige der SMB nun ausgeblendet werden." : MessageLookupByLibrary.simpleMessage("Wyświetlanie SMB może zostać wyłączone w raporcie dziennym."),
    "In der Tagesgrafik kann jetzt bei Auswahl der Tages Basalrate angegeben werden, dass der Name des Profils angezeigt wird, das am Beginn des Tages aktiv war. Dieser wird dann so angezeigt, wie ein Profilwechsel um 0 Uhr." : MessageLookupByLibrary.simpleMessage("Podczas wybierania dobowej dawki podstawowej, w opcjach wykresu dziennego możliwe jest określenie nazwy profilu, który był aktywny na początku dnia. Następnie zostanie wyświetlony jako zmiana profilu o godzinie 0 am."),
    "In der Tagesgrafik kann man nun die IOB (Insulin On Board) und COB (Carbs On Board) anzeigen lassen. Die IOB werden am oberen Rand angezeigt, wo auch die Bolusabgaben dargestellt werden, die COB am unteren Rand, wo auch die Kohlenhydrate dargestellt werden." : MessageLookupByLibrary.simpleMessage("Na wykresie dziennym możesz teraz wyświetlić IOB (Insulin On Board) i COB (Karbs On Board). IOB jest pokazana u góry, gdzie znajduje się bolus, u dołu COB, gdzie znajdują się węglowodany."),
    "In der Tagesgrafik kann nun angezeigt werden, wie lange die Basalrate auf 0% lief." : MessageLookupByLibrary.simpleMessage("The daily graph now shows the duration of the basal rate at 0%."),
    "In der Tagesgrafik werden die Insulinangaben jetzt kleiner dargestellt, wenn die Basalrate eine Genauigkeit von mehr als 2 Nachkommastellen hat." : MessageLookupByLibrary.simpleMessage("Jeśli dawka podstawowa ma więcej niż 2 miejsca po przecinku, wartość insuliny jest mniejsza w dobowej grafiki."),
    "In der Tagesgrafik werden jetzt auch Blutzuckermessungen angezeigt. Sie werden als rote Quadrate dargestellt und die zugehörigen Werte in der Tabelle unterhalb der Grafik werden ebenfalls mit roter Schrift angezeigt." : MessageLookupByLibrary.simpleMessage("The daily chart now also displays blood glucose values. They are displayed as red squares and the associated values ​​in the table below the graphic are also displayed in red."),
    "In der Tagesgrafik werden nun SMBs auch angezeigt, wenn die Option für die Darstellung von Insulin akitivert wurde. Man kann festlegen, ob die SMBs an der Glukosekurve oder am Zielwert angezeigt werden." : MessageLookupByLibrary.simpleMessage("SMBs are now also displayed in the daily graphics if the option for displaying insulin has been activated. You can specify whether the SMBs are displayed on the glucose curve or at the target value."),
    "In der Tagesgrafik werden nun auch Kohlenhydratkorrekturen angezeigt." : MessageLookupByLibrary.simpleMessage("Carbohydrate corrections are now displayed in the daily graph."),
    "In der Tagesgrafik werden nun auch Reservoirwechsel angezeigt." : MessageLookupByLibrary.simpleMessage("Reservoir changes are now also shown in the daily graph."),
    "In der Tagesgrafik werden nun auch bei Anzeige des Zielwertes die temporären Ziele berücksichtigt." : MessageLookupByLibrary.simpleMessage("Na wykresie dziennym tymczasowe cele są obecnie również brane pod uwagę przy podawaniu wartości docelowej."),
    "In der Tagesgrafik werden nun auch verzögerte Boli angezeigt." : MessageLookupByLibrary.simpleMessage("Delayed boli are now displayed in the daily graph."),
    "In der Tagesgrafik werden nun der geschätzte HbA1C und die prozentuale Menge an Bolusinsulin und Basalinsulin für den Tag angezeigt. Diese Anzeige erfolgt innerhalb der Legende, weshalb diese aktiviert sein muss, damit die Werte angezeigt werden." : MessageLookupByLibrary.simpleMessage("The daily chart now shows the estimated A1C and the percentage of bolus insulin and basal insulin for the day. These values are displayed within the legend, which is why it must be enabled for the values to appear."),
    "In der Tagesgrafik wird jetzt eine Tabelle mit halbstündigen Glukosewerten eingeblendet angezeigt. Diese kann über einen Parameter ausgeschaltet werden." : MessageLookupByLibrary.simpleMessage("The daily graphics now displays a chart with half-hourly glucose values. This can be switched off via a parameter."),
    "In der Tagesgrafik wurde \"Training\" in \"Bewegung\" umbenannt. Das passt besser zu den Einträgen in AAPS." : MessageLookupByLibrary.simpleMessage("W dziennym obrazku w wersji german \"Szkolenie\" zostało zastąpione przez \"Bewegung\", ponieważ lepiej pasuje do sformułowania w AAPS."),
    "In der Tagesgraphic werden jetzt Insulinwerte und Kohlenhydratwerte zusammengefasst, wenn es mehrere innerhalb einer Stunde gibt. Die Balken werden nach wie vor für jeden Wert einzeln ausgegeben. Auf diese Art sollte es keine überlappende Ausgabe der Werte mehr geben. Die zusammengefassten Werte werden in eckigen Klammern ausgegeben, um anzuzeigen, dass hier Werte aufsummiert wurden." : MessageLookupByLibrary.simpleMessage("The daily graphic now sums up insulin values and carbohydrate values when there are several values within an hour. The bars are still drawn individually for each value. In this way there should be no overlapping output of the values anymore. The summarized values are displayed in square brackets to indicate that values have been summed up here."),
    "In der Tagesstatistik und in den täglichen Grafiken werden jetzt zum Datum die Wochentage mit angezeigt." : MessageLookupByLibrary.simpleMessage("In the daily statistics and in the daily graphics, the days of the week are now displayed with the day of the week."),
    "In der Tagesstatistik wurde die Spalte Varianzkoeffizient hinzugefügt (VarK)." : MessageLookupByLibrary.simpleMessage("In the daily statistics, the column Coefficient of variation has been added (CV)."),
    "In der Tagesstatistik wurden bei unvollständigen Daten teilweise fehlerhafte Werte ausgegeben. Das wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Naprawiono błędne wyświetlanie danych w dziennych statystykach, gdy dzień ma zbyt mało danych."),
    "In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen." : MessageLookupByLibrary.simpleMessage("Zmienna ENABLE musi zawierać słowo „cors”, tak aby zewnętrzne narzędzia (jak Nightscout Reporter) mogły uzyskać dostęp do danych."),
    "Initiale Version, alles ist neu!" : MessageLookupByLibrary.simpleMessage("Wersja początkowa, wszystko jest nowe!"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("Insulina"),
    "Insulin Kohlenhydrate Verhältnis (ICR)" : MessageLookupByLibrary.simpleMessage("Przelicznik węglowodanowy IC"),
    "Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE" : MessageLookupByLibrary.simpleMessage("Przelicznik węglowodanowy IC \n(ile gram węglowodanów na 1j insuliny)"),
    "Insulin Sensitivitäts Faktoren (ISF)" : MessageLookupByLibrary.simpleMessage("Wskaźnik wrażliwości na insulinę (ISF)"),
    "Insulin auf maximale Stellen im Profil runden" : MessageLookupByLibrary.simpleMessage("Zaokrąglij insulinę do maksymalnej precyzji w profilu"),
    "Insulin-Quelle" : MessageLookupByLibrary.simpleMessage("Źródło insuliny"),
    "Ja" : MessageLookupByLibrary.simpleMessage("Tak"),
    "Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember" : MessageLookupByLibrary.simpleMessage("Styczeń|Luty|Marzec|Kwiecień|Maj|Czerwiec|Lipiec|Sierpień|Wrzesień|Październik|Listopad|Grudzień"),
    "Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez" : MessageLookupByLibrary.simpleMessage("Sty|Lut|Mar|Kwi|Maj|Cze|Lip|Sie|Wrz|Paź|Lis|Gru"),
    "KH" : MessageLookupByLibrary.simpleMessage("Węglowodany"),
    "Kalibrierung und blutige Messungen" : MessageLookupByLibrary.simpleMessage("Kalibracja i pomiary z krwi"),
    "Katheterwechsel" : MessageLookupByLibrary.simpleMessage("wymiana zestawu infuzyjnego"),
    "Keine" : MessageLookupByLibrary.simpleMessage("Brak"),
    "Keine Änderung" : MessageLookupByLibrary.simpleMessage("Bez zmian"),
    "Klein" : MessageLookupByLibrary.simpleMessage("Mały"),
    "Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Węglowodany"),
    "Kohlenhydrate und Bolusinsulin werden jetzt in den täglichen Grafiken angezeigt" : MessageLookupByLibrary.simpleMessage("Węglowodany i insulina w bolusie są teraz wyświetlane na wykresach dziennych"),
    "Lade die Basisdaten..." : MessageLookupByLibrary.simpleMessage("Pobieranie danych..."),
    "Legende" : MessageLookupByLibrary.simpleMessage("Legenda"),
    "Legende für Katheter- und Sensorwechsel zur Tagesgrafik hinzugefügt." : MessageLookupByLibrary.simpleMessage("Added legend for catheter and sensor changes to the daily chart."),
    "Letzte 2 Tage" : MessageLookupByLibrary.simpleMessage("Ostatnie 2 dni"),
    "Letzte 2 Wochen" : MessageLookupByLibrary.simpleMessage("Ostatnie 2 tygodnie"),
    "Letzte 3 Monate" : MessageLookupByLibrary.simpleMessage("Ostatnie 3 miesiące"),
    "Letzte 3 Tage" : MessageLookupByLibrary.simpleMessage("Ostatnie 3 dni"),
    "Letzte 3 Wochen" : MessageLookupByLibrary.simpleMessage("Ostatnie 3 tygodnie"),
    "Letzte Unterzuckerung" : MessageLookupByLibrary.simpleMessage("Ostatnia hipoglikemia"),
    "Letzte Woche" : MessageLookupByLibrary.simpleMessage("Ostatni tydzień"),
    "Letzten Messwert in der Titelzeile anzeigen" : MessageLookupByLibrary.simpleMessage("Pokaż ostatni odczyt CGM i trend na pasku tytułu"),
    "Letzter Monat" : MessageLookupByLibrary.simpleMessage("Ostatni miesiąc"),
    "Loopenthüllende Daten verbergen (die Markierung der andersfarbigen Optionen ignorieren)" : MessageLookupByLibrary.simpleMessage("Ukryj pętlę ujawniającą dane (ignoruj znakowanie różnych opcji kolorów)"),
    "Löschen" : MessageLookupByLibrary.simpleMessage("Delete"),
    "Mahlzeitenbolus_bolus to handle a meal" : MessageLookupByLibrary.simpleMessage("Bolus na posiłek"),
    "Man kann jetzt mehrere Benutzer anlegen. Das ist nützlich, um mehrere Nightscout-Instanzen auszuwerten (z.B. für Ärzte, Betreuer oder den Entwickler dieser Software)" : MessageLookupByLibrary.simpleMessage("You can now create multiple users. This is useful for analyzing multiple nightscout instances (e.g. for doctors, caregivers or the developer of this software)"),
    "Material mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("??? Liczba miejsc po przecinku"),
    "Max" : MessageLookupByLibrary.simpleMessage("Max"),
    "Max Mustermann" : MessageLookupByLibrary.simpleMessage("John Smith"),
    "Maximaler Glukosewert in Grafiken:" : MessageLookupByLibrary.simpleMessage("Maximum glucose value in graphics:"),
    "Median" : MessageLookupByLibrary.simpleMessage("Mediana"),
    "Mehr gibt es dazu eigentlich nicht zu sagen." : MessageLookupByLibrary.simpleMessage("Nie ma nic więcej do powiedzenia w tej sprawie."),
    "Mehrfache Datensätze kennzeichnen" : MessageLookupByLibrary.simpleMessage("Zmienia powtarzające się zbiory danych"),
    "Menü" : MessageLookupByLibrary.simpleMessage("Menu"),
    "Mess-\nwerte" : MessageLookupByLibrary.simpleMessage("Liczba pomiarów"),
    "Min" : MessageLookupByLibrary.simpleMessage("Min"),
    "Mit Google Drive synchronisieren" : MessageLookupByLibrary.simpleMessage("Synchronizacja z Google Drive"),
    "Mittel-\nwert" : MessageLookupByLibrary.simpleMessage("Średnia"),
    "Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|Sonntag" : MessageLookupByLibrary.simpleMessage("Poniedziałek|Wtorek|Środa|Czwartek|Piątek|Sobota|Niedziela"),
    "Mo|Di|Mi|Do|Fr|Sa|So" : MessageLookupByLibrary.simpleMessage("Pn|Wt|Śr|Cz|Pt|Sb|Nd"),
    "Nacht (21:00 - 05:59)" : MessageLookupByLibrary.simpleMessage("Noc (21:00 - 05:59)"),
    "Nahe zusammen liegende Werte aufsummieren" : MessageLookupByLibrary.simpleMessage("Zsumuj sąsiadujące wartości"),
    "Name" : MessageLookupByLibrary.simpleMessage("Imię"),
    "Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat." : MessageLookupByLibrary.simpleMessage("Name, birthday, insulin and the start date of diabetes can now be left blank without any negative impact on the presentation in the PDF."),
    "Nein" : MessageLookupByLibrary.simpleMessage("Nie"),
    "Neue Option im Profil, um fortlaufende Zeiten mit gleichen Werten zu einem Eintrag zusammen zu fassen." : MessageLookupByLibrary.simpleMessage("New option in the profile to combine consecutive times with the same values into a single entry."),
    "Neuer Parameter für die Tagesgrafik, der festlegt, ob die Linien für die Notizen unter der Grafik bis zur Glukosekurve gezeichnet werden sollen oder nicht." : MessageLookupByLibrary.simpleMessage("New daily graph parameter that determines whether or not to draw the lines for the notes under the graph up to the glucose curve."),
    "Neues PDF für eine Wochengrafik hinzugefügt, auf der die Glukosekurven der Woche übereinander gelegt werden." : MessageLookupByLibrary.simpleMessage("Added a new PDF for a weekly graphics where the week\'s glucose curves are shown all at once."),
    "Neuester Tag zuerst" : MessageLookupByLibrary.simpleMessage("Od najnowszych"),
    "Niedrigster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Najniższa wartość w okresie"),
    "Nightscout Berichte" : MessageLookupByLibrary.simpleMessage("Raporty Nightscout"),
    "Nightscout Reporter ist nun auch grösstenteils in Spanisch und Polnisch verfügbar. Entsprechende Buttons wurden dem Hauptmenü hinzugefügt. Danke an die fleissigen Übersetzer :)." : MessageLookupByLibrary.simpleMessage("Większość zgłaszających Nightscout została przetłumaczona na język hiszpański i polski. Odpowiednie przyciski zostały dodane do menu głównego. Dzięki starannym tłumaczom :)."),
    "Nightscout Reporter kann nun auch auf Portugiesisch verwendet werden." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter może być teraz wykorzystywany w języku portugalskim."),
    "Nightscout Reporter kann nun auch in Japanisch verwendet werden." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter może być używany w języku japońskim."),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("Strona Nightscout"),
    "Nightscout Url in der Fusszeile des PDFs anzeigen" : MessageLookupByLibrary.simpleMessage("Show Nightscout Url in the footer of the PDFs"),
    "Normal" : MessageLookupByLibrary.simpleMessage("w zakresie\n"),
    "Notiz" : MessageLookupByLibrary.simpleMessage("Notatka"),
    "Notiz-Linien bis zur Kurve zeichnen" : MessageLookupByLibrary.simpleMessage("Poprowadź linie pomocnicze do notatek"),
    "Notizen" : MessageLookupByLibrary.simpleMessage("Notatki"),
    "Nur letzte Basalrate ausgeben" : MessageLookupByLibrary.simpleMessage("Pokaż tylko ostatni profil dawek bazowych"),
    "Nur letztes Profil ausgeben" : MessageLookupByLibrary.simpleMessage("Pokaż tylko ostatni profil"),
    "Nur mehrfache Datensätze anzeigen" : MessageLookupByLibrary.simpleMessage("Pokaż tylko powtarzające się zbiory danych"),
    "Ok" : MessageLookupByLibrary.simpleMessage("OK"),
    "Optionen für die PDFs, die eine eindeutige Beziehung zu einem laufenden Loop haben, werden nun in Blau dargestellt. Das vereinfacht es, PDFs zu erstellen, denen man nicht ohne Weiteres entnehmen kann, dass ein Loop vorliegt. Dazu müssen nur die Haken bei den blauen Optionen entfernt werden." : MessageLookupByLibrary.simpleMessage("Options for the PDFs that have a unique relationship to a running loop are now displayed in blue. This makes it easy to create PDFs where you can not easily deduce that there is a loop running. All you have to do is to uncheck the blue options."),
    "PDF anzeigen" : MessageLookupByLibrary.simpleMessage("Generuj plik PDF"),
    "PDF erneut erzeugen" : MessageLookupByLibrary.simpleMessage("Ponownie generuj plik PDF"),
    "PDF erzeugen" : MessageLookupByLibrary.simpleMessage("Utwórz PDF"),
    "PDF für Profildaten" : MessageLookupByLibrary.simpleMessage("PDF - profil Nightscout"),
    "PDF herunterladen (bei einigen Browsern benötigt)" : MessageLookupByLibrary.simpleMessage("Pobierz PDF (wymagane dla niektórych przeglądarek)"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("Otwórz PDF w tym samym oknie"),
    "PGR" : MessageLookupByLibrary.simpleMessage("PGR"),
    "Patient Glykämischer Status (PGS)" : MessageLookupByLibrary.simpleMessage("Status Glikemiczny Pacjenta (PGS)"),
    "Pausiert" : MessageLookupByLibrary.simpleMessage("Wstrzymano"),
    "Polski" : MessageLookupByLibrary.simpleMessage("Polski"),
    "Português" : MessageLookupByLibrary.simpleMessage("Português"),
    "Problem auf GitHub melden" : MessageLookupByLibrary.simpleMessage("Zgłoś błąd na GitHub"),
    "Profil" : MessageLookupByLibrary.simpleMessage("Profil"),
    "Profil-Basalrate" : MessageLookupByLibrary.simpleMessage("Dawka podstawowa z profilu Nightscout"),
    "Profileinstellungen" : MessageLookupByLibrary.simpleMessage("Ustawienia profilu Nightscout"),
    "Profilwechsel" : MessageLookupByLibrary.simpleMessage("Zmiana profilu"),
    "Protokoll" : MessageLookupByLibrary.simpleMessage("Dzienniczek"),
    "Quelle: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)" : MessageLookupByLibrary.simpleMessage("Source: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)"),
    "Querformat" : MessageLookupByLibrary.simpleMessage("Poziomo"),
    "Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse." : MessageLookupByLibrary.simpleMessage("Order of PDF pages changed - Percentile Diagram now comes after analysis."),
    "Reservoirwechsel" : MessageLookupByLibrary.simpleMessage("wymiana zbiorniczka"),
    "SMB" : MessageLookupByLibrary.simpleMessage("SMB"),
    "SMB Werte anzeigen" : MessageLookupByLibrary.simpleMessage("Uwzględnij SMB"),
    "SMB an der Kurve platzieren" : MessageLookupByLibrary.simpleMessage("Umieść SMB na krzywej glikemii"),
    "Schliessen" : MessageLookupByLibrary.simpleMessage("Zamknij"),
    "Schliessen Button im Nachrichtenbereich hinzugefügt." : MessageLookupByLibrary.simpleMessage("Przycisk Zamknij dodany w obszarze wiadomości."),
    "Sechs Monate vorher" : MessageLookupByLibrary.simpleMessage("Pół roku wcześniej"),
    "Sechzehn" : MessageLookupByLibrary.simpleMessage("Szesnaście"),
    "Sekunden anzeigen" : MessageLookupByLibrary.simpleMessage("Czas z sekundami"),
    "Sensorwechsel" : MessageLookupByLibrary.simpleMessage("wymiana sensora CGM"),
    "Shortcut anlegen" : MessageLookupByLibrary.simpleMessage("Dodaj skrót"),
    "Shortcut ändern" : MessageLookupByLibrary.simpleMessage("Edytuj skrót"),
    "Shortcuts" : MessageLookupByLibrary.simpleMessage("Shortcuts"),
    "Slovenský" : MessageLookupByLibrary.simpleMessage("Slovenský"),
    "Soll der Benutzer mit der URL" : MessageLookupByLibrary.simpleMessage("??? Should the user with the URL"),
    "Soll der Shortcut mit der Bezeichnung" : MessageLookupByLibrary.simpleMessage("`Should the shortcut with the title"),
    "Soll der Zeitraum" : MessageLookupByLibrary.simpleMessage("Should the period"),
    "Soll die Formularauswahl mit der aktuellen Auswahl ersetzt werden?" : MessageLookupByLibrary.simpleMessage("Czy zastąpić zapisane wcześniej dane formularza?"),
    "Soll die URL" : MessageLookupByLibrary.simpleMessage("Deleting Url"),
    "Spalte HbA1c" : MessageLookupByLibrary.simpleMessage("Kolumna HbA1c"),
    "Spalte HbA1c zu Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Added column A1C to daily statistics"),
    "Spalte Messwerte" : MessageLookupByLibrary.simpleMessage("Kolumna ilość odczytów"),
    "Spalte Standardabweichung" : MessageLookupByLibrary.simpleMessage("Kolumna odchylenie standardowe SD"),
    "Spalte TDD" : MessageLookupByLibrary.simpleMessage("Kolumna DDI"),
    "Spalte Variationskoeffizient" : MessageLookupByLibrary.simpleMessage("Kolumna współczynnik zmienności CV"),
    "Spalten Perzentile" : MessageLookupByLibrary.simpleMessage("Kolumna percentyl"),
    "Spalten für 10% und 90% anzeigen" : MessageLookupByLibrary.simpleMessage("Pokaż kolumny dla 10% i 90%"),
    "Spaltenbreite der Informationen in der Analyse erhöht" : MessageLookupByLibrary.simpleMessage("Column width of the information in the analysis increased"),
    "Speichern" : MessageLookupByLibrary.simpleMessage("Zapisz"),
    "Standard_theme selection - standard" : MessageLookupByLibrary.simpleMessage("Standard"),
    "Standardabweichung" : MessageLookupByLibrary.simpleMessage("Odchylenie standardowe (SD)"),
    "Standardabweichung statt Anzahl" : MessageLookupByLibrary.simpleMessage("Odchylenie standardowe zamiast liczby odczytów CGM"),
    "Standardbereich mit feinerer Abstufung" : MessageLookupByLibrary.simpleMessage("Czas w zakresie z dokładnym podziałem wg wytycznych ATTD 2019"),
    "Standardgrenzwerte" : MessageLookupByLibrary.simpleMessage("czas w zakresie wg wytycznych ATTD 2019\n"),
    "Startstunde" : MessageLookupByLibrary.simpleMessage("Początek"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("SD %"),
    "Stunden" : MessageLookupByLibrary.simpleMessage("godz."),
    "Stündliche Statistik" : MessageLookupByLibrary.simpleMessage("Statystyki godzinowe"),
    "Summe" : MessageLookupByLibrary.simpleMessage("Suma"),
    "Summen für Bolus Insulin, Basalrate für den Tag und Basalrate aus dem Profil zur Tagesgrafik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Sums for bolus insulin, basal rate for the day, and basalrate from the profile added to the daily chart"),
    "Symbole (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Ikonki (zestaw infuzyjny, itp.)"),
    "Synchronisierung aufheben" : MessageLookupByLibrary.simpleMessage("Anuluj synchronizację"),
    "TDD" : MessageLookupByLibrary.simpleMessage("DDI"),
    "Tabelle" : MessageLookupByLibrary.simpleMessage("Tabelę"),
    "Tabelle mit Glukosewerten" : MessageLookupByLibrary.simpleMessage("Tabela wartości odczytów CGM"),
    "Tag (08:00 - 17:59)" : MessageLookupByLibrary.simpleMessage("Dzień (08:00 - 17:59)"),
    "Tages-Basalrate" : MessageLookupByLibrary.simpleMessage("Dzienna dawka podstawowa (baza)"),
    "Tagesanalyse" : MessageLookupByLibrary.simpleMessage("Analiza dobowa"),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("Wykres dobowy"),
    "Tagesgrafikparameter zur Anzeige der Legende" : MessageLookupByLibrary.simpleMessage("??? Dzienne graficzny parametrów wyświetlania notatki"),
    "Tagesgrafikparameter zur Anzeige von Notizen" : MessageLookupByLibrary.simpleMessage("??? Dzienne graficzny parametrów wyświetlania notatki"),
    "Tagesgrafikparameter zur umgekehrten Sortierung hinzugefügt. Die Tage werden damit beginnend mit dem höchsten Datum ausgegeben." : MessageLookupByLibrary.simpleMessage("Added daily graphic parameters for reverse sorting. The daily graphics are created starting with the highest date."),
    "Tagesnamen in Grafik anzeigen" : MessageLookupByLibrary.simpleMessage("Pokaż nazwy dni na wykresie"),
    "Tagesprofil" : MessageLookupByLibrary.simpleMessage("Praca TBR"),
    "Tagesstartprofil anzeigen" : MessageLookupByLibrary.simpleMessage("Pokaż profil na początku dnia"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("Statystyki dzienne"),
    "Tagesstunden" : MessageLookupByLibrary.simpleMessage("Godziny dzienne"),
    "Tagestrend" : MessageLookupByLibrary.simpleMessage("Codzienne trendy"),
    "Temporäre Basalraten" : MessageLookupByLibrary.simpleMessage("Baza tymczasowa"),
    "Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt" : MessageLookupByLibrary.simpleMessage("Temporary basal rates with absolute values ​​are displayed correctly"),
    "Temporäre Profilwechsel werden jetzt erkannt und in der Tagesgrafik korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Tymczasowe zmiany profilu są teraz rozpoznawane i wyświetlane poprawnie w dziennej grafiki."),
    "Temporäre Ziele" : MessageLookupByLibrary.simpleMessage("Cel tymczasowy (TT)"),
    "Titelangaben für Datumsbereiche auf den PDFs vereinheitlicht" : MessageLookupByLibrary.simpleMessage("Title information for date ranges on the PDFs are unified"),
    "Trend" : MessageLookupByLibrary.simpleMessage("Trend"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("Czas"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("Czas"),
    "Unbegrenzt" : MessageLookupByLibrary.simpleMessage("Nieograniczony"),
    "Unterzuckerungen anzeigen" : MessageLookupByLibrary.simpleMessage("Pokaż hipoglikemię"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("URL strony Nightscout (np. https://xxx.herokuapp.com)"),
    "VarK\nin %" : MessageLookupByLibrary.simpleMessage("CV %"),
    "Verbinde zu Google Drive..." : MessageLookupByLibrary.simpleMessage("Połącz z Dyskiem Google..."),
    "Verbinde zu Google..." : MessageLookupByLibrary.simpleMessage("Połącz z Google"),
    "Verbindung zu Google Drive herstellen" : MessageLookupByLibrary.simpleMessage("Połącz z Dyskiem Google"),
    "Verbindung zu Google Drive trennen" : MessageLookupByLibrary.simpleMessage("Odłącz od Dysku Google"),
    "Vergleich" : MessageLookupByLibrary.simpleMessage("Porównanie"),
    "Version" : MessageLookupByLibrary.simpleMessage("Wersja"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("Dystrybucja"),
    "Verzögerter Bolus" : MessageLookupByLibrary.simpleMessage("Bolus przedłużony"),
    "Vier" : MessageLookupByLibrary.simpleMessage("Cztery"),
    "Von" : MessageLookupByLibrary.simpleMessage("od"),
    "Vor der Erzeugung eines PDFs wird noch ein Dialog angezeigt, auf dem man Parameter für alle erzeugten PDFs eingeben kann. Man kann dort den Zielbereich auf den Standardbereich festlegen, den Ärzte gerne sehen. Das hat Auswirkungen auf alle Darstellungen des Zielbereichs, sowie auf die Verteilung der Werte innerhalb und ausserhalb des Zielbereichs. Man kann dort auch den Maximalwert für Glukose in Grafiken festlegen. Dieser Wert wird in der Tagesgrafik, dem Perzentil Diagramm und der Wochengrafik verwendet. Wenn er auf \"Automatisch\" gesetzt wird, wird der Maximalwert wie bisher auch aus den vorhandenen Daten ermittelt. Ausserdem kann man hier angeben, ob man den aktuellen Zeitraum erzeugen möchte oder einen Vergleichszeitraum. Das ist nützlich, um dem Arzt die Gegenüberstellung von Werten der Vergangenheit und jetzt zu zeigen." : MessageLookupByLibrary.simpleMessage("Przed utworzeniem pliku PDF wyświetlane jest okno dialogowe, w którym można wprowadzić parametry dla wszystkich plików PDF. Możesz ustawić obszar docelowy na standardowy obszar, który lekarze lubią. Ma to wpływ na wszystkie reprezentacje powierzchni docelowej, jak również rozkładu wartości na obszarze docelowym i poza nim. Możesz również ustawić maksymalną wartość glukozy w grafikach. Ta wartość jest używana w dziennej grafiki, schemacie percentyla i tygodniowej grafiki. Jeśli jest ustawiony na \"Automatyczny\", maksymalną wartość określa się na podstawie istniejących danych jak poprzednio. Możesz również określić tutaj czy chcesz wygenerować bieżący okres czy okres porównania. Jest to przydatne do pokazania lekarzowi porównania przeszłych i obecnych wartości."),
    "Warum werde ich mit mehreren Buttons genervt, statt eine einzelne PDF angezeigt zu kriegen?" : MessageLookupByLibrary.simpleMessage("Dlaczego mój plik jest podzielony na kilka części? Wolę jeden plik PDF"),
    "Was bisher geschah..." : MessageLookupByLibrary.simpleMessage("Historia wersji i zmian"),
    "Wechsel" : MessageLookupByLibrary.simpleMessage("Zmiana"),
    "Wechsel (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Zmiany (zestawy infuzyjne, itp.)"),
    "Weihnachten_theme selection - christmas" : MessageLookupByLibrary.simpleMessage("Boże Narodzenie"),
    "Wenn Sonderzeichen in den Daten vorhanden sind (z.B. Smileys in den Notizen), führte das zu einem Absturz während der PDF-Erstellung. Das wurde behoben, indem diese Sonderzeichen aus der Ausgabe entfernt werden." : MessageLookupByLibrary.simpleMessage("Występowanie znaków specjalnych w danych wejściowych (np. emotikonek w informacjach dodatkowych) było przyczyną awarii podczas tworzenia plików PDF. Naprawiono ten błąd usuwając wszystkie znaki specjalne z danych wyjściowych."),
    "Wenn auf der Profilseite leere Spalten vorkommen, führt das nicht mehr zu einer leeren Seite." : MessageLookupByLibrary.simpleMessage("Jeśli na stronie profilu znajdują się puste kolumny, nie prowadzi to już do pustej strony."),
    "Wenn das erzeugte PDF zu gross wird, wird es nun auf mehrere PDF-Dateien aufgeteilt. In diesem Fall wird es nicht direkt geöffnet, sondern es wird eine Liste mit durchnummerierten Buttons angezeigt. Diese Buttons öffnen bei Betätigung das entsprechende PDF und erhalten einen Haken, um anzuzeigen, dass es geöffnet wurde. Das sollte es erleichtern, die PDFs nacheinander zu öffnen, weil normalerweise der Browser im Hintergrund verschwindet, wenn ein neues Fenster aufgemacht wird." : MessageLookupByLibrary.simpleMessage("Jeśli wygenerowany plik PDF jest zbyt duży, to zostanie podzielony na kilka mniejszych plików PDF. W takim przypadku nie będzie można go bezpośrednio otworzyć, lecz pojawi się lista ponumerowanych przycisków. Te przyciski umożliwiają pobranie odpowiedniego pliku PDF. Po pobraniu pliku pojawi się znacznik wskazujący, że dany plik został już pobrany. To powinno ułatwić otwieranie plików PDF, ponieważ zazwyczaj nowe okienko przeglądarki jest otwierane w tle."),
    "Wenn der Zeitraum leer ist, wird der Button für die Auswahl deutlich markiert und in dem Dialog zur Auswahl wird in der Titelzeile ein Hinweis darauf angezeigt." : MessageLookupByLibrary.simpleMessage("Jeśli okres jest pusty, przycisk wyboru jest zaznaczony wyraźnie, a w oknie dialogowym, aby wybrać wskazówkę pojawia się na pasku tytułu."),
    "Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet" : MessageLookupByLibrary.simpleMessage("If the thresholds in Nightscout (BG_TARGET_BOTTOM and BG_TARGET_TOP) are equal to 70 and 180, then the area for the default targets will be hidden on the analysis page"),
    "Wenn im CGP ein Wert den Maximalwert der Skala überschreitet, wird die entsprechende Ecke mit einem gelben Kreis markiert." : MessageLookupByLibrary.simpleMessage("If a value in the CGP exceeds the maximum value of the scale, the corresponding corner is marked with a yellow circle."),
    "Wenn in den Einstellungen eine Verbindung zum Google-Konto hergestellt wird, werden die Cookies von Google verwendet und die Daten nicht mehr im localStorage des Browsers gespeichert, sondern im AppStorage auf Google Drive. Auf diese Art kann man die Daten zentralisiert verwalten und hat diese in jedem Browser zur Verfügung, der mit dem angegebenen Google Konto verbunden ist." : MessageLookupByLibrary.simpleMessage("??? Gdy ustawienia są połączone z kontem Google, Google cookie i dane znajduje się już w localStorage przeglądarki, ale w AppStorage na dysku Google. W ten sposób można centralnie zarządzać dane i masz to dostępne w dowolnej przeglądarce, podłączony do określonego konta Google."),
    "Wenn in den Einträgen Lücken von 15 Minuten oder mehr sind, führen diese zu einer Unterbrechung der Linie in der Tagesgrafik." : MessageLookupByLibrary.simpleMessage("If there are gaps in the entries of 15 minutes or more, there will also be a gap in the daily chart."),
    "Wenn in einem Profil mehr Zeiten erfasst wurden, als auf eine Seite passen, wurden diese fortlaufend in die nächste Seite hineingeschrieben. Jetzt wird an geeigneter Stelle eine neue Seite ausgegeben." : MessageLookupByLibrary.simpleMessage("If more times were recorded in a profile than fit on one page, they were overlaying the content of the next page. Now a new page is created as needed."),
    "Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt." : MessageLookupByLibrary.simpleMessage("If no data is available, blank pages will be generated with an appropriate hint."),
    "Willkommen" : MessageLookupByLibrary.simpleMessage("Witamy"),
    "Willkommen bei Nightscout Reporter!" : MessageLookupByLibrary.simpleMessage("Witamy w Nightscout Reporter!"),
    "Wochengrafik" : MessageLookupByLibrary.simpleMessage("Wykres tygodniowy"),
    "Zeilen mit gleichen Werten zusammenfassen" : MessageLookupByLibrary.simpleMessage("Połącz jednakowe wartości w bloki czasowe"),
    "Zeitraum" : MessageLookupByLibrary.simpleMessage("okres\n"),
    "Zeitraum festlegen" : MessageLookupByLibrary.simpleMessage("Wybierz okres"),
    "Zeitraum:" : MessageLookupByLibrary.simpleMessage("Period:"),
    "Zeitzone" : MessageLookupByLibrary.simpleMessage("Strefa czasowa:"),
    "Zielbereich" : MessageLookupByLibrary.simpleMessage("Zakres docelowy"),
    "Zielbereich mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Zakres docelowy z miejscem po przecinku (dla mmol)"),
    "Zugriffsschlüssel" : MessageLookupByLibrary.simpleMessage("Token dostępowy"),
    "Zur Berechnung der Analyse, Tagesstatistik und Tagesgrafik wird nun die gleiche Datenbasis verwendet, so dass die Werte auf allen PDFs gleich sind." : MessageLookupByLibrary.simpleMessage("Ta sama baza danych jest wykorzystywana do obliczania analizy, dziennych statystyk i wykresów dziennych, tak aby wartości były takie same dla wszystkich PDF."),
    "Zur Kachelansicht" : MessageLookupByLibrary.simpleMessage("Widok kafelków"),
    "Zur Listenansicht" : MessageLookupByLibrary.simpleMessage("Widok listy"),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("\nDodatkowe funkcje"),
    "Zusätzliche Informationen zu den PDFs und im UI hinzugefügt" : MessageLookupByLibrary.simpleMessage("added additional information about the PDFs and in the UI"),
    "Zusätzliche Spalte anzeigen" : MessageLookupByLibrary.simpleMessage("Wybierz dodatkowe kolumny"),
    "Zwei" : MessageLookupByLibrary.simpleMessage("Dwa"),
    "_msgPageCount" : m0,
    "_msgPageCountEst" : m1,
    "ab 4,6" : MessageLookupByLibrary.simpleMessage("od 4,6"),
    "bis" : MessageLookupByLibrary.simpleMessage("do"),
    "dd.MM.yyyy" : MessageLookupByLibrary.simpleMessage("dd.MM.yyyy"),
    "ersetzt werden?" : MessageLookupByLibrary.simpleMessage("?"),
    "extrem hohes Risiko" : MessageLookupByLibrary.simpleMessage("- bardzo wysokie ryzyko"),
    "g / Stunde" : MessageLookupByLibrary.simpleMessage("g/godz."),
    "geringes Risiko" : MessageLookupByLibrary.simpleMessage("- niskie ryzyko"),
    "gesch. HbA1c" : MessageLookupByLibrary.simpleMessage("szac. HbA1c"),
    "hohes Risiko" : MessageLookupByLibrary.simpleMessage("- wysokie ryzyko"),
    "https://nightscout-reporter.zreptil.de/beta" : MessageLookupByLibrary.simpleMessage("https://nightscout-reporter.zreptil.de/beta"),
    "mg/dL" : MessageLookupByLibrary.simpleMessage("mg/dL"),
    "mit dem Zeitraum" : MessageLookupByLibrary.simpleMessage("be replaced with the period"),
    "mmol/L" : MessageLookupByLibrary.simpleMessage("mmol/L"),
    "moderates Risiko" : MessageLookupByLibrary.simpleMessage("- umiarkowane ryzyko"),
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
    "ok" : MessageLookupByLibrary.simpleMessage("OK"),
    "sehr geringes Risiko" : MessageLookupByLibrary.simpleMessage("- bardzo niskie ryzyko"),
    "tl;dr" : MessageLookupByLibrary.simpleMessage("tl;dr"),
    "verwerfen" : MessageLookupByLibrary.simpleMessage("Odrzuć"),
    "vom Benutzer wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("Are you sure?"),
    "wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("Czy na pewno chcesz usunąć?"),
    "zu Vergleichszwecken (z.B. Arzt)" : MessageLookupByLibrary.simpleMessage("do celów porównawczych (np. lekarza)"),
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("Średnia dawka insuliny z bazy dziennie"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("Średnia wartość insuliny z bolusów dziennie"),
    "Ø ICR/Stunde" : MessageLookupByLibrary.simpleMessage("Uśredniony IC\n"),
    "Ø ISF/Stunde" : MessageLookupByLibrary.simpleMessage("Uśredniony ISF\n"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("Średnia dobowa dawka insuliny (DDI)"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("Średni przelicznik węglowodanowy"),
    "Ø KH pro Tag" : MessageLookupByLibrary.simpleMessage("Średnia ilość węglowodanów dziennie"),
    "Ø Microbolus pro Tag" : MessageLookupByLibrary.simpleMessage("Średnia wartość insuliny z mikrobolusów dziennie"),
    "Ø Zuckerwert" : MessageLookupByLibrary.simpleMessage("Średnia glikemia"),
    "Überprüfe Zugriff auf Nightscout ..." : MessageLookupByLibrary.simpleMessage("Sprawdzam dostęp do Nightscout..."),
    "Übersetzungen korrigiert" : MessageLookupByLibrary.simpleMessage("Corrected translations"),
    "日本の" : MessageLookupByLibrary.simpleMessage("日本の")
  };
}
