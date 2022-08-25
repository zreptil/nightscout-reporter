// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sk_SK locale. All the
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
  get localeName => 'sk_SK';

  static m0(startTag0, endTag0) => "Nachdem ich immer wieder gefragt wurde, ob man mir eine Spende zukommen lassen kann, habe ich mich jetzt dann doch dazu entschlossen, so eine Möglichkeit zur Verfügung zu stellen. Nightscout Reporter ist aber nach wie vor komplett kostenlos und wird das auch bleiben. Wer dennoch seiner Zuneigung zum Programm Ausdruck verleihen will, dem will ich mich nicht länger in den Weg stellen. Der Spenden-Button ist nicht sichtbar. Aber wer etwas in den ${startTag0}Hut${endTag0} werfen will, der wird ihn finden :)";

  static m1(startTag0, endTag0, startTag1, endTag1, startTag2, endTag2) => "Eine neue Ansicht namens ${startTag0}Night-Watch${endTag0} wurde hinzugefügt. In dieser Ansicht sieht man, so wie auch in der Uhr-Anzeige auf der Nightscout-Seite, den aktuellen Glukosewert und weitere Informationen, die man sich in gewissem Rahmen so konfigurieren kann, wie sie einem gefallen. Night-Watch wird über diese URL aufgerufen: ${startTag1}https://nightscout-reporter.zreptil.de/watch${endTag1} Es kann auch über das Hauptmenü unter dem Menüpunkt ${startTag2}Night-Watch${endTag2} aufgerufen werden, oder indem man den aktuellen Zuckerwert in der Titelleiste von Nightscout Reporter anklickt, wenn man diesen in den Einstellungen aktiviert hat.";

  static m2(startTag0, endTag0) => "Dort, wo ein CGP erstellt werden kann, gibt es nun die Option ${startTag0}Linien um Bereiche${endTag0}. Diese ist standardmässig eingeschaltet. Wenn sie ausgeschaltet wird, werden die Wertebereiche für den gesunden und den aktuellen Menschen nicht mehr mit einer Linie umrandet. Damit sieht die Grafik etwas blasser aus, aber man kann die Werte auf den Achsen genauer untersuchen, wenn man das möchte.";

  static m3(value) => "Errechneter HbA1C: ${value}%";

  static m4(value) => "Im Labor ermittelter HbA1C: ${value}%";

  static m5(factor) => "Die Werte für BG_TARGET_BOTTOM und BG_TARGET_TOP wurden durch den Faktor ${factor} geteilt";

  static m6(factor) => "Alle sensorischen Glukosewerte wurden um ${factor} % verringert";

  static m7(count) => "${Intl.plural(count, zero: '', one: '1 stránka', other: '${count} stránok')}";

  static m8(count) => "${Intl.plural(count, zero: '', one: '1 alebo viac stránok', other: '${count} alebo viac stránok')}";

  static m9(factor) => "Alle sensorischen Glukosewerte wurden um ${factor} % erhöht";

  static m10(isVisible) => "Prístupový kľúč je potrebný len v prípade, že bol prístup k Nightscout údajom obmedzený nastavením premennej AUTH_DEFAULT_ROLES";

  static m11(time) => "Zobrazená bazálna dávka je platná od ${time} a nezahŕňa žiadne dočasné zmeny.";

  static m12(unit) => "Diese Basalrate war am ${unit} aktiv.";

  static m13(value) => "Bazálna dávka za deň (${value})";

  static m14(value) => "Bazálna dávka z profilu (${value})";

  static m15(value) => "Bolusový inzulín ( ${value} )";

  static m16(value) => "VarK [${value}%]";

  static m17(date) => "Kontrolujem ${date} ...";

  static m18(scale, intercept, slope) => "Kalibrácia (scale ${scale} / intercept ${intercept} / slope ${slope})";

  static m19(value) => "Bolus jedla ( ${value} )";

  static m20(value) => "Sacharidy ( ${value} g)";

  static m21(count, txt) => "${Intl.plural(count, zero: '', one: '( ${txt} deň na katéter)', other: '( ${txt} dní na katéter)')}";

  static m22(name, from, to) => "${name} ${from} => ${to}";

  static m23(url) => "Skontrolujte prístup na ${url} ...";

  static m24(count) => "${Intl.plural(count, zero: 'Eine Spalte abwählen, um eine@nl@andere aktivieren zu können', one: 'Noch eine Spalte verfügbar', other: 'Noch ${count} Spalten verfügbar')}";

  static m25(value) => "Korekčný bolus ( ${value} )";

  static m26(value) => "${Intl.plural(value, zero: 'Žiadna hodnota', one: '1 hodnota', other: '${value} hodnoty')}";

  static m27(value) => "${value} dní";

  static m28(hours, minutes) => "${hours} hod ${minutes} min";

  static m29(isVisible) => "Dátum posledného dňa, z ktorého existujú úplné dáta";

  static m30(beg, end) => "${beg} - ${end}";

  static m31(count) => "${Intl.plural(count, zero: '', one: '1 Formular', other: '${count} Formulare')}";

  static m32(max) => "zlé (viac ako ${max} )";

  static m33(min, max) => "dobré ( ${min} až ${max} )";

  static m34(min) => "nie je k dispozícii (malý ${min} )";

  static m35(min, max) => "veľmi dobré ( ${min} až ${max} )";

  static m36(time) => "${Intl.plural(time, zero: 'Gerade eben', one: 'vor ${time} Minute', other: 'vor ${time} Minuten')}";

  static m37(unit, value) => "Intenzita HYPER\n[${unit} x min²]";

  static m38(unit) => "Intenzita hyperglykémie za deň (hodnoty väčšie alebo rovné ${unit}).";

  static m39(unit, value) => "Intenzita HYPO\n[${unit} x min²]";

  static m40(unit) => "Intenzita hypoglykémie za deň (hodnoty menšie alebo rovné ${unit}).";

  static m41(value) => "Vysoko ${value}";

  static m42(value) => "Historicky ${value}";

  static m43(value) => "Hypoglykémie (< ${value})";

  static m44(unit) => "Faktory citlivosti na inzulín (ISF) 1 IU znižujú BG o X ${unit}";

  static m45(value) => "${value}g";

  static m46(value) => "g sach. ( ${value} BE)";

  static m47(date) => "KW${date}";

  static m48(value) => "Celkový inzulín ( ${value} )";

  static m49(error, stacktrace) => "Chyba pri načítaní údajov: \n${error}\n${stacktrace}";

  static m50(date) => "Načítavajú sa údaje z ${date}...";

  static m51(insulin, unit) => "Microbolus ${insulin} ${unit}";

  static m52(range, duration, reason, scale) => "temp. Override für ${duration} min, Grund: ${reason}, Zielbereich: ${range}, Anpassung: ${scale}%";

  static m53(insulin, unit) => "SMB ${insulin} ${unit}";

  static m54(percent, duration) => "temp. Bazál ${percent}% / ${duration} min";

  static m55(value, duration) => "temp. Basal ${value} / ${duration} min";

  static m56(target, duration, reason) => "temp. ${target} cieľ na ${duration} min, dôvod: ${reason}";

  static m57(value) => "Nízko${value}";

  static m58(gluc, unit) => "Meranie z krvi ${gluc} ${unit}";

  static m59(unit, value) => "Stredná glykémia\n[${unit}]";

  static m60(hba1c) => "Glykemický priemer v uvažovanom období.";

  static m61(name) => "Profil \"${name}\" verwenden";

  static m62(name) => "Das Profil mit dem Namen \"${name}\" wurde nicht gefunden. Das muss im Profileditor auf der Nightscout Seite eingerichtet werden. Dort muss ein Profil eingerichtet werden, das den Namen \"${name}\" hat, um dieses Formular erzeugen zu können. Mit dem Link unten wird der Profileditor aufgerufen. Unter Umständen muss dort dann noch ganz unten auf der Seite die Authentifizierung durchgeführt werden, um die Werte ändern zu können.";

  static m63(min, max) => "zlé ( ${min} až ${max} )";

  static m64(min, max) => "dobré ( ${min} až ${max} )";

  static m65(max) => "veľmi zlé (viac ako ${max} )";

  static m66(min) => "vynikajúci (menej ako ${min} )";

  static m67(oldName, newName) => "Zmena profilu z ${oldName} => ${newName}";

  static m68(oldName, newName, duration) => "Zmena profilu z ${oldName} => ${newName} po ${duration} minút";

  static m69(howMany, fmt) => "${Intl.plural(howMany, zero: 'Nie sú k dispozícii žiadne údaje', one: '1 meranie za minútu', other: 'Meranie každých ${fmt} minút')}";

  static m70(howMany, fmt) => "${Intl.plural(howMany, zero: 'Nie sú k dispozícii žiadne údaje', one: '1 meranie denne', other: '${fmt} meraní denne')}";

  static m71(howMany, fmt) => "${Intl.plural(howMany, zero: 'Nie sú k dispozícii žiadne údaje', one: '1 meranie za hodinu', other: '${fmt} meraní za hodinu')}";

  static m72(count, txt) => "${Intl.plural(count, zero: '', one: '( ${txt} deň na ampulku)', other: '( ${txt} dní na ampulku)')}";

  static m73(value) => "SMB ( ${value} )";

  static m74(count, txt) => "${Intl.plural(count, zero: '', one: '( ${txt} deň na snímač)', other: '( ${txt} dní na snímač)')}";

  static m75(low, high, unit) => "Použiť štandardný rozsah hodnôt (${low} ${unit} - ${high} ${unit})";

  static m76(isVisible) => "Dátum prvého dňa s údajmi";

  static m77(value) => "(StdDev ${value})";

  static m78(value) => "ToR [${value}min/d]";

  static m79(min, max) => "Počet minút v dni, počas ktorých sú hodnoty mimo rozsahu ${min} až ${max} .";

  static m80(unit) => "Cieľová oblasť glukózy ${unit}";

  static m81(min, max, units) => "Cieľový rozsah ( ${min} - ${max} ${units} )";

  static m82(value) => "cieľová hodnota";

  static m83(time) => "${time} hod";

  static m84(time) => "${time} am";

  static m85(time) => "${time} pm";

  static m86(maxCount, count, text) => "${Intl.plural(count, zero: '', one: 'Der Uploader \"${text}\" hat die Datensätze angelegt.', other: 'Folgende Uploader haben die Datensätze angelegt: ${text}')}";

  static m87(maxCount) => "Es konnten nicht alle Profile geladen werden, da im ausgewählten Zeitraum mehr als ${maxCount} gespeichert sind. ";

  static m88(begDate) => "platné od ${begDate}";

  static m89(begDate, endDate) => "platné od ${begDate} do ${endDate}";

  static m90(endDate) => "platí do ${endDate}";

  static m91(high) => "Hodnoty nad ${high}";

  static m92(low) => "Hodnoty pod ${low}";

  static m93(low, high) => "Hodnoty medzi ${low} a ${high}";

  static m94(low, high) => "Cieľová oblasť ( ${low} - ${high} )";

  static m95(value) => "Vysoké hodnoty ( ${value} )";

  static m96(value) => "Nízke hodnoty ( ${value} )";

  static m97(value) => "Veľmi vysoké hodnoty (> ${value} )";

  static m98(value) => "Veľmi nízke hodnoty (< ${value} )";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "0,0 bis 2,0" : MessageLookupByLibrary.simpleMessage("0,0 až 2,0"),
    "1 Minute" : MessageLookupByLibrary.simpleMessage("1 minúta"),
    "1 Stunde" : MessageLookupByLibrary.simpleMessage("1 hodina"),
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
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("10% - 90% hodnôt"),
    "15 Minuten" : MessageLookupByLibrary.simpleMessage("15 minút"),
    "2,1 bis 3,0" : MessageLookupByLibrary.simpleMessage("2,1 až 3,0"),
    "2.0.0 - 15.7.2020" : MessageLookupByLibrary.simpleMessage("2.0.0 - 15.7.2020"),
    "2.0.1 - 8.9.2020" : MessageLookupByLibrary.simpleMessage("2.0.1 - 8.9.2020"),
    "2.0.10 - 07.11.2021" : MessageLookupByLibrary.simpleMessage("2.0.10 - 07.11.2021"),
    "2.0.11 - 26.11.2021" : MessageLookupByLibrary.simpleMessage("2.0.11 - 26.11.2021"),
    "2.0.12 - 07.12.2021" : MessageLookupByLibrary.simpleMessage("2.0.12 - 07.12.2021"),
    "2.0.2 - 22.9.2020" : MessageLookupByLibrary.simpleMessage("2.0.2 - 22.9.2020"),
    "2.0.3 - 18.10.2020" : MessageLookupByLibrary.simpleMessage("2.0.3 - 18.10.2020"),
    "2.0.4 - 18.02.2021" : MessageLookupByLibrary.simpleMessage("2.0.4 - 18.02.2021"),
    "2.0.5 - 07.03.2021" : MessageLookupByLibrary.simpleMessage("2.0.5 - 07.03.2021"),
    "2.0.6 - 17.03.2021" : MessageLookupByLibrary.simpleMessage("2.0.6 - 17.03.2021"),
    "2.0.7 - 17.04.2021" : MessageLookupByLibrary.simpleMessage("2.0.7 - 17.04.2021"),
    "2.0.8 - 09.06.2021" : MessageLookupByLibrary.simpleMessage("2.0.8 - 09.06.2021"),
    "2.0.9 - 11.08.2021" : MessageLookupByLibrary.simpleMessage("2.0.9 - 11.08.2021"),
    "2.1.0 - 09.12.2021" : MessageLookupByLibrary.simpleMessage("2.1.0 - 09.12.2021"),
    "2.2.0 - 03.03.2022" : MessageLookupByLibrary.simpleMessage("2.2.0 - 03.03.2022"),
    "2.2.1 - 01.05.2022" : MessageLookupByLibrary.simpleMessage("2.2.1 - 01.05.2022"),
    "2.2.2 - 10.08.2022" : MessageLookupByLibrary.simpleMessage("2.2.2 - 10.08.2022"),
    "25%" : MessageLookupByLibrary.simpleMessage("25%"),
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("25% - 75% hodnôt"),
    "3,1 bis 4,0" : MessageLookupByLibrary.simpleMessage("3,1 až 4,0"),
    "3.0.0 - 21.08.2022" : MessageLookupByLibrary.simpleMessage("3.0.0 - 21.08.2022"),
    "3.0.1 - xx.08.2022" : MessageLookupByLibrary.simpleMessage("3.0.1 - xx.08.2022"),
    "30 Minuten" : MessageLookupByLibrary.simpleMessage("30 minút"),
    "4,1 bis 4,5" : MessageLookupByLibrary.simpleMessage("4,1 až 4,5"),
    "5 Minuten" : MessageLookupByLibrary.simpleMessage("5 minút"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "90%" : MessageLookupByLibrary.simpleMessage("90%"),
    "<br><br>Wenn diese URL geschützt ist, muss ausserdem der Zugriffsschlüssel korrekt definiert sein. Diesen erreicht man über \"Administrator-Werkzeuge\" auf der persönlichen Nightscout Seite." : MessageLookupByLibrary.simpleMessage("<br><br>Ak je táto adresa URL chránená, prístupový kľúč musí byť tiež správne definovaný. To je možné dosiahnuť pomocou „Nástroje správcu“ na stránke Nightscout."),
    "Abbruch" : MessageLookupByLibrary.simpleMessage("Zrušiť"),
    "Absturz behoben, der auftrat, wenn kein passendes Profil für einen Zeitpunkt gefunden werden konnte" : MessageLookupByLibrary.simpleMessage("Opravená havária, ku ktorej došlo, keď v určitom okamihu nebolo možné nájsť žiadny zodpovedajúci profil"),
    "Acht" : MessageLookupByLibrary.simpleMessage("osem"),
    "Alle Benutzer ausgeben" : MessageLookupByLibrary.simpleMessage("Alle Benutzer ausgeben"),
    "Alle Werte für den Tag anzeigen" : MessageLookupByLibrary.simpleMessage("Zobraziť všetky hodnoty pre daný deň"),
    "Alles" : MessageLookupByLibrary.simpleMessage("Všetko"),
    "Allgemeines" : MessageLookupByLibrary.simpleMessage("Všeobecné"),
    "Als ersten Tag der Woche festlegen" : MessageLookupByLibrary.simpleMessage("Nastaviť ako prvý deň v týždni"),
    "Ampullenwechsel" : MessageLookupByLibrary.simpleMessage("výmena ampulky"),
    "Anmelden" : MessageLookupByLibrary.simpleMessage("registrovať"),
    "Anmeldung bei Google..." : MessageLookupByLibrary.simpleMessage("Prihláste sa do Google ..."),
    "Anmeldung erfolgreich" : MessageLookupByLibrary.simpleMessage("Prihlásenie bolo úspešné"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("adap-\ntácia"),
    "Anzahl Ampullenwechsel" : MessageLookupByLibrary.simpleMessage("Počet výmien ampúl"),
    "Anzahl Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Počet zmien katétra"),
    "Anzahl Messungen" : MessageLookupByLibrary.simpleMessage("Počet meraní"),
    "Anzahl Sensorenwechsel" : MessageLookupByLibrary.simpleMessage("Počet zmien snímača"),
    "Anzahl Unterzuckerungen" : MessageLookupByLibrary.simpleMessage("Počet hypoglykémií"),
    "Anzahl der Sensoren zur Analyse hinzugefügt" : MessageLookupByLibrary.simpleMessage("Počet senzorov pridaných na analýzu"),
    "Anzahl:" : MessageLookupByLibrary.simpleMessage("Počet:"),
    "Anzeigeeinstellungen" : MessageLookupByLibrary.simpleMessage("Nastavenia zobrazenia"),
    "Auf 10be muss beim Server in den Standardeinstellungen der Haken bei \"cors\" aktiviert werden, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen. Wenn \"cors\" aktiviert wurde, muss auf dem Server eventuell noch ReDeploy gemacht werden, bevor es wirklich verfügbar ist." : MessageLookupByLibrary.simpleMessage("Na 10be musí byť začiarknuté políčko „cors“ v predvolených nastaveniach servera, aby k údajom mali prístup aj externé nástroje, ako je tento. Ak je aktivovaná funkcia „cors“, bude pravdepodobne potrebné vykonať ju na serveri skôr, ako bude skutočne k dispozícii."),
    "Auf Kacheln Bilder statt Namen anzeigen" : MessageLookupByLibrary.simpleMessage("Zobraziť obrázky namiesto mien na dlaždiciach"),
    "Auf dem Einstellungen-Dialog gibt es neben den URL-Eingabefeldern jeweils einen Button, um die URL in einem neuen Browser-Fenster zu öffnen." : MessageLookupByLibrary.simpleMessage("Auf dem Einstellungen-Dialog gibt es neben den URL-Eingabefeldern jeweils einen Button, um die URL in einem neuen Browser-Fenster zu öffnen."),
    "Auf den Kacheln können nun Bilder statt der Namen angezeigt werden. Die Bilder zeigen dann das ungefähre Aussehen der entsprechenden Seite an. Sie entsprechen nicht den tatsächlichen Daten, sondern sind nur eine visuelle Darstellung, die es manchem Benutzer vielleicht einfacher machen, die gewünschten Seiten schneller auszuwählen. Die Aktivierung der Bilder erfolgt im Einstellungsdialog." : MessageLookupByLibrary.simpleMessage("Na dlaždiciach sa teraz môžu namiesto mien zobrazovať obrázky. Obrázky potom ukazujú približný vzhľad zodpovedajúcej stránky. Nezodpovedajú skutočným údajom, ale sú iba vizuálnym znázornením, ktoré môže niektorým používateľom uľahčiť rýchly výber stránok, ktoré chcú. Aktivácia obrázkov sa uskutoční v dialógovom okne nastavení."),
    "Auf den Seiten Profil und Basalrate wird in der Titelzeile jetzt wieder das Datum angezeigt, ab dem das Profil gilt." : MessageLookupByLibrary.simpleMessage("Na stránkach profilu a bazálnej dávky sa v záhlaví zobrazuje dátum, od ktorého sa profil uplatňuje."),
    "Auf der Analyseseite kann statt der Anzahl der Werte bei den Zielbereichen jetzt die Standardabweichung der Werte im Zielbereich angezeigt werden." : MessageLookupByLibrary.simpleMessage("Na analytickej stránke sa namiesto počtu hodnôt v cieľových oblastiach teraz môže zobraziť štandardná odchýlka hodnôt v cieľovej oblasti."),
    "Auf der Analyseseite werden nun auch GVI und PGS ausgegeben." : MessageLookupByLibrary.simpleMessage("Na stránke analýzy sú teraz na výstupe GVI a PGS."),
    "Auf der Analyseseite wird jetzt auch die Standardabweichung aller Werte der Periode angezeigt." : MessageLookupByLibrary.simpleMessage("Stránka s analýzou teraz ukazuje aj štandardnú odchýlku všetkých hodnôt za dané obdobie."),
    "Auf der Profilseite wurde die Spalte für die Werte von ICR verbreitert." : MessageLookupByLibrary.simpleMessage("Na stránke profilu sa stĺpec pre hodnoty ICR rozšíril."),
    "Auf der Seite \"Profil\" wird die Gültigkeit jetzt mit Uhrzeit angezeigt." : MessageLookupByLibrary.simpleMessage("Na stránke \"Profil\" sa zobrazuje platnosť záznamu aj s časovým údajom."),
    "Auf der Seite \"Stündliche Statistik\" gibt es eine neue Option, um auch Spalten mit 10% und 90% anzeigen zu lassen." : MessageLookupByLibrary.simpleMessage("Stránka \"Hodinová štatistika\" má novú voľbu, aby bolo možné stĺpce zobraziť aj v pomere 10% a 90%."),
    "Auf der Seite Protokoll werden jetzt auch Insulinabgaben angezeigt, die z.B. über xdrip eingegeben wurden." : MessageLookupByLibrary.simpleMessage("Auf der Seite Protokoll werden jetzt auch Insulinabgaben angezeigt, die z.B. über xdrip eingegeben wurden."),
    "Aufhebung von temp. Ziel" : MessageLookupByLibrary.simpleMessage("Aufhebung von temp. Ziel"),
    "Aufsummierte Werte" : MessageLookupByLibrary.simpleMessage("Nasčítané hodnoty"),
    "Aus den Profilen ermitteln" : MessageLookupByLibrary.simpleMessage("Zistiť z profilu"),
    "Ausgabe" : MessageLookupByLibrary.simpleMessage("Výdaj"),
    "Ausgabe Parameter" : MessageLookupByLibrary.simpleMessage("Výstupné parametre"),
    "Ausgewertete Tage" : MessageLookupByLibrary.simpleMessage("Hodnotené dni"),
    "Ausgewählter Zeitraum" : MessageLookupByLibrary.simpleMessage("Vybrané obdobie"),
    "Ausrichtung" : MessageLookupByLibrary.simpleMessage("zarovnanie"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("Zhodnotenie"),
    "Automatisch" : MessageLookupByLibrary.simpleMessage("Automaticky"),
    "Automatisch_theme selection - automatic" : MessageLookupByLibrary.simpleMessage("Automaticky"),
    "Basal" : MessageLookupByLibrary.simpleMessage("základné"),
    "Basal 0%" : MessageLookupByLibrary.simpleMessage("Basal 0%"),
    "Basal aus Profil anzeigen" : MessageLookupByLibrary.simpleMessage("Zobraziť bazál z profilu"),
    "Basal ges." : MessageLookupByLibrary.simpleMessage("Celkom bazál"),
    "Basal mit zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Basal s dvoma desatinnými miestami"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("Bazálna rýchlosť"),
    "Basalrate\nIE / Stunde" : MessageLookupByLibrary.simpleMessage("Bazálna dávka U / hodina"),
    "Basalrate anzeigen" : MessageLookupByLibrary.simpleMessage("Zobraziť bazál"),
    "Batteriewechsel" : MessageLookupByLibrary.simpleMessage("Výmena batérie"),
    "Behandlungen" : MessageLookupByLibrary.simpleMessage("Ošetrenia"),
    "Bei 0 beginnen" : MessageLookupByLibrary.simpleMessage("Bei 0 beginnen"),
    "Bei Herokuapp und anderen Anbietern kostenloser Datenbankinstanzen ist der Speicherplatz der Instanz beschränkt, weshalb sie irgendwann voll ist. Dann kann man zwar eine neue Instanz anlegen, Nightscout Reporter benötigt aber für eine lückenlose Darstellung aller Tage Zugriff auf alle Instanzen, für die man eine Auswertung erhalten will. Deshalb können nun mehrere URLs für die Nightscout Instanzen eingegeben werden. Zusätzlich muss noch eingegeben werden, welches der erste und der letzte Tag mit Daten ist. Mit diesen Informationen ist es Nightscout Reporter dann möglich die benötigten Daten lückenlos auch über mehrere Instanzen hinweg auszuwerten." : MessageLookupByLibrary.simpleMessage("Bei Herokuapp und anderen Anbietern kostenloser Datenbankinstanzen ist der Speicherplatz der Instanz beschränkt, weshalb sie irgendwann voll ist. Dann kann man zwar eine neue Instanz anlegen, Nightscout Reporter benötigt aber für eine lückenlose Darstellung aller Tage Zugriff auf alle Instanzen, für die man eine Auswertung erhalten will. Deshalb können nun mehrere URLs für die Nightscout Instanzen eingegeben werden. Zusätzlich muss noch eingegeben werden, welches der erste und der letzte Tag mit Daten ist. Mit diesen Informationen ist es Nightscout Reporter dann möglich die benötigten Daten lückenlos auch über mehrere Instanzen hinweg auszuwerten."),
    "Bei Tagesgrafiken und Wochengrafiken gibt es jetzt die Möglichkeit 1, 2, 4, 8 oder 16 Grafiken auf einer Seite zu platzieren." : MessageLookupByLibrary.simpleMessage("Denná grafika a týždenná grafika majú teraz možnosť umiestniť 1, 2, 4, 8 alebo 16 grafiky na stránku."),
    "Bei den Ausgabeparametern kann jetzt festgelegt werden, in welcher Einheit die Glukosemessungen ausgegeben werden sollen. Diese wird zu Beginn aus den in Nightscout gespeicherten Daten ermittelt und entsprechend vorbelegt. Es ist aber auch möglich, diese Einheit zu ändern oder beide Einheiten ausgeben zu lassen. Wenn beide ausgegeben werden, dann wird jedes Formular auf dem Glukoseangaben vorhanden sind zunächst mit mg/dL und danach nochmal mit mmol/l ausgegeben. Diese Einheit wird auch in den Shortcuts gespeichert." : MessageLookupByLibrary.simpleMessage("Bei den Ausgabeparametern kann jetzt festgelegt werden, in welcher Einheit die Glukosemessungen ausgegeben werden sollen. Diese wird zu Beginn aus den in Nightscout gespeicherten Daten ermittelt und entsprechend vorbelegt. Es ist aber auch möglich, diese Einheit zu ändern oder beide Einheiten ausgeben zu lassen. Wenn beide ausgegeben werden, dann wird jedes Formular auf dem Glukoseangaben vorhanden sind zunächst mit mg/dL und danach nochmal mit mmol/l ausgegeben. Diese Einheit wird auch in den Shortcuts gespeichert."),
    "Bei der Auswertung kann nun ein Bereich angezeigt werden, in dem die Anzahl an Unterzuckerungen während des ausgewählten Zeitraums und der Zeitpunkt der letzten Unterzuckerung angezeigt werden." : MessageLookupByLibrary.simpleMessage("Bei der Auswertung kann nun ein Bereich angezeigt werden, in dem die Anzahl an Unterzuckerungen während des ausgewählten Zeitraums und der Zeitpunkt der letzten Unterzuckerung angezeigt werden."),
    "Bei der Basalrate und dem Profil gibt es nun eine Option jeweils nur das letzte im entsprechenden Zeitraum ausgeben zu lassen. Das verringert die Blätterflut bei häufigem Profilwechsel." : MessageLookupByLibrary.simpleMessage("Bei der Basalrate und dem Profil gibt es nun eine Option jeweils nur das letzte im entsprechenden Zeitraum ausgeben zu lassen. Das verringert die Blätterflut bei häufigem Profilwechsel."),
    "Bei der Berechnung der Kohlenhydrate werden weitere Datensätze berücksichtigt" : MessageLookupByLibrary.simpleMessage("Pri výpočte sacharidov sa zohľadňujú ďalšie súbory údajov"),
    "Bei der Festlegung des Zeitraums kann man jetzt angeben, bis zu welchem Tag der Zeitraum ermittelt werden soll. Voreingestellt ist so wie bisher auch der aktuelle Tag. Man kann aber auch den gestrigen Tag einstellen, um Tage mit vollständigen Daten zu haben, oder das letzte Wochenende, wenn man an vollständigen Wochen interessiert ist." : MessageLookupByLibrary.simpleMessage("Bei der Festlegung des Zeitraums kann man jetzt angeben, bis zu welchem Tag der Zeitraum ermittelt werden soll. Voreingestellt ist so wie bisher auch der aktuelle Tag. Man kann aber auch den gestrigen Tag einstellen, um Tage mit vollständigen Daten zu haben, oder das letzte Wochenende, wenn man an vollständigen Wochen interessiert ist."),
    "Bei der Profilermittlung wurde manchmal der letzte Profilwechsel ignoriert. Das ist nun behoben." : MessageLookupByLibrary.simpleMessage("Bei der Profilermittlung wurde manchmal der letzte Profilwechsel ignoriert. Das ist nun behoben."),
    "Bei der letzten Version sind Änderungen in den Code eingeflossen, die nicht wirklich durchdacht waren. Dafür entschuldige ich mich. Ich habe diese wieder entfernt, damit Nightscout Reporter für alle Benutzer die gewohnte Funktionalität bietet." : MessageLookupByLibrary.simpleMessage("Bei der letzten Version sind Änderungen in den Code eingeflossen, die nicht wirklich durchdacht waren. Dafür entschuldige ich mich. Ich habe diese wieder entfernt, damit Nightscout Reporter für alle Benutzer die gewohnte Funktionalität bietet."),
    "Beide" : MessageLookupByLibrary.simpleMessage("Obe"),
    "Beim Auslesen der Profile ist ein Fehler aufgetreten. Möglicherweise sind zu viele Daten in der Profiltabelle (wird z.B. von iOS Loop verursacht). Du kannst versuchen, in den Einstellungen die Anzahl an auszulesenden Profildatensätzen zu verringern." : MessageLookupByLibrary.simpleMessage("Nastal problém pri načítavaní profilov. Pravdepodobne je v tabuľke profilov priveľa dát (napr. to spôsobuje iOS Loop). Môžeš skúsiť obmedziť množstvo načítavaných dát v nastaveniach."),
    "Beim CGP werden die aktuellen Werte jetzt in der Legende angezeigt." : MessageLookupByLibrary.simpleMessage("CGP teraz zobrazuje aktuálne hodnoty v legende."),
    "Beim Erzeugen des PDF ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("Pri vytváraní súboru PDF sa vyskytla chyba."),
    "Beim Glukose Perzentil Diagramm kann man nun ein Maximum für die Skalierung festlegen. Wenn es auf \"Automatisch\" gesetzt wird, wird das Maximum wie bisher auch ermittelt. Bei einem anderen Wert wird die Obergrenze für das Diagramm auf diesen Wert festgesetzt. Damit ist es leichter möglich zwei Diagramme miteinander zu vergleichen, deren Obergrenze unterschiedlich ist." : MessageLookupByLibrary.simpleMessage("Beim Glukose Perzentil Diagramm kann man nun ein Maximum für die Skalierung festlegen. Wenn es auf \"Automatisch\" gesetzt wird, wird das Maximum wie bisher auch ermittelt. Bei einem anderen Wert wird die Obergrenze für das Diagramm auf diesen Wert festgesetzt. Damit ist es leichter möglich zwei Diagramme miteinander zu vergleichen, deren Obergrenze unterschiedlich ist."),
    "Beim Laden der Behandlungsdaten werden doppelte Datensätze herausgefiltert." : MessageLookupByLibrary.simpleMessage("Beim Laden der Behandlungsdaten werden doppelte Datensätze herausgefiltert."),
    "Beim Laden der Daten wird das entsprechende Datumsformat zur Anzeige verwendet" : MessageLookupByLibrary.simpleMessage("Pri načítaní údajov sa na zobrazenie použije zodpovedajúci formát dátumu"),
    "Beim Perzentil Diagramm gibt es eine neue Option, mit der man die Basalrate unter dem Diagramm anzeigen lassen kann. Da das Diagramm normalerweise einen grösseren Zeitraum umspannt, wird dort die Basalrate angezeigt, die zu Beginn des Zeitraums aktiv war." : MessageLookupByLibrary.simpleMessage("Beim Perzentil Diagramm gibt es eine neue Option, mit der man die Basalrate unter dem Diagramm anzeigen lassen kann. Da das Diagramm normalerweise einen grösseren Zeitraum umspannt, wird dort die Basalrate angezeigt, die zu Beginn des Zeitraums aktiv war."),
    "Beim erstmaligen Start von Nightscout Reporter wurde er schon bei Sprachänderung normal angezeigt. Jetzt bleibt er wie vorgesehen auf dem Willkommen Dialog." : MessageLookupByLibrary.simpleMessage("Beim erstmaligen Start von Nightscout Reporter wurde er schon bei Sprachänderung normal angezeigt. Jetzt bleibt er wie vorgesehen auf dem Willkommen Dialog."),
    "Benutzer" : MessageLookupByLibrary.simpleMessage("Benutzer"),
    "Benutzer können ein User-Token angeben, um sich mit geschützten Nightscout-Instanzen zu verbinden" : MessageLookupByLibrary.simpleMessage("Používatelia môžu určiť token používateľa na pripojenie k chráneným nočným farbám"),
    "Benutzer können nun gelöscht werden" : MessageLookupByLibrary.simpleMessage("Používatelia môžu byť teraz odstránení"),
    "Benutzerdaten" : MessageLookupByLibrary.simpleMessage("Informácie o pacientovi"),
    "Benutzerdaten werden nun verschlüsselt im Browser gespeichert" : MessageLookupByLibrary.simpleMessage("Užívateľské údaje sú teraz uložené šifrované v prehliadači"),
    "Berechnete IE für Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Vypočítaná IE na uhľohydráty"),
    "Berechnete IE für Kohlenhydrate anzeigen" : MessageLookupByLibrary.simpleMessage("Zobraziť vypočítané IE pre sacharidy"),
    "Bereite Daten vor..." : MessageLookupByLibrary.simpleMessage("Spracovávajú sa údaje  ..."),
    "Bestätigung" : MessageLookupByLibrary.simpleMessage("potvrdenie"),
    "Bewegung" : MessageLookupByLibrary.simpleMessage("Sťahovať"),
    "Bewegung anzeigen" : MessageLookupByLibrary.simpleMessage("Zobraziť pohyb"),
    "Bezeichnung" : MessageLookupByLibrary.simpleMessage("Označenie"),
    "Bis" : MessageLookupByLibrary.simpleMessage("Do"),
    "Bis heute|Bis gestern|Bis Wochenende" : MessageLookupByLibrary.simpleMessage("Bis heute|Bis gestern|Bis Wochenende"),
    "Bisher fehlende Summenwerte in der Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Doteraz boli do denných štatistík pridané chýbajúce súčty"),
    "Bitte den Dateinamen für die Speicherung auswählen" : MessageLookupByLibrary.simpleMessage("Bitte den Dateinamen für die Speicherung auswählen"),
    "Bitte einen Zeitraum wählen." : MessageLookupByLibrary.simpleMessage("Vyberte obdobie."),
    "Bitte überprüfe die Aktivierung der Wochentage unter dem Monat" : MessageLookupByLibrary.simpleMessage("Skontrolujte aktiváciu pracovných dní v mesiaci"),
    "Blutige Messung" : MessageLookupByLibrary.simpleMessage("Meranie z krvi"),
    "Blutige Werte sollten jetzt auch bei mmol-Daten korrekt in der Tagesgrafik angezeigt werden." : MessageLookupByLibrary.simpleMessage("Hodnoty glykémie v mmol formáte sa teraz zobrazujú správne aj v dennom prehľade."),
    "Blutwerte werden jetzt auch bei mmol/L in den Grafiken korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Krvné hodnoty sa teraz zobrazujú správne aj v prípade mmol / l v grafe."),
    "Bolus" : MessageLookupByLibrary.simpleMessage("bolus"),
    "Bolus Rechner_bolus calculated by the bolus wizard" : MessageLookupByLibrary.simpleMessage("Bolusová kalkulačka"),
    "Bolus ges." : MessageLookupByLibrary.simpleMessage("Celkom bolus"),
    "Bolusarten anzeigen" : MessageLookupByLibrary.simpleMessage("Zobraziť druh bolusu"),
    "Bolusspalte anzeigen" : MessageLookupByLibrary.simpleMessage("Zobraziť stĺpec bolusu"),
    "CGP" : MessageLookupByLibrary.simpleMessage("SGP"),
    "CGP immer mit Standard Zielbereich" : MessageLookupByLibrary.simpleMessage("CGP vždy so štandardným cieľovým rozsahom"),
    "COB (Carbs On Board) anzeigen" : MessageLookupByLibrary.simpleMessage("Zobraziť COB (Carbs On Board)"),
    "Comprehensive Glucose Pentagon" : MessageLookupByLibrary.simpleMessage("Súhrnný glykemický päťuholník"),
    "Da wir seit einiger Zeit in Europa eine DSGVO haben, werden im Folgenden noch die Vorschriften dafür erfüllt. Der folgende Text ist nur auf Deutsch verfügbar:" : MessageLookupByLibrary.simpleMessage("Keďže v Európe už nejaký čas máme DSGVO, nasledujúce pravidlá sú stále splnené. Tento text je k dispozícii iba v nemčine:"),
    "Dansk" : MessageLookupByLibrary.simpleMessage("Dánsky"),
    "Das \"Comprehensive Glucose Pentagon\" (Umfassendes Glukose Fünfeck) wurde als eigenes PDF und als Zusatzseite zur Tagesgrafik und Wochengrafik hinzugefügt. Es handelt sich hierbei um eine Darstellung von fünf Messgrössen, mit deren Hilfe sich die Qualität der Therapie ermitteln und mit anderen vergleichen lässt. Auf den Ausdrucken wird ein Verweis auf die zugrunde liegende Abhandlung ausgegeben." : MessageLookupByLibrary.simpleMessage("„Komplexný glukózový päťuholník“ bol pridaný ako samostatný PDF a ako doplnok k dennej a týždennej grafike. Je to reprezentácia piatich meraní, pomocou ktorých je možné určiť kvalitu liečby a porovnať ju s ostatnými. Na výtlačkoch je uvedený odkaz na základnú esej."),
    "Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr." : MessageLookupByLibrary.simpleMessage("Kliknutím na oblasť správy ju už nezatvoríte."),
    "Das CGP wird jetzt auch bei extremen Werten korrekt erzeugt." : MessageLookupByLibrary.simpleMessage("Das CGP wird jetzt auch bei extremen Werten korrekt erzeugt."),
    "Das Control für die Eingabe des Zeitraums wurde angepasst, damit es auf schmalen Display auch korrekt dargestellt wird." : MessageLookupByLibrary.simpleMessage("Ovládač na zadanie obdobia bol nastavený tak, aby sa zobrazoval správne na úzkom displeji."),
    "Das Enddatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("Dátum konca je nesprávny"),
    "Das Logo von Nightscout Reporter wurde geändert. Es ist nach wie vor die bekannte und beliebte Eule, aber sie hat nun eine Mütze auf wie die Zeitungsausträger und teilweise auch Journalisten in uralten Filmen. Das Logo ist nur im Programm vorhanden und erscheint nicht auf den PDFs. Dort ist nach wie vor das normale Nightscout Logo, weil es dort platziert wurde, um auf Nightscout selbst hinzuweisen." : MessageLookupByLibrary.simpleMessage("Das Logo von Nightscout Reporter wurde geändert. Es ist nach wie vor die bekannte und beliebte Eule, aber sie hat nun eine Mütze auf wie die Zeitungsausträger und teilweise auch Journalisten in uralten Filmen. Das Logo ist nur im Programm vorhanden und erscheint nicht auf den PDFs. Dort ist nach wie vor das normale Nightscout Logo, weil es dort platziert wurde, um auf Nightscout selbst hinzuweisen."),
    "Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag." : MessageLookupByLibrary.simpleMessage("Bazálna sadzba PDF bola nesprávna, ak pre každú hodinu neexistovala hodnota."),
    "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren." : MessageLookupByLibrary.simpleMessage("PDF bol vytvorený. Ak nie je zobrazený, pravdepodobne je aktívny blokovač automaticky otváraných okien, ktorý bráni zobrazeniu. Prosím, deaktivujte ho."),
    "Das Problem, dass bestimmte Tage nicht erzeugt werden konnten, wurde behoben." : MessageLookupByLibrary.simpleMessage("Odstránený problém, že sa ńedali vytvoriť správy za učité dni."),
    "Das Profil-PDF wird nun im Querformat erzeugt, um auch Profile mit vielen Einträgen für die Parameter brauchbar darstellen zu können." : MessageLookupByLibrary.simpleMessage("Profil PDF je teraz vytvorený na šírku, aby bolo možné zobraziť profily s mnohými položkami pre parametre."),
    "Das Projekt wurde auf Dart 2.13.4 und Angular 6.0.1 aktualisiert." : MessageLookupByLibrary.simpleMessage("Das Projekt wurde auf Dart 2.13.4 und Angular 6.0.1 aktualisiert."),
    "Das Startdatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("Dátum začiatku nie je správny"),
    "Das gelbe Fünfeck stellt den Wertebereich des angegebenen Zeitraums dar." : MessageLookupByLibrary.simpleMessage("Žltý päťuholník predstavuje rozsah hodnôt hodnoteného obdobia."),
    "Das grüne Fünfeck stellt den Wertebereich eines gesunden Menschen ohne Diabetes dar." : MessageLookupByLibrary.simpleMessage("Zelený päťuholník predstavuje rozsah hodnôt zdravého človeka bez cukrovky."),
    "Daten bis" : MessageLookupByLibrary.simpleMessage("Dáta do"),
    "Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen." : MessageLookupByLibrary.simpleMessage("Údaje pre hodnoty glukózy s nesprávnym formátom dátumu sa napriek tomu stále načítajú správne."),
    "Daten verschiedener Uploader werden nun besser interpretiert." : MessageLookupByLibrary.simpleMessage("Údaje od rôznych používateľov, ktorí odovzdali video, sa teraz lepšie interpretujú."),
    "Daten von" : MessageLookupByLibrary.simpleMessage("Dáta od"),
    "Daten, die von xDrip als sync markiert wurden, werden bei der Auswertung ignoriert." : MessageLookupByLibrary.simpleMessage("Dáta označené ako synchronizované pomocou xDrip budú počas vyhodnocovania ignorované."),
    "Datenschutzerklärung" : MessageLookupByLibrary.simpleMessage("Ochrana osobných údajov"),
    "Datum" : MessageLookupByLibrary.simpleMessage("Dátum"),
    "Dauer der Insulinaktivität (DIA)" : MessageLookupByLibrary.simpleMessage("Trvanie aktivity inzulínu (DIA)"),
    "Dauer der Kohlenhydrataktivität" : MessageLookupByLibrary.simpleMessage("Trvanie aktivity sacharidov"),
    "Dauer der abgeschalteten Basalrate anzeigen" : MessageLookupByLibrary.simpleMessage("Zobrazovať trvanie odpojenia bazálnej dávky"),
    "Dauer mit Minutenbruchteil" : MessageLookupByLibrary.simpleMessage("Trvanie v zlomkoch minúty"),
    "Der Fehler im Profil, der dazu führte, dass die Werte für ISF und Zielbereich falsch umgerechnet werden, wurde behoben." : MessageLookupByLibrary.simpleMessage("Chyba v profile, ktorá spôsobila nesprávne prevedenie hodnôt ISF a cieľového rozsahu, bola vyriešená."),
    "Der Fehler mit der Vervielfachung der Kohlenhydrate bei wiederholter Ausgabe der PDFs wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Odstránená chyba násobenia počtu sacharidov pri opakovanej tlači PDF."),
    "Der Titel vom Glucose Percentil Diagramm wird nun auch bei Ausdruck im Hochformat nicht mehr falsch in den Optionen Formularauswahl dargestellt." : MessageLookupByLibrary.simpleMessage("Der Titel vom Glucose Percentil Diagramm wird nun auch bei Ausdruck im Hochformat nicht mehr falsch in den Optionen Formularauswahl dargestellt."),
    "Der Wert für die mittlere Glukose bei gesunden Menschen im CGM wurde auf die korrekten 90 mg/dl korrigiert." : MessageLookupByLibrary.simpleMessage("Hodnota priemernej glykémie zdravého človeka meraná pomocou CGM bola upravená na 90 mg/dl."),
    "Der Zeitraum enthält keine auswertbaren Tage" : MessageLookupByLibrary.simpleMessage("Obdobie neobsahuje žiadne hodnotiteľné dni"),
    "Der prognostische glykämische Risikoparameter stellt das Risiko von Langzeitkomplikationen dar (bisher nicht durch Studien belegt)." : MessageLookupByLibrary.simpleMessage("Ukazovateľ prognózy glykemického rizika predstavuje riziko dlhodobých komplikácií (doteraz štúdiami nepreukázané)."),
    "Details des Profilwechsels" : MessageLookupByLibrary.simpleMessage("Podrobnosti o zmene profilu"),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("Deutsch"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("Diabetes od roku"),
    "Dialoge und die Anzeige des Fortschritts werden nun technisch etwas anders umgesetzt. Deswegen wird der Anwendungshintergrund nun in den Fällen dunkler dargestellt und es ist nicht möglich darauf etwas anzuklicken." : MessageLookupByLibrary.simpleMessage("Zobrazovanie pokroku pri odpovediach v dialógoch je teraz riešené technicky odlišným spôsobom. Z toho dôvodu sa pozadie aplikácia zobrazuje v týchto sitáciách tmavšie a nie je možné kliknúť mimo dialógu."),
    "Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an" : MessageLookupByLibrary.simpleMessage("Stránka s analýzou bola prepracovaná a teraz zobrazuje nadpisy oblastí"),
    "Die Analysewerte wurden nicht ganz korrekt ermittelt. Das wurde korrigiert und nun sollten die statistischen Daten über den Zeitraum richtig ausgewertet werden." : MessageLookupByLibrary.simpleMessage("Hodnoty pre analýzu neboli vždy správne načítané. Toto bolo opravené a štatistické hodnoty za obdobie sú teraz vypočítané správne."),
    "Die Angabe DIA auf der Profilseite wird nun mit zwei Nachkommastellen angezeigt." : MessageLookupByLibrary.simpleMessage("Indikácia DIA na stránke profilu sa teraz zobrazuje s dvoma desatinnými miestami."),
    "Die Anpassung der Glukosewerte wird nun bei den Einstellungen gespeichert. Sie kann aber weiterhin bei den Ausgabeparametern geändert werden, um ohne grosse Umwege einen Vergleich erstellen zu können." : MessageLookupByLibrary.simpleMessage("Die Anpassung der Glukosewerte wird nun bei den Einstellungen gespeichert. Sie kann aber weiterhin bei den Ausgabeparametern geändert werden, um ohne grosse Umwege einen Vergleich erstellen zu können."),
    "Die Anzeige der Bilder auf Kacheln wird nun wie vorgesehen korrekt in den Einstellungen vorbelegt." : MessageLookupByLibrary.simpleMessage("Die Anzeige der Bilder auf Kacheln wird nun wie vorgesehen korrekt in den Einstellungen vorbelegt."),
    "Die Anzeige des Faktors auf dem PDF, wenn ein Korrekturfaktor eingestellt wurde, wurde in eine Prozentangabe geändert um welche die Zuckerwerte erhöht oder verringert wurden." : MessageLookupByLibrary.simpleMessage("Die Anzeige des Faktors auf dem PDF, wenn ein Korrekturfaktor eingestellt wurde, wurde in eine Prozentangabe geändert um welche die Zuckerwerte erhöht oder verringert wurden."),
    "Die Aufsummierung der Werte in der Analyse wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Akumulácia hodnôt v analýze bola opravená."),
    "Die Aufteilung auf mehrere PDF-Dateien funktioniert jetzt besser." : MessageLookupByLibrary.simpleMessage("Rozdelenie na niekoľko súborov PDF teraz funguje lepšie."),
    "Die Ausgabe des Zielwertes und der blutigen Werte in der Tagesgrafik wurde korrigiert. Da gab es Probleme, wenn man eine andere Blutzucker Einheit als die auf dem Server eingestellte zur Ausgabe verwendet hat." : MessageLookupByLibrary.simpleMessage("Die Ausgabe des Zielwertes und der blutigen Werte in der Tagesgrafik wurde korrigiert. Da gab es Probleme, wenn man eine andere Blutzucker Einheit als die auf dem Server eingestellte zur Ausgabe verwendet hat."),
    "Die Auswahl des Zeitraums ist nun flexibler. Die Auswahl erfolgt in einem Dialog, der die eingestellte Sprache berücksichtigt. Mit der Auswahl der vorbelegten Bereiche (Heute, Letzte Woche, usw.) wird festgelegt, dass beim nächsten Aufruf das aktuelle Datum als Grundlage für den Bereich verwendet wird. Wenn der Bereich direkt im Kalender festgelegt wird, dann gilt dieser beim nächsten Aufruf so wie er festgelegt wurde. Standardmässig ist der erste Tag der Woche jetzt ein Montag. Dieser kann aber durch Anklicken des Wochentags in der Titelzeile des Monats auf die eigene Präferenz festgelegt werden. Die Eingabe der Datumsfelder erfolgt in der Form, die der Sprache entspricht (Tag.Monat.Jahr für deutsch, Monat/Tag/Jahr für englisch)." : MessageLookupByLibrary.simpleMessage("Výber tohto obdobia je teraz flexibilnejší. Výber sa uskutoční v dialógovom okne, ktoré zohľadňuje daný jazyk. Výber predvolených rozsahov (Dnes, Minulý týždeň atď.) Nastaví aktuálny dátum ako základ pre rozsah pri nasledujúcom hovore. Ak je rozsah nastavený priamo v kalendári, použije sa pri nasledujúcom nastavení. V predvolenom nastavení je prvý deň v týždni teraz pondelok. Môžete to však nastaviť podľa svojich preferencií kliknutím na deň v týždni v záhlaví mesiaca. Polia s dátumom sa zadávajú vo forme, ktorá zodpovedá jazyku (deň.mesiac.rok pre nemčinu, mesiac / deň / rok pre angličtinu)."),
    "Die Auswahl des Zeitraums und der Benutzer wurde in die Titelzeile verschoben." : MessageLookupByLibrary.simpleMessage("Výber obdobia a používateľ bol presunutý do záhlavia."),
    "Die Balken für das Bolusinsulin in der Tagesgrafik werden nun entsprechend dem Maximalwert an Bolusinsulin an dem Tag skaliert." : MessageLookupByLibrary.simpleMessage("Stĺpce bolusového inzulínu v dennom grafe sa teraz upravujú podľa maximálneho bolusového inzulínu v deň."),
    "Die Balken in der Analyse werden jetzt korrekt skaliert." : MessageLookupByLibrary.simpleMessage("Grafy v Analýze majú teraz správne rozmery."),
    "Die Basalratenprofile für den Tag werden nun auch anhand der Behandlungsdaten ermittelt. Profilwechsel werden in der Tagesgrafik angezeigt und sollten ab dem Zeitpunkt des Wechsels auch eine korrekte Basalratenanpassung anzeigen." : MessageLookupByLibrary.simpleMessage("Profily bazálnej dávky za deň sa teraz tiež určujú na základe údajov o liečbe. Zmeny profilu sa zobrazujú v dennom grafe a mali by tiež ukazovať správne nastavenie bazálnej dávky od okamihu zmeny."),
    "Die Berechnung der PDF-Grössen wurde korrigiert, so dass nun weniger PDFs erstellt werden, wenn sie aufgrund der Grösse aufgeteilt werden." : MessageLookupByLibrary.simpleMessage("Výpočet veľkostí PDF bol opravený, takže pri rozdelení podľa veľkosti sa vytvorí menej súborov PDF."),
    "Die Berechnung der Summenzeile auf der Seite Tagesstatistik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Výpočet riadku súčty na stránke Denná štatistika bol opravený."),
    "Die Berechnung der tatsächlichen Basalrate wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Výpočet skutočnej bazálnej dávky bol opravený."),
    "Die Berechnung des täglichen Insulins berücksichtigt nun auch die SMB." : MessageLookupByLibrary.simpleMessage("Pri výpočte denného inzulínu sa teraz zohľadňuje aj SMB."),
    "Die Bilder auf den Kacheln sind nun in der jeweiligen Sprache beschriftet." : MessageLookupByLibrary.simpleMessage("Kachličky majú teraz popisky v zvolenom jazyku."),
    "Die Buttons für die Erzeugung vergangener Zeiträume wurden entfernt. Das kann jetzt im neuen PDF-Dialog eingestellt werden." : MessageLookupByLibrary.simpleMessage("Die Buttons für die Erzeugung vergangener Zeiträume wurden entfernt. Das kann jetzt im neuen PDF-Dialog eingestellt werden."),
    "Die Buttons für die vergangenen Perioden werden nicht angezeigt, wenn kein Zeitraum oder kein PDF ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("Tlačidlá pre minulé obdobia sa nebudú zobrazovať, ak nie je vybrané žiadne obdobie alebo PDF."),
    "Die Daten, die Du hier eingibst, werden normalerweise im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. In diesem Fall werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("Dáta, ktoré v nastaveniach zadáte, sa zvyčajne uložia do lokálneho úložiska prehliadača (localStorage). Toto úložisko obsahuje údaje priamo súvisiace s adresou tejto stránky a je možné ich prečítať jedine aplikáciou pochádzajúcou z tejto adresy. V tomto prípade sa nepoužívajú žiadne súbory cookie a na serveroch nie sú uložené žiadne údaje. Nastaví sa iba spojenie so špecifikovanou inštanciou Nightscout a údaje, ktoré sú k dispozícii, sa načítajú, aby sa vygeneroval dokument PDF. Toto sa potom môže predložiť diabetologickému poradcovi alebo inej zainteresovanej strane."),
    "Die Eingabe des Zugriffsschlüssels auf dem Einstellungen-Dialog kann jetzt mit einem Button neben dem Eingabefeld lesbar gemacht werden." : MessageLookupByLibrary.simpleMessage("Die Eingabe des Zugriffsschlüssels auf dem Einstellungen-Dialog kann jetzt mit einem Button neben dem Eingabefeld lesbar gemacht werden."),
    "Die Einstellung für das Öffnen des PDF im gleichen Fenster, das Herunterladen des PDFs und den Hinweis auf Nightscout im PDF wurde aus den Einstellungen in die Ausgabe Parameter verschoben. Dadurch kann man das bei jedem Ausdruck schnell festlegen und ändern." : MessageLookupByLibrary.simpleMessage("Nastavenie otvorenia PDF v rovnakom okne, stiahnutia PDF a odkazovania na Nightscout v PDF bolo presunuté z nastavení na výstupné parametre. To vám umožní rýchlo nastaviť a zmeniť to pre každý výtlačok."),
    "Die Einstellung für die Anpassung von BG_TARGET_BOTTOM und BG_TARGET_TOP ist nun unabhängig von der Auswahl \"Glucosewerte anpassen\". Damit kann man die Option umschalten, ohne den Zielbereich auf dem Server neu konfigurieren zu müssen." : MessageLookupByLibrary.simpleMessage("Die Einstellung für die Anpassung von BG_TARGET_BOTTOM und BG_TARGET_TOP ist nun unabhängig von der Auswahl \"Glucosewerte anpassen\". Damit kann man die Option umschalten, ohne den Zielbereich auf dem Server neu konfigurieren zu müssen."),
    "Die Einstellungen für das Herunterladen des PDFs, das Öffnen im gleichen Fenster und die Maximalgrösse der PDFs wurden von der Synchronisierung mit Google Drive ausgenommen, weil sie speziell für den verwendeten Browser oder das verwendete Gerät benötigt werden. Sie werden nach wie vor gespeichert, aber sie werden nicht zwischen verschiedenen Browsern synchronisiert." : MessageLookupByLibrary.simpleMessage("Nastavenia sťahovania PDF, ktoré sa otvárajú v tom istom okne a maximálna veľkosť súborov PDF, boli vylúčené z synchronizácie s Diskom Google, pretože sú špecifické pre prehliadač alebo zariadenie, ktoré používate. Sú stále uložené, ale nie sú synchronizované medzi rôznymi prehliadačmi."),
    "Die Einträge im Protokoll für temporäre Ziele werden jetzt auch bei mmol-Angaben richtig angezeigt." : MessageLookupByLibrary.simpleMessage("Záznamy v protokole pre dočasné ciele sa teraz zobrazujú správne aj pri mmol jednotkách."),
    "Die Ermittlung der Einheit (mg/dl oder mmol/l) wird nun flexibler gehandhabt, so dass auch Leerzeichen in der entsprechenden Einstellung nicht mehr zu einer Fehlinterpretation führen." : MessageLookupByLibrary.simpleMessage("Stanovenie jednotky (mg / dl alebo mmol / l) sa teraz vykonáva flexibilnejšie, takže aj medzery v zodpovedajúcom nastavení už nevedú k nesprávnej interpretácii."),
    "Die Ermittlung der effektiven täglichen Basalrate wurde umstrukturiert und sollte nun genauere Werte ergeben." : MessageLookupByLibrary.simpleMessage("Výpočet efektívnej dennej bazálnej dávky inzulínu bol zmenený a mal by teraz vracať presnejšie hodnoty."),
    "Die Farbe für Bewegung in der Tagesgrafik wurde geändert." : MessageLookupByLibrary.simpleMessage("Die Farbe für Bewegung in der Tagesgrafik wurde geändert."),
    "Die Farben für Dialoge und Scrollbars wurden angepasst." : MessageLookupByLibrary.simpleMessage("Farby pre dialógy a posuvníky boli upravené."),
    "Die Farben für die Glukosebereiche werden jetzt dort, wo sie als Hintergrundfarbe mit Text verwendet werden heller dargestellt, um die Lesbarkeit zu erhöhen." : MessageLookupByLibrary.simpleMessage("Die Farben für die Glukosebereiche werden jetzt dort, wo sie als Hintergrundfarbe mit Text verwendet werden heller dargestellt, um die Lesbarkeit zu erhöhen."),
    "Die Genauigkeit der ISF Angaben im Profil wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Presnosť informácií ISF v profile bola opravená."),
    "Die Genauigkeit der Insulindosierung wird aus dem Profil ermittelt. Der Wert mit der höchsten Genauigkeit legt fest, mit wieviel Nachkommastellen Basalratenwerte angezeigt werden." : MessageLookupByLibrary.simpleMessage("Presnosť dávky inzulínu je stanovená z profilu. Hodnota s najvyššou presnosťou určuje, o koľko desatinných miest sa budú zobrazovať základné hodnoty."),
    "Die Glucose Perzentil Grafik wurde um die Tabelle \"Stündliche Statistik\" erweitert. Diese listet tabellarisch die Werte des Zeitraums für jede Stunde des Tages auf. Man kann entweder nur die Grafik, nur die Tabelle oder beides zusammen erzeugen lassen." : MessageLookupByLibrary.simpleMessage("Graf percentilu glykémie bol rozšírený o \"Hodinovú štatistiku\". Táto zobrazuje v tabuľke hodnoty každej hodiny daného dňa. Je možné zobraziť len graf, len tabuľku, alebo oboje spoločne."),
    "Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit." : MessageLookupByLibrary.simpleMessage("Glukózový graf denných grafov bol zbavený chýbajúcich údajov."),
    "Die Glukosewerte können nun mit einem Faktor korrigiert werden, der sich aus dem im Labor ermittelten und errechneten HbA1C Wert ergibt. Dieser Faktor betrifft alle Sensorwerte, die in Nightscout Reporter verarbeitet werden. Der Faktor wird in den Ausgabeparametern festgelegt. Dort wird er über die Checkbox \"Glukosewerte anpassen\" aktiviert und deaktiviert. Wenn er aktiviert ist, erscheinen zwei Schieberegler. Der obere legt den errechneten HbA1C fest, der untere den im Labor ermittelten HbA1C. Wenn er aktiviert ist, wird auf jedem PDF rechts oben angegeben, mit welchem Faktor die Glukosewerte korrigiert wurden. Das hat auf jedem PDF Auswirkungen auf dem Glukosewerte verarbeitet werden." : MessageLookupByLibrary.simpleMessage("Die Glukosewerte können nun mit einem Faktor korrigiert werden, der sich aus dem im Labor ermittelten und errechneten HbA1C Wert ergibt. Dieser Faktor betrifft alle Sensorwerte, die in Nightscout Reporter verarbeitet werden. Der Faktor wird in den Ausgabeparametern festgelegt. Dort wird er über die Checkbox \"Glukosewerte anpassen\" aktiviert und deaktiviert. Wenn er aktiviert ist, erscheinen zwei Schieberegler. Der obere legt den errechneten HbA1C fest, der untere den im Labor ermittelten HbA1C. Wenn er aktiviert ist, wird auf jedem PDF rechts oben angegeben, mit welchem Faktor die Glukosewerte korrigiert wurden. Das hat auf jedem PDF Auswirkungen auf dem Glukosewerte verarbeitet werden."),
    "Die Icons auf einigen Buttons waren zu nahe am Text" : MessageLookupByLibrary.simpleMessage("Ikony na niektorých tlačidlách boli príliš blízko textu"),
    "Die Kohlenhydratangaben auf der Tagesgrafik werden jetzt ohne den Zusatz KH ausgegeben." : MessageLookupByLibrary.simpleMessage("Informácie o sacharidoch v dennom grafe sa teraz zobrazujú bez prípony."),
    "Die Konfiguration erfolgt direkt im Fenster von Night-Watch, indem man etwas anklickt. Dadurch wechselt die Seite in den Editiermodus und mit den Controls am unteren Rand des Fensters können die vorhandenen Elemente verändert, verschoben, gelöscht oder neue Elemente hinzugefügt werden. Mit dem Speichern-Icon in den Controls werden die Einstellungen gespeichert und der Editiermodus beendet. Er kann auch beendet werden, indem man das aktive Element anklickt, wobei dann die Änderungen aber nicht gespeichert werden. Nach dem Neuladen der Seite hat man dann die letzte Ansicht vor sich." : MessageLookupByLibrary.simpleMessage("Die Konfiguration erfolgt direkt im Fenster von Night-Watch, indem man etwas anklickt. Dadurch wechselt die Seite in den Editiermodus und mit den Controls am unteren Rand des Fensters können die vorhandenen Elemente verändert, verschoben, gelöscht oder neue Elemente hinzugefügt werden. Mit dem Speichern-Icon in den Controls werden die Einstellungen gespeichert und der Editiermodus beendet. Er kann auch beendet werden, indem man das aktive Element anklickt, wobei dann die Änderungen aber nicht gespeichert werden. Nach dem Neuladen der Seite hat man dann die letzte Ansicht vor sich."),
    "Die Legende der Tagesgrafik wurde um den Eintrag für Bewegung erweitert." : MessageLookupByLibrary.simpleMessage("Die Legende der Tagesgrafik wurde um den Eintrag für Bewegung erweitert."),
    "Die Legende der Tagesgrafik wurde um den Eintrag für blutige Messungen erweitert." : MessageLookupByLibrary.simpleMessage("Die Legende der Tagesgrafik wurde um den Eintrag für blutige Messungen erweitert."),
    "Die Links zu Nightscout und den Reports von Nightscout im Menü funktionieren jetzt auch richtig, wenn ein Usertoken angegeben wurde." : MessageLookupByLibrary.simpleMessage("Odkazy na správy Nightscout a správy Nightscout v ponuke teraz fungujú správne, ak bol zadaný token používateľa."),
    "Die Listenansicht ist jetzt wieder scrollbar." : MessageLookupByLibrary.simpleMessage("Zobrazenie zoznamu je teraz opäť posúvateľné."),
    "Die Microboli des Minimed 600 Uploaders werden jetzt auch ermittelt und in der Analyse ausgegeben, wenn sie vorhanden sind." : MessageLookupByLibrary.simpleMessage("Mikroboly programu Uploader Minimed 600 Uploader sú teraz tiež identifikované a sú výstupom analýzy, ak existujú."),
    "Die Microboli vom Minimed 600 Uploader wurden aus der Ausgabe entfernt, da es sich dabei nur um Temporäre Basalraten handelt." : MessageLookupByLibrary.simpleMessage("Mikroboly z aplikácie Uploaded Minimed 600 boli z edície odstránené, pretože ide iba o dočasné bazálne dávky."),
    "Die Mischung von zwei Seiten auf einer PDF-Seite, die manchmal vorkam, wurde behoben." : MessageLookupByLibrary.simpleMessage("Zmes dvoch stránok na stránke PDF, ktorá sa niekedy vyskytla, bola opravená."),
    "Die Möglichkeit für Beta-Funktionen wurde entfernt; die Betaversion ist nun hier zu finden:" : MessageLookupByLibrary.simpleMessage("Možnosť beta funkcií bola odstránená; beta verziu nájdete tu:"),
    "Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird" : MessageLookupByLibrary.simpleMessage("Schopnosť zobraziť adresu URL v záhlaví bola odstránená, pretože aktuálny používateľ alebo jeho adresa URL sa teraz zobrazuje priamo"),
    "Die Oberfläche kann jetzt verschiedene Darstellungen annehmen. Diese zeigen sich zur Zeit durch geänderte Farben und ein angepasstes Icon im Browsertab und beim Laden der Seite. Das hat keine Auswirkungen auf die erzeugten PDF-Dateien. Es ist die Vorbereitung für eine teilweise anpassbare Oberfläche. Das Thema der Darstellung wird standardmässig vom System festgelegt, was zur Zeit heisst, dass im Dezember ein weihnachtliches Thema angezeigt wird. Das kann aber durch Anklicken des Icons, das ab jetzt links unten zu sehen ist, geändert werden. Beim Anklicken wird rechts neben dem Icon ein Bereich mit den verfügbaren Darstellungen eingeblendet. Das erste Icon (der kleine Zauberer) bedeutet dabei, dass die Darstellung vom System ermittelt wird. Zur Zeit bedeutet das die weihnachtliche Darstellung im Dezember. Es kann in Zukunft aber auch weitere Kriterien geben, anhand derer das Thema angepasst wird. Die direkte Festlegung eines Themas mit einem der anderen icons hat aber immer Vorrang vor der systemeigenen Logik." : MessageLookupByLibrary.simpleMessage("Die Oberfläche kann jetzt verschiedene Darstellungen annehmen. Diese zeigen sich zur Zeit durch geänderte Farben und ein angepasstes Icon im Browsertab und beim Laden der Seite. Das hat keine Auswirkungen auf die erzeugten PDF-Dateien. Es ist die Vorbereitung für eine teilweise anpassbare Oberfläche. Das Thema der Darstellung wird standardmässig vom System festgelegt, was zur Zeit heisst, dass im Dezember ein weihnachtliches Thema angezeigt wird. Das kann aber durch Anklicken des Icons, das ab jetzt links unten zu sehen ist, geändert werden. Beim Anklicken wird rechts neben dem Icon ein Bereich mit den verfügbaren Darstellungen eingeblendet. Das erste Icon (der kleine Zauberer) bedeutet dabei, dass die Darstellung vom System ermittelt wird. Zur Zeit bedeutet das die weihnachtliche Darstellung im Dezember. Es kann in Zukunft aber auch weitere Kriterien geben, anhand derer das Thema angepasst wird. Die direkte Festlegung eines Themas mit einem der anderen icons hat aber immer Vorrang vor der systemeigenen Logik."),
    "Die Positionierung der Notizen in der Tagesgrafik wurde korrigiert, so dass sie näher an der Uhrzeit stehen. Die Striche wurden so verkürzt, dass sie nur noch bis zum unteren Rand der Grafik gehen und nicht mehr durch die Wertetabelle." : MessageLookupByLibrary.simpleMessage("Umiestnenie poznámok v dennej grafike bolo opravené tak, aby boli bližšie k dennému času. Zdvihy boli skrátené tak, že idú iba na spodok grafu a nie cez tabuľku hodnôt."),
    "Die Profilbasalrate im Formular Tagesprofil wird jetzt ebenfalls mit Balken dargestellt." : MessageLookupByLibrary.simpleMessage("Die Profilbasalrate im Formular Tagesprofil wird jetzt ebenfalls mit Balken dargestellt."),
    "Die Profile für den Zeitraum wurden teilweise nicht korrekt identifiziert. Das sollte behoben sein." : MessageLookupByLibrary.simpleMessage("Profily za časové obdobie neboli správne identifikované. To by malo byť vyriešené."),
    "Die Profilseite wurde angepasst, damit Einträge für 24 Stunden auf eine Seite passen." : MessageLookupByLibrary.simpleMessage("Stránka profilu bola upravená tak, aby umožňovala vstupy na stránku na 24 hodín."),
    "Die Profiltabelle sollte normalerweise nur Daten zu den verwendeten Profilen beinhalten. iOS Loop verwendet diese Tabelle aber dazu, um dort eigene Einstellungen zu speichern und tut dies bei einigen Benutzern exzessiv. Ab einer bestimmten Datenmenge kann die Profiltabelle über die API dann nicht mehr korrekt abgefragt werden. Deswegen gibt es hier die Möglichkeit, die Anzahl an Datensätzen einzuschränken, die aus dieser Tabelle geholt werden. Das ist so lange notwendig, wie iOS Loop oder andere Uploader diese Tabelle falsch befüllen.\n\nMaximale Anzahl an Profildatensätzen:" : MessageLookupByLibrary.simpleMessage("Zoznam profilov by mala obsahovať len dáta používaných profilov. Program iOS Loop do tohto zoznamu ukladá niektoré svoje nastavenia a u niektorých užívateľov veľmi agresívne. Od určitého množstva záznamov nie je možné zoznam profilov správne načítať cez API. Preto tu existuje spôsob ako obmedziť počet načítaných záznamov. Táto funkcia tu musí zostať dovtedy, kým iOS Loop a iné nástroje neprestanú túto tabuľku používať správnym spôsobom.\n\nMaximálny počet profilov na načítanie:"),
    "Die Reihenfolge der Formulare kann nun verändert werden. Dazu einfach das Handle auf der linken Seite des Buttons für das Formular anklicken, festhalten und an die Stelle ziehen, vor der es ausgedruckt werden soll." : MessageLookupByLibrary.simpleMessage("Poradie formulárov je teraz možné zmeniť. Jednoducho kliknite na úchyt na ľavej strane tlačidla pre formulár, podržte ho a presuňte ho na miesto, kde by sa malo vytlačiť."),
    "Die Seiten Profil und Basalrate zeigen nun bei einem Profil, das nur temporär während eines Tages aktiv war den Zeitraum an, in dem es aktiv war." : MessageLookupByLibrary.simpleMessage("Na stránkach Profil a Bazálna sadzba sa teraz zobrazuje časové obdobie, počas ktorého bola aktívna na profile, ktorý bol počas dňa aktívny iba dočasne."),
    "Die Seitenzahlen auf den Kacheln wurden weiter an den unteren Rand verschoben, damit sie immer gut lesbar sind." : MessageLookupByLibrary.simpleMessage("Počet strán v kachličkovom zobrazení bol posunutý nižšie, aby bol vždy lepšie čitateľný."),
    "Die Skalen an den Grafiken wurden überarbeitet. Sie zeigen jetzt für mmol/L ganzzahlige Werte an und die Einheiten wurden entfernt. Diese stehen nur noch unten an der Grafik. Das betrifft die täglichen Grafiken, wöchentlichen Grafiken und das Glukose Percentil Diagramm." : MessageLookupByLibrary.simpleMessage("Mierka na grafike bola revidovaná. Teraz zobrazujú celé hodnoty pre mmol / l a jednotky boli odstránené. Tieto sú iba v dolnej časti grafiky. Týka sa to denných grafov, týždenných grafov a grafu percentilu glukózy."),
    "Die Spalten auf der Profilseite wurden korrigiert, damit auch längere Zeitnamen (z.B. in spanisch) Platz finden." : MessageLookupByLibrary.simpleMessage("Stĺpce na stránke profilu boli opravené tak, aby vyhovovali dlhším časovým menám (napr. Španielčina)."),
    "Die Standardabweichung wird jetzt auch bei mmol/L korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Štandardná odchýlka sa teraz zobrazuje správne aj pri mmol / L."),
    "Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an" : MessageLookupByLibrary.simpleMessage("Denná štatistika teraz zobrazuje správne hodnoty mmol / l"),
    "Die URL wurde noch nicht festgelegt" : MessageLookupByLibrary.simpleMessage("URL ešte nie je nastavená"),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("URL ešte nie je nastavená."),
    "Die URLs der Benutzer werden nun nach dem Enddatum sortiert." : MessageLookupByLibrary.simpleMessage("Die URLs der Benutzer werden nun nach dem Enddatum sortiert."),
    "Die Url zur Nightscout-API muss mit https beginnen, da Nightscout Reporter auch auf https läuft. Ein Zugriff auf unsichere http-Resourcen ist nicht möglich." : MessageLookupByLibrary.simpleMessage("Rozhranie API adresy URL pre program Nightscout musí začínať reťazcom https, pretože program Nightscout Reporter funguje aj na protokole https. Prístup k nebezpečným zdrojom http nie je možný."),
    "Die Vorschaubilder auf den Kacheln passen sich abhängig von den ausgewählten Optionen teilweise an (z.B. die Auswahl von CGP bei Tagesgrafiken)." : MessageLookupByLibrary.simpleMessage("Ukážky obrázkov na dlaždiciach sa čiastočne upravia v závislosti od zvolených možností (napr. Výber CGP pre dennú grafiku)."),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("Webstránka používa na svoju prácu hlavne javascript. Pri vytváraní dokumentu PDF sa používajú Javascript a PHP."),
    "Die Werte VarK und ToR im CGP werden bei Tages- und Wochengrafiken in der Legende und in der Grafik korrekt ausgegeben." : MessageLookupByLibrary.simpleMessage("Die Werte VarK und ToR im CGP werden bei Tages- und Wochengrafiken in der Legende und in der Grafik korrekt ausgegeben."),
    "Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt" : MessageLookupByLibrary.simpleMessage("Hodnoty pre predvolený cieľový rozsah na analytickej stránke sa teraz určujú správne"),
    "Die Werte im CGP werden jetzt bei mmol-Angaben auch korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Hodnoty v jednotke mmol sa teraz zobrazia správne aj na stránke CGP (súhrnný glykemický päťuholník)."),
    "Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. " : MessageLookupByLibrary.simpleMessage("Zadaná adresa URL nie je dostupná. Ak je adresa URL správna, môže to byť spôsobené nastavením Nightscout aplikácie. "),
    "Die berechneten IE für Kohlenhydrate in der Tagesgrafik wurden teilweise mit falschen Faktoren ermittelt. Der Fehler wurde behoben." : MessageLookupByLibrary.simpleMessage("Die berechneten IE für Kohlenhydrate in der Tagesgrafik wurden teilweise mit falschen Faktoren ermittelt. Der Fehler wurde behoben."),
    "Die eigenen Grenzwerte auf der Analyseseite in mmol/L werden nun korrekt berechnet." : MessageLookupByLibrary.simpleMessage("Vlastné limity na analytickej stránke v mmol / l sa teraz vypočítavajú správne."),
    "Die einzelne Seite CGP kann jetzt auch im Querformat ausgegeben werden." : MessageLookupByLibrary.simpleMessage("Stránku CGP je teraz možné individuálne vytlačiť aj poležiacky."),
    "Die falsche Bezeichnung für durchschnittliche Kohlenhydrate pro Tag in der Tagesstatistik wurde durch die korrekte Bezeichnung für durchschnittliche Kohlenhydrate pro Mahlzeit ersetzt." : MessageLookupByLibrary.simpleMessage("Nesprávny popis priemerných denných sacharidov v dennej štatistike bol opravený na správne znenie popisujúce priemerné sacharidy na jedlo."),
    "Die fehlerhafte Platzierug der blutigen Werte bei mmol/L in der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Opravené bolo chybné umiestnenie krvavých hodnôt na mmol / l v dennom grafe."),
    "Die fehlerhafte Zentrierung der Auswahlbuttons wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Opravené bolo nesprávne vycentrovanie tlačidiel výberu."),
    "Die glykämische Variabilität stellt die Streuung der Werte um den glykämischen Mittelwert herum in Prozent dar." : MessageLookupByLibrary.simpleMessage("Glykemická variabilita predstavuje roztrúsenosť hodnôt okolo glykemického priemeru v percentách."),
    "Die glykämische Variabilität wird jetzt im CGP auch bei Tages- und Wochengrafiken korrekt ausgegeben." : MessageLookupByLibrary.simpleMessage("Glykemická variabilita sa teraz v zobrazuje na stránke CGP (súhrnný glykemický päťuholník) správne aj pri období dňa a týždňa."),
    "Die meisten Spalten auf der Seite \"Stündliche Statistik\" werden bei nicht vorhandenen Daten leer gelassen." : MessageLookupByLibrary.simpleMessage("Väčšina stĺpcov na stránke \"Hodinová štatistika\" zostane prázdna ak nie je dostatok dát."),
    "Die mittlerweile überflüssige Option zur Darstellung der Basalrate mit zwei Nachkommastellen wurde aus der Tagesgrafik entfernt." : MessageLookupByLibrary.simpleMessage("Dnešná nadbytočná možnosť zobrazovania bazálnej dávky s dvoma desatinnými miestami bola z denného grafu odstránená."),
    "Die teilweise falsch zugewiesenen Grenzwerte für die Bereiche (niedrig, normal, hoch) wurden korrigiert." : MessageLookupByLibrary.simpleMessage("Čiastočne nesprávne pridelené limity pre oblasti (nízke, normálne, vysoké) boli opravené."),
    "Die temporäre Basalrate am Anfang des Tages wurde bisher falsch gesetzt, wenn sie im vorherigen Tag gesetzt wurde. Das wurde behoben." : MessageLookupByLibrary.simpleMessage("Dočasný bazálny koeficient na počiatku dňa bol doteraz nastavený nesprávne, ak bol zadaný predchádzajúci deň. Teraz je to opravené."),
    "Die Überschrift über der Tabelle vom Glucose Perzentil Diagramm wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Nadpis nad tabuľkou z diagramu percentilu glukózy bol opravený."),
    "Die Überschrift über der mittleren Spalte im Tagesprofil wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Opravený nadpis nad stredným stĺpcom denného profilu."),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("Táto stránka sa používa na generovanie dokumentov PDF z údajov uložených v Nightscout. Preto je potrebné nastaviť niektoré údaje, ktoré umožnia prístup k týmto údajom. Pokiaľ dáta nebudú dostupné a aktuálne, stránka pre vás nemôže nič zmysluplného urobiť."),
    "Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden." : MessageLookupByLibrary.simpleMessage("Táto stránka bola pridaná. Zobrazí sa pri každom spustení aplikácie Nightscout Reporter, ak sa nezobrazila v aktuálnej verzii. Okrem toho ho možno vyvolať znova v ponuke Hamburger."),
    "Diese Webseite speichert keine Daten auf Servern. Die benötigten Daten werden von der eingegebenen URL zur Nightscout-Instanz geholt und als PDF aufbereitet. Die Daten, die zur Funktion der Webseite benötigt werden, werden im localStorage des Browsers gespeichert und nicht an den Server übermittelt. Wenn die Synchronisierung mit Google Drive aktiviert wird, dann werden diese Daten zusätzlich in den Anwendungsdaten auf dem Google Drive des verbundenen Kontos gespeichert." : MessageLookupByLibrary.simpleMessage("Táto webová stránka neukladá údaje na serveroch. Požadované údaje sa získajú zo zadanej adresy URL do inštancie Nightscout a pripravia sa ako PDF. Dáta potrebné na fungovanie webovej stránky sú uložené v localStorage prehliadača a neprenášajú sa na server. Ak je zapnutá synchronizácia s Diskom Google, tieto údaje sa tiež uložia do údajov aplikácie v priradenom účte Disk Google."),
    "Dieser Regler legt fest, wie gross eine Ausgabe maximal werden darf, bevor sie auf mehrere PDF-Dateien aufgeteilt wird. Wenn bei Erstellung eines PDFs ein leeres Fenster angezeigt wird, dann hilft es normalerweise, diesen Regler weiter nach links zu bewegen." : MessageLookupByLibrary.simpleMessage("Tento posúvač určuje maximálne povolené množstvo výstupu pred jeho rozdelením do viacerých súborov PDF. Ak sa pri vytváraní PDF zobrazí prázdne okno, zvyčajne vám pomôže posúvať tento posúvač ďalej doľava."),
    "Dieses Formular ..." : MessageLookupByLibrary.simpleMessage("Dieses Formular ..."),
    "Dieses Formular zeig die Verteilung der Glukosewerte\nim ausgewählten Zeitraum an." : MessageLookupByLibrary.simpleMessage("Tento formulár zobrazuje distribúciu hodnôt glykémie vo zvolenom období."),
    "Dieses Formular zeigt an, wie sich die Glukosewerte im ausgewählten Zeitraum über den Tag\nverteilen. Diese Verteilung kann graphisch und tabellarisch ausgegeben werden.\n\nIn der Grafik sind die Bereiche für bestimmte Abweichungen farblich markiert. Die Linie zeigt den Medianwert\nan. In der Tabelle kann man diese Werte nachlesen. Wenn die Basalrate mit ausgegeben wird, dann ist das die\nBasalrate, die zu Beginn des ausgewählten Zeitraums aktiv war." : MessageLookupByLibrary.simpleMessage("Dieses Formular zeigt an, wie sich die Glukosewerte im ausgewählten Zeitraum über den Tag\nverteilen. Diese Verteilung kann graphisch und tabellarisch ausgegeben werden.\n\nIn der Grafik sind die Bereiche für bestimmte Abweichungen farblich markiert. Die Linie zeigt den Medianwert\nan. In der Tabelle kann man diese Werte nachlesen. Wenn die Basalrate mit ausgegeben wird, dann ist das die\nBasalrate, die zu Beginn des ausgewählten Zeitraums aktiv war."),
    "Dieses Formular zeigt das Comprehensive Glucose Pentagon an, welches die Qualität der \nGlukoseeinstellung in einer schnell zu erfassenden Weise darstellt. Es wird für den ausgewählten Zeitraum angezeigt\nwie lange der Glukosewert im Schnitt während des Tages ausserhalb des Zielbereichs war, wie hoch die Intensität\nder Überzuckerungen und der Unterzuckerungen war, wie hoch der Mittelwert war und wie hoch die Variabilität der\nWerte war.\n\nDiese Grafik kann auch bei @05@ und @08@ ausgegeben werden. \n" : MessageLookupByLibrary.simpleMessage("Dieses Formular zeigt das Comprehensive Glucose Pentagon an, welches die Qualität der \nGlukoseeinstellung in einer schnell zu erfassenden Weise darstellt. Es wird für den ausgewählten Zeitraum angezeigt\nwie lange der Glukosewert im Schnitt während des Tages ausserhalb des Zielbereichs war, wie hoch die Intensität\nder Überzuckerungen und der Unterzuckerungen war, wie hoch der Mittelwert war und wie hoch die Variabilität der\nWerte war.\n\nDiese Grafik kann auch bei @05@ und @08@ ausgegeben werden. \n"),
    "Dieses Formular zeigt das Profil an. Es werden normalerweise alle Profile des ausgewählten\nZeitraums ausgegeben. Wenn sich in dem Zeitraum das Profil geändert hat, wird ein neues Blatt erzeugt.\n\nEs gibt aber eine Option, welche nur das letzte Profil des Zeitraums ausgibt. Ausserdem gibt es eine Option,\nmit der gleiche Zeilen zusammengefasst werden. Das führt zu einem kürzeren Profil, wenn mehrere Zeiten nacheinander\ndie gleichen Werte beinhalten." : MessageLookupByLibrary.simpleMessage("Dieses Formular zeigt das Profil an. Es werden normalerweise alle Profile des ausgewählten\nZeitraums ausgegeben. Wenn sich in dem Zeitraum das Profil geändert hat, wird ein neues Blatt erzeugt.\n\nEs gibt aber eine Option, welche nur das letzte Profil des Zeitraums ausgibt. Ausserdem gibt es eine Option,\nmit der gleiche Zeilen zusammengefasst werden. Das führt zu einem kürzeren Profil, wenn mehrere Zeiten nacheinander\ndie gleichen Werte beinhalten."),
    "Dieses Formular zeigt den Trend der Glukosewerte über den Tag hinweg \nan. Dabei wird in der Spalte Trend immer angezeigt, um wieviel Prozent sich \nder Wert von einer vollen Stunde zur nächsten verändert hat. Dieser Trend ist\nganz hilfreich, wenn man bei einem Basalratentest erkennen will, wie sich der\nGlukosewert nur anhand der Basalrate entwickelt. Es kann auch eine Spalte für\ndie Boluswerte und die Kohlenhydrate angezeigt werden. Diese sollten aber bei\neinem Basalratentest natürlich leer sein. Ebenso muss ein eventuell\nvorhandener Loop im Zeitraum des Tests abgeschaltet sein. Es geht dabei nur\num den Diabetiker und seine Basalrate.\nEs wird auch eine Spalte mit der\nBasalrate angezeigt, wenn die Option \'Alle Werte für einen Tag anzeigen\'\nnicht markiert wurde. Wenn die Option markiert wurde, dann fehlt der Platz\n(und auch der Sinn), diese darzustellen." : MessageLookupByLibrary.simpleMessage("Dieses Formular zeigt den Trend der Glukosewerte über den Tag hinweg \nan. Dabei wird in der Spalte Trend immer angezeigt, um wieviel Prozent sich \nder Wert von einer vollen Stunde zur nächsten verändert hat. Dieser Trend ist\nganz hilfreich, wenn man bei einem Basalratentest erkennen will, wie sich der\nGlukosewert nur anhand der Basalrate entwickelt. Es kann auch eine Spalte für\ndie Boluswerte und die Kohlenhydrate angezeigt werden. Diese sollten aber bei\neinem Basalratentest natürlich leer sein. Ebenso muss ein eventuell\nvorhandener Loop im Zeitraum des Tests abgeschaltet sein. Es geht dabei nur\num den Diabetiker und seine Basalrate.\nEs wird auch eine Spalte mit der\nBasalrate angezeigt, wenn die Option \'Alle Werte für einen Tag anzeigen\'\nnicht markiert wurde. Wenn die Option markiert wurde, dann fehlt der Platz\n(und auch der Sinn), diese darzustellen."),
    "Dieses Formular zeigt den Verlauf der Glukosekurve für einen Tag. Pro Tag im ausgewählten\nZeitraum wird eine Seite erzeugt. Es gibt sehr viele Optionen, mit denen dieses Formular angepasst werden kann.\nDie Optionen, die auf einen Loop hinweisen sind andersfarbig markiert, um sie schneller identifizieren zu \nkönnen. Die Optionen COB und IOB verlangsamen die Ausgabe teilweise erheblich, weshalb man diese nur dann\nverwenden sollte, wenn sie wirklich von Interesse sind.\n\nUnter der Grafik kann die Basalrate angezeigt werden. Ein laufender Loop wird diese immer wieder hoch und runter\nsetzen. Deshalb kann man sowohl die tatsächliche Basalrate als auch die im Profil eingestellte Basalrate \nanzeigen lassen. Für die Basalrate gibt es noch die Formulare @09@, @11@ und @02@, auf denen man sie genauer \nanalysieren kann. Man kann auch das @10@ für den Tag erzeugen lassen. Das wird dann auf einer neuen Seite ausgegeben.\n\nDieses Formular ist eines der seitenintensivsten Formulare in Nightscout Reporter. Deshalb gibt es hier \ndie Möglichkeit, mehrere Tagesgrafiken auf einer Seite ausgeben zu lassen. Darunter leidet natürlich die Lesbarkeit,\naber für einen Überblick über den Verlauf ist das ganz nützlich." : MessageLookupByLibrary.simpleMessage("Dieses Formular zeigt den Verlauf der Glukosekurve für einen Tag. Pro Tag im ausgewählten\nZeitraum wird eine Seite erzeugt. Es gibt sehr viele Optionen, mit denen dieses Formular angepasst werden kann.\nDie Optionen, die auf einen Loop hinweisen sind andersfarbig markiert, um sie schneller identifizieren zu \nkönnen. Die Optionen COB und IOB verlangsamen die Ausgabe teilweise erheblich, weshalb man diese nur dann\nverwenden sollte, wenn sie wirklich von Interesse sind.\n\nUnter der Grafik kann die Basalrate angezeigt werden. Ein laufender Loop wird diese immer wieder hoch und runter\nsetzen. Deshalb kann man sowohl die tatsächliche Basalrate als auch die im Profil eingestellte Basalrate \nanzeigen lassen. Für die Basalrate gibt es noch die Formulare @09@, @11@ und @02@, auf denen man sie genauer \nanalysieren kann. Man kann auch das @10@ für den Tag erzeugen lassen. Das wird dann auf einer neuen Seite ausgegeben.\n\nDieses Formular ist eines der seitenintensivsten Formulare in Nightscout Reporter. Deshalb gibt es hier \ndie Möglichkeit, mehrere Tagesgrafiken auf einer Seite ausgeben zu lassen. Darunter leidet natürlich die Lesbarkeit,\naber für einen Überblick über den Verlauf ist das ganz nützlich."),
    "Dieses Formular zeigt den Verlauf der Glukosekurve über eine Woche hinweg an. Der Zeitraum wird\ndazu in Wochenabschnitte aufgeteilt und jede Woche wird auf einer eigenen Seite ausgegeben. Die Wochen werden\nfarblich markiert, so dass man sie gut unterscheiden kann. Zusätzlich kann noch das @10@ für die jeweilige\nWoche erzeugt werden." : MessageLookupByLibrary.simpleMessage("Dieses Formular zeigt den Verlauf der Glukosekurve über eine Woche hinweg an. Der Zeitraum wird\ndazu in Wochenabschnitte aufgeteilt und jede Woche wird auf einer eigenen Seite ausgegeben. Die Wochen werden\nfarblich markiert, so dass man sie gut unterscheiden kann. Zusätzlich kann noch das @10@ für die jeweilige\nWoche erzeugt werden."),
    "Dieses Formular zeigt die Auswertung der Werte des ausgewählten\nZeitraums. Dabei wird auch der durchscnittliche Verbrauch an Materialien\nrechnerisch ermittelt und angezeigt. Dieses Formular beinhaltet die meisten\nInformationen, die Diabetologen gerne wissen wollen.\n\nDer HbA1c wird rechnerisch aus den vorhandenen Daten ermittelt und weicht\nnormalerweise nicht unerheblich von dem tatsächlich gemessenen Wert ab. Der\nWert, der aus der Blutprobe ermittelt wird, gibt die tatsächliche Bindung\nvon Glukose im Blut wieder. Da diese von zusätzlichen Faktoren abhängig ist\nund nicht nur von den hier verwendeten Messdaten, ergeben sich Unterschiede\nzum errechneten Wert. Vor allem, wenn es sich bei den gemessenen Werten nicht\num Blutzucker, sondern um Gewebszucker handelt, wie er von CGM-Systemen\nverwendet wird.\n\nTrotzdem ist dieser Wert ein grober Anhaltspunkt für die Qualität der\nGlukoseeinstellung und wird in der vom Labor ermittelten Form gerne von\nDiabetologen als Richtwert verwendet, weshalb er hier angezeigt wird. Er wird\naber in schwächerer Schrift ausgegeben, damit seine zweifelhafte Natur auch\nerkennbar ist." : MessageLookupByLibrary.simpleMessage("Dieses Formular zeigt die Auswertung der Werte des ausgewählten\nZeitraums. Dabei wird auch der durchscnittliche Verbrauch an Materialien\nrechnerisch ermittelt und angezeigt. Dieses Formular beinhaltet die meisten\nInformationen, die Diabetologen gerne wissen wollen.\n\nDer HbA1c wird rechnerisch aus den vorhandenen Daten ermittelt und weicht\nnormalerweise nicht unerheblich von dem tatsächlich gemessenen Wert ab. Der\nWert, der aus der Blutprobe ermittelt wird, gibt die tatsächliche Bindung\nvon Glukose im Blut wieder. Da diese von zusätzlichen Faktoren abhängig ist\nund nicht nur von den hier verwendeten Messdaten, ergeben sich Unterschiede\nzum errechneten Wert. Vor allem, wenn es sich bei den gemessenen Werten nicht\num Blutzucker, sondern um Gewebszucker handelt, wie er von CGM-Systemen\nverwendet wird.\n\nTrotzdem ist dieser Wert ein grober Anhaltspunkt für die Qualität der\nGlukoseeinstellung und wird in der vom Labor ermittelten Form gerne von\nDiabetologen als Richtwert verwendet, weshalb er hier angezeigt wird. Er wird\naber in schwächerer Schrift ausgegeben, damit seine zweifelhafte Natur auch\nerkennbar ist."),
    "Dieses Formular zeigt die Basalrate, die im Profil eingestellt ist in graphischer Form an.\nEs werden normalerweise alle Basalraten des ausgewählten Zeitraums ausgegeben. Wenn sich in dem Zeitraum\ndie Basalrate geändert hat, wird eine neue Seite erzeugt.\n\nEs gibt aber eine Option, welche nur die letzte Basalrate des Zeitraums ausgibt." : MessageLookupByLibrary.simpleMessage("Dieses Formular zeigt die Basalrate, die im Profil eingestellt ist in graphischer Form an.\nEs werden normalerweise alle Basalraten des ausgewählten Zeitraums ausgegeben. Wenn sich in dem Zeitraum\ndie Basalrate geändert hat, wird eine neue Seite erzeugt.\n\nEs gibt aber eine Option, welche nur die letzte Basalrate des Zeitraums ausgibt."),
    "Dieses Formular zeigt die Daten in tabellarischer Form an. Es kann abhängig von den\nausgewählten Optionen sehr viele Seiten umfassen. Es ist vor allem dafür sinnvoll, um bestimmte Daten aufzufinden.\nZum Beispiel kann man damit ermitteln, wann Katheterwechsel vorgenommen wurden, wieviele Datensätze als doppelt \nerkannt wurden oder wo Notizen erfasst wurden.\n" : MessageLookupByLibrary.simpleMessage("Dieses Formular zeigt die Daten in tabellarischer Form an. Es kann abhängig von den\nausgewählten Optionen sehr viele Seiten umfassen. Es ist vor allem dafür sinnvoll, um bestimmte Daten aufzufinden.\nZum Beispiel kann man damit ermitteln, wann Katheterwechsel vorgenommen wurden, wieviele Datensätze als doppelt \nerkannt wurden oder wo Notizen erfasst wurden.\n"),
    "Dieses Formular zeigt die statistischen Werte für die Tage des ausgewählten Zeitraums\nan. Für jeden Tag wird eine Zeile erzeugt. Die Spalten kann man teilweise konfigurieren. Auch hier wird der geschätzte \nHbA1c ausgegeben. Dieser hat wie auch im Formular @01@ nur sehr wenig Aussagekraft, weshalb er auch hier nur mit \nschwächerer Schrift angezeigt wird.\n" : MessageLookupByLibrary.simpleMessage("Dieses Formular zeigt die statistischen Werte für die Tage des ausgewählten Zeitraums\nan. Für jeden Tag wird eine Zeile erzeugt. Die Spalten kann man teilweise konfigurieren. Auch hier wird der geschätzte \nHbA1c ausgegeben. Dieser hat wie auch im Formular @01@ nur sehr wenig Aussagekraft, weshalb er auch hier nur mit \nschwächerer Schrift angezeigt wird.\n"),
    "Dieses Formular zeigt die tatsächliche Basalrate, die während des Tages gelaufen ist unter\nBerücksichtigung aller temporären Basalratenanpassungen. Zusätzlich kann noch die im Profil hinterlegte\nBasalrate angezeigt werden. Die Basalrate kann als Wert, als prozentuale Änderung in Bezug auf die Profilbasalrate\noder mit beidem angezeigt werden. Die Summenspalte zeigt die bis zur entsprechenden Uhrzeit abgegebene Basalrate\nan. Es ist auch möglich, die Uhrzeit mit Sekunden anzeigen zu lassen. Damit kann man die angezeigten Werte\nrechnerisch überprüfen.\n\nWenn die Basalrate aus dem Profil angezeigt wird, wird das Maximum für die Darstellung der Balken anhand des\nmaximalen Wertes der Profilbasalrate ermittelt. Dadurch werden bei Werten über 100% des Maximalwerts der \nProfilbasalrate die Balken über die Spalte hinaus verlängert. Es gibt aber eine Option, um diese Balken abzuschneiden \nund als Pfeile darstellen zu lassen." : MessageLookupByLibrary.simpleMessage("Dieses Formular zeigt die tatsächliche Basalrate, die während des Tages gelaufen ist unter\nBerücksichtigung aller temporären Basalratenanpassungen. Zusätzlich kann noch die im Profil hinterlegte\nBasalrate angezeigt werden. Die Basalrate kann als Wert, als prozentuale Änderung in Bezug auf die Profilbasalrate\noder mit beidem angezeigt werden. Die Summenspalte zeigt die bis zur entsprechenden Uhrzeit abgegebene Basalrate\nan. Es ist auch möglich, die Uhrzeit mit Sekunden anzeigen zu lassen. Damit kann man die angezeigten Werte\nrechnerisch überprüfen.\n\nWenn die Basalrate aus dem Profil angezeigt wird, wird das Maximum für die Darstellung der Balken anhand des\nmaximalen Wertes der Profilbasalrate ermittelt. Dadurch werden bei Werten über 100% des Maximalwerts der \nProfilbasalrate die Balken über die Spalte hinaus verlängert. Es gibt aber eine Option, um diese Balken abzuschneiden \nund als Pfeile darstellen zu lassen."),
    "Dieses Formular zeigt eine Übersicht für einen Tag. Hier \n  werden die Tagesgrafik, die Basalrate, die Basalratenanpassungen, Insulin On \n  Board und Carbs On Board angezeigt." : MessageLookupByLibrary.simpleMessage("Dieses Formular zeigt eine Übersicht für einen Tag. Hier \n  werden die Tagesgrafik, die Basalrate, die Basalratenanpassungen, Insulin On \n  Board und Carbs On Board angezeigt."),
    "Dieses Formular zeigt eine Übersicht über die \nStunden der Tage des ausgewählten Zeitraums an. Die angezeigten Werte sind die\nMittelwerte der innerhalb der entsprechenden Stunde gemessenen Werte. Sie\nwerden anhand des ausgewählten Zielbereichs eingefärbt. In den Formularoptionen\nkann man die Startstunde festlegen. Die Datumsspalte befindet sich immer links\nvon 0 Uhr und zeigt an, wo ein neuer Tag beginnt." : MessageLookupByLibrary.simpleMessage("Tento formulár zobrazuje prehľad jednotlivých hodín\ndňa v rámci zvoleného časového rozsahu. Zobrazuje sa priemerná hodnota \nv rámci zobrazovanej hodnoty. Vyfarbené sú na základe zadaných cieľových hodnôt. \nV nastaveniach formulára je možné určiť počiatočnú hodinu. Stĺpec s dátumom sa\nnachádza vždy v ľavo od hodiny 0 a ukazuje, kde začína nový deň."),
    "Diverse Abstürze beim Auslesen der Daten bereinigt" : MessageLookupByLibrary.simpleMessage("Rôzne zlyhania pri čítaní upravených údajov"),
    "Drei Monate vorher" : MessageLookupByLibrary.simpleMessage("Tri mesiace dozadu"),
    "Drittes Quartal" : MessageLookupByLibrary.simpleMessage("Tretí štvrťrok"),
    "Durchschnitt" : MessageLookupByLibrary.simpleMessage("Priemer"),
    "Dämmerung (06:00 - 07:59, 18:00 - 20:59)" : MessageLookupByLibrary.simpleMessage("Súmrak (06:00 - 07:59, 18:00 - 20:59)"),
    "Eigene Grenzwerte" : MessageLookupByLibrary.simpleMessage("Vlastné limity"),
    "Ein Fehler bei der Ausgabe der temporären Ziele in der Tagesgrafik wurde behoben." : MessageLookupByLibrary.simpleMessage("Ein Fehler bei der Ausgabe der temporären Ziele in der Tagesgrafik wurde behoben."),
    "Ein Fehler beim Laden der ausgewählten Formulare wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Ein Fehler beim Laden der ausgewählten Formulare wurde korrigiert."),
    "Ein Fehler in der Zahlenformatierung wurde behoben." : MessageLookupByLibrary.simpleMessage("Chyba vo formáte čísla bola opravená."),
    "Ein Fehler wurde behoben, der bei der Auswahl des Zeitraums die Benutzung verhinderte, wenn man ein leeres Eingabefeld fokussierte." : MessageLookupByLibrary.simpleMessage("Bola odstránená chyba, kedy po kliknutí do prázdneho políčka nebolo možné pokračovať vo výbere časového intervalu."),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die Anwendung in einem undefinierten Zustand war, wenn man den letzten Benutzer gelöscht hat." : MessageLookupByLibrary.simpleMessage("Bola odstránená chyba, kedy po zmazaní posledného užívateľa zostala aplikácia v nepoužiteľnom stave."),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die letzten Tage bestimmter Monate nicht im Kalender-Control angezeigt wurden." : MessageLookupByLibrary.simpleMessage("Opravená chyba, ktorá spôsobila, že posledné dni určitých mesiacov sa nezobrazili v ovládacom prvku kalendára."),
    "Ein Fehler wurde behoben, der dafür sorgte, dass temporäre Ziele in der Tagesgrafik mit zeitlicher Verschiebung angezeigt wurden." : MessageLookupByLibrary.simpleMessage("Ein Fehler wurde behoben, der dafür sorgte, dass temporäre Ziele in der Tagesgrafik mit zeitlicher Verschiebung angezeigt wurden."),
    "Ein Fehler wurde behoben, der dazu führte, dass Dialoge mit Escape geschlossen werden konnten, was die Anwendung in einem unbrauchbaren Zustand zurückliess." : MessageLookupByLibrary.simpleMessage("Bol odstránený problém, ktorý umožňoval pomocou ESC zatvoriť dialóg a tým ponechať aplikáciu v nepoužiteľnom stave."),
    "Ein Fehler wurde behoben, der dazu führte, dass bei fehlenden Daten wie z.B. Treatments gar kein PDF mehr erstellt werden konnte." : MessageLookupByLibrary.simpleMessage("Ein Fehler wurde behoben, der dazu führte, dass bei fehlenden Daten wie z.B. Treatments gar kein PDF mehr erstellt werden konnte."),
    "Ein Fehler wurde behoben, der in der Tagesgrafik dazu führte, dass Texte in der Legende andere Texte überschrieben haben." : MessageLookupByLibrary.simpleMessage("Bola opravená chyba, ktorá spôsobila, že denná grafika prepísala texty v legende."),
    "Ein Fehler wurde wahrscheinlich behoben, der dazu führt, dass bei manchen Profilen der Wert für DIA nicht korrekt ausgelesen wurde." : MessageLookupByLibrary.simpleMessage("Pravdepodobne bola opravená chyba, ktorá spôsobila, že niektoré profily nesprávne vynechali hodnotu DIA."),
    "Ein Jahr vorher" : MessageLookupByLibrary.simpleMessage("Pred rokom"),
    "Ein Link zur Facebookseite von Nightscout Reporter wurde im Menü hinzugefügt." : MessageLookupByLibrary.simpleMessage("Do ponuky bol pridaný odkaz na stránku Nightscout Reporter Facebook."),
    "Ein Shortcut beinhaltet den Zeitraum und die ausgewählten Formulare mit den jeweils gesetzten Optionen. Wenn ein Shortcut aktiviert wird, werden die darin gespeicherten Einstellungen geladen und aktiviert." : MessageLookupByLibrary.simpleMessage("Ein Shortcut beinhaltet den Zeitraum und die ausgewählten Formulare mit den jeweils gesetzten Optionen. Wenn ein Shortcut aktiviert wird, werden die darin gespeicherten Einstellungen geladen und aktiviert."),
    "Ein möglicher Absturz bei der Ausgabe des CGP bei der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Bola opravená možná havária vo výstupe CGP v dennom grafe."),
    "Eine" : MessageLookupByLibrary.simpleMessage("jeden"),
    "Einen Monat vorher" : MessageLookupByLibrary.simpleMessage("Mesiac dozadu"),
    "Einheit" : MessageLookupByLibrary.simpleMessage("Einheit"),
    "Einheit der Glukosemessung" : MessageLookupByLibrary.simpleMessage("Merná jednotka glykémie"),
    "Einheiten" : MessageLookupByLibrary.simpleMessage("Jednotky"),
    "Einige Browser sind nicht in der Lage PDF Dateien anzuzeigen, die eine bestimmte Grösse überschreiten. Da das von verschiedenen Faktoren abhängt, die sich nicht ohne Weiteres automatisch ermitteln lassen, gibt es die Möglichkeit, statt einer grossen PDF Datei, die nicht angezeigt werden kann, mehrere kleinere PDF Dateien zu erzeugen, die der Browser anzeigen kann. In den Einstellungen und hier kann diese Grösse festgelegt werden. Diese Seite hier wird nur angezeigt, wenn das PDF aufgeteilt werden musste. Wenn nur ein PDF erzeugt wurde, dann wird es direkt angezeigt." : MessageLookupByLibrary.simpleMessage("Niektoré prehliadače nedokážu zobraziť súbory PDF, ktoré presahujú určitú veľkosť. Pretože to závisí od faktorov, ktoré sa nedajú ľahko automaticky vyhodnotiť, je tu možnosť namiesto problematického veľkého súboru, vygenerovať niekoľko menších súborov PDF, ktoré prehliadač dokáže zobraziť. V nastaveniach a na tomto mieste je možné túto veľkosť zadať. Táto stránka sa zobrazí, iba ak sa PDF muselo rozdeliť. Ak bol vytvorený iba jeden súbor PDF, zobrazí sa bez otázky."),
    "Einige Formulare können nun mit Parametern konfiguriert werden; hierzu den Pfeil am rechten Rand des Formularbuttons anklicken und im aufgeklappten Bereich die entsprechenden Einstellungen vornehmen; der Pfeil erscheint erst, wenn das Formular zum Ausdruck markiert wurde" : MessageLookupByLibrary.simpleMessage("Niektoré formuláre je teraz možné konfigurovať pomocou parametrov; kliknite na šípku na pravej strane tlačidla formulára a urobte príslušné nastavenia v otvorenej oblasti; Šípka sa neobjaví, kým formulár nie je označený pre tlač"),
    "Einige der Optionen für die PDFs wurden hierarchisch angeordnet. Es macht z.B. keinen Sinn, die SMB Werte in der Tagesgrafik an der Kurve platzieren zu lassen, wenn die SMB Werte gar nicht angezeigt werden. Deswegen werden Optionen, die von einer anderen Option abhängen nur dann angezeigt, wenn die entsprechende Option markiert ist. Dadurch ändert sich leider auch die Speicherung der Optionen, weshalb sich die aktuelle Auswahl der Optionen bei manchen PDFs verändert. Da müssen die Optionen dann neu gesetzt werden." : MessageLookupByLibrary.simpleMessage("Niektoré z možností pre súbory PDF boli usporiadané hierarchicky. Napríklad nemá zmysel umiestňovať hodnoty SMB do grafu v dennom grafe, ak sa hodnoty SMB vôbec nezobrazujú. Preto sa možnosti, ktoré závisia od inej možnosti, zobrazia, iba ak je vybratá príslušná možnosť. To, žiaľ, zmení aj ukladanie volieb, a preto sa zmenil aktuálny výber volieb pre niektoré súbory PDF. Možnosti sa musia potom resetovať."),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("Nastavenia"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("Nastavenia potrebné pre používanie aplikácie"),
    "Einstellungen von Release-Version übernehmen" : MessageLookupByLibrary.simpleMessage("Použiť nastavenia z verzie vydania"),
    "Einstiegsvideo" : MessageLookupByLibrary.simpleMessage("Úvodné video"),
    "English (GB)" : MessageLookupByLibrary.simpleMessage("English (GB)"),
    "English (USA)" : MessageLookupByLibrary.simpleMessage("English (USA)"),
    "Ermittle ersten Tag mit Daten" : MessageLookupByLibrary.simpleMessage("Zisti prvý deň s dátami"),
    "Ermittle letzten Tag mit Daten" : MessageLookupByLibrary.simpleMessage("Ermittle letzten Tag mit Daten"),
    "Erstes Quartal" : MessageLookupByLibrary.simpleMessage("Prvý štvrťrok"),
    "Erzeuge PDF..." : MessageLookupByLibrary.simpleMessage("Vytvoriť PDF ..."),
    "Es gibt ein neues Formular namens \"Verteilung der Glucosewerte\". Das zeigt die prozentuale Verteilung der Glukosewerte für den ausgewählen Zeitraum an." : MessageLookupByLibrary.simpleMessage("Pribudol nový formulár pod názvom \"Distribúcia hodnôt glykémie\". Zobrazuje percentuálny výskyt hodnôt glykémie v rámci zvoleného obdobia."),
    "Es gibt ein neues PDF namens Tagesstunden. Dieses zeigt die Durchschnittswerte eines Tages in jedem Stundenintervall an und färbt die Zellen entsprechend des Glukosewertes ein. So hat man eine gut Übersicht über die Werteverteilung im ausgewählten Zeitraum." : MessageLookupByLibrary.simpleMessage("Es gibt ein neues PDF namens Tagesstunden. Dieses zeigt die Durchschnittswerte eines Tages in jedem Stundenintervall an und färbt die Zellen entsprechend des Glukosewertes ein. So hat man eine gut Übersicht über die Werteverteilung im ausgewählten Zeitraum."),
    "Es gibt ein neues PDF namens Tagestrend. Dieses zeigt die Werte eines Tages zusammen mit dem Trend zu jeder vollen Stunde, sowie der eingestellten Basalrate aus dem Profil. Das ist eine gute Übersicht für Basalratentests, um zu erkennen, wo etwas anzupassen ist." : MessageLookupByLibrary.simpleMessage("Es gibt ein neues PDF namens Tagestrend. Dieses zeigt die Werte eines Tages zusammen mit dem Trend zu jeder vollen Stunde, sowie der eingestellten Basalrate aus dem Profil. Das ist eine gute Übersicht für Basalratentests, um zu erkennen, wo etwas anzupassen ist."),
    "Es gibt eine neue Option in der Tagesgrafik mit der man den Zielwert ein- und ausblenden kann." : MessageLookupByLibrary.simpleMessage("Es gibt eine neue Option in der Tagesgrafik mit der man den Zielwert ein- und ausblenden kann."),
    "Es gibt eine neue PDF-Seite für die Tagesprofile. Darauf ist eine Tabelle zu sehen, die die tatsächliche Basalrate für den Tag zeigt, inklusive aller temporären Anpassungen. Ich brauchte das für Debugzwecke, aber vielleicht findet das der eine oder andere Benutzer auch interessant. Das Profil, das dort angezeigt wird entspricht dem Tagesprofil auf der Seite Tagesgrafik. Beim Loopen können das sehr viele Seiten werden, da dort normalerweise alle paar Minuten Anpassungen an der Basalrate vorgenommen werden. Deswegen wird die Tabelle auch abhängig von der Datenmenge in maximal drei Spalten dargestellt, um die Anzahl an Seiten zu reduzieren." : MessageLookupByLibrary.simpleMessage("Pribudla PDF stránka denných profilov. Zobrazuje sa tu skutočné množstvo bazálneho inzulínu na deň, vrátane občasných korekcií. Je to potrebné hlavne pre ladenie aplikácie, ale možno sa hodí aj iným užívateľom. Tu zobrazený profil je rovnaký ako na denný profil na stránke denného grafu. V prípade pumpy to môže byť veľmi veľa výsledkov, keďže sa čiastkové korekcie dejú každých pár minút."),
    "Es gibt in den Einstellungen eine Option, das PDF herunterladen zu lassen, statt es im Browser direkt anzeigen zu lassen. Das wird für Browser wie Edge benötigt." : MessageLookupByLibrary.simpleMessage("V nastaveniach je možnosť nechať stiahnuť súbor PDF namiesto jeho zobrazenia priamo v prehliadači. Toto je potrebné pre prehliadače ako Edge."),
    "Es gibt in den Einstellungen eine neue Option, um den letzten in Nightscout gespeicherten Glukosewert in der Titelzeile anzeigen zu lassen. Wenn diese Option aktiviert ist, wird der aktuelle Wert, das Alter des Wertes, der Trendpfeil und die Differenz zum vorherigen Wert rechts in der Titelzeile angezeigt. Diese Anzeige wird jede Minute aktualisiert, solange das Browserfenster den Eingabefokus besitzt. Wenn es diesen nicht hat, wird die Aktualisierung angehalten und der Wert ausgeblendet, um nicht unnötig Systemresourcen zu belasten." : MessageLookupByLibrary.simpleMessage("V časti Preferences (Predvoľby) je nová možnosť zobraziť poslednú hodnotu glukózy uloženú v nočných baroch v záhlaví. Keď je zapnutá, zobrazuje na pravej strane záhlavia aktuálnu hodnotu, vek hodnoty, šípku trendu a rozdiel od predchádzajúcej hodnoty. Toto zobrazenie sa aktualizuje každú minútu, pokiaľ má okno prehľadávača vstupné zameranie. Ak ju nemá, aktualizácia pozastaví a skryje hodnotu, aby sa zbytočne nezaťažovali systémové prostriedky."),
    "Es gibt jetzt Shortcuts, mit denen man die aktuelle Auswahl der Formulare, deren Parameter und den ausgewählten Zeitraum speichern kann. Beim Aktivieren eines Shortcuts wird das alles wieder so eingestellt, wie es war, als der Shortcut gespeichert wurde." : MessageLookupByLibrary.simpleMessage("Es gibt jetzt Shortcuts, mit denen man die aktuelle Auswahl der Formulare, deren Parameter und den ausgewählten Zeitraum speichern kann. Beim Aktivieren eines Shortcuts wird das alles wieder so eingestellt, wie es war, als der Shortcut gespeichert wurde."),
    "Es gibt jetzt auch die Möglichkeit, Nightscout Reporter in europäischem Englisch darzustellen. Der Unterschied zum amerikanischen Englisch besteht derzeit lediglich im Datumsformat (gb: dd/MM/yyyy, us: MM/dd/yyyy)." : MessageLookupByLibrary.simpleMessage("Teraz je tiež možnosť predstaviť Nightscout Reporter v európskej angličtine. Rozdiel oproti americkej angličtine v súčasnosti existuje iba vo formáte dátumu (gb: dd / MM / rrrr, nás: MM / dd / rrrr)."),
    "Es gibt jetzt die Möglichkeit, PDFs vergangener Zeiträume zu erzeugen, ohne den Zeitraum anpassen zu müssen. Oberhalb des Buttons zur PDF-Erzeugung gibt es zwei Buttons, welche die PDFs für eine frühere Periode erzeugen. Der untere der beiden Buttons erzeugt die Vorperiode, der obere die vorletzte Periode. Auf den Buttons wird das Startdatum und das Enddatum angezeigt. Wenn z.B. als Zeitraum \"Letzte 2 Wochen\" gewählt wurde, dann wird mit dem unteren Button der Zeitraum von zwei Wochen beginnend vor vier Wochen erzeugt und mit dem oberen Button der Zeitraum von zwei Wochen beginnend vor sechs Wochen. Auf diese Art kann man recht einfach Vergleichsberichte erzeugen, um die Entwicklung der Werte zu erkennen. Auf den Seiten wird für diese Ausdrucke in der Kopfzeile das Wort \"Historisch 1\", bzw. \"Historisch 2\" oberhalb des Zeitraums ausgegeben. So kann man beim Vergleich der Werte die Daten voneinander unterscheiden." : MessageLookupByLibrary.simpleMessage("Teraz je možné vytvárať PDF minulých období bez toho, aby ste museli toto obdobie upravovať. Nad tlačidlom na vytváranie PDF sa nachádzajú dve tlačidlá, ktoré generujú súbory PDF skôr. Dolná časť tlačidiel generuje predchádzajúce obdobie, horné predposledné obdobie. Tlačidlá zobrazujú dátum začatia a dátum ukončenia. Napríklad, ak ste ako obdobie vybrali „posledné 2 týždne“, spodné tlačidlo začne obdobie od dvoch týždňov začínajúcich pred štyrmi týždňami a horné tlačidlo začne obdobie od pred dvoma týždňami do šiestich týždňov. Týmto spôsobom je ľahké generovať porovnávacie správy na zistenie vývoja hodnôt. Na stranách sa pre tieto výtlačky v hlavičke vytlačia slová „Historický 1“ alebo „Historický 2“ nad periódou. Pri porovnávaní hodnôt teda môžete navzájom odlíšiť údaje."),
    "Es gibt jetzt kleine Hilfebuttons bei den Formularen. In der Listenansicht ersetzen sie die Icons zum Ziehen der Formulare, in der Kachelansicht werden sie links oben auf den Kacheln dargestellt. Die jeweilige Ansicht kann man im Hamburgermenü auswählen. Beim Anklicken eines solchen Buttons wird ein Text angezeigt, der beschreibt, was das entsprechende Formular darstellt." : MessageLookupByLibrary.simpleMessage("Es gibt jetzt kleine Hilfebuttons bei den Formularen. In der Listenansicht ersetzen sie die Icons zum Ziehen der Formulare, in der Kachelansicht werden sie links oben auf den Kacheln dargestellt. Die jeweilige Ansicht kann man im Hamburgermenü auswählen. Beim Anklicken eines solchen Buttons wird ein Text angezeigt, der beschreibt, was das entsprechende Formular darstellt."),
    "Es gibt keine mehrfachen Datensätze." : MessageLookupByLibrary.simpleMessage("Es gibt keine mehrfachen Datensätze."),
    "Es ist in der Kachelansicht jetzt möglich, Formulare zu duplizieren, um verschiedene Ansichten des gleichen Formulars auf einmal zu erzeugen. Dazu gibt es rechts unten auf den Kacheln ein Kopier-Icon. Wenn dieses ausgelöst wird, dann wird das aktuelle Formular kopiert und als neue Kachel hinter der aktuellen Kachel eingefügt. Diese kann dann genauso behandelt werden, wie jede andere Kachel. Auf dieser neuen Kachel gibt es rechts unten ein Mülleimer-Icon. Wenn dieses ausgelöst wird, dann wird die Kachel wieder entfernt. Von einem Formular können maximal 2 Kopien erstellt werden. Die Optionen der Formulare werden ebenso wie die Reihenfolge wie bisher auch gespeichert. Die kopierten Kacheln bleiben also erhalten. In der Listenansicht tauchen die kopierten Formulare auch auf. Allerdings gibt es dort nicht die Möglichkeit, sie zu kopieren oder zu löschen. Das muss in der Kachelansicht erfolgen." : MessageLookupByLibrary.simpleMessage("Es ist in der Kachelansicht jetzt möglich, Formulare zu duplizieren, um verschiedene Ansichten des gleichen Formulars auf einmal zu erzeugen. Dazu gibt es rechts unten auf den Kacheln ein Kopier-Icon. Wenn dieses ausgelöst wird, dann wird das aktuelle Formular kopiert und als neue Kachel hinter der aktuellen Kachel eingefügt. Diese kann dann genauso behandelt werden, wie jede andere Kachel. Auf dieser neuen Kachel gibt es rechts unten ein Mülleimer-Icon. Wenn dieses ausgelöst wird, dann wird die Kachel wieder entfernt. Von einem Formular können maximal 2 Kopien erstellt werden. Die Optionen der Formulare werden ebenso wie die Reihenfolge wie bisher auch gespeichert. Die kopierten Kacheln bleiben also erhalten. In der Listenansicht tauchen die kopierten Formulare auch auf. Allerdings gibt es dort nicht die Möglichkeit, sie zu kopieren oder zu löschen. Das muss in der Kachelansicht erfolgen."),
    "Es ist jetzt möglich, die Buttons zur PDF-Auswahl als Kacheln darstellen zu lassen. Die Option dazu ist im Menü auf der linken Seite zu finden. In der Kachelansicht werden die Buttons über die verfügbare Fläche verteilt und sind so auf kleinen Geräten leichter zu treffen. Ausserdem sieht man dann normalerweise alle verfügbaren PDFs auf einen Blick und muss nicht scrollen. Auf den aktivierten Kacheln wird angezeigt, an welcher Stelle im PDF die entsprechenden Seiten ausgegeben werden und wieviele Seiten die entsprechende Kachel ausgibt. Diese Zahl kann für die meisten Kacheln korrekt ermittelt werden, bei einigen ist das aber ohne Auswertung der Daten nicht möglich (z.B. Profile und Protokoll). In diesem Fall wird entweder keine Seitenzahl oder eine Mindestzahl an Seiten angegeben. Sobald die Erstellung des PDFs erfolgt ist, werden die korrekten Zahlen angezeigt. Die Reihenfolge der Kacheln kann verändert werden, indem man sie festhält und an die Stelle verschiebt, an der man sie gerne hätte. Nach Anklicken des Icons in der oberen rechten Ecke können die Parameter für das entsprechende PDF erfasst werden." : MessageLookupByLibrary.simpleMessage("Teraz je možné zobraziť tlačidlá pre výber PDF ako dlaždice. Túto možnosť nájdete v ponuke naľavo. V zobrazení dlaždíc sú tlačidlá rozmiestnené po dostupnej oblasti, a preto je ľahšie ich zasiahnuť na malých zariadeniach. Okrem toho zvyčajne vidíte všetky dostupné súbory PDF na prvý pohľad a nemusíte sa posúvať. Aktivované dlaždice označujú, v ktorom okamihu sú na výstupe príslušné stránky a koľko stránok zodpovedajú výstupy na dlaždice. Toto číslo sa dá určiť pre väčšinu dlaždíc správne, ale pre niektoré to nie je možné bez vyhodnotenia údajov (napr. Profilov a protokolov). V takom prípade nie je zadané žiadne číslo strany alebo minimálny počet strán. Po vytvorení PDF sa zobrazia správne čísla. Poradie dlaždíc môžete zmeniť tak, že ich podržíte a presuniete na miesto, kde by ste chceli. Po kliknutí na ikonu v pravom hornom rohu je možné zadať parametre pre zodpovedajúci súbor PDF."),
    "Es ist jetzt möglich, die Einstellungen auf Google Drive zu speichern. Das hat den Vorteil, dass man die Einstellungen nicht nur im aktuellen Browser hat, sondern bei jedem Browser, mit dem man sich bei Google anmeldet. Die Einstellungen werden nach wie vor im Browser gespeichert. Bei einer Verbindung zu Google Drive werden sie aber zusätzlich auf Google Drive gespeichert. Beim Laden der Seite wird überprüft, ob eine Synchronisierung gewünscht ist. Wenn das der Fall ist, dann werden die Daten von Google Drive heruntergeladen. Wenn die Daten darin neuer sind als die Daten im Browser, werden sie verwendet. Nach dem Speichern der Daten werden bei aktivierter Synchronisierung diese Daten mit dem aktuellen Zeitstempel auf Google Drive gespeichert. Die Synchronisierung wird im Menü auf der linken Seite aktiviert und deaktiviert. Sie kann auch beim erstmaligen Aufruf der Seite in einem neuen Browser direkt im Willkommensbildschirm aktiviert werden. Nightscout Reporter verlangt nur die Berechtigung die eigenen App-Daten zu speichern und zu laden und benötigt keinen Zugriff auf andere Daten auf Google Drive." : MessageLookupByLibrary.simpleMessage("Teraz je možné nastavenia uložiť na Disk Google. To má tú výhodu, že nastavenia máte nielen v aktuálnom prehliadači, ale aj v každom prehliadači, pomocou ktorého sa prihlásite do spoločnosti Google. Nastavenia sú stále uložené v prehliadači. Po pripojení k službe Disk Google sa budú ukladať aj na Disk Google. Pri načítaní stránky skontroluje, či je požadovaná synchronizácia. V takom prípade sa údaje stiahnu z Disku Google. Ak sú údaje v ňom novšie ako údaje v prehliadači, použijú sa. Po uložení údajov sa synchronizáciou uložia tieto údaje s aktuálnou časovou pečiatkou na Disk Google. Synchronizácia sa aktivuje a deaktivuje v ponuke na ľavej strane. Môže sa tiež aktivovať pri prvom otvorení stránky v novom prehliadači priamo na uvítacej obrazovke. Aplikácia Nightscout Reporter vyžaduje povolenie iba na ukladanie a načítanie vlastných údajov aplikácie a nevyžaduje prístup k iným údajom na Disku Google."),
    "Es ist jetzt möglich, die Wochentage festzulegen, die im Zeitraum berücksichtigt werden sollen. Die entsprechenden Tage werden bei der Auswahl des Zeitraums mit den Buttons unterhalb des Monats festgelegt. Auf den PDFs werden Zeiträume dann zusätzlich mit der Information versehen, welche Wochentage berücksichtigt werden, wenn es nicht alle sind." : MessageLookupByLibrary.simpleMessage("Teraz je možné nastaviť dni v týždni, ktoré sa majú brať do úvahy v danom období. Zodpovedajúce dni sa určia pri výbere obdobia pomocou tlačidiel pod mesiacom. V súboroch PDF sa potom dodatočne poskytujú informácie o tom, ktoré dni v týždni sa berú do úvahy, ak nie sú všetky."),
    "Es sind keine Daten für den Ausdruck vorhanden" : MessageLookupByLibrary.simpleMessage("Nie sú k dispozícii žiadne údaje pre tlač"),
    "Es sind keine Daten vorhanden." : MessageLookupByLibrary.simpleMessage("Nie sú k dispozícii žiadne dáta."),
    "Es werden jetzt auch blutige Werte erkannt, die von Loop auf dem IPhone eingetragen werden." : MessageLookupByLibrary.simpleMessage("Teraz sú rozpoznané krvavé hodnoty, ktoré do zariadenia iPhone zadáva slučka Loop."),
    "Español" : MessageLookupByLibrary.simpleMessage("Español"),
    "Exportieren" : MessageLookupByLibrary.simpleMessage("Exportovať"),
    "Facebook Seite" : MessageLookupByLibrary.simpleMessage("Stránka na Facebooku"),
    "Faktor" : MessageLookupByLibrary.simpleMessage("Faktor"),
    "Fehler" : MessageLookupByLibrary.simpleMessage("Chyba"),
    "Fehler behoben, der bei der Kachelansicht teilweise verhindert hat, dass die Parameter für die Kacheln aufgerufen werden konnten." : MessageLookupByLibrary.simpleMessage("Fehler behoben, der bei der Kachelansicht teilweise verhindert hat, dass die Parameter für die Kacheln aufgerufen werden konnten."),
    "Fehler beim Laden der Daten" : MessageLookupByLibrary.simpleMessage("Pri načítavaní údajov sa vyskytla chyba"),
    "Fehler werden besser abgefangen und mit sinnvollem Text ersetzt." : MessageLookupByLibrary.simpleMessage("Chyby sú lepšie zachytené a nahradené zmysluplným textom."),
    "Fehlerhafte Ausgabe der Blutzuckerwerte in der täglichen Grafik korrigiert." : MessageLookupByLibrary.simpleMessage("V dennom grafe bol opravený nesprávny výstup hodnôt glukózy v krvi."),
    "Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt" : MessageLookupByLibrary.simpleMessage("Chybné namerané hodnoty sa už pri hodnotení grafiky nezohľadňujú; tieto sú rozpoznávané hodnotou \"NONE\" v dátovom poli \"direction\""),
    "Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt." : MessageLookupByLibrary.simpleMessage("Chybové hlásenie pri načítaní profilov bez odstránenia dátumu začiatku."),
    "FixAAPS30: Die Erstellung der PDFs kann extrem lange dauern. Das liegt an einer Flut von Profil-Switches, die durch ein Plugin für die Automatisierung erstellt werden. Das verursacht einen Profil-Switch alle 4 Minuten mit Speicherung des kompletten Profils. Wenn die Option aktiv ist, dann werden diese Profil-Switches aussortiert und ermöglichen dadurch die Erstellung des PDFs. Diese Profil-Switches sind dann in den PDFs nicht mehr sichtbar." : MessageLookupByLibrary.simpleMessage("FixAAPS30: Die Erstellung der PDFs kann extrem lange dauern. Das liegt an einer Flut von Profil-Switches, die durch ein Plugin für die Automatisierung erstellt werden. Das verursacht einen Profil-Switch alle 4 Minuten mit Speicherung des kompletten Profils. Wenn die Option aktiv ist, dann werden diese Profil-Switches aussortiert und ermöglichen dadurch die Erstellung des PDFs. Diese Profil-Switches sind dann in den PDFs nicht mehr sichtbar."),
    "Français" : MessageLookupByLibrary.simpleMessage("Français"),
    "Für die Tagesgrafik gibt es jetzt eine Option, um die Aufsummierung nahe beieinander liegender Werte umzuschalten." : MessageLookupByLibrary.simpleMessage("Pre dennú grafiku je teraz možné prepínať akumuláciu blízkych hodnôt."),
    "GPD" : MessageLookupByLibrary.simpleMessage("GPD"),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("Dátum narodenia"),
    "Gelbe Kreise zeigen an, dass der entsprechende Wert die Skala überschreitet." : MessageLookupByLibrary.simpleMessage("Gelbe Kreise zeigen an, dass der entsprechende Wert die Skala überschreitet."),
    "Genauigkeit der Basalangaben:" : MessageLookupByLibrary.simpleMessage("Presnosť základných informácií:"),
    "Ges." : MessageLookupByLibrary.simpleMessage("Ges."),
    "Gesamt" : MessageLookupByLibrary.simpleMessage("celkovo"),
    "Geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("Odhadovaná HbA1c"),
    "Glukose" : MessageLookupByLibrary.simpleMessage("Glukose"),
    "Glukose (aus NS)" : MessageLookupByLibrary.simpleMessage("Glukose (aus NS)"),
    "Glukose Pentagon erzeugen" : MessageLookupByLibrary.simpleMessage("Vytvoriť glykemický päťuholník"),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Percentilný diagram glykémie"),
    "Glukose im Zielbereich" : MessageLookupByLibrary.simpleMessage("Glykémia v cieľovej oblasti"),
    "Glukose zu hoch" : MessageLookupByLibrary.simpleMessage("Glykémia je príliš vysoká"),
    "Glukose zu niedrig" : MessageLookupByLibrary.simpleMessage("Glykémia je príliš nízka"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("Krivka glukózy"),
    "Glukosewert" : MessageLookupByLibrary.simpleMessage("hladina glukózy"),
    "Glukosewerte anpassen" : MessageLookupByLibrary.simpleMessage("Glukosewerte anpassen"),
    "Glykämischer Variabilitäts Index (GVI)" : MessageLookupByLibrary.simpleMessage("Index glykemickej variability (GVI)"),
    "Google Assistant" : MessageLookupByLibrary.simpleMessage("Asistent Google"),
    "Grafik" : MessageLookupByLibrary.simpleMessage("Grafika"),
    "Grafiken pro Seite" : MessageLookupByLibrary.simpleMessage("Počet grafov na stránku"),
    "Grenzwerte wurden nicht durchgängig gleich behandelt. Jetzt sollte die Zuordnung der Werte zu den Zielbereichen im gesamten Programm identisch sein." : MessageLookupByLibrary.simpleMessage("Grenzwerte wurden nicht durchgängig gleich behandelt. Jetzt sollte die Zuordnung der Werte zu den Zielbereichen im gesamten Programm identisch sein."),
    "Gross" : MessageLookupByLibrary.simpleMessage("veľký"),
    "Gruppierung der Zeiten" : MessageLookupByLibrary.simpleMessage("Zoskupovanie časov"),
    "HTML-Notizen anzeigen" : MessageLookupByLibrary.simpleMessage("Zobraziť HTML poznámky"),
    "Heute" : MessageLookupByLibrary.simpleMessage("Dnes"),
    "Hiermit wird festgelegt, um wieviel der Zeitraum des PDFs verschoben werden soll, um Vergleichswerte zu erhalten." : MessageLookupByLibrary.simpleMessage("Toto definuje, ako dlho by sa malo obdobie PDF posunúť, aby sa získali porovnávacie hodnoty."),
    "Hinweise auf Nightscout in der Kopf- und Fusszeile des PDFs ausblenden" : MessageLookupByLibrary.simpleMessage("Skryť rady týkajúce sa Nightscout v hlavičke a päte PDF"),
    "Hinzufügen" : MessageLookupByLibrary.simpleMessage("Pridať"),
    "Historische Daten" : MessageLookupByLibrary.simpleMessage("Historické dáta"),
    "Hochformat" : MessageLookupByLibrary.simpleMessage("Postojačky"),
    "Hohe Basalraten werden jetzt besser dargestellt." : MessageLookupByLibrary.simpleMessage("Teraz sú lepšie zastúpené vysoké bazálne dávky."),
    "Höchster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Najvyššia hodnota za dané obdobie"),
    "IE" : MessageLookupByLibrary.simpleMessage("U"),
    "IE-Anzeige" : MessageLookupByLibrary.simpleMessage("Zobraziť inzulín"),
    "IE/std" : MessageLookupByLibrary.simpleMessage("U/hod"),
    "IOB (Insulin On Board) anzeigen" : MessageLookupByLibrary.simpleMessage("Zobraziť IOB (Insulin On Board)"),
    "Im CGP wurden die Skalenbeschriftungen korrigiert." : MessageLookupByLibrary.simpleMessage("Im CGP wurden die Skalenbeschriftungen korrigiert."),
    "Im CGP wurden verschiedene Berechnungen korrigiert, die sich vor allem in Differenzen bei ToR und Mittelwerten zeigten." : MessageLookupByLibrary.simpleMessage("V CGP boli opravené rôzne výpočty, ktoré boli zjavné najmä v rozdieloch v ToR a priemerných hodnotách."),
    "Im Dialog der Ausgabe Parameter gibt es nun die Möglichkeit, das CGP immer mit dem Standard Zielbereich zu erzeugen. Diese Option ist anfangs eingeschaltet, da das CGP ein standardisiertes Formular ist, das gerne zu Vergleichszwecken herangezogen wird. Man kann es aber für seine eigenen Zwecke ausschalten. Diese Einstellung wird dann auch beibehalten." : MessageLookupByLibrary.simpleMessage("Im Dialog der Ausgabe Parameter gibt es nun die Möglichkeit, das CGP immer mit dem Standard Zielbereich zu erzeugen. Diese Option ist anfangs eingeschaltet, da das CGP ein standardisiertes Formular ist, das gerne zu Vergleichszwecken herangezogen wird. Man kann es aber für seine eigenen Zwecke ausschalten. Diese Einstellung wird dann auch beibehalten."),
    "Im Dialog der Ausgabe Parameter wurde rechts oben der Schieberegler \"zu Vergleichszwecken\" hinzugefügt. Wenn dieser aktiviert ist, dann wird überall der Standard Zielbereich verwendet. Intern wird das auch noch für andere Anpassungen verwendet. Diese Option ist dafür gedacht, dass man seine Ausdrucke mit anderen Diabetikern vergleichen kann. Das ist zum Beispiel zur Vorlage bei Ärzten und Diabetesberatern sinnvoll." : MessageLookupByLibrary.simpleMessage("V dialógovom okne výstupných parametrov bol v pravom hornom rohu pridaný posúvač „na účely porovnania“. Ak je aktivovaná, všade sa používa štandardná cieľová oblasť. Interne sa používa aj na ďalšie úpravy. Táto voľba je navrhnutá tak, aby ste mohli svoje výtlačky porovnávať s inými diabetikmi. Je to užitočné napríklad pri podávaní lekárom a diabetologickým konzultantom."),
    "Im Einstellungen Dialog gibt es jetzt die Möglichkeit, die Einstellungen zu exportieren und zu importieren. Beim Export wird eine Datei mit den allgemeinen Einstellungen geschrieben, beim Import wird so eine Datei wieder eingelesen. Damit kann man auch ohne Google Drive Zugriff die Einstellungen über verschiedene Browser hinweg manuell synchronisieren." : MessageLookupByLibrary.simpleMessage("Im Einstellungen Dialog gibt es jetzt die Möglichkeit, die Einstellungen zu exportieren und zu importieren. Beim Export wird eine Datei mit den allgemeinen Einstellungen geschrieben, beim Import wird so eine Datei wieder eingelesen. Damit kann man auch ohne Google Drive Zugriff die Einstellungen über verschiedene Browser hinweg manuell synchronisieren."),
    "Im Einstellungsdialog wurden die Zeilen mit den Benutzerangaben und der URL gegeneinander ausgetauscht, um eine sinnvollere Verwaltung zu ermöglichen." : MessageLookupByLibrary.simpleMessage("Poradie riadkov zadávania údajov pacienta a URL v nastaveniach bolo zmenené."),
    "Im Kalender-Control kann kein Datum nach dem aktuellen Tag mehr ausgewählt werden." : MessageLookupByLibrary.simpleMessage("Ovládací prvok kalendára už nemôže vybrať dátum po aktuálnom dni."),
    "Im Kalender-Control wird ein eingestellter Bereich (Heute, Letzte Woche, etc.) jetzt korrekt auf den aktuellen Tag bezogen." : MessageLookupByLibrary.simpleMessage("V ovládacom paneli kalendára je nastavená oblasť (dnes, minulý týždeň atď.) Teraz správne spojená s aktuálnym dňom."),
    "Im Kalender-Control wird jetzt der Monat des entsprechenden Datums angezeigt, wenn eines der Felder Von oder bis den Fokus erhält." : MessageLookupByLibrary.simpleMessage("Ovládací prvok kalendára teraz zobrazuje mesiac príslušného dátumu, keď je jedno z polí Od alebo Do zamerané."),
    "Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert" : MessageLookupByLibrary.simpleMessage("PDF formátuje čísla a dátumy podľa zvoleného jazyka"),
    "Im Profil werden jetzt die richtigen Einheiten verwendet (mg/dL oder mmol/l)." : MessageLookupByLibrary.simpleMessage("Profil teraz používa správne jednotky (mg / dl alebo mmol / l)."),
    "Im Profil werden nun die Gesamtsumme der Basalrate und die durchschnittlichen Werte für ICR und ISF pro Stunde angezeigt." : MessageLookupByLibrary.simpleMessage("Profil teraz ukazuje celkovú bazálnu dávku a priemernú ICR a ISF za hodinu."),
    "Im Protokoll gibt es jetzt die Möglichkeit, sich doppelte Datensätze markieren zu lassen. Sie werden von Nightscout Reporter zwar rausgefiltert, aber er kann anzeigen, wie oft ein bestimmter Datensatz in den Daten gefunden wurde. Man kann dort auch angeben, dass er nur mehrfach vorhandene Datensätze ausgeben soll. So kann man mögliche Diskrepanzen zwischen Nightscout Reporter und anderen Reporting Tools herausfinden." : MessageLookupByLibrary.simpleMessage("Im Protokoll gibt es jetzt die Möglichkeit, sich doppelte Datensätze markieren zu lassen. Sie werden von Nightscout Reporter zwar rausgefiltert, aber er kann anzeigen, wie oft ein bestimmter Datensatz in den Daten gefunden wurde. Man kann dort auch angeben, dass er nur mehrfach vorhandene Datensätze ausgeben soll. So kann man mögliche Diskrepanzen zwischen Nightscout Reporter und anderen Reporting Tools herausfinden."),
    "Im Protokoll können jetzt auch Batteriewechsel der Pumpe angezeigt werden." : MessageLookupByLibrary.simpleMessage("Protokol teraz môže tiež ukazovať zmeny batérie pumpy."),
    "Im Protokoll werden die Angaben, die ein temporäres Ziel von 0 IE für 0 Minuten setzen als \"Aufhebung von temp. Ziel\" ausgegeben." : MessageLookupByLibrary.simpleMessage("V protokole sa informácia, ktorá nastavuje dočasný cieľ 0 IU na 0 minút, vydáva ako „Zrušenie dočasného cieľa“."),
    "Im Protokoll werden nun auch temporäre Overrides ausgegeben, die von iOSLoop in die Behandlungsdaten eingetragen werden." : MessageLookupByLibrary.simpleMessage("Im Protokoll werden nun auch temporäre Overrides ausgegeben, die von iOSLoop in die Behandlungsdaten eingetragen werden."),
    "Im Tagesprofil kann nun angegeben werden, ob nur der Wert, die prozentuale Anpassung des Profils oder beides angezeigt werden soll. Ausserdem kann eine Linie eingefügt werden, die den im Basalprofil zum jeweiligen Zeitpunkt eingestellten Wert darstellt." : MessageLookupByLibrary.simpleMessage("Im Tagesprofil kann nun angegeben werden, ob nur der Wert, die prozentuale Anpassung des Profils oder beides angezeigt werden soll. Ausserdem kann eine Linie eingefügt werden, die den im Basalprofil zum jeweiligen Zeitpunkt eingestellten Wert darstellt."),
    "Importieren" : MessageLookupByLibrary.simpleMessage("Importovať"),
    "Impressum" : MessageLookupByLibrary.simpleMessage("Pečiatka"),
    "In AAPS 3.0 wird ändert sich einiges an den Datenstrukturen und Datenmengen, die gespeichert werrden. Das verursacht in Nightscout Reporter an einigen Stellen Probleme, die sich nicht generell lösen lassen, Deswegen gibt es jetzt bei den Ausgabe Parametern die Option \"Korrektur für Datenänderungen in AAPS 3.0\", mit der bei Erstellung der PDFs bestimmte Probleme korrigiert werden. Diese Änderungen werden hier mit FixAAPS30 markiert." : MessageLookupByLibrary.simpleMessage("In AAPS 3.0 wird ändert sich einiges an den Datenstrukturen und Datenmengen, die gespeichert werrden. Das verursacht in Nightscout Reporter an einigen Stellen Probleme, die sich nicht generell lösen lassen, Deswegen gibt es jetzt bei den Ausgabe Parametern die Option \"Korrektur für Datenänderungen in AAPS 3.0\", mit der bei Erstellung der PDFs bestimmte Probleme korrigiert werden. Diese Änderungen werden hier mit FixAAPS30 markiert."),
    "In Firefox ist es jetzt auch möglich, die Hauptseite zu scrollen, wenn sie länger ist, als das Browserfenster." : MessageLookupByLibrary.simpleMessage("Vo Firefoxe je teraz možné posúvať hlavnú stránku, ak je dlhšia ako okno prehľadávača."),
    "In dem Dialog mit den Ausgabe Parametern wurde die Option hinzugefügt, die Genauigkeit der Ausgabe von Basalangaben festzulegen. Diese wird normalerweise aus den Angaben zur Basalrate in den Profilen ermittelt. Das wird auch weiterhin getan, wenn der erste Eintrag in der Liste ausgewählt wird. Ansonsten werden alle Basalangaben mit der Genauigkeit ausgegeben, die bei dieser Option ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("V dialógovom okne s výstupnými parametrami bola pridaná možnosť určiť presnosť výstupu bazálnych informácií. Zvyčajne sa určuje z informácií o základnej dávke v profiloch. Bude to tak aj naďalej, ak je vybratý prvý záznam v zozname. Inak budú všetky základné informácie na výstupe s presnosťou vybranou pre túto možnosť."),
    "In den Ausgabe Parametern kann nun angegeben werden, ob immer der neueste Tag zuerst angezeigt wird. Das hat Auswirkungen auf die Tagesgrafik, die Tagesstatistik und die Wochengrafik. In den Formularoptionen wurde die entsprechende Option entfernt." : MessageLookupByLibrary.simpleMessage("Teraz môžete vo výstupných parametroch určiť, či sa vždy zobrazí vždy prvý deň. To má vplyv na denný graf, denné štatistiky a týždenný graf. Zodpovedajúca voľba bola odstránená z možností formulára."),
    "In den Ausgabeparametern gibt es eine Checkbox, mit der man dafür sorgen kann, dass alle Optionen, die auf einen Loop hinweisen würden, für diese Ausgabe deaktiviert werden. Das sind die Optionen, die mit einem Kreis (=Loop) markiert sind." : MessageLookupByLibrary.simpleMessage("In den Ausgabeparametern gibt es eine Checkbox, mit der man dafür sorgen kann, dass alle Optionen, die auf einen Loop hinweisen würden, für diese Ausgabe deaktiviert werden. Das sind die Optionen, die mit einem Kreis (=Loop) markiert sind."),
    "In den Einstellungen gibt es einen Regler, der festlegt, wie gross die erzeugten PDF-Dateien maximal sein dürfen. Wenn nur ein leeres PDF erzeugt wird, dann sollte dieser Regler weiter nach links geschoben werden, um die Dateigrösse zu verringern." : MessageLookupByLibrary.simpleMessage("V nastaveniach je posuvník, ktorý určuje, aké veľké by mali byť vygenerované súbory PDF. Ak sa vytvorí iba prázdny súbor PDF, tento posúvač by sa mal posúvať ďalej doľava, aby sa zmenšila veľkosť súboru."),
    "In den Formularen Profil und Basalrate gibt es eine neue Option \"Profil \'NR Profil\' verwenden\". Normalerweise wird das zu verwendende Profil automatisch anhand des angegebenen Zeitraums ermittelt. Hiermit kann das unterbunden werden und ein Profil mit dem Namen \"NR Profil\" wird gesucht. Wenn dieses gefunden wird, dann wird das ausgegeben. Wenn es nicht gefunden wird, wird ein Text ausgegeben, der erklärt, wo man das einstellen kann." : MessageLookupByLibrary.simpleMessage("In den Formularen Profil und Basalrate gibt es eine neue Option \"Profil \'NR Profil\' verwenden\". Normalerweise wird das zu verwendende Profil automatisch anhand des angegebenen Zeitraums ermittelt. Hiermit kann das unterbunden werden und ein Profil mit dem Namen \"NR Profil\" wird gesucht. Wenn dieses gefunden wird, dann wird das ausgegeben. Wenn es nicht gefunden wird, wird ein Text ausgegeben, der erklärt, wo man das einstellen kann."),
    "In den Optionen von Formularen, in denen man Spalten ein- und ausblenden kann, wird nun angezeigt, wieviele Spalten noch verfügbar sind." : MessageLookupByLibrary.simpleMessage("In den Optionen von Formularen, in denen man Spalten ein- und ausblenden kann, wird nun angezeigt, wieviele Spalten noch verfügbar sind."),
    "In den Optionen zur Tagesgrafik gibt es jetzt die Möglichkeit, den oberen Wert für die Kohlenhydrate festzulegen. Das kann bei hohen COB-Werten die Skalierung verbessern." : MessageLookupByLibrary.simpleMessage("In den Optionen zur Tagesgrafik gibt es jetzt die Möglichkeit, den oberen Wert für die Kohlenhydrate festzulegen. Das kann bei hohen COB-Werten die Skalierung verbessern."),
    "In der Analyse können die Prozentzahlen für die Zielbereiche mit Nachkommazahl angezeigt werden. Das verringert die Differenz zu 100%, wenn man sie zusammenzählt. Der verbleibende Rest sind Rundungsdifferenzen." : MessageLookupByLibrary.simpleMessage("V analýze môžu byť percentá pre cieľové oblasti zobrazené s desatinnými miestami. To zníži rozdiel na 100%, keď ich sčítate. Zvyšok sú zaokrúhlením rozdielov."),
    "In der Auswertung gibt es eine neue Option, um den Standardbereich feiner abzustufen. Dort werden dann zusätzlich sehr hohe Werte und sehr niedrige Werte angezeigt." : MessageLookupByLibrary.simpleMessage("Pri hodnotení existuje nová možnosť doladenia štandardného rozsahu. Tam sa zobrazujú veľmi vysoké a veľmi nízke hodnoty."),
    "In der Auswertung können die Angaben für Material (Katheter, Sensor, Ampulle) mit Nachkommastellen angezeigt werden." : MessageLookupByLibrary.simpleMessage("Pri hodnotení sa môžu informácie o materiáli (katéter, snímač, ampulka) zobraziť s desatinnými miestami."),
    "In der Kachelansicht können die Parameter aller ausgewählten Seiten zusammen in einer Liste eingestellt werden. Dazu gibt es im Titelbereich der Parameterliste neben dem Schliessen-Button einen zusätzlichen Button, mit dem man zwischen den beiden Möglichkeiten umschalten kann." : MessageLookupByLibrary.simpleMessage("V zobrazení dlaždíc možno parametre všetkých vybratých stránok nastaviť spolu v zozname. Na tento účel existuje ďalšie tlačidlo v nadpisovej oblasti zoznamu parametrov vedľa tlačidla Zatvoriť, pomocou ktorého môžete prepínať medzi týmito dvoma možnosťami."),
    "In der Legende unter der Tagesgrafik wird die Summe der Kohlenhydrate für den Tag angezeigt." : MessageLookupByLibrary.simpleMessage("Legenda pod denným grafom zobrazuje súčet sacharidov za deň."),
    "In der Sprachauswahl ist jetzt auch Slowakisch verfügbar." : MessageLookupByLibrary.simpleMessage("Vo výbere jazyka je teraz k dispozícii aj slovenský jazyk."),
    "In der Tabelle im Glukose Perzentil Diagramm kann man nun zwei neue Spalten ausgeben lassen. Diese beinhalten die durchschnittlichen Kohlenhydrate und Insulineinheiten." : MessageLookupByLibrary.simpleMessage("In der Tabelle im Glukose Perzentil Diagramm kann man nun zwei neue Spalten ausgeben lassen. Diese beinhalten die durchschnittlichen Kohlenhydrate und Insulineinheiten."),
    "In der Tagesgrafik gibt es die Option, HTML-Notizen zu unterdrücken. Manche Uploader schreiben in die Notizen komplette HTML-Seiten rein, was im PDF extrem schlecht darstellbar ist. Deswegen kann man diese mit Setzen der Option ausblenden." : MessageLookupByLibrary.simpleMessage("V dennom prehľade je nastavenie na potlačenie zobrazovania HTML poznámok. Mnohí užívateľia píšu do poznámok celé HTML stránky, čo sa vo formáte PDF zobrazuje veľmi rušivo. Preto je tu možnosť ich zobrazovanie úplne vypnúť."),
    "In der Tagesgrafik gibt es eine Option, die berechneten IE für aufgenommene Kohlenhydrate anzeigen zu lassen. Der Wert, der unmittelbar unter den Kohlenhydraten angezeigt wird, entspricht dem Bolus, der zu diesem Zeitpunkt für diese Kohlenhydratmenge abgegeben werden sollte. Dieser Wert kann niedriger als der tatsächlich abgegebene Wert ausfallen, weil für die Insulinabgabe noch IOB und andere Faktoren berücksichtigt werden." : MessageLookupByLibrary.simpleMessage("V dennom grafe je možnosť zobraziť vypočítaný IE pre prehltnuté sacharidy. Hodnota zobrazená bezprostredne pod sacharidmi je bolus, ktorý by sa mal dodávať pre toto množstvo sacharidov v tom čase. Táto hodnota môže byť nižšia ako skutočná dodaná hodnota, pretože pri podaní inzulínu sa berie do úvahy IOB a ďalšie faktory."),
    "In der Tagesgrafik gibt es eine Option, mit dem man die verschiedenen Arten der Boli kenntlich machen lassen kann. Wenn diese Option gesetzt ist, wird ein Bolus, der zu einer Mahlzeit abgegeben wurde mit einer anderen Farbe markiert, als ein Bolus zur Korrektur. In der Legende werden dann Korrektur-, Mahlzeiten-Boli und SMB getrennt angezeigt." : MessageLookupByLibrary.simpleMessage("V dennom grafe je možnosť, ktorá sa môže použiť na identifikáciu rôznych typov bolusov. Ak je táto možnosť nastavená, bolus podaný jedlu sa na opravu označí inou farbou ako bolus. Legenda potom zobrazuje Korekcie, Jedlo Boli a SMB osobitne."),
    "In der Tagesgrafik gibt es eine Option, mit der man sich die erfassten Trainingsdaten anzeigen lassen kann. Diese werden dann am unteren Rand über der Tabelle der Glukosewerte eingefügt." : MessageLookupByLibrary.simpleMessage("V dennej grafike je možnosť, pomocou ktorej môžete zobraziť zaznamenané školiace údaje. Tieto sa potom vložia do dolnej časti tabuľky nad hodnoty glukózy."),
    "In der Tagesgrafik gibt es eine neue Option, um die Rundung der Insulinwerte auf die maximale Genauigkeit im Profil zu unterbinden. Das macht da Sinn, wo entweder kein Profil vorhanden ist, oder wo Werte mit höherer Genauigkeit als im Profil eingegeben werden." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik gibt es eine neue Option, um die Rundung der Insulinwerte auf die maximale Genauigkeit im Profil zu unterbinden. Das macht da Sinn, wo entweder kein Profil vorhanden ist, oder wo Werte mit höherer Genauigkeit als im Profil eingegeben werden."),
    "In der Tagesgrafik kann die Anzeige der SMB nun ausgeblendet werden." : MessageLookupByLibrary.simpleMessage("V dennej grafike je teraz možné zobrazenie SMB skryť."),
    "In der Tagesgrafik kann jetzt bei Auswahl der Tages Basalrate angegeben werden, dass der Name des Profils angezeigt wird, das am Beginn des Tages aktiv war. Dieser wird dann so angezeigt, wie ein Profilwechsel um 0 Uhr." : MessageLookupByLibrary.simpleMessage("Pri výbere dennej bazálnej dávky je teraz možné v dennom grafe určiť, že sa zobrazí názov profilu, ktorý bol aktívny na začiatku dňa. Toto sa potom zobrazí ako zmena profilu o 0 hod."),
    "In der Tagesgrafik kann man nun die IOB (Insulin On Board) und COB (Carbs On Board) anzeigen lassen. Die IOB werden am oberen Rand angezeigt, wo auch die Bolusabgaben dargestellt werden, die COB am unteren Rand, wo auch die Kohlenhydrate dargestellt werden." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik kann man nun die IOB (Insulin On Board) und COB (Carbs On Board) anzeigen lassen. Die IOB werden am oberen Rand angezeigt, wo auch die Bolusabgaben dargestellt werden, die COB am unteren Rand, wo auch die Kohlenhydrate dargestellt werden."),
    "In der Tagesgrafik kann man nun die temporären Overrides von iLoop auch anzeigen lassen. Es wird der Grund angezeigt. Für genauere Informationen kann das so wie bisher auch im Protokoll angezeigt werden." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik kann man nun die temporären Overrides von iLoop auch anzeigen lassen. Es wird der Grund angezeigt. Für genauere Informationen kann das so wie bisher auch im Protokoll angezeigt werden."),
    "In der Tagesgrafik kann nun angezeigt werden, wie lange die Basalrate auf 0% lief." : MessageLookupByLibrary.simpleMessage("V dennom grafe je teraz možné zobraziť ako dlho bola bazálna dávka inzulínu na 0%."),
    "In der Tagesgrafik werden Profilwechsel nicht mehr angezeigt, wenn sich das Profil beim Wechsel nicht geändert hat. iOSLoop fügt in die Nightscoutdatensätze sehr häufig neue Profile ein, die keine Änderung beinhalten, weil dort zusätzlich andere Konfigurationseinstellungen gespeichert werden." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik werden Profilwechsel nicht mehr angezeigt, wenn sich das Profil beim Wechsel nicht geändert hat. iOSLoop fügt in die Nightscoutdatensätze sehr häufig neue Profile ein, die keine Änderung beinhalten, weil dort zusätzlich andere Konfigurationseinstellungen gespeichert werden."),
    "In der Tagesgrafik werden die Insulinangaben jetzt kleiner dargestellt, wenn die Basalrate eine Genauigkeit von mehr als 2 Nachkommastellen hat." : MessageLookupByLibrary.simpleMessage("V dennom grafe sa teraz zobrazujú informácie o inzulíne menšie, ak bazálna rýchlosť má presnosť viac ako 2 desatinné miesta."),
    "In der Tagesgrafik werden jetzt auch Blutzuckermessungen angezeigt. Sie werden als rote Quadrate dargestellt und die zugehörigen Werte in der Tabelle unterhalb der Grafik werden ebenfalls mit roter Schrift angezeigt." : MessageLookupByLibrary.simpleMessage("Denný graf teraz zobrazuje aj merania glykémie. Zobrazujú sa ako červené štvorce a súvisiace hodnoty v tabuľke pod grafom sa zobrazujú aj červenou farbou."),
    "In der Tagesgrafik werden nun SMBs auch angezeigt, wenn die Option für die Darstellung von Insulin akitivert wurde. Man kann festlegen, ob die SMBs an der Glukosekurve oder am Zielwert angezeigt werden." : MessageLookupByLibrary.simpleMessage("Po aktivácii možnosti inzulínu sa SMB zobrazujú aj v dennom grafe. Môžete určiť, či sa SMB zobrazia na glukózovej krivke alebo na cieľovej hodnote."),
    "In der Tagesgrafik werden nun auch Kohlenhydratkorrekturen angezeigt." : MessageLookupByLibrary.simpleMessage("Korekcie sacharidov sa teraz zobrazujú v dennom grafe."),
    "In der Tagesgrafik werden nun auch Reservoirwechsel angezeigt." : MessageLookupByLibrary.simpleMessage("V dennom grafe sa teraz zobrazujú zmeny zásobníka."),
    "In der Tagesgrafik werden nun auch bei Anzeige des Zielwertes die temporären Ziele berücksichtigt." : MessageLookupByLibrary.simpleMessage("Pri zobrazení cieľovej hodnoty sa v dennom grafe zohľadňujú aj dočasné ciele."),
    "In der Tagesgrafik werden nun auch verzögerte Boli angezeigt." : MessageLookupByLibrary.simpleMessage("V dennom grafe sa teraz zobrazujú aj oneskorené bolusové dávky inzulínu."),
    "In der Tagesgrafik werden nun der geschätzte HbA1C und die prozentuale Menge an Bolusinsulin und Basalinsulin für den Tag angezeigt. Diese Anzeige erfolgt innerhalb der Legende, weshalb diese aktiviert sein muss, damit die Werte angezeigt werden." : MessageLookupByLibrary.simpleMessage("Denný graf teraz ukazuje odhadovanú HbA1C a percento bolusového inzulínu a bazálneho inzulínu za deň. Toto zobrazenie sa nachádza v legende, preto sa musí povoliť zobrazenie hodnôt."),
    "In der Tagesgrafik wird jetzt eine Tabelle mit halbstündigen Glukosewerten eingeblendet angezeigt. Diese kann über einen Parameter ausgeschaltet werden." : MessageLookupByLibrary.simpleMessage("Denný graf teraz zobrazuje tabuľku s polhodinovými hodnotami glukózy. Toto je možné vypnúť pomocou parametra."),
    "In der Tagesgrafik wurde \"Training\" in \"Bewegung\" umbenannt. Das passt besser zu den Einträgen in AAPS." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik wurde \"Training\" in \"Bewegung\" umbenannt. Das passt besser zu den Einträgen in AAPS."),
    "In der Tagesgraphic werden jetzt Insulinwerte und Kohlenhydratwerte zusammengefasst, wenn es mehrere innerhalb einer Stunde gibt. Die Balken werden nach wie vor für jeden Wert einzeln ausgegeben. Auf diese Art sollte es keine überlappende Ausgabe der Werte mehr geben. Die zusammengefassten Werte werden in eckigen Klammern ausgegeben, um anzuzeigen, dass hier Werte aufsummiert wurden." : MessageLookupByLibrary.simpleMessage("Denná grafika teraz sčítava hladiny inzulínu a sacharidov v prípade, že ich je niekoľko za hodinu. Stĺpce sa stále zobrazujú jednotlivo pre každú hodnotu. Týmto spôsobom by sa už nemalo stať, že sa zobrazené hodnoty budú prekrývať. Súhrnné hodnoty sú zobrazené v hranatých zátvorkách, čo znamená, že hodnoty tu boli sčítané."),
    "In der Tagesstatistik können nun Spalten für TDD und Kohlenhydrate angezeigt werden." : MessageLookupByLibrary.simpleMessage("V dennej štatistike môžu byť zobrazené len stĺpce CDD (celkový denný inzulín) a sacharidy."),
    "In der Tagesstatistik und in den täglichen Grafiken werden jetzt zum Datum die Wochentage mit angezeigt." : MessageLookupByLibrary.simpleMessage("V dennej štatistike a dennej grafike sa teraz zobrazujú dni v týždni spolu s dátumom."),
    "In der Tagesstatistik werden nun in der Summenzeile die Durchschnittswerte für einige Werte zusätzlich angezeigt." : MessageLookupByLibrary.simpleMessage("In der Tagesstatistik werden nun in der Summenzeile die Durchschnittswerte für einige Werte zusätzlich angezeigt."),
    "In der Tagesstatistik wurde die Spalte Varianzkoeffizient hinzugefügt (VarK)." : MessageLookupByLibrary.simpleMessage("V dennej štatistike bol pridaný stĺpec Variance Coefficient (VarK)."),
    "In der Tagesstatistik wurden bei unvollständigen Daten teilweise fehlerhafte Werte ausgegeben. Das wurde korrigiert." : MessageLookupByLibrary.simpleMessage("V denných štatistikách sa zobrazovali čiastočne neúplné údaje. Toto bolo opravené."),
    "In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen." : MessageLookupByLibrary.simpleMessage("V premennej ENABLE sa musí vyskytovať slovo „cors“, aby k týmto údajom mali prístup aj externé nástroje, ako je tento program."),
    "Information" : MessageLookupByLibrary.simpleMessage("Informácia"),
    "Initiale Version, alles ist neu!" : MessageLookupByLibrary.simpleMessage("Počiatočná verzia, všetko je nové!"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("Inzulín"),
    "Insulin Kohlenhydrate Verhältnis (ICR)" : MessageLookupByLibrary.simpleMessage("Pomer inzulínu a sacharidov (ICR)"),
    "Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE" : MessageLookupByLibrary.simpleMessage("Pomer inzulínu a sacharidov (ICR)\nX g sacharidov na 1 U"),
    "Insulin Sensitivitäts Faktoren (ISF)" : MessageLookupByLibrary.simpleMessage("Faktor citlivosti na inzulín (ISF)"),
    "Insulin auf maximale Stellen im Profil runden" : MessageLookupByLibrary.simpleMessage("Zaokrúhlite inzulín na maximum v profile"),
    "Insulin-Quelle" : MessageLookupByLibrary.simpleMessage("Zdroj inzulínu"),
    "Irgendwas zum Einstellen" : MessageLookupByLibrary.simpleMessage("Irgendwas zum Einstellen"),
    "Ja" : MessageLookupByLibrary.simpleMessage("áno"),
    "Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember" : MessageLookupByLibrary.simpleMessage(" január|február|marec|apríl|máj|jún|júl|august|september|október|november|december"),
    "Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez" : MessageLookupByLibrary.simpleMessage("jan|feb|mar|apr|máj|jún|júl|sep|okt|nov|dec"),
    "KH" : MessageLookupByLibrary.simpleMessage("S"),
    "Kalibrierung und blutige Messungen" : MessageLookupByLibrary.simpleMessage("Kalibrácia a merania z krvi"),
    "Katheterwechsel" : MessageLookupByLibrary.simpleMessage("výmena katétera"),
    "Keine" : MessageLookupByLibrary.simpleMessage("žiadny"),
    "Keine Änderung" : MessageLookupByLibrary.simpleMessage("Bez zmeny"),
    "Klein" : MessageLookupByLibrary.simpleMessage("malý"),
    "Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("sacharidy"),
    "Kohlenhydrate und Bolusinsulin werden jetzt in den täglichen Grafiken angezeigt" : MessageLookupByLibrary.simpleMessage("Sacharidy a bolusový inzulín sa teraz zobrazujú v denných grafoch"),
    "Korrektur für Datenänderungen in AAPS 3.0" : MessageLookupByLibrary.simpleMessage("Opravy zmien údajov v AAPS 3.0"),
    "Lade die Basisdaten..." : MessageLookupByLibrary.simpleMessage("Načítať základné údaje..."),
    "Leer" : MessageLookupByLibrary.simpleMessage("Leer"),
    "Legende" : MessageLookupByLibrary.simpleMessage("legenda"),
    "Legende für Katheter- und Sensorwechsel zur Tagesgrafik hinzugefügt." : MessageLookupByLibrary.simpleMessage("Do denného grafu bola pridaná legenda o zmenách katétrov a senzorov."),
    "Letzte 2 Tage" : MessageLookupByLibrary.simpleMessage("Posledné 2 dni"),
    "Letzte 2 Wochen" : MessageLookupByLibrary.simpleMessage("Posledné 2 týždne"),
    "Letzte 3 Monate" : MessageLookupByLibrary.simpleMessage("Posledné 3 mesiace"),
    "Letzte 3 Tage" : MessageLookupByLibrary.simpleMessage("Posledné 3 dni"),
    "Letzte 3 Wochen" : MessageLookupByLibrary.simpleMessage("Posledné 3 týždne"),
    "Letzte Unterzuckerung" : MessageLookupByLibrary.simpleMessage("Posledná hypoglykémia"),
    "Letzte Woche" : MessageLookupByLibrary.simpleMessage("Minulý týždeň"),
    "Letzten Messwert in der Titelzeile anzeigen" : MessageLookupByLibrary.simpleMessage("Zobraziť poslednú nameranú hodnotu v záhlaví"),
    "Letzter Behandlungswert" : MessageLookupByLibrary.simpleMessage("Posledná hodnota ošetrenia"),
    "Letzter Glukosewert" : MessageLookupByLibrary.simpleMessage("Posledná hodnota glykémie"),
    "Letzter Monat" : MessageLookupByLibrary.simpleMessage("Minulý mesiac"),
    "Linien um Bereiche" : MessageLookupByLibrary.simpleMessage("Linien um Bereiche"),
    "Loopdaten verbergen (die auf diese Art markierten Optionen ignorieren)" : MessageLookupByLibrary.simpleMessage("Skryť dáta o uzavretej smyčke (nezobrazí tohto týkajúce sa dáta)"),
    "Löschen" : MessageLookupByLibrary.simpleMessage("Odstrániť"),
    "Mahlzeitenbolus_bolus to handle a meal" : MessageLookupByLibrary.simpleMessage("Bolus k jedlu"),
    "Man kann jetzt mehrere Benutzer anlegen. Das ist nützlich, um mehrere Nightscout-Instanzen auszuwerten (z.B. für Ärzte, Betreuer oder den Entwickler dieser Software)" : MessageLookupByLibrary.simpleMessage("Teraz môžete vytvoriť viac používateľov. Toto je užitočné na vyhodnotenie viacerých inštancií Nightscout (napr. Pre lekárov, správcov alebo vývojárov tohto softvéru)."),
    "Material mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Materiál s desatinnými miestami"),
    "Max" : MessageLookupByLibrary.simpleMessage("Max"),
    "Max Mustermann" : MessageLookupByLibrary.simpleMessage("Janko Mrkvička"),
    "Maximaler Glukosewert in Grafiken:" : MessageLookupByLibrary.simpleMessage("Maximálna hodnota glykémie v grafoch:"),
    "Maximalwert für Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Maximalwert für Kohlenhydrate"),
    "Median" : MessageLookupByLibrary.simpleMessage("Medián"),
    "Mehr gibt es dazu eigentlich nicht zu sagen." : MessageLookupByLibrary.simpleMessage("O tom nie je viac čo povedať."),
    "Mehrfache Datensätze kennzeichnen" : MessageLookupByLibrary.simpleMessage("Označte viac záznamov"),
    "Menü" : MessageLookupByLibrary.simpleMessage("Menu"),
    "Mess-\nwerte" : MessageLookupByLibrary.simpleMessage("Hod-\nnoty"),
    "Min" : MessageLookupByLibrary.simpleMessage("Min"),
    "Mit Google Drive synchronisieren" : MessageLookupByLibrary.simpleMessage("Synchronizácia s Diskom Google"),
    "Mittel-\nwert" : MessageLookupByLibrary.simpleMessage("Prie-\nmer"),
    "Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|Sonntag" : MessageLookupByLibrary.simpleMessage("Pondelok|Utorok|Streda|Štvrtok|Piatok|Sobota|Nedeľa"),
    "Mo|Di|Mi|Do|Fr|Sa|So" : MessageLookupByLibrary.simpleMessage("Po|Ut|St|Št|Pia|So|Ne"),
    "Nacht (21:00 - 05:59)" : MessageLookupByLibrary.simpleMessage("Noc (21:00 - 05:59)"),
    "Nahe zusammen liegende Werte aufsummieren" : MessageLookupByLibrary.simpleMessage("Sčitovať blízko seba ležiace hodnoty"),
    "Name" : MessageLookupByLibrary.simpleMessage("Meno"),
    "Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat." : MessageLookupByLibrary.simpleMessage("Meno, dátum narodenia, inzulín a dátum začiatku diabetu môžu byť teraz ponechané prázdne bez toho, aby to malo negatívny vplyv na prezentáciu v PDF."),
    "Nein" : MessageLookupByLibrary.simpleMessage("žiadny"),
    "Neue Option im Profil, um fortlaufende Zeiten mit gleichen Werten zu einem Eintrag zusammen zu fassen." : MessageLookupByLibrary.simpleMessage("Nová možnosť v profile kombinovať po sebe idúce časy s rovnakými hodnotami do záznamu."),
    "Neuer Parameter für die Tagesgrafik, der festlegt, ob die Linien für die Notizen unter der Grafik bis zur Glukosekurve gezeichnet werden sollen oder nicht." : MessageLookupByLibrary.simpleMessage("Nový parameter denného grafu, ktorý určuje, či sa majú kresliť čiary pre poznámky pod grafom až po glukózovú krivku."),
    "Neues PDF für eine Wochengrafik hinzugefügt, auf der die Glukosekurven der Woche übereinander gelegt werden." : MessageLookupByLibrary.simpleMessage("Pridaný nový PDF pre týždenný graf prekrývajúci týždenné glukózové krivky."),
    "Neuester Tag zuerst" : MessageLookupByLibrary.simpleMessage("Najnovší deň ako prvý"),
    "Niedrigster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Najnižšia hodnota za dané obdobie"),
    "Night-Watch" : MessageLookupByLibrary.simpleMessage("Night-Watch"),
    "Night-Watch zeigt nun auch Werte an, wenn diese von mehreren Uploadern innerhalb kurzer Zeit mehrfach in Nightscout gespeichert wurden. Das sollte man zwar möglichst vermeiden, aber nun kann Night-Watch auch damit umgehen." : MessageLookupByLibrary.simpleMessage("Night-Watch zeigt nun auch Werte an, wenn diese von mehreren Uploadern innerhalb kurzer Zeit mehrfach in Nightscout gespeichert wurden. Das sollte man zwar möglichst vermeiden, aber nun kann Night-Watch auch damit umgehen."),
    "Nightscout Berichte" : MessageLookupByLibrary.simpleMessage("Nightscout správy"),
    "Nightscout Reporter ist nun auch grösstenteils in Spanisch und Polnisch verfügbar. Entsprechende Buttons wurden dem Hauptmenü hinzugefügt. Danke an die fleissigen Übersetzer :)." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter je teraz väčšinou k dispozícii aj v španielčine a poľštine. Zodpovedajúce tlačidlá boli pridané do hlavnej ponuky. Vďaka usilovným prekladateľom :)."),
    "Nightscout Reporter kann nun auch auf Portugiesisch verwendet werden." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter kann nun auch auf Portugiesisch verwendet werden."),
    "Nightscout Reporter kann nun auch in Japanisch verwendet werden." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter môžete teraz používať v japončine."),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("Stránka Nightscout"),
    "Nightscout Url in der Fusszeile des PDFs anzeigen" : MessageLookupByLibrary.simpleMessage("Vytlačiť Nightscout URL na konci každej PDF stránky"),
    "Normal" : MessageLookupByLibrary.simpleMessage("Normál"),
    "Notiz" : MessageLookupByLibrary.simpleMessage("poznámka"),
    "Notiz-Linien bis zur Kurve zeichnen" : MessageLookupByLibrary.simpleMessage("Kóty poznámok vyviesť až na krivku"),
    "Notizen" : MessageLookupByLibrary.simpleMessage("poznámky"),
    "Nur letzte Basalrate ausgeben" : MessageLookupByLibrary.simpleMessage("Zobraziť len poslednú bazálnu hodnotu"),
    "Nur letztes Profil ausgeben" : MessageLookupByLibrary.simpleMessage("Zobraziť len posledný profil"),
    "Nur mehrfache Datensätze anzeigen" : MessageLookupByLibrary.simpleMessage("Nur mehrfache Datensätze anzeigen"),
    "Ok" : MessageLookupByLibrary.simpleMessage("ok"),
    "Optionen" : MessageLookupByLibrary.simpleMessage("Možnosti"),
    "Optionen für die PDFs, die eine eindeutige Beziehung zu einem laufenden Loop haben, werden nun in Blau dargestellt. Das vereinfacht es, PDFs zu erstellen, denen man nicht ohne Weiteres entnehmen kann, dass ein Loop vorliegt. Dazu müssen nur die Haken bei den blauen Optionen entfernt werden." : MessageLookupByLibrary.simpleMessage("Možnosti PDF, ktoré majú jedinečný vzťah k bežiacej slučke, sa teraz zobrazujú modrou farbou. To uľahčuje vytváranie súborov PDF, ktoré nie je možné ľahko odvodiť z toho, že existuje slučka. Všetko, čo musíte urobiť, je odškrtnúť modré možnosti."),
    "PDF anzeigen" : MessageLookupByLibrary.simpleMessage("Zobraziť PDF"),
    "PDF erneut erzeugen" : MessageLookupByLibrary.simpleMessage("Znovu vytvoriť PDF"),
    "PDF erzeugen" : MessageLookupByLibrary.simpleMessage("Vytvorte PDF"),
    "PDF für Profildaten" : MessageLookupByLibrary.simpleMessage("PDF pre profilové údaje"),
    "PDF herunterladen (bei einigen Browsern benötigt)" : MessageLookupByLibrary.simpleMessage("Stiahnite si PDF (potrebné v niektorých prehliadačoch)"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("Otvorte PDF v rovnakom okne"),
    "PGR" : MessageLookupByLibrary.simpleMessage("PGR"),
    "Patient Glykämischer Status (PGS)" : MessageLookupByLibrary.simpleMessage("Glykemický stav pacienta (PGS)"),
    "Pausiert" : MessageLookupByLibrary.simpleMessage("Pozastavené"),
    "Polski" : MessageLookupByLibrary.simpleMessage("Polski"),
    "Português" : MessageLookupByLibrary.simpleMessage("Portugalsky"),
    "Problem auf GitHub melden" : MessageLookupByLibrary.simpleMessage("Nahláste problém na strákach projektu (GitHub)"),
    "Profil" : MessageLookupByLibrary.simpleMessage("Profil"),
    "Profil-Basalrate" : MessageLookupByLibrary.simpleMessage("Bazálny pomer v profile"),
    "Profileinstellungen" : MessageLookupByLibrary.simpleMessage("nastavenie profilu"),
    "Profilwechsel" : MessageLookupByLibrary.simpleMessage("Zmena profilu"),
    "Protokoll" : MessageLookupByLibrary.simpleMessage("Protokol"),
    "Prozent" : MessageLookupByLibrary.simpleMessage("Percento"),
    "Quelle: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)" : MessageLookupByLibrary.simpleMessage("Zdroj: Vigersky, RA, Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). Komplexný glukózový päťuholník: Glukózovo-centrická kompozitná metrika na hodnotenie glykemickej kontroly u osôb s cukrovkou. Journal of Diabetes Science and Technology, 12 (1), 114-123. (https://doi.org/10.1177/1932296817718561)"),
    "Querformat" : MessageLookupByLibrary.simpleMessage("Poležiačky"),
    "Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse." : MessageLookupByLibrary.simpleMessage("Poradie strán PDF sa zmenilo - percentuálny diagram teraz prichádza po analýze."),
    "Reservoirwechsel" : MessageLookupByLibrary.simpleMessage("výmena nádrže"),
    "SMB" : MessageLookupByLibrary.simpleMessage("SMB"),
    "SMB Werte anzeigen" : MessageLookupByLibrary.simpleMessage("Zobraziť hodnoty SMB"),
    "SMB an der Kurve platzieren" : MessageLookupByLibrary.simpleMessage("Umiestniť SMB na krivku"),
    "Schliessen" : MessageLookupByLibrary.simpleMessage("Zatvoriť"),
    "Schliessen Button im Nachrichtenbereich hinzugefügt." : MessageLookupByLibrary.simpleMessage("Tlačidlo Zavrieť bolo pridané do oblasti správ."),
    "Schritte" : MessageLookupByLibrary.simpleMessage("Schritte"),
    "Sechs Monate vorher" : MessageLookupByLibrary.simpleMessage("Šesť mesiacov dozadu"),
    "Sechzehn" : MessageLookupByLibrary.simpleMessage("šestnásť"),
    "Sekunden anzeigen" : MessageLookupByLibrary.simpleMessage("Zobraziť sekundy"),
    "Sensorwechsel" : MessageLookupByLibrary.simpleMessage("výmena snímača"),
    "Shortcut anlegen" : MessageLookupByLibrary.simpleMessage("Vytvoriť odkaz"),
    "Shortcut ändern" : MessageLookupByLibrary.simpleMessage("Odkaz zmeniť"),
    "Shortcuts" : MessageLookupByLibrary.simpleMessage("Odkazy"),
    "Skala" : MessageLookupByLibrary.simpleMessage("Skala"),
    "Slovenský" : MessageLookupByLibrary.simpleMessage("Slovenský"),
    "Soll der Benutzer mit der URL" : MessageLookupByLibrary.simpleMessage("Mal by užívateľ s URL"),
    "Soll der Shortcut mit der Bezeichnung" : MessageLookupByLibrary.simpleMessage("Soll der Shortcut mit der Bezeichnung"),
    "Soll der Zeitraum" : MessageLookupByLibrary.simpleMessage("Soll der Zeitraum"),
    "Soll die Einheit zur Glukosemessung" : MessageLookupByLibrary.simpleMessage("Soll die Einheit zur Glukosemessung"),
    "Soll die Formularauswahl mit der aktuellen Auswahl ersetzt werden?" : MessageLookupByLibrary.simpleMessage("Soll die Formularauswahl mit der aktuellen Auswahl ersetzt werden?"),
    "Soll die URL" : MessageLookupByLibrary.simpleMessage("Soll die URL"),
    "Spalte Basal anzeigen" : MessageLookupByLibrary.simpleMessage("Spalte Basal anzeigen"),
    "Spalte Bolus anzeigen" : MessageLookupByLibrary.simpleMessage("Spalte Bolus anzeigen"),
    "Spalte HbA1c" : MessageLookupByLibrary.simpleMessage("Stĺpec HbA1c"),
    "Spalte HbA1c zu Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Do dennej štatistiky bol pridaný stĺpec HbA1c"),
    "Spalte IE anzeigen" : MessageLookupByLibrary.simpleMessage("Spalte IE anzeigen"),
    "Spalte KH anzeigen" : MessageLookupByLibrary.simpleMessage("Spalte KH anzeigen"),
    "Spalte Kohlenhydrate anzeigen" : MessageLookupByLibrary.simpleMessage("Spalte Kohlenhydrate anzeigen"),
    "Spalte Max anzeigen" : MessageLookupByLibrary.simpleMessage("Spalte Max anzeigen"),
    "Spalte Messwerte" : MessageLookupByLibrary.simpleMessage("Namerané hodnoty v stĺpci"),
    "Spalte Messwerte anzeigen" : MessageLookupByLibrary.simpleMessage("Spalte Messwerte anzeigen"),
    "Spalte Min anzeigen" : MessageLookupByLibrary.simpleMessage("Spalte Min anzeigen"),
    "Spalte Mittelwert anzeigen" : MessageLookupByLibrary.simpleMessage("Spalte Mittelwert anzeigen"),
    "Spalte Standardabweichung" : MessageLookupByLibrary.simpleMessage("Štandardná odchýlka stĺpca"),
    "Spalte Std.Abw. anzeigen" : MessageLookupByLibrary.simpleMessage("Spalte Std.Abw. anzeigen"),
    "Spalte Variationskoeffizient" : MessageLookupByLibrary.simpleMessage("Variačný koeficient stĺpca"),
    "Spalten Min / Max anzeigen" : MessageLookupByLibrary.simpleMessage("Spalten Min / Max anzeigen"),
    "Spalten Perzentile" : MessageLookupByLibrary.simpleMessage("Percentá v stĺpci"),
    "Spalten für 10% und 90% anzeigen" : MessageLookupByLibrary.simpleMessage("Zobraziť stĺpce pre 10% a 90%"),
    "Spaltenbreite der Informationen in der Analyse erhöht" : MessageLookupByLibrary.simpleMessage("Šírka stĺpca informácií v analýze sa zvýšila"),
    "Speichern" : MessageLookupByLibrary.simpleMessage("uložiť"),
    "Spenden" : MessageLookupByLibrary.simpleMessage("Obdarovať"),
    "Standard_theme selection - standard" : MessageLookupByLibrary.simpleMessage("Štandardný"),
    "Standardabweichung" : MessageLookupByLibrary.simpleMessage("Štandardná odchýlka"),
    "Standardabweichung statt Anzahl" : MessageLookupByLibrary.simpleMessage("Štandardná odchýlka miesto počtu"),
    "Standardbereich mit feinerer Abstufung" : MessageLookupByLibrary.simpleMessage("Štandardný rad s jemnejšou gradáciou"),
    "Standardgrenzwerte" : MessageLookupByLibrary.simpleMessage("Štandardné limity"),
    "Startstunde" : MessageLookupByLibrary.simpleMessage("Začiatočná hodina"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("Std.\nDev."),
    "Stunden" : MessageLookupByLibrary.simpleMessage("hodiny"),
    "Stündliche Statistik" : MessageLookupByLibrary.simpleMessage("Hodinová štatistika"),
    "Summe" : MessageLookupByLibrary.simpleMessage("Suma"),
    "Summen für Bolus Insulin, Basalrate für den Tag und Basalrate aus dem Profil zur Tagesgrafik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Súčty pre bolusový inzulín, bazálna dávka za deň a bazálna dávka z profilu pridaného do denného grafu"),
    "Symbole (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Symboly (katétre atď.)"),
    "Synchronisierung aufheben" : MessageLookupByLibrary.simpleMessage("Zrušenie synchronizácie"),
    "TDD" : MessageLookupByLibrary.simpleMessage("CDD"),
    "TDD anzeigen" : MessageLookupByLibrary.simpleMessage("Zobraziť celkovú dennú dávku inzulínu"),
    "Tabelle" : MessageLookupByLibrary.simpleMessage("Tabuľka"),
    "Tabelle mit Glukosewerten" : MessageLookupByLibrary.simpleMessage("Tabuľka s hodnotami glukózy"),
    "Tag (08:00 - 17:59)" : MessageLookupByLibrary.simpleMessage("Deň (08:00 - 17:59)"),
    "Tages-Basalrate" : MessageLookupByLibrary.simpleMessage("Denný bazálny pomer"),
    "Tagesanalyse" : MessageLookupByLibrary.simpleMessage("Analýza dňa"),
    "Tagesbasalrate verwenden" : MessageLookupByLibrary.simpleMessage("Použiť dennú bazálnu dávku"),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("Denný graf"),
    "Tagesgrafikparameter zur Anzeige der Legende" : MessageLookupByLibrary.simpleMessage("Denné grafické parametre na zobrazenie legendy"),
    "Tagesgrafikparameter zur Anzeige von Notizen" : MessageLookupByLibrary.simpleMessage("Denné grafické parametre na zobrazovanie poznámok"),
    "Tagesgrafikparameter zur umgekehrten Sortierung hinzugefügt. Die Tage werden damit beginnend mit dem höchsten Datum ausgegeben." : MessageLookupByLibrary.simpleMessage("Pridané denné grafické parametre pre spätné triedenie. Dni sa trávia od najvyššieho dátumu."),
    "Tagesnamen in Grafik anzeigen" : MessageLookupByLibrary.simpleMessage("Zobraziť názvy dní v grafike"),
    "Tagesprofil" : MessageLookupByLibrary.simpleMessage("Denný profil"),
    "Tagesstartprofil anzeigen" : MessageLookupByLibrary.simpleMessage("Zobraziť profil počiatku dňa"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("Denná štatistika"),
    "Tagesstunden" : MessageLookupByLibrary.simpleMessage("Hodiny dňa"),
    "Tagestrend" : MessageLookupByLibrary.simpleMessage("Denný trend"),
    "Template" : MessageLookupByLibrary.simpleMessage("Šablóna"),
    "Temporäre Basalraten" : MessageLookupByLibrary.simpleMessage("Jednorazové dávky bazálu"),
    "Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt" : MessageLookupByLibrary.simpleMessage("Dočasné bazálne dávky s absolútnymi hodnotami sa zobrazujú správne"),
    "Temporäre Overrides" : MessageLookupByLibrary.simpleMessage("Temporárne prepísanie"),
    "Temporäre Profilwechsel werden jetzt erkannt und in der Tagesgrafik korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Dočasné zmeny profilu sú teraz rozpoznané a správne zobrazené v dennej grafike."),
    "Temporäre Ziele" : MessageLookupByLibrary.simpleMessage("Dočasné ciele"),
    "Titelangaben für Datumsbereiche auf den PDFs vereinheitlicht" : MessageLookupByLibrary.simpleMessage("Zjednotené informácie o názve pre rozsahy dátumov v súboroch PDF"),
    "Trend" : MessageLookupByLibrary.simpleMessage("Trend"),
    "Trendpfeil" : MessageLookupByLibrary.simpleMessage("Trendpfeil"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("hodiny"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("Čas"),
    "Umbruch" : MessageLookupByLibrary.simpleMessage("Umbruch"),
    "Unbegrenzt" : MessageLookupByLibrary.simpleMessage("neobmedzený"),
    "Unterzuckerungen anzeigen" : MessageLookupByLibrary.simpleMessage("Zozbraziť hypoglykémie"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("URL adresa Nightscout-API (napr. https://xxx.herokuapp.com)"),
    "VarK\nin %" : MessageLookupByLibrary.simpleMessage("VarK\nv%"),
    "Verbinde zu Google Drive..." : MessageLookupByLibrary.simpleMessage("Pripojiť sa k Disku Google ..."),
    "Verbinde zu Google..." : MessageLookupByLibrary.simpleMessage("Pripojiť sa ku Google ..."),
    "Verbindung zu Google Drive herstellen" : MessageLookupByLibrary.simpleMessage("Pripojte sa na Disk Google"),
    "Verbindung zu Google Drive trennen" : MessageLookupByLibrary.simpleMessage("Odpojiť sa od Disku Google"),
    "Vergleich" : MessageLookupByLibrary.simpleMessage("Porovnanie"),
    "Version" : MessageLookupByLibrary.simpleMessage("verzia"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("Distribúcia"),
    "Verteilung der Glukosewerte" : MessageLookupByLibrary.simpleMessage("Distribúcia hodnôt glykémie"),
    "Verzögerter Bolus" : MessageLookupByLibrary.simpleMessage("Oneskorený bolus"),
    "Vier" : MessageLookupByLibrary.simpleMessage("štyri"),
    "Viertes Quartal" : MessageLookupByLibrary.simpleMessage("Štvrtý štvrťrok"),
    "ViewWhatsnewComponent0__message_47" : m0,
    "ViewWhatsnewComponent0__message_6" : m1,
    "ViewWhatsnewComponent0__message_9" : m2,
    "Von" : MessageLookupByLibrary.simpleMessage("Od"),
    "Vor der Erzeugung eines PDFs wird noch ein Dialog angezeigt, auf dem man Parameter für alle erzeugten PDFs eingeben kann. Man kann dort den Zielbereich auf den Standardbereich festlegen, den Ärzte gerne sehen. Das hat Auswirkungen auf alle Darstellungen des Zielbereichs, sowie auf die Verteilung der Werte innerhalb und ausserhalb des Zielbereichs. Man kann dort auch den Maximalwert für Glukose in Grafiken festlegen. Dieser Wert wird in der Tagesgrafik, dem Perzentil Diagramm und der Wochengrafik verwendet. Wenn er auf \"Automatisch\" gesetzt wird, wird der Maximalwert wie bisher auch aus den vorhandenen Daten ermittelt. Ausserdem kann man hier angeben, ob man den aktuellen Zeitraum erzeugen möchte oder einen Vergleichszeitraum. Das ist nützlich, um dem Arzt die Gegenüberstellung von Werten der Vergangenheit und jetzt zu zeigen." : MessageLookupByLibrary.simpleMessage("Vor der Erzeugung eines PDFs wird noch ein Dialog angezeigt, auf dem man Parameter für alle erzeugten PDFs eingeben kann. Man kann dort den Zielbereich auf den Standardbereich festlegen, den Ärzte gerne sehen. Das hat Auswirkungen auf alle Darstellungen des Zielbereichs, sowie auf die Verteilung der Werte innerhalb und ausserhalb des Zielbereichs. Man kann dort auch den Maximalwert für Glukose in Grafiken festlegen. Dieser Wert wird in der Tagesgrafik, dem Perzentil Diagramm und der Wochengrafik verwendet. Wenn er auf \"Automatisch\" gesetzt wird, wird der Maximalwert wie bisher auch aus den vorhandenen Daten ermittelt. Ausserdem kann man hier angeben, ob man den aktuellen Zeitraum erzeugen möchte oder einen Vergleichszeitraum. Das ist nützlich, um dem Arzt die Gegenüberstellung von Werten der Vergangenheit und jetzt zu zeigen."),
    "Warnung" : MessageLookupByLibrary.simpleMessage("Varovanie"),
    "Warum werde ich mit mehreren Buttons genervt, statt eine einzelne PDF angezeigt zu kriegen?" : MessageLookupByLibrary.simpleMessage("Prečo som obťažovaný niekoľkými tlačidlami, namiesto toho, aby som získal jeden súbor PDF?"),
    "Was bisher geschah..." : MessageLookupByLibrary.simpleMessage("Čo sa doteraz podarilo ..."),
    "Wechsel" : MessageLookupByLibrary.simpleMessage("Výmena"),
    "Wechsel (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Zmena (katéter atď.)"),
    "Weihnachten_theme selection - christmas" : MessageLookupByLibrary.simpleMessage("Vianočný"),
    "Wenn Night-Watch beim Aufruf feststellt, dass noch keine Konfiguration vorgenommen wurde, dann kann man über das altbekannte Settingsfenster seine Einstellungen vornehmen. Das kommt vor, wenn man die Seite als WebApp installiert, da dort der Browserspeicher, in dem die Konfiguration gehalten wird, normalerweise noch nicht befüllt wurde." : MessageLookupByLibrary.simpleMessage("Wenn Night-Watch beim Aufruf feststellt, dass noch keine Konfiguration vorgenommen wurde, dann kann man über das altbekannte Settingsfenster seine Einstellungen vornehmen. Das kommt vor, wenn man die Seite als WebApp installiert, da dort der Browserspeicher, in dem die Konfiguration gehalten wird, normalerweise noch nicht befüllt wurde."),
    "Wenn Sonderzeichen in den Daten vorhanden sind (z.B. Smileys in den Notizen), führte das zu einem Absturz während der PDF-Erstellung. Das wurde behoben, indem diese Sonderzeichen aus der Ausgabe entfernt werden." : MessageLookupByLibrary.simpleMessage("Ak sú v údajoch prítomné špeciálne znaky (napr. Smajlíky v poznámkach), spôsobilo to pád pri vytváraní PDF. Toto bolo odstránené odstránením týchto špeciálnych znakov z výstupu."),
    "Wenn auf der Profilseite leere Spalten vorkommen, führt das nicht mehr zu einer leeren Seite." : MessageLookupByLibrary.simpleMessage("Wenn auf der Profilseite leere Spalten vorkommen, führt das nicht mehr zu einer leeren Seite."),
    "Wenn das erzeugte PDF zu gross wird, wird es nun auf mehrere PDF-Dateien aufgeteilt. In diesem Fall wird es nicht direkt geöffnet, sondern es wird eine Liste mit durchnummerierten Buttons angezeigt. Diese Buttons öffnen bei Betätigung das entsprechende PDF und erhalten einen Haken, um anzuzeigen, dass es geöffnet wurde. Das sollte es erleichtern, die PDFs nacheinander zu öffnen, weil normalerweise der Browser im Hintergrund verschwindet, wenn ein neues Fenster aufgemacht wird." : MessageLookupByLibrary.simpleMessage("Ak sa vygenerovaný súbor PDF stane príliš veľkým, bude teraz rozdelený do niekoľkých súborov PDF. V takom prípade sa neotvorí priamo, ale zobrazí zoznam očíslovaných tlačidiel. Tieto tlačidlá po stlačení otvoria zodpovedajúci súbor PDF a začiarknutím sa označí, že bol otvorený. Toto by malo uľahčiť otváranie súborov PDF naraz, pretože pri otvorení nového okna zvyčajne prehliadač na pozadí zmizne."),
    "Wenn der Zeitraum leer ist, wird der Button für die Auswahl deutlich markiert und in dem Dialog zur Auswahl wird in der Titelzeile ein Hinweis darauf angezeigt." : MessageLookupByLibrary.simpleMessage("Ak je perióda prázdna, tlačidlo pre výber je zreteľne označené av dialógovom okne pre výber sa v záhlaví zobrazuje náznak."),
    "Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet" : MessageLookupByLibrary.simpleMessage("Ak sa prahové hodnoty v Nightscout (BG_TARGET_BOTTOM a BG_TARGET_TOP) rovnajú 70 a 180, rozsah predvolených cieľov sa na stránke analýzy skryje."),
    "Wenn die Synchronisierung mit Google Drive aufgehoben wird, wird die Berechtigung nun korrekt zurückgesetzt. Wenn man sich danach wieder synchronisieren will, werden nochmal die Berechtigungen abgefragt." : MessageLookupByLibrary.simpleMessage("Wenn die Synchronisierung mit Google Drive aufgehoben wird, wird die Berechtigung nun korrekt zurückgesetzt. Wenn man sich danach wieder synchronisieren will, werden nochmal die Berechtigungen abgefragt."),
    "Wenn im CGP ein Wert den Maximalwert der Skala überschreitet, wird die entsprechende Ecke mit einem gelben Kreis markiert." : MessageLookupByLibrary.simpleMessage("Wenn im CGP ein Wert den Maximalwert der Skala überschreitet, wird die entsprechende Ecke mit einem gelben Kreis markiert."),
    "Wenn in Nightscout die Daten für die täglich erzielten Schritte vorhanden sind, dann werden diese in der Tagesgrafik angezeigt, wenn dort die Option \"Bewegung anzeigen\" aktiviert ist." : MessageLookupByLibrary.simpleMessage("V dennej grafike sa zobrazia údaje o denne dosiahnutých krokoch, ak sa nachádzadzajú v Nightscoute a je aktivovaná položka \"Zobraziť pohyby\"."),
    "Wenn in den Einstellungen eine Verbindung zum Google-Konto hergestellt wird, werden die Cookies von Google verwendet und die Daten nicht mehr im localStorage des Browsers gespeichert, sondern im AppStorage auf Google Drive. Auf diese Art kann man die Daten zentralisiert verwalten und hat diese in jedem Browser zur Verfügung, der mit dem angegebenen Google Konto verbunden ist." : MessageLookupByLibrary.simpleMessage("Keď sú nastavenia prepojené s účtom Google, používajú sa súbory cookie spoločnosti Google a údaje sa už neukládajú v lokálnom úložisku prehliadača, ale v AppStorage na Disku Google. Týmto spôsobom môžete spravovať údaje centrálne a mať ich k dispozícii v ľubovoľnom prehliadači pripojenom k zadanému účtu Google."),
    "Wenn in den Einträgen Lücken von 15 Minuten oder mehr sind, führen diese zu einer Unterbrechung der Linie in der Tagesgrafik." : MessageLookupByLibrary.simpleMessage("Ak sú medzi vstupmi 15 a viac minút medzery, zlomia čiaru v dennom grafe."),
    "Wenn in einem Profil mehr Zeiten erfasst wurden, als auf eine Seite passen, wurden diese fortlaufend in die nächste Seite hineingeschrieben. Jetzt wird an geeigneter Stelle eine neue Seite ausgegeben." : MessageLookupByLibrary.simpleMessage("Ak boli v profile zaznamenané viackrát, ako sa zmestili na jednu stránku, boli zapísané nepretržite na ďalšiu stránku. Teraz je na vhodnom mieste vydaná nová stránka."),
    "Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt." : MessageLookupByLibrary.simpleMessage("Ak nie sú k dispozícii žiadne údaje, vygenerujú sa prázdne stránky s vhodným nápovedou."),
    "Wert" : MessageLookupByLibrary.simpleMessage("Hodnota"),
    "Wert & Prozent" : MessageLookupByLibrary.simpleMessage("Hodnota & percento"),
    "Werte über dem Maximum als Pfeile darstellen" : MessageLookupByLibrary.simpleMessage("Hodnoty nad maximom zobrazovať ako šípky"),
    "Willkommen" : MessageLookupByLibrary.simpleMessage("Vitajte"),
    "Willkommen bei Nightscout Reporter!" : MessageLookupByLibrary.simpleMessage("Vitajte v Nightscout Reporter!"),
    "Wochengrafik" : MessageLookupByLibrary.simpleMessage("Týždenný graf"),
    "Zeilen mit gleichen Werten zusammenfassen" : MessageLookupByLibrary.simpleMessage("Spojiť riadky s rovnakými hodnotami"),
    "Zeit" : MessageLookupByLibrary.simpleMessage("Zeit"),
    "Zeitraum" : MessageLookupByLibrary.simpleMessage("Obdobie"),
    "Zeitraum festlegen" : MessageLookupByLibrary.simpleMessage("Nastaviť obdobie"),
    "Zeitraum:" : MessageLookupByLibrary.simpleMessage("Obdobie:"),
    "Zeitzone" : MessageLookupByLibrary.simpleMessage("Časové pásmo"),
    "Zielbereich" : MessageLookupByLibrary.simpleMessage("cieľová oblasť"),
    "Zielbereich mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Cieľová oblasť s desatinnými miestami"),
    "Zielwert anzeigen" : MessageLookupByLibrary.simpleMessage("Zobrazovať cieľovú hodnotu"),
    "Zugriffsschlüssel" : MessageLookupByLibrary.simpleMessage("Prístupový kľúč"),
    "Zur Berechnung der Analyse, Tagesstatistik und Tagesgrafik wird nun die gleiche Datenbasis verwendet, so dass die Werte auf allen PDFs gleich sind." : MessageLookupByLibrary.simpleMessage("Rovnaká databáza sa používa na výpočet analýzy, denných štatistík a denných grafov tak, aby hodnoty boli rovnaké vo všetkých PDF."),
    "Zur Kachelansicht" : MessageLookupByLibrary.simpleMessage("Zobrazenie dlaždíc"),
    "Zur Listenansicht" : MessageLookupByLibrary.simpleMessage("Na zobrazenie zoznamu"),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("Doplnkové nastavenia"),
    "Zusätzliche Informationen zu den PDFs und im UI hinzugefügt" : MessageLookupByLibrary.simpleMessage("Ďalšie informácie o súboroch PDF a pridané do používateľského rozhrania"),
    "Zusätzliche Spalte anzeigen" : MessageLookupByLibrary.simpleMessage("Zobraziť dodatočný stĺpec"),
    "Zwei" : MessageLookupByLibrary.simpleMessage("dva"),
    "Zweites Quartal" : MessageLookupByLibrary.simpleMessage("Druhý štvrťrok"),
    "_msgAdjustCalc" : m3,
    "_msgAdjustLab" : m4,
    "_msgAdjustTarget" : m5,
    "_msgLowerGlucHint" : m6,
    "_msgPageCount" : m7,
    "_msgPageCountEst" : m8,
    "_msgRaiseGlucHint" : m9,
    "ab 4,6" : MessageLookupByLibrary.simpleMessage("od 4,6"),
    "bis" : MessageLookupByLibrary.simpleMessage("do"),
    "dd.MM." : MessageLookupByLibrary.simpleMessage("dd.MM."),
    "dd.MM.yyyy" : MessageLookupByLibrary.simpleMessage("dd.MM.yyyy"),
    "ersetzt werden?" : MessageLookupByLibrary.simpleMessage("ersetzt werden?"),
    "extrem hohes Risiko" : MessageLookupByLibrary.simpleMessage("extrémne vysoké riziko"),
    "g / Stunde" : MessageLookupByLibrary.simpleMessage("g / hod"),
    "geringes Risiko" : MessageLookupByLibrary.simpleMessage("nízke riziko"),
    "gesch. HbA1c" : MessageLookupByLibrary.simpleMessage("HbA1c"),
    "hohes Risiko" : MessageLookupByLibrary.simpleMessage("vysoké riziko"),
    "https://nightscout-reporter.zreptil.de/beta" : MessageLookupByLibrary.simpleMessage("https://nightscout-reporter.zreptil.de/beta"),
    "iOS Loop missbraucht die Profiltabelle dazu, seine eigenen Settings zu speichern, was bei Benutzern dieser Software dazu führte, dass die Tabelle Profil nicht korrekt geladen werden kann. Deshalb gibt es jetzt in den Einstellungen die Möglichkeit, die Anzahl der Datensätze, die aus der Profiltabelle geladen werden einzuschränken." : MessageLookupByLibrary.simpleMessage("iOS Loop missbraucht die Profiltabelle dazu, seine eigenen Settings zu speichern, was bei Benutzern dieser Software dazu führte, dass die Tabelle Profil nicht korrekt geladen werden kann. Deshalb gibt es jetzt in den Einstellungen die Möglichkeit, die Anzahl der Datensätze, die aus der Profiltabelle geladen werden einzuschränken."),
    "mg/dL" : MessageLookupByLibrary.simpleMessage("mg/dl"),
    "mit dem Zeitraum" : MessageLookupByLibrary.simpleMessage("mit dem Zeitraum"),
    "mit der Einheit" : MessageLookupByLibrary.simpleMessage("mit der Einheit"),
    "mmol/L" : MessageLookupByLibrary.simpleMessage("mmol/L"),
    "moderates Risiko" : MessageLookupByLibrary.simpleMessage("mierne riziko"),
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
    "sehr geringes Risiko" : MessageLookupByLibrary.simpleMessage("veľmi nízke riziko"),
    "tl;dr" : MessageLookupByLibrary.simpleMessage("tl; dr"),
    "verwerfen" : MessageLookupByLibrary.simpleMessage("zahodiť"),
    "vom Benutzer wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("vom Benutzer wirklich gelöscht werden?"),
    "wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("naozaj vymazať?"),
    "zu Vergleichszwecken (z.B. Arzt)" : MessageLookupByLibrary.simpleMessage("na účely porovnania (napr. lekár)"),
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("Ø bazál za deň"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("Ø bolus za deň"),
    "Ø ICR/Stunde" : MessageLookupByLibrary.simpleMessage("Ø ICR / hod"),
    "Ø ISF/Stunde" : MessageLookupByLibrary.simpleMessage("Ø ISF / hod"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("Ø inzulín za deň"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("Ø pomer inzulínu"),
    "Ø KH pro Mahlzeit" : MessageLookupByLibrary.simpleMessage("Ø Sach na jedlo"),
    "Ø KH pro Tag" : MessageLookupByLibrary.simpleMessage("Ø sach. za deň"),
    "Ø Microbolus pro Tag" : MessageLookupByLibrary.simpleMessage("Ø mikrobolusov za deň"),
    "Ø Zuckerwert" : MessageLookupByLibrary.simpleMessage("Ø hodnota cukru"),
    "Überprüfe Zugriff auf Nightscout ..." : MessageLookupByLibrary.simpleMessage("Kontrola prístupu do Nightscout ..."),
    "Übersetzungen korrigiert" : MessageLookupByLibrary.simpleMessage("Preložené preklady"),
    "日本の" : MessageLookupByLibrary.simpleMessage("日本の")
  };
}
