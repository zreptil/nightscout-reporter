// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a nl_NL locale. All the
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
  get localeName => 'nl_NL';

  static m0(startTag0, endTag0) => "After I was asked again and again whether I could be donated, I decided to make such a possibility available. Nightscout Reporter is still completely free and will stay that way. If you still want to express your affection for the program, I don\'t want to stand in your way any longer. The donation button is not visible. But if you want to throw something in the ${startTag0}hat${endTag0}, you will find it :)";

  static m1(startTag0, endTag0, startTag1, endTag1, startTag2, endTag2) => "A new view called ${startTag0}Night-Watch${endTag0} has been added. In this view, as in the clock display on the Nightscout page, you can see the current glucose value and other information that you can configure to a certain extent as you like it. Night-Watch is accessed via this URL: ${startTag1}https://nightscout-reporter.zreptil.de/watch${endTag1} It can also be accessed via the main menu under the menu item ${startTag2}Night-Watch${endTag2}, or by clicking on the current sugar value in Nightscout Reporter\'s title bar if you have activated it in the settings.";

  static m2(startTag0, endTag0) => "Where a CGP can be created, there is now an option ${startTag0}Lines around areas${endTag0}. This is switched on by default. When turned off, the healthy and current human stat ranges are no longer outlined with a line. This makes the graph look a little more pale, but you can examine the values on the axes more closely if you wish.";

  static m3(value) => "Calculated A1C: ${value}%";

  static m4(value) => "Laboratory A1C: ${value}%";

  static m5(factor) => "The values for BG_TARGET_BOTTOM and BG_TARGET_TOP have been divided by the factor ${factor}";

  static m6(factor) => "All sensory glucose readings have been reduced by ${factor}%";

  static m7(count) => "${Intl.plural(count, zero: '', one: '1 pagina', other: '${count} pagina\'s')}";

  static m8(count) => "${Intl.plural(count, zero: '', one: '1 pagina of meer', other: '${count} pagina\'s of meer')}";

  static m9(factor) => "All sensory glucose readings have been increased by ${factor}%";

  static m10(isVisible) => "De Access Token is alleen vereist als de toegang in Nightscout is beperkt via AUTH_DEFAULT_ROLES";

  static m11(time) => "De basaal is geldig sinds ${time} en bevat geen tijdelijke wijzigingen.";

  static m12(unit) => "Dit basaal was actief op ${unit}.";

  static m13(value) => "Basaal voor de dag (${value})";

  static m14(value) => "Basaal van het profiel (${value})";

  static m15(value) => "Bolus Insuline (${value})";

  static m16(value) => "CV [${value}%]";

  static m17(date) => "${date} controleren...";

  static m18(scale, intercept, slope) => "Kalibratie (schaal ${scale} / onderscheppen ${intercept} / helling ${slope})";

  static m19(value) => "Maaltijd Bolus (${value})";

  static m20(value) => "Koolhydraten (${value}g)";

  static m21(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} dag per catheter)', other: '(${txt} dagen per catheter)')}";

  static m22(name, from, to) => "${name} ${from} => ${to}";

  static m23(url) => "Toegang tot ${url} controleren...";

  static m24(count) => "${Intl.plural(count, zero: 'Deselect a column@nl@to be able to activate another one', one: 'One more column available', other: '${count} columns still available')}";

  static m25(value) => "Correctie Bolus (${value})";

  static m26(value) => "${Intl.plural(value, zero: 'Geen waarde', one: '1 waarde', other: '${value} waarden')}";

  static m27(value) => "${value} dagen";

  static m28(hours, minutes) => "${hours} u ${minutes} m";

  static m29(isVisible) => "De datum van de laatste complete dag met gegevens";

  static m30(beg, end) => "${beg} - ${end}";

  static m31(count) => "${Intl.plural(count, zero: '', one: '1 formulier', other: '${count} Formulieren')}";

  static m32(max) => "slecht (groter dan ${max})";

  static m33(min, max) => "goed (${min} tot ${max})";

  static m34(min) => "niet beschikbaar (minder dan ${min})";

  static m35(min, max) => "heel goed (${min} tot ${max})";

  static m36(time) => "${Intl.plural(time, zero: 'Just now', one: '${time} minute ago', other: '${time} minutes ago')}";

  static m37(unit, value) => "Intensiteit HYPER\n[${unit} x min2]";

  static m38(unit) => "De intensiteit van hyperglykemie per dag (waarden groter dan of gelijk aan ${unit}).";

  static m39(unit, value) => "Intensiteit Hypo\n[${unit} x min²]";

  static m40(unit) => "De intensiteit van hypoglycaemie per dag (waarden kleiner dan of gelijk aan ${unit}).";

  static m41(value) => "Hoog${value}";

  static m42(value) => "Historische ${value}";

  static m43(value) => "Hypos (< ${value})";

  static m44(unit) => "Insuline Gevoeligheid Factoren (ISF) 1 IU vermindert BG met X ${unit}";

  static m45(value) => "${value}g";

  static m46(value) => "g CH (${value} BU)";

  static m47(date) => "CW${date}";

  static m48(value) => "Totaal Dagelijkse Dosis (${value})";

  static m49(error, stacktrace) => "Fout bij laden gegevens: ${error} ${stacktrace}";

  static m50(date) => "Laden van gegevens voor ${date}...";

  static m51(insulin, unit) => "Microbolus ${insulin} ${unit}";

  static m52(range, duration, reason, scale) => "temp. Overschrijven voor ${duration} min, Reden: ${reason}, Targetrange: ${range}, Schaal: ${scale}%";

  static m53(insulin, unit) => "SMB ${insulin} ${unit}";

  static m54(percent, duration) => "tijdelijk basaal ${percent}% / ${duration} min";

  static m55(value, duration) => "tijdelijk Basaal ${value} / ${duration} min";

  static m56(target, duration, reason) => "tijdelijk doel ${target} voor ${duration} min, reden: ${reason}";

  static m57(value) => "Laag${value}";

  static m58(gluc, unit) => "Bloedwaarde ${gluc} ${unit}";

  static m59(unit, value) => "Gemiddelde glucose\n[${unit}]";

  static m60(hba1c) => "De gemiddelde glycemische waarde in de opgegeven periode.";

  static m61(name) => "Use profile \"${name}\"";

  static m62(name) => "The profile with the name \"${name}\" could not be found. This must be set up in the profile editor on the Nightscout page. A profile must be set up there with the name \"${name}\" in order to be able to generate this form. The link below opens the profile editor. Under certain circumstances, the authentication must then be carried out at the very bottom of the page in order to be able to change the values.";

  static m63(min, max) => "slecht (${min} tot ${max})";

  static m64(min, max) => "goed (${min} tot ${max})";

  static m65(max) => "erg slecht (groter dan ${max})";

  static m66(min) => "uitstekend (minder dan ${min})";

  static m67(oldName, newName) => "Profiel verandering - ${oldName} => ${newName}";

  static m68(oldName, newName, duration) => "Profiel verandering - ${oldName} => ${newName} voor ${duration} minuten";

  static m69(howMany, fmt) => "${Intl.plural(howMany, zero: 'Geen waarden beschikbaar', one: '1 waarde per minuut', other: 'waarde elke ${fmt} minuten')}";

  static m70(howMany, fmt) => "${Intl.plural(howMany, zero: 'Geen waarden beschikbaar', one: '1 waarde per dag', other: '${fmt} waarden per dag')}";

  static m71(howMany, fmt) => "${Intl.plural(howMany, zero: 'Geen waarden beschikbaar', one: '1 waarde per uur', other: '${fmt} waarden per uur')}";

  static m72(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} dag per reservoir)', other: '(${txt} dagen per reservoir)')}";

  static m73(value) => "SMB (${value})";

  static m74(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} dag per sensor)', other: '(${txt} dagen per sensor)')}";

  static m75(low, high, unit) => "Gebruikt Standaard Doelbereik (${low} ${unit} - ${high} ${unit})";

  static m76(isVisible) => "De datum van de eerste dag met gegevens";

  static m77(value) => "(SDev ${value})";

  static m78(value) => "ToR [${value}min/d]";

  static m79(min, max) => "De tijd per dag in minuten waarin de waarden buiten het bereik ${min} tot ${max} vallen.";

  static m80(unit) => "Glucose doelgebied ${unit}";

  static m81(min, max, units) => "Doelgebied (${min} - ${max} ${units})";

  static m82(value) => "Doelwaarde";

  static m83(time) => "${time}";

  static m84(time) => "${time} voormiddag";

  static m85(time) => "${time} namiddag";

  static m86(maxCount, count, text) => "${Intl.plural(count, zero: '', one: 'De uploader \"${text}\" heeft de gegevensrecords aangemaakt', other: 'De volgende uploaders hebben de gegevensrecords aangemaakt ${text}')}";

  static m87(maxCount) => "Niet alle profielen konden geladen worden omdat er meer dan ${maxCount} opgeslagen zijn in de geselecteerde periode. ";

  static m88(begDate) => "geldig sinds ${begDate}";

  static m89(begDate, endDate) => "geldig van ${begDate} tot ${endDate}";

  static m90(endDate) => "geldig tot ${endDate}";

  static m91(high) => "Waarden boven ${high}";

  static m92(low) => "Waarden lager dan ${low}";

  static m93(low, high) => "Waarden tussen ${low} en ${high}";

  static m94(low, high) => "Doelbereik (${low} - ${high})";

  static m95(value) => "Hoge waarden (${value})";

  static m96(value) => "Lage waarden (${value})";

  static m97(value) => "Zeer hoge waarden ( > ${value})";

  static m98(value) => "Zeer lage waarden (< ${value})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "0,0 bis 2,0" : MessageLookupByLibrary.simpleMessage("0,0 tot 2,0"),
    "1 Minute" : MessageLookupByLibrary.simpleMessage("1 minuut"),
    "1 Stunde" : MessageLookupByLibrary.simpleMessage("1 uur"),
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
    "1.3.0 - 19.08.2019" : MessageLookupByLibrary.simpleMessage("1.3.0 - 19/08/2019"),
    "1.3.1 - 22.08.2019" : MessageLookupByLibrary.simpleMessage("1.3.1 - 22/08/2019"),
    "1.3.2 - 05.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.2 - 05/09/2019"),
    "1.3.3 - 12.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.3 - 12/09/2019"),
    "1.3.4 - 17.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.4 - 17/09/2019"),
    "1.3.5 - 23.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.5 - 23/09/2019"),
    "1.3.6 - 18.12.2019" : MessageLookupByLibrary.simpleMessage("1.3.6 - 18/12/2019"),
    "1.3.7 - 7.1.2020" : MessageLookupByLibrary.simpleMessage("1.3.7 - 7/1/2020"),
    "1.3.8 - 9.1.2020" : MessageLookupByLibrary.simpleMessage("1.3.8 - 9/1/2020"),
    "1.4 - 28.2.2020" : MessageLookupByLibrary.simpleMessage("1.4 - 28/2/2020"),
    "1.4.1 - 13.3.2020" : MessageLookupByLibrary.simpleMessage("1.4.1 - 13/3/2020"),
    "1.4.2 - 16.3.2020" : MessageLookupByLibrary.simpleMessage("1.4.2 - 16/3/2020"),
    "1.4.3 - 26.3.2020" : MessageLookupByLibrary.simpleMessage("1.4.3 - 26/3/2020"),
    "1.4.4 - 6.4.2020" : MessageLookupByLibrary.simpleMessage("1.4.4 - 6/4/2020"),
    "1.4.5 - 20.4.2020" : MessageLookupByLibrary.simpleMessage("1.4.5 - 20/4/2020"),
    "1.4.6 - 26.5.2020" : MessageLookupByLibrary.simpleMessage("1.4.6 - 26/5/2020"),
    "1.4.7 - 5.6.2020" : MessageLookupByLibrary.simpleMessage("1.4.7 - 5/6/2020"),
    "1.4.8 - 12.6.2020" : MessageLookupByLibrary.simpleMessage("1.4.8 - 12/6/2020"),
    "1.4.9 - 16.6.2020" : MessageLookupByLibrary.simpleMessage("1.4.9 - 16/6/2020"),
    "10%" : MessageLookupByLibrary.simpleMessage("10%"),
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("10% - 90% van de waarden"),
    "15 Minuten" : MessageLookupByLibrary.simpleMessage("15 minuten"),
    "2,1 bis 3,0" : MessageLookupByLibrary.simpleMessage("2,1 tot 3,0"),
    "2.0.0 - 15.7.2020" : MessageLookupByLibrary.simpleMessage("2.0.0 - 15/7/2020"),
    "2.0.1 - 8.9.2020" : MessageLookupByLibrary.simpleMessage("2.0.1 - 8/9/2020"),
    "2.0.10 - 07.11.2021" : MessageLookupByLibrary.simpleMessage("2.0.10 - 07/11/2021"),
    "2.0.11 - 26.11.2021" : MessageLookupByLibrary.simpleMessage("2.0.11 - 26/11/2021"),
    "2.0.12 - 07.12.2021" : MessageLookupByLibrary.simpleMessage("2.0.12 - 07/12/2021"),
    "2.0.2 - 22.9.2020" : MessageLookupByLibrary.simpleMessage("2.0.2 - 22/9/2020"),
    "2.0.3 - 18.10.2020" : MessageLookupByLibrary.simpleMessage("2.0.3 - 18/10/2020"),
    "2.0.4 - 18.02.2021" : MessageLookupByLibrary.simpleMessage("2.0.4 - 18/02/2021"),
    "2.0.5 - 07.03.2021" : MessageLookupByLibrary.simpleMessage("2.0.5 - 07/03/2021"),
    "2.0.6 - 17.03.2021" : MessageLookupByLibrary.simpleMessage("2.0.6 - 17/03/2021"),
    "2.0.7 - 17.04.2021" : MessageLookupByLibrary.simpleMessage("2.0.7 - 17/04/2021"),
    "2.0.8 - 09.06.2021" : MessageLookupByLibrary.simpleMessage("2.0.8 - 06/09/2021"),
    "2.0.9 - 11.08.2021" : MessageLookupByLibrary.simpleMessage("2.0.9 - 11/08/2021"),
    "2.1.0 - 09.12.2021" : MessageLookupByLibrary.simpleMessage("2.1.0 - 09/12/2021"),
    "2.2.0 - 03.03.2022" : MessageLookupByLibrary.simpleMessage("2.2.0 - 03/03/2022"),
    "2.2.1 - 01.05.2022" : MessageLookupByLibrary.simpleMessage("2.2.1 - 01/05/2022"),
    "2.2.2 - 10.08.2022" : MessageLookupByLibrary.simpleMessage("2.2.2 - 10/08/2022"),
    "25%" : MessageLookupByLibrary.simpleMessage("25％"),
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("25% - 75% van de waarden"),
    "3,1 bis 4,0" : MessageLookupByLibrary.simpleMessage("3,1 tot 4,0"),
    "3.0.0 - 21.08.2022" : MessageLookupByLibrary.simpleMessage("3.0.0 - 21/08/2022"),
    "3.0.1 - xx.08.2022" : MessageLookupByLibrary.simpleMessage("3.0.1 - xx/08/2022"),
    "30 Minuten" : MessageLookupByLibrary.simpleMessage("30 minuten"),
    "4,1 bis 4,5" : MessageLookupByLibrary.simpleMessage("4,1 tot 4,5"),
    "5 Minuten" : MessageLookupByLibrary.simpleMessage("5 minuten"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "90%" : MessageLookupByLibrary.simpleMessage("90%"),
    "<br><br>Wenn diese URL geschützt ist, muss ausserdem der Zugriffsschlüssel korrekt definiert sein. Diesen erreicht man über \"Administrator-Werkzeuge\" auf der persönlichen Nightscout Seite." : MessageLookupByLibrary.simpleMessage("<br> <br> Als deze URL is beveiligd, moet de Toegangstoken ook juist zijn gedefinieerd. Dit kan bereikt worden via \"Admin Tools\" op de persoonlijke Nightscout pagina."),
    "Abbruch" : MessageLookupByLibrary.simpleMessage("Annuleer"),
    "Absturz behoben, der auftrat, wenn kein passendes Profil für einen Zeitpunkt gefunden werden konnte" : MessageLookupByLibrary.simpleMessage("Een crash opgelost die zich voordeed toen er geen overeenkomend profiel gevonden kon worden voor een bepaalde tijd"),
    "Acht" : MessageLookupByLibrary.simpleMessage("Acht"),
    "Alle Benutzer ausgeben" : MessageLookupByLibrary.simpleMessage("Toon alle gebruikers"),
    "Alle Werte für den Tag anzeigen" : MessageLookupByLibrary.simpleMessage("Toon alle waarden voor de dag"),
    "Alles" : MessageLookupByLibrary.simpleMessage("Alles"),
    "Allgemeines" : MessageLookupByLibrary.simpleMessage("Algemeen"),
    "Als ersten Tag der Woche festlegen" : MessageLookupByLibrary.simpleMessage("Definieer als eerste dag van de week"),
    "Ampullenwechsel" : MessageLookupByLibrary.simpleMessage("Reservoir vervangen"),
    "Anmelden" : MessageLookupByLibrary.simpleMessage("Log in"),
    "Anmeldung bei Google..." : MessageLookupByLibrary.simpleMessage("Aanmelden bij Google…"),
    "Anmeldung erfolgreich" : MessageLookupByLibrary.simpleMessage("Inloggen succesvol"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("Aanpas\n-sing"),
    "Anzahl Ampullenwechsel" : MessageLookupByLibrary.simpleMessage("Aantal reservoir wijzigingen"),
    "Anzahl Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Aantal katheter wisselingen"),
    "Anzahl Messungen" : MessageLookupByLibrary.simpleMessage("Aantal waarden"),
    "Anzahl Sensorenwechsel" : MessageLookupByLibrary.simpleMessage("Aantal sensor wijzigingen"),
    "Anzahl Unterzuckerungen" : MessageLookupByLibrary.simpleMessage("Aantal Hypos"),
    "Anzahl der Sensoren zur Analyse hinzugefügt" : MessageLookupByLibrary.simpleMessage("Added number of sensors to analysis"),
    "Anzahl:" : MessageLookupByLibrary.simpleMessage("Aantal:"),
    "Anzeigeeinstellungen" : MessageLookupByLibrary.simpleMessage("Weergaveinstellingen"),
    "Auf 10be muss beim Server in den Standardeinstellungen der Haken bei \"cors\" aktiviert werden, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen. Wenn \"cors\" aktiviert wurde, muss auf dem Server eventuell noch ReDeploy gemacht werden, bevor es wirklich verfügbar ist." : MessageLookupByLibrary.simpleMessage("Op 10be moeten de standaardinstellingen voor de server de \"cors\" checkbox inschakelen, zodat externe tools zoals deze toegang hebben tot de gegevens. Als \"cors\" is geactiveerd, moet ReDeploy mogelijk worden gedaan op de server voordat het echt beschikbaar is."),
    "Auf Kacheln Bilder statt Namen anzeigen" : MessageLookupByLibrary.simpleMessage("Toon afbeeldingen in plaats van namen op tegels"),
    "Auf dem Einstellungen-Dialog gibt es neben den URL-Eingabefeldern jeweils einen Button, um die URL in einem neuen Browser-Fenster zu öffnen." : MessageLookupByLibrary.simpleMessage("Naast de URL-invoervelden staat er een knop in het dialoogvenster Instellingen om de URL in een nieuw browservenster te openen."),
    "Auf den Kacheln können nun Bilder statt der Namen angezeigt werden. Die Bilder zeigen dann das ungefähre Aussehen der entsprechenden Seite an. Sie entsprechen nicht den tatsächlichen Daten, sondern sind nur eine visuelle Darstellung, die es manchem Benutzer vielleicht einfacher machen, die gewünschten Seiten schneller auszuwählen. Die Aktivierung der Bilder erfolgt im Einstellungsdialog." : MessageLookupByLibrary.simpleMessage("Afbeeldingen kunnen nu worden weergegeven op tegels in plaats van namen. De afbeeldingen tonen dan het geschatte uiterlijk van de overeenkomstige pagina. Ze komen niet overeen met de werkelijke gegevens. maar zijn gewoon een visuele representatie, die het voor sommige gebruikers mogelijk makkelijker maakt om snel de pagina\'s te selecteren die ze willen. De activering van afbeeldingen kan worden gedaan met behulp van het instellingenvenster."),
    "Auf den Seiten Profil und Basalrate wird in der Titelzeile jetzt wieder das Datum angezeigt, ab dem das Profil gilt." : MessageLookupByLibrary.simpleMessage("Op de profiel- en basaalstanden toont de titelbalk nu opnieuw de datum waarop dit profiel begint."),
    "Auf der Analyseseite kann statt der Anzahl der Werte bei den Zielbereichen jetzt die Standardabweichung der Werte im Zielbereich angezeigt werden." : MessageLookupByLibrary.simpleMessage("De standaard deviatie van de waarden in het doelgebied kan nu worden weergegeven op de analyse pagina in plaats van het aantal waarden."),
    "Auf der Analyseseite werden nun auch GVI und PGS ausgegeben." : MessageLookupByLibrary.simpleMessage("De analysepagina toont nu ook GVI en PGS."),
    "Auf der Analyseseite wird jetzt auch die Standardabweichung aller Werte der Periode angezeigt." : MessageLookupByLibrary.simpleMessage("Nu wordt ook de standaardafwijking van alle waarden van de periode getoond op de analyse-pagina."),
    "Auf der Profilseite wurde die Spalte für die Werte von ICR verbreitert." : MessageLookupByLibrary.simpleMessage("Toegenomen de breedte van de kolom voor ICR op de profielpagina."),
    "Auf der Seite \"Profil\" wird die Gültigkeit jetzt mit Uhrzeit angezeigt." : MessageLookupByLibrary.simpleMessage("De geldigheid wordt nu met de tijd op de pagina \"Profiel\" weergegeven."),
    "Auf der Seite \"Stündliche Statistik\" gibt es eine neue Option, um auch Spalten mit 10% und 90% anzeigen zu lassen." : MessageLookupByLibrary.simpleMessage("Er is een nieuwe optie op de pagina \"Uur statistieken\" om ook kolommen met 10% en 90 procent te tonen."),
    "Auf der Seite Protokoll werden jetzt auch Insulinabgaben angezeigt, die z.B. über xdrip eingegeben wurden." : MessageLookupByLibrary.simpleMessage("Insuline leveringen worden nu ook getoond op de protocolpagina, bijvoorbeeld als ze via xdrip werden ingevoerd."),
    "Aufhebung von temp. Ziel" : MessageLookupByLibrary.simpleMessage("Annuleer tijdelijk doel"),
    "Aufsummierte Werte" : MessageLookupByLibrary.simpleMessage("Samenvatting van waarden"),
    "Aus den Profilen ermitteln" : MessageLookupByLibrary.simpleMessage("Ophalen uit profielen"),
    "Ausgabe" : MessageLookupByLibrary.simpleMessage("Uitvoer"),
    "Ausgabe Parameter" : MessageLookupByLibrary.simpleMessage("Uitvoer parameters"),
    "Ausgewertete Tage" : MessageLookupByLibrary.simpleMessage("Geëvalueerde dagen"),
    "Ausgewählter Zeitraum" : MessageLookupByLibrary.simpleMessage("Geselecteerde Periode"),
    "Ausrichtung" : MessageLookupByLibrary.simpleMessage("Oriëntatie"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("Analyse"),
    "Automatisch" : MessageLookupByLibrary.simpleMessage("Automatisch"),
    "Automatisch_theme selection - automatic" : MessageLookupByLibrary.simpleMessage("Automatisch"),
    "Basal" : MessageLookupByLibrary.simpleMessage("Basaal"),
    "Basal 0%" : MessageLookupByLibrary.simpleMessage("Basaal 0%"),
    "Basal aus Profil anzeigen" : MessageLookupByLibrary.simpleMessage("Toon basaal uit profiel"),
    "Basal ges." : MessageLookupByLibrary.simpleMessage("Basaal totaal"),
    "Basal mit zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Basaal met twee decimalen"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("Basaal"),
    "Basalrate\nIE / Stunde" : MessageLookupByLibrary.simpleMessage("Basaal E / uur"),
    "Basalrate anzeigen" : MessageLookupByLibrary.simpleMessage("Toon basaal"),
    "Batteriewechsel" : MessageLookupByLibrary.simpleMessage("Batterijverandering"),
    "Behandlungen" : MessageLookupByLibrary.simpleMessage("Behandelingen"),
    "Bei 0 beginnen" : MessageLookupByLibrary.simpleMessage("Met 0 beginnen"),
    "Bei Herokuapp und anderen Anbietern kostenloser Datenbankinstanzen ist der Speicherplatz der Instanz beschränkt, weshalb sie irgendwann voll ist. Dann kann man zwar eine neue Instanz anlegen, Nightscout Reporter benötigt aber für eine lückenlose Darstellung aller Tage Zugriff auf alle Instanzen, für die man eine Auswertung erhalten will. Deshalb können nun mehrere URLs für die Nightscout Instanzen eingegeben werden. Zusätzlich muss noch eingegeben werden, welches der erste und der letzte Tag mit Daten ist. Mit diesen Informationen ist es Nightscout Reporter dann möglich die benötigten Daten lückenlos auch über mehrere Instanzen hinweg auszuwerten." : MessageLookupByLibrary.simpleMessage("Met herokuapp en andere aanbieders van gratis database-instanties, is de opslagruimte van de instantie beperkt, waardoor deze op een bepaald moment vol is. Dan kunt u een nieuwe instantie aanmaken, maar Nightscout Verporter heeft toegang nodig tot alle instanties waarvoor je een PDF wilt ontvangen om het naadloos elke dag weer te kunnen geven. Daarom kunnen er nu meerdere URL\'s worden ingevoerd voor de instanties van Nightscout. Bovendien moet u invoeren wat de eerste en laatste dag is met de gegevens. Met deze informatie kan Nightscout Reporter vervolgens naadloos de benodigde gegevens in meerdere instanties evalueren."),
    "Bei Tagesgrafiken und Wochengrafiken gibt es jetzt die Möglichkeit 1, 2, 4, 8 oder 16 Grafiken auf einer Seite zu platzieren." : MessageLookupByLibrary.simpleMessage("In de dagelijkse grafieken en wekelijkse grafieken is het nu mogelijk 1, 2, 4, 8 of 16 afbeeldingen op een pagina te plaatsen."),
    "Bei den Ausgabeparametern kann jetzt festgelegt werden, in welcher Einheit die Glukosemessungen ausgegeben werden sollen. Diese wird zu Beginn aus den in Nightscout gespeicherten Daten ermittelt und entsprechend vorbelegt. Es ist aber auch möglich, diese Einheit zu ändern oder beide Einheiten ausgeben zu lassen. Wenn beide ausgegeben werden, dann wird jedes Formular auf dem Glukoseangaben vorhanden sind zunächst mit mg/dL und danach nochmal mit mmol/l ausgegeben. Diese Einheit wird auch in den Shortcuts gespeichert." : MessageLookupByLibrary.simpleMessage("In de uitvoerparameters kunt u nu de eenheid aangeven waarin de glucosewaarden worden weergegeven. Aan het begin wordt dit bepaald op basis van de gegevens die zijn opgeslagen in Nightscout en vooraf zijn toegewezen. Maar het is ook mogelijk deze eenheid te veranderen of beide eenheden te laten zien. Als \"beide\" is geselecteerd, dan wordt elk formulier waarop glucoseinformatie beschikbaar is eerst getoond met mg/dL en daarna met mmol/l. Deze eenheid wordt ook opgeslagen in de snelkoppelingen."),
    "Bei der Auswertung kann nun ein Bereich angezeigt werden, in dem die Anzahl an Unterzuckerungen während des ausgewählten Zeitraums und der Zeitpunkt der letzten Unterzuckerung angezeigt werden." : MessageLookupByLibrary.simpleMessage("In de analyse kan er nu een gebied worden weergegeven dat het aantal huiden in de geselecteerde periode en de tijd van de laatste schijnvertoning laat zien."),
    "Bei der Basalrate und dem Profil gibt es nun eine Option jeweils nur das letzte im entsprechenden Zeitraum ausgeben zu lassen. Das verringert die Blätterflut bei häufigem Profilwechsel." : MessageLookupByLibrary.simpleMessage("Met de basaalstand en het profiel is er nu een optie om alleen de laatste in de overeenkomstige periode te laten afdrukken. Dit vermindert het aantal pagina\'s met veelvuldige profielwijzigingen."),
    "Bei der Berechnung der Kohlenhydrate werden weitere Datensätze berücksichtigt" : MessageLookupByLibrary.simpleMessage("Aanvullende gegevens worden gebruikt voor de berekening van koolhydraten"),
    "Bei der Festlegung des Zeitraums kann man jetzt angeben, bis zu welchem Tag der Zeitraum ermittelt werden soll. Voreingestellt ist so wie bisher auch der aktuelle Tag. Man kann aber auch den gestrigen Tag einstellen, um Tage mit vollständigen Daten zu haben, oder das letzte Wochenende, wenn man an vollständigen Wochen interessiert ist." : MessageLookupByLibrary.simpleMessage("Bij het definiëren van de periode kunt u nu aangeven tot welke dag de periode moet worden bepaald. Zoals eerder, is de huidige dag voorinstelling. Je kunt gisteren ook instellen op dagen met volledige datums of het laatste weekend als je geïnteresseerd bent in volledige weken."),
    "Bei der Profilermittlung wurde manchmal der letzte Profilwechsel ignoriert. Das ist nun behoben." : MessageLookupByLibrary.simpleMessage("De laatste profielwijziging werd soms genegeerd bij het bepalen van het profiel. Dat is nu opgelost."),
    "Bei der letzten Version sind Änderungen in den Code eingeflossen, die nicht wirklich durchdacht waren. Dafür entschuldige ich mich. Ich habe diese wieder entfernt, damit Nightscout Reporter für alle Benutzer die gewohnte Funktionalität bietet." : MessageLookupByLibrary.simpleMessage("The last version had changes in the code that weren\'t really thought through. I apologize for that. I removed these so that Nightscout Reporter offers the usual functionality again for all users."),
    "Beide" : MessageLookupByLibrary.simpleMessage("Beide"),
    "Beim Auslesen der Profile ist ein Fehler aufgetreten. Möglicherweise sind zu viele Daten in der Profiltabelle (wird z.B. von iOS Loop verursacht). Du kannst versuchen, in den Einstellungen die Anzahl an auszulesenden Profildatensätzen zu verringern." : MessageLookupByLibrary.simpleMessage("Er is een fout opgetreden tijdens het lezen van de profielen. Er zijn mogelijk te veel gegevens in de profieltabel (bijv. veroorzaakt door iOS Loop). U kunt proberen het aantal profiel data records te verlagen in de instellingen."),
    "Beim CGP werden die aktuellen Werte jetzt in der Legende angezeigt." : MessageLookupByLibrary.simpleMessage("De CGP toont nu de huidige waarden in de legende."),
    "Beim Erzeugen des PDF ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("Er is een fout opgetreden tijdens het maken van de PDF."),
    "Beim Glukose Perzentil Diagramm kann man nun ein Maximum für die Skalierung festlegen. Wenn es auf \"Automatisch\" gesetzt wird, wird das Maximum wie bisher auch ermittelt. Bei einem anderen Wert wird die Obergrenze für das Diagramm auf diesen Wert festgesetzt. Damit ist es leichter möglich zwei Diagramme miteinander zu vergleichen, deren Obergrenze unterschiedlich ist." : MessageLookupByLibrary.simpleMessage("In het Glucose Percentile Diagram kunt u nu een maximum instellen voor de schaaling. Als het is ingesteld op \"Automatisch\", wordt het maximum bepaald zoals voorheen. Voor elke andere waarde is de bovengrens voor het diagram ingesteld op deze waarde. Dit maakt het makkelijker om twee diagrammen te vergelijken met verschillende bovengrenzen."),
    "Beim Laden der Behandlungsdaten werden doppelte Datensätze herausgefiltert." : MessageLookupByLibrary.simpleMessage("Wanneer de behandelingsgegevens worden geladen, worden dubbele gegevensrecords uitgefilterd."),
    "Beim Laden der Daten wird das entsprechende Datumsformat zur Anzeige verwendet" : MessageLookupByLibrary.simpleMessage("Wanneer de gegevens worden geladen, wordt het overeenkomstige datumformaat gebruikt om de voortgang weer te geven"),
    "Beim Perzentil Diagramm gibt es eine neue Option, mit der man die Basalrate unter dem Diagramm anzeigen lassen kann. Da das Diagramm normalerweise einen grösseren Zeitraum umspannt, wird dort die Basalrate angezeigt, die zu Beginn des Zeitraums aktiv war." : MessageLookupByLibrary.simpleMessage("In het percentiele diagram is er een nieuwe optie waarmee het basaal onder het diagram kan worden weergegeven. Omdat het diagram normaal gesproken een langere periode omslaat, wordt het basaal die actief was aan het begin van de periode weergegeven."),
    "Beim erstmaligen Start von Nightscout Reporter wurde er schon bei Sprachänderung normal angezeigt. Jetzt bleibt er wie vorgesehen auf dem Willkommen Dialog." : MessageLookupByLibrary.simpleMessage("Toen Nightscout Reporter voor het eerst werd gestart, werd deze normaal weergegeven toen de taal veranderde. Nu blijft het in het welkomstdialoogvenster zoals bedoeld."),
    "Benutzer" : MessageLookupByLibrary.simpleMessage("User"),
    "Benutzer können ein User-Token angeben, um sich mit geschützten Nightscout-Instanzen zu verbinden" : MessageLookupByLibrary.simpleMessage("Gebruikers kunnen een gebruikerstoken opgeven om verbinding te maken met beschermde nightscout instanties"),
    "Benutzer können nun gelöscht werden" : MessageLookupByLibrary.simpleMessage("Gebruikers kunnen nu worden verwijderd"),
    "Benutzerdaten" : MessageLookupByLibrary.simpleMessage("Gebruikers gegevens"),
    "Benutzerdaten werden nun verschlüsselt im Browser gespeichert" : MessageLookupByLibrary.simpleMessage("Gebruikersgegevens zijn nu versleuteld opgeslagen in de browser"),
    "Berechnete IE für Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Berekende U voor koolhydraten"),
    "Berechnete IE für Kohlenhydrate anzeigen" : MessageLookupByLibrary.simpleMessage("Toon berekende E voor koolhydraten"),
    "Bereite Daten vor..." : MessageLookupByLibrary.simpleMessage("Gegevens voorbereiden..."),
    "Bestätigung" : MessageLookupByLibrary.simpleMessage("Bevestiging"),
    "Bewegung" : MessageLookupByLibrary.simpleMessage("Oefeningen"),
    "Bewegung anzeigen" : MessageLookupByLibrary.simpleMessage("Toon oefeningen"),
    "Bezeichnung" : MessageLookupByLibrary.simpleMessage("Titel"),
    "Bis" : MessageLookupByLibrary.simpleMessage("Tot"),
    "Bis heute|Bis gestern|Bis Wochenende" : MessageLookupByLibrary.simpleMessage("Tot Vandaag|Tot Gisteren|Tot Weekend"),
    "Bisher fehlende Summenwerte in der Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Toegevoegd ontbrekende totalen in de dagelijkse statistieken"),
    "Bitte den Dateinamen für die Speicherung auswählen" : MessageLookupByLibrary.simpleMessage("Selecteer de bestandsnaam om op te slaan"),
    "Bitte einen Zeitraum wählen." : MessageLookupByLibrary.simpleMessage("Selecteer a.u.b een periode."),
    "Bitte überprüfe die Aktivierung der Wochentage unter dem Monat" : MessageLookupByLibrary.simpleMessage("Controleer de activering van de dagen van de week onder de maand"),
    "Blutige Messung" : MessageLookupByLibrary.simpleMessage("Bloed waarden"),
    "Blutige Werte sollten jetzt auch bei mmol-Daten korrekt in der Tagesgrafik angezeigt werden." : MessageLookupByLibrary.simpleMessage("Bloedwaarden moeten nu ook correct worden weergegeven in de dagelijkse grafiek voor mmol-gegevens."),
    "Blutwerte werden jetzt auch bei mmol/L in den Grafiken korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Bloedwaarden worden nu correct weergegeven in mmol/L in de grafiek."),
    "Bolus" : MessageLookupByLibrary.simpleMessage("Bolus"),
    "Bolus Rechner_bolus calculated by the bolus wizard" : MessageLookupByLibrary.simpleMessage("Bolus wizard"),
    "Bolus ges." : MessageLookupByLibrary.simpleMessage("Bolus totaal"),
    "Bolusarten anzeigen" : MessageLookupByLibrary.simpleMessage("Toon bolustypes"),
    "Bolusspalte anzeigen" : MessageLookupByLibrary.simpleMessage("Toon bolus kolom"),
    "CGP" : MessageLookupByLibrary.simpleMessage("CGP"),
    "CGP immer mit Standard Zielbereich" : MessageLookupByLibrary.simpleMessage("CGP altijd met Standaard Doelbereik"),
    "COB (Carbs On Board) anzeigen" : MessageLookupByLibrary.simpleMessage("Toon KOB (koolhydraten aan boord)"),
    "Comprehensive Glucose Pentagon" : MessageLookupByLibrary.simpleMessage("Uitgebreid Glucose Pentagon"),
    "Da wir seit einiger Zeit in Europa eine DSGVO haben, werden im Folgenden noch die Vorschriften dafür erfüllt. Der folgende Text ist nur auf Deutsch verfügbar:" : MessageLookupByLibrary.simpleMessage("Aangezien er een DSGVO in Europa is, voldoet de volgende tekst aan de regels hiervoor: de volgende tekst is alleen in het Duits beschikbaar:"),
    "Dansk" : MessageLookupByLibrary.simpleMessage("Dansk"),
    "Das \"Comprehensive Glucose Pentagon\" (Umfassendes Glukose Fünfeck) wurde als eigenes PDF und als Zusatzseite zur Tagesgrafik und Wochengrafik hinzugefügt. Es handelt sich hierbei um eine Darstellung von fünf Messgrössen, mit deren Hilfe sich die Qualität der Therapie ermitteln und mit anderen vergleichen lässt. Auf den Ausdrucken wird ein Verweis auf die zugrunde liegende Abhandlung ausgegeben." : MessageLookupByLibrary.simpleMessage("De \"Comprehensive Glucose Pentagon\" is toegevoegd als een apart PDF en als extra pagina in de dagelijkse en wekelijkse grafiek. Het gaat hier om vijf maatregelen, waarmee de kwaliteit van de therapie kan worden bepaald en vergeleken met andere. Op de printouts staat een verwijzing naar het onderliggende document."),
    "Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr." : MessageLookupByLibrary.simpleMessage("Klikken op het berichtengebied sluit het niet meer."),
    "Das CGP wird jetzt auch bei extremen Werten korrekt erzeugt." : MessageLookupByLibrary.simpleMessage("Het CGP wordt nu correct gegenereerd, zelfs met extreme waarden."),
    "Das Control für die Eingabe des Zeitraums wurde angepasst, damit es auf schmalen Display auch korrekt dargestellt wird." : MessageLookupByLibrary.simpleMessage("De controle over de definitie van de periode is aangepast zodat deze correct wordt weergegeven op een smalle weergave."),
    "Das Enddatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("De einddatum is niet correct"),
    "Das Logo von Nightscout Reporter wurde geändert. Es ist nach wie vor die bekannte und beliebte Eule, aber sie hat nun eine Mütze auf wie die Zeitungsausträger und teilweise auch Journalisten in uralten Filmen. Das Logo ist nur im Programm vorhanden und erscheint nicht auf den PDFs. Dort ist nach wie vor das normale Nightscout Logo, weil es dort platziert wurde, um auf Nightscout selbst hinzuweisen." : MessageLookupByLibrary.simpleMessage("Het Nightscout Reporter logo is veranderd. Het is nog steeds de bekende en populaire uwe, maar nu draagt het een hoed zoals de krantenkopers en soms ook journalisten in oude films. Het logo wordt alleen in het programma weergegeven en verschijnt niet op de PDF\'s. Er is nog steeds het normale Nightscout logo omdat het daar is geplaatst om naar Nightscout zelf te verwijzen."),
    "Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag." : MessageLookupByLibrary.simpleMessage("De PDF basaalstand is onjuist als er geen waarde was voor elk uur."),
    "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren." : MessageLookupByLibrary.simpleMessage("De PDF is gemaakt. Als het niet wordt weergegeven, is er waarschijnlijk een popup blocker actief, dit voorkomt de weergave. Gelieve deze uit te schakelen."),
    "Das Problem, dass bestimmte Tage nicht erzeugt werden konnten, wurde behoben." : MessageLookupByLibrary.simpleMessage("Het probleem dat bepaalde dagen niet konden worden gecreëerd, is opgelost."),
    "Das Profil-PDF wird nun im Querformat erzeugt, um auch Profile mit vielen Einträgen für die Parameter brauchbar darstellen zu können." : MessageLookupByLibrary.simpleMessage("The profile PDF is now created in landscape format so that profiles with many entries for the parameters can also be displayed."),
    "Das Projekt wurde auf Dart 2.13.4 und Angular 6.0.1 aktualisiert." : MessageLookupByLibrary.simpleMessage("Het project is bijgewerkt naar Dart 2.13.4 en Angular 6.0.1."),
    "Das Startdatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("De startdatum is niet correct"),
    "Das gelbe Fünfeck stellt den Wertebereich des angegebenen Zeitraums dar." : MessageLookupByLibrary.simpleMessage("De gele pentagon geeft het bereik weer van de opgegeven periode."),
    "Das grüne Fünfeck stellt den Wertebereich eines gesunden Menschen ohne Diabetes dar." : MessageLookupByLibrary.simpleMessage("Het groene pentagon geeft de waarde weer van een gezonde persoon zonder diabetes."),
    "Daten bis" : MessageLookupByLibrary.simpleMessage("Datum tot"),
    "Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen." : MessageLookupByLibrary.simpleMessage("De gegevens voor de glucosewaarden, 58 met onjuiste datumnotatie worden correct uitgelezen."),
    "Daten verschiedener Uploader werden nun besser interpretiert." : MessageLookupByLibrary.simpleMessage("Gegevens van verschillende uploaders worden nu beter geïnterpreteerd."),
    "Daten von" : MessageLookupByLibrary.simpleMessage("Datum van"),
    "Daten, die von xDrip als sync markiert wurden, werden bei der Auswertung ignoriert." : MessageLookupByLibrary.simpleMessage("Gegevens die werden gemarkeerd als synchronisatie door xDrip zullen worden genegeerd in de aluclaties."),
    "Datenschutzerklärung" : MessageLookupByLibrary.simpleMessage("Gegevensbescherming"),
    "Datum" : MessageLookupByLibrary.simpleMessage("Datum"),
    "Dauer der Insulinaktivität (DIA)" : MessageLookupByLibrary.simpleMessage("Duur van insuline activiteit (DIA)"),
    "Dauer der Kohlenhydrataktivität" : MessageLookupByLibrary.simpleMessage("Duur van koolhydraten activiteit"),
    "Dauer der abgeschalteten Basalrate anzeigen" : MessageLookupByLibrary.simpleMessage("Toon de duur van de uitgeschakelde basaalstand"),
    "Dauer mit Minutenbruchteil" : MessageLookupByLibrary.simpleMessage("Precieze duratie"),
    "Der Fehler im Profil, der dazu führte, dass die Werte für ISF und Zielbereich falsch umgerechnet werden, wurde behoben." : MessageLookupByLibrary.simpleMessage("Fixed the bug in the profile that caused the ISF and target range values to be incorrectly converted."),
    "Der Fehler mit der Vervielfachung der Kohlenhydrate bei wiederholter Ausgabe der PDFs wurde korrigiert." : MessageLookupByLibrary.simpleMessage("De fout met de vermenigvuldiging van de koolhydraten met de herhaalde uitvoer van de PDF\'s is gecorrigeerd."),
    "Der Titel vom Glucose Percentil Diagramm wird nun auch bei Ausdruck im Hochformat nicht mehr falsch in den Optionen Formularauswahl dargestellt." : MessageLookupByLibrary.simpleMessage("De titel van het Glucose Percentile Diagram wordt bij het printen in staand formaat niet meer verkeerd weergegeven."),
    "Der Wert für die mittlere Glukose bei gesunden Menschen im CGM wurde auf die korrekten 90 mg/dl korrigiert." : MessageLookupByLibrary.simpleMessage("The mean glucose value in healthy people in the CGM has been adjusted to the correct value of 90 mg/dl."),
    "Der Zeitraum enthält keine auswertbaren Tage" : MessageLookupByLibrary.simpleMessage("De periode bevat geen evalueerbare dagen"),
    "Der prognostische glykämische Risikoparameter stellt das Risiko von Langzeitkomplikationen dar (bisher nicht durch Studien belegt)." : MessageLookupByLibrary.simpleMessage("De Prognostic Glycemic Riskparameter vertegenwoordigt het risico van langdurige complicaties (tot nu toe niet bewezen door onderzoeken)."),
    "Details des Profilwechsels" : MessageLookupByLibrary.simpleMessage("Details van profiel verandering"),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("Duits"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("Diabetes sinds"),
    "Dialoge und die Anzeige des Fortschritts werden nun technisch etwas anders umgesetzt. Deswegen wird der Anwendungshintergrund nun in den Fällen dunkler dargestellt und es ist nicht möglich darauf etwas anzuklicken." : MessageLookupByLibrary.simpleMessage("Dialogen en het tonen van de vooruitgang worden nu technisch iets anders uitgevoerd. Hierdoor wordt de achtergrond van de toepassing nu donkerder getoond in de gevallen en is het niet mogelijk om op iets te klikken."),
    "Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an" : MessageLookupByLibrary.simpleMessage("De analyse pagina is opnieuw ontworpen en geeft nu koppen boven de gebieden weer"),
    "Die Analysewerte wurden nicht ganz korrekt ermittelt. Das wurde korrigiert und nun sollten die statistischen Daten über den Zeitraum richtig ausgewertet werden." : MessageLookupByLibrary.simpleMessage("De analysewaarden zijn niet correct bepaald, dit is gecorrigeerd en de statistische gegevens die over de periode zijn geëvalueerd, moeten nu juist zijn."),
    "Die Angabe DIA auf der Profilseite wird nun mit zwei Nachkommastellen angezeigt." : MessageLookupByLibrary.simpleMessage("DIA op de profielpagina wordt nu weergegeven met twee decimalen plaatsen."),
    "Die Anpassung der Glukosewerte wird nun bei den Einstellungen gespeichert. Sie kann aber weiterhin bei den Ausgabeparametern geändert werden, um ohne grosse Umwege einen Vergleich erstellen zu können." : MessageLookupByLibrary.simpleMessage("The adjustment of the glucose values is now saved in the settings. However, it can still be changed in the output parameters in order to be able to create a comparison without any detours."),
    "Die Anzeige der Bilder auf Kacheln wird nun wie vorgesehen korrekt in den Einstellungen vorbelegt." : MessageLookupByLibrary.simpleMessage("De weergave van de afbeeldingen op tegels is nu correct ingesteld in de instellingen zoals bedoeld."),
    "Die Anzeige des Faktors auf dem PDF, wenn ein Korrekturfaktor eingestellt wurde, wurde in eine Prozentangabe geändert um welche die Zuckerwerte erhöht oder verringert wurden." : MessageLookupByLibrary.simpleMessage("The display of the factor on the PDF when a correction factor has been set has been changed to a percentage by which the sugar values have been increased or decreased."),
    "Die Aufsummierung der Werte in der Analyse wurde korrigiert." : MessageLookupByLibrary.simpleMessage("De opeenstapeling van waarden in de analyse is gecorrigeerd."),
    "Die Aufteilung auf mehrere PDF-Dateien funktioniert jetzt besser." : MessageLookupByLibrary.simpleMessage("De verdeling in meerdere PDF-bestanden werkt nu beter."),
    "Die Ausgabe des Zielwertes und der blutigen Werte in der Tagesgrafik wurde korrigiert. Da gab es Probleme, wenn man eine andere Blutzucker Einheit als die auf dem Server eingestellte zur Ausgabe verwendet hat." : MessageLookupByLibrary.simpleMessage("De output van de doelwaarde en de bloedwaarden in de dagelijkse grafiek zijn gecorrigeerd. Er waren problemen toen een andere bloedsuikereenheid werd gebruikt dan degene op de server voor uitvoer."),
    "Die Auswahl des Zeitraums ist nun flexibler. Die Auswahl erfolgt in einem Dialog, der die eingestellte Sprache berücksichtigt. Mit der Auswahl der vorbelegten Bereiche (Heute, Letzte Woche, usw.) wird festgelegt, dass beim nächsten Aufruf das aktuelle Datum als Grundlage für den Bereich verwendet wird. Wenn der Bereich direkt im Kalender festgelegt wird, dann gilt dieser beim nächsten Aufruf so wie er festgelegt wurde. Standardmässig ist der erste Tag der Woche jetzt ein Montag. Dieser kann aber durch Anklicken des Wochentags in der Titelzeile des Monats auf die eigene Präferenz festgelegt werden. Die Eingabe der Datumsfelder erfolgt in der Form, die der Sprache entspricht (Tag.Monat.Jahr für deutsch, Monat/Tag/Jahr für englisch)." : MessageLookupByLibrary.simpleMessage("The selection of the period is now more flexible. The selection is done in a dialog that takes the language into account. Selecting the default ranges (today, last week, etc.) sets the current date as the basis for the range at the next call. If the range is set directly in the calendar, then it will be applied the next time as defined. By default, the first day of the week is now a Monday. However, this can be set to your own preference by clicking on the day of the week in the title bar of the month. The date fields are entered in the form that corresponds to the language (day.month.year for German, month/day / year for English)."),
    "Die Auswahl des Zeitraums und der Benutzer wurde in die Titelzeile verschoben." : MessageLookupByLibrary.simpleMessage("The selection of the period and the user has been moved to the title bar."),
    "Die Balken für das Bolusinsulin in der Tagesgrafik werden nun entsprechend dem Maximalwert an Bolusinsulin an dem Tag skaliert." : MessageLookupByLibrary.simpleMessage("The bars for the bolus insulin in the daily graph are now scaled according to the maximum bolus insulin at that day."),
    "Die Balken in der Analyse werden jetzt korrekt skaliert." : MessageLookupByLibrary.simpleMessage("De balken in de analyse zijn nu correct geschaald."),
    "Die Basalratenprofile für den Tag werden nun auch anhand der Behandlungsdaten ermittelt. Profilwechsel werden in der Tagesgrafik angezeigt und sollten ab dem Zeitpunkt des Wechsels auch eine korrekte Basalratenanpassung anzeigen." : MessageLookupByLibrary.simpleMessage("The basalrate profiles for the day are now also determined based on the treatment data. Profile changes are displayed in the daily graph and should also show a correct basal rate adjustment from the moment of change."),
    "Die Berechnung der PDF-Grössen wurde korrigiert, so dass nun weniger PDFs erstellt werden, wenn sie aufgrund der Grösse aufgeteilt werden." : MessageLookupByLibrary.simpleMessage("The calculation of the PDF sizes has been corrected, so that fewer PDFs are created when they are divided due to the size."),
    "Die Berechnung der Summenzeile auf der Seite Tagesstatistik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("The calculation of the totals row on the Daily Statistics page has been corrected."),
    "Die Berechnung der tatsächlichen Basalrate wurde korrigiert." : MessageLookupByLibrary.simpleMessage("De berekening van de werkelijke basaalstand is gecorrigeerd."),
    "Die Berechnung des täglichen Insulins berücksichtigt nun auch die SMB." : MessageLookupByLibrary.simpleMessage("The calculation of the daily insulin now also takes the SMB into account."),
    "Die Bilder auf den Kacheln sind nun in der jeweiligen Sprache beschriftet." : MessageLookupByLibrary.simpleMessage("De afbeeldingen op de tegels zijn nu gelabeld in de respectievelijke taal."),
    "Die Buttons für die Erzeugung vergangener Zeiträume wurden entfernt. Das kann jetzt im neuen PDF-Dialog eingestellt werden." : MessageLookupByLibrary.simpleMessage("De knoppen om vorige perioden aan te maken zijn verwijderd. Dit kan nu worden ingesteld in het nieuwe PDF-dialoogvenster."),
    "Die Buttons für die vergangenen Perioden werden nicht angezeigt, wenn kein Zeitraum oder kein PDF ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("The Buttons for past periods will not be displayed if no period or PDF is selected."),
    "Die Daten, die Du hier eingibst, werden normalerweise im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. In diesem Fall werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("De gegevens die u hier invoert, zullen worden opgeslagen in de localStorage van de browser. Dit bevat gegevens met betrekking tot de website die alleen kunnen worden uitgelezen. Cookies worden niet gebruikt en er worden geen gegevens opgeslagen op servers. Alleen een verbinding met de opgegeven Nightscout instantie is ingesteld en de beschikbare gegevens worden gelezen om een PDF-document aan te maken. Dit kan dan worden voorgelegd aan de diabetesadviseur of aan andere belanghebbenden."),
    "Die Eingabe des Zugriffsschlüssels auf dem Einstellungen-Dialog kann jetzt mit einem Button neben dem Eingabefeld lesbar gemacht werden." : MessageLookupByLibrary.simpleMessage("Het invoeren van de toegangssleutel in het instellingen dialoogvenster kan nu leesbaar worden gemaakt met een knop naast het invoerveld."),
    "Die Einstellung für das Öffnen des PDF im gleichen Fenster, das Herunterladen des PDFs und den Hinweis auf Nightscout im PDF wurde aus den Einstellungen in die Ausgabe Parameter verschoben. Dadurch kann man das bei jedem Ausdruck schnell festlegen und ändern." : MessageLookupByLibrary.simpleMessage("De instelling voor het openen van de PDF in hetzelfde venster, het downloaden van de PDF en het verbergen van tekst over Nightscout in de PDF is verplaatst van de instellingen naar de output parameters. Dit stelt je in staat om dat voor elke uitvoer snel in te stellen en te veranderen."),
    "Die Einstellung für die Anpassung von BG_TARGET_BOTTOM und BG_TARGET_TOP ist nun unabhängig von der Auswahl \"Glucosewerte anpassen\". Damit kann man die Option umschalten, ohne den Zielbereich auf dem Server neu konfigurieren zu müssen." : MessageLookupByLibrary.simpleMessage("The setting for adjusting BG_TARGET_BOTTOM and BG_TARGET_TOP is now independent of the \"Adjust Glucose Values\" selection. This allows you to toggle the option without having to reconfigure the target area on the server."),
    "Die Einstellungen für das Herunterladen des PDFs, das Öffnen im gleichen Fenster und die Maximalgrösse der PDFs wurden von der Synchronisierung mit Google Drive ausgenommen, weil sie speziell für den verwendeten Browser oder das verwendete Gerät benötigt werden. Sie werden nach wie vor gespeichert, aber sie werden nicht zwischen verschiedenen Browsern synchronisiert." : MessageLookupByLibrary.simpleMessage("De instellingen voor het downloaden van de PDF, het openen van de PDF in hetzelfde venster, en de maximale grootte van de PDF\'s werden uitgesloten van het synchroniseren met Google Drive omdat ze specifiek zijn voor de browser of apparaat die u gebruikt. Ze worden nog steeds bewaard, maar ze worden niet gesynchroniseerd tussen verschillende browsers."),
    "Die Einträge im Protokoll für temporäre Ziele werden jetzt auch bei mmol-Angaben richtig angezeigt." : MessageLookupByLibrary.simpleMessage("De invoergegevens in het logboek voor tijdelijke doelen worden nu correct weergegeven, zelfs met mmol-gegevens."),
    "Die Ermittlung der Einheit (mg/dl oder mmol/l) wird nun flexibler gehandhabt, so dass auch Leerzeichen in der entsprechenden Einstellung nicht mehr zu einer Fehlinterpretation führen." : MessageLookupByLibrary.simpleMessage("The determination of the unit (mg/dl or mmol/l) is now handled more flexibly, so that even spaces in the corresponding setting no longer lead to a misinterpretation."),
    "Die Ermittlung der effektiven täglichen Basalrate wurde umstrukturiert und sollte nun genauere Werte ergeben." : MessageLookupByLibrary.simpleMessage("De vaststelling van de effectieve dagelijkse basaalstand is geherstructureerd en moet nu nauwkeurigere waarden geven."),
    "Die Farbe für Bewegung in der Tagesgrafik wurde geändert." : MessageLookupByLibrary.simpleMessage("De kleur van oefeningen in de dagelijkse grafieken verandering."),
    "Die Farben für Dialoge und Scrollbars wurden angepasst." : MessageLookupByLibrary.simpleMessage("De kleuren voor dialogen en schuifbalken zijn aangepast."),
    "Die Farben für die Glukosebereiche werden jetzt dort, wo sie als Hintergrundfarbe mit Text verwendet werden heller dargestellt, um die Lesbarkeit zu erhöhen." : MessageLookupByLibrary.simpleMessage("The colors for the glucose areas are now displayed lighter where they are used as a background color with text to make them easier to read."),
    "Die Genauigkeit der ISF Angaben im Profil wurde korrigiert." : MessageLookupByLibrary.simpleMessage("De precisie van ISF in profiel is gecorrigeerd."),
    "Die Genauigkeit der Insulindosierung wird aus dem Profil ermittelt. Der Wert mit der höchsten Genauigkeit legt fest, mit wieviel Nachkommastellen Basalratenwerte angezeigt werden." : MessageLookupByLibrary.simpleMessage("De nauwkeurigheid van de insulinedosis wordt bepaald vanuit het profiel. De waarde met de hoogste precisie definieert hoeveel decimalen worden gebruikt voor de weergave van basalwaarden."),
    "Die Glucose Perzentil Grafik wurde um die Tabelle \"Stündliche Statistik\" erweitert. Diese listet tabellarisch die Werte des Zeitraums für jede Stunde des Tages auf. Man kann entweder nur die Grafik, nur die Tabelle oder beides zusammen erzeugen lassen." : MessageLookupByLibrary.simpleMessage("De Glucose Percentile Graph is uitgebreid tot de Hourly statistieken tabel. Dit bepaalt de waarden van de periode voor elk uur van de dag. Je kunt alleen de grafiek, alleen de tafel of beide samen maken."),
    "Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit." : MessageLookupByLibrary.simpleMessage("De glucose grafiek van de dagelijkse grafieken is bevrijd van ontbrekende data."),
    "Die Glukosewerte können nun mit einem Faktor korrigiert werden, der sich aus dem im Labor ermittelten und errechneten HbA1C Wert ergibt. Dieser Faktor betrifft alle Sensorwerte, die in Nightscout Reporter verarbeitet werden. Der Faktor wird in den Ausgabeparametern festgelegt. Dort wird er über die Checkbox \"Glukosewerte anpassen\" aktiviert und deaktiviert. Wenn er aktiviert ist, erscheinen zwei Schieberegler. Der obere legt den errechneten HbA1C fest, der untere den im Labor ermittelten HbA1C. Wenn er aktiviert ist, wird auf jedem PDF rechts oben angegeben, mit welchem Faktor die Glukosewerte korrigiert wurden. Das hat auf jedem PDF Auswirkungen auf dem Glukosewerte verarbeitet werden." : MessageLookupByLibrary.simpleMessage("The glucose values can now be corrected with a factor that results from the A1C value determined by the laboratory and calculated in the program. This factor affects all sensor values processed in Nightscout Reporter. The factor is specified in the output parameters. There it is activated and deactivated via the \"Adjust glucose values\" checkbox. When activated, two sliders appear. The upper one defines the calculated A1C, the lower one the A1C determined by the laboratory. If it is activated, the factor with which the glucose values were corrected is indicated on the top right of each PDF. This affects every PDF on which glucose values are processed."),
    "Die Icons auf einigen Buttons waren zu nahe am Text" : MessageLookupByLibrary.simpleMessage("De iconen op sommige knoppen stonden te dicht bij de tekst"),
    "Die Kohlenhydratangaben auf der Tagesgrafik werden jetzt ohne den Zusatz KH ausgegeben." : MessageLookupByLibrary.simpleMessage("The carbohydrate information on the daily graph is now output without the suffix KH."),
    "Die Konfiguration erfolgt direkt im Fenster von Night-Watch, indem man etwas anklickt. Dadurch wechselt die Seite in den Editiermodus und mit den Controls am unteren Rand des Fensters können die vorhandenen Elemente verändert, verschoben, gelöscht oder neue Elemente hinzugefügt werden. Mit dem Speichern-Icon in den Controls werden die Einstellungen gespeichert und der Editiermodus beendet. Er kann auch beendet werden, indem man das aktive Element anklickt, wobei dann die Änderungen aber nicht gespeichert werden. Nach dem Neuladen der Seite hat man dann die letzte Ansicht vor sich." : MessageLookupByLibrary.simpleMessage("The configuration is done directly in the Night-Watch window by clicking on something. This sets the page to edit mode and the existing elements can be changed, moved, deleted or new elements can be added using the controls at the bottom of the window. With the save icon in the controls, the settings are saved and the edit mode is closed. It can also be closed by clicking the active item, but the changes will not be saved. After reloading the page you see the last view."),
    "Die Legende der Tagesgrafik wurde um den Eintrag für Bewegung erweitert." : MessageLookupByLibrary.simpleMessage("De legende van de dagelijkse grafiek is uitgebreid met het toevoegen van oefeningen."),
    "Die Legende der Tagesgrafik wurde um den Eintrag für blutige Messungen erweitert." : MessageLookupByLibrary.simpleMessage("Tot de legende van de dagelijkse grafische situatie behoort nu ook het binnenkomen van bloedwaarden."),
    "Die Links zu Nightscout und den Reports von Nightscout im Menü funktionieren jetzt auch richtig, wenn ein Usertoken angegeben wurde." : MessageLookupByLibrary.simpleMessage("De menu links naar Nightscout en de rapporten van Nightscout werken nu ook goed wanneer er een usertoken is verstrekt."),
    "Die Listenansicht ist jetzt wieder scrollbar." : MessageLookupByLibrary.simpleMessage("De lijstweergave kan opnieuw scrollen."),
    "Die Microboli des Minimed 600 Uploaders werden jetzt auch ermittelt und in der Analyse ausgegeben, wenn sie vorhanden sind." : MessageLookupByLibrary.simpleMessage("The microboli of the Minimed 600 Uploader are now also identified and output in the analysis, if they exist."),
    "Die Microboli vom Minimed 600 Uploader wurden aus der Ausgabe entfernt, da es sich dabei nur um Temporäre Basalraten handelt." : MessageLookupByLibrary.simpleMessage("De microboli van de Minimale 600 Uploader zijn van de output verwijderd, omdat het slechts tijdelijke basaalstanden zijn."),
    "Die Mischung von zwei Seiten auf einer PDF-Seite, die manchmal vorkam, wurde behoben." : MessageLookupByLibrary.simpleMessage("Het mengsel van twee pagina\'s op één PDF-pagina, die soms voorkwam, is opgelost."),
    "Die Möglichkeit für Beta-Funktionen wurde entfernt; die Betaversion ist nun hier zu finden:" : MessageLookupByLibrary.simpleMessage("The possibility for beta functions has been removed; the beta version is now available at:"),
    "Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird" : MessageLookupByLibrary.simpleMessage("De mogelijkheid om de URL in de titelbalk weer te geven is verwijderd sinds de huidige gebruiker of URL nu direct wordt weergegeven"),
    "Die Oberfläche kann jetzt verschiedene Darstellungen annehmen. Diese zeigen sich zur Zeit durch geänderte Farben und ein angepasstes Icon im Browsertab und beim Laden der Seite. Das hat keine Auswirkungen auf die erzeugten PDF-Dateien. Es ist die Vorbereitung für eine teilweise anpassbare Oberfläche. Das Thema der Darstellung wird standardmässig vom System festgelegt, was zur Zeit heisst, dass im Dezember ein weihnachtliches Thema angezeigt wird. Das kann aber durch Anklicken des Icons, das ab jetzt links unten zu sehen ist, geändert werden. Beim Anklicken wird rechts neben dem Icon ein Bereich mit den verfügbaren Darstellungen eingeblendet. Das erste Icon (der kleine Zauberer) bedeutet dabei, dass die Darstellung vom System ermittelt wird. Zur Zeit bedeutet das die weihnachtliche Darstellung im Dezember. Es kann in Zukunft aber auch weitere Kriterien geben, anhand derer das Thema angepasst wird. Die direkte Festlegung eines Themas mit einem der anderen icons hat aber immer Vorrang vor der systemeigenen Logik." : MessageLookupByLibrary.simpleMessage("De UI kan nu verschillende weergaven aannemen. Deze laten zichzelf zien op dit moment door verschillende kleuren en een aangepast icoon in de browsertab en met het laden van de zijde. Dit heeft geen invloed op de gegenereerde PDF-bestanden. Het is de voorbereiding op een gedeeltelijk aanpasbaar oppervlak. Het thema van de UI wordt standaard ingesteld door het systeem, wat momenteel betekent dat er in december een kerstthema zal worden weergegeven. Maar dit kan veranderd worden door te klikken op het pictogram, dat links onderaan zichtbaar is. Wanneer u op het pictogram klikt, wordt een gebied met de beschikbare thema\'s aan de rechterkant van het pictogram weergegeven. Het eerste pictogram (de kleine tovenaar) betekent dat het thema wordt bepaald door het systeem, op dit moment betekent dit de kerstpresentatie in december. Er kunnen in de toekomst echter andere criteria worden gebruikt om het thema aan te passen. De directe definitie van een thema met een van de andere iconen heeft echter altijd voorrang op de systeemlogica."),
    "Die Positionierung der Notizen in der Tagesgrafik wurde korrigiert, so dass sie näher an der Uhrzeit stehen. Die Striche wurden so verkürzt, dass sie nur noch bis zum unteren Rand der Grafik gehen und nicht mehr durch die Wertetabelle." : MessageLookupByLibrary.simpleMessage("The positioning of the notes in the daily chart has been corrected so that they are closer to the time. The strokes were shortened so that they go only to the bottom of the graph and not through the table of values."),
    "Die Profilbasalrate im Formular Tagesprofil wird jetzt ebenfalls mit Balken dargestellt." : MessageLookupByLibrary.simpleMessage("De profielbasaalstand in het profiel formulier wordt nu ook weergegeven met streepjes."),
    "Die Profile für den Zeitraum wurden teilweise nicht korrekt identifiziert. Das sollte behoben sein." : MessageLookupByLibrary.simpleMessage("De profielen voor de periode werden gedeeltelijk onjuist geïdentificeerd. Dat moet worden opgelost."),
    "Die Profilseite wurde angepasst, damit Einträge für 24 Stunden auf eine Seite passen." : MessageLookupByLibrary.simpleMessage("De profielpagina is aangepast zodat de invoer 24 uur op één pagina past."),
    "Die Profiltabelle sollte normalerweise nur Daten zu den verwendeten Profilen beinhalten. iOS Loop verwendet diese Tabelle aber dazu, um dort eigene Einstellungen zu speichern und tut dies bei einigen Benutzern exzessiv. Ab einer bestimmten Datenmenge kann die Profiltabelle über die API dann nicht mehr korrekt abgefragt werden. Deswegen gibt es hier die Möglichkeit, die Anzahl an Datensätzen einzuschränken, die aus dieser Tabelle geholt werden. Das ist so lange notwendig, wie iOS Loop oder andere Uploader diese Tabelle falsch befüllen.\n\nMaximale Anzahl an Profildatensätzen:" : MessageLookupByLibrary.simpleMessage("De profieltabel mag normaal gesproken alleen gegevens bevatten op de gebruikte profielen. iOS Loop gebruikt deze tabel om zijn eigen instellingen op te slaan en doet dit overmatig bij sommige gebruikers. Boven een bepaalde hoeveelheid gegevens kan de profieltabel niet meer correct worden opgespoord via de API. Daarom is er de mogelijkheid om het aantal gegevensbestanden dat van deze tafel wordt gehaald te beperken. Dit is nodig zolang iOS Loop of andere uploaders deze tabel verkeerd invullen.\n\nMaximum aantal profielgegevens:"),
    "Die Reihenfolge der Formulare kann nun verändert werden. Dazu einfach das Handle auf der linken Seite des Buttons für das Formular anklicken, festhalten und an die Stelle ziehen, vor der es ausgedruckt werden soll." : MessageLookupByLibrary.simpleMessage("De volgorde van de formulieren kan nu worden gewijzigd. Klik op de handgreep aan de linkerkant van de knop voor het formulier. houd het vast en sleep het naar de plek waar het afgedrukt moet worden."),
    "Die Seiten Profil und Basalrate zeigen nun bei einem Profil, das nur temporär während eines Tages aktiv war den Zeitraum an, in dem es aktiv war." : MessageLookupByLibrary.simpleMessage("The pages profile and basalrate for a profile that was temporarily active during one day now only show this timespan."),
    "Die Seitenzahlen auf den Kacheln wurden weiter an den unteren Rand verschoben, damit sie immer gut lesbar sind." : MessageLookupByLibrary.simpleMessage("De paginanummers op de tegels zijn verder naar de onderkant verplaatst, zodat ze altijd gemakkelijk te lezen zijn."),
    "Die Skalen an den Grafiken wurden überarbeitet. Sie zeigen jetzt für mmol/L ganzzahlige Werte an und die Einheiten wurden entfernt. Diese stehen nur noch unten an der Grafik. Das betrifft die täglichen Grafiken, wöchentlichen Grafiken und das Glukose Percentil Diagramm." : MessageLookupByLibrary.simpleMessage("De schalen op de graphics zijn bijgewerkt. Nu worden hele getallen voor mmol/L weergegeven en de eenheden zijn verwijderd. Deze worden onderaan de grafiek weergegeven. Je ziet de dagbeelden, de wekelijkse grafieken en de grafiek met beeldschermen."),
    "Die Spalten auf der Profilseite wurden korrigiert, damit auch längere Zeitnamen (z.B. in spanisch) Platz finden." : MessageLookupByLibrary.simpleMessage("De kolommen op de pagina zijn gecorrigeerd voor langere tijdnamen (bijvoorbeeld in het Spaans)."),
    "Die Standardabweichung wird jetzt auch bei mmol/L korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("De standaardafwijking wordt nu ook correct weergegeven bij het gebruik van mmol/L."),
    "Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an" : MessageLookupByLibrary.simpleMessage("De dagelijkse statistieken tonen nu mmol/l waarden correct"),
    "Die URL wurde noch nicht festgelegt" : MessageLookupByLibrary.simpleMessage("De URL is nog niet ingesteld"),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("De URL is nog niet ingesteld."),
    "Die URLs der Benutzer werden nun nach dem Enddatum sortiert." : MessageLookupByLibrary.simpleMessage("De URL\'s van de gebruikers worden nu gesorteerd volgens de einddatum."),
    "Die Url zur Nightscout-API muss mit https beginnen, da Nightscout Reporter auch auf https läuft. Ein Zugriff auf unsichere http-Resourcen ist nicht möglich." : MessageLookupByLibrary.simpleMessage("De Url naar de Nightscout API moet beginnen met https, omdat Nightscout Reporter ook werkt op https. Toegang tot onveilige http bronnen is niet mogelijk."),
    "Die Vorschaubilder auf den Kacheln passen sich abhängig von den ausgewählten Optionen teilweise an (z.B. die Auswahl von CGP bei Tagesgrafiken)." : MessageLookupByLibrary.simpleMessage("Het voorbeeld afbeeldingen op de tegels zullen gedeeltelijk worden aangepast, afhankelijk van de geselecteerde opties (bijvoorbeeld kiezen van CGP voor dagafbeeldingen)."),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("De website gebruikt voornamelijk Javascript om zijn werk te doen. Bij het aanmaken van het PDF-document Javascript en PHP wordt gebruikt."),
    "Die Werte VarK und ToR im CGP werden bei Tages- und Wochengrafiken in der Legende und in der Grafik korrekt ausgegeben." : MessageLookupByLibrary.simpleMessage("De waarden VarK en ToR in de CGP zijn de juiste output voor dag en week afbeeldingen in de legende en in de grafiek."),
    "Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt" : MessageLookupByLibrary.simpleMessage("De streefwaarden per standaardbereik op de analysepagina worden nu correct berekend"),
    "Die Werte im CGP werden jetzt bei mmol-Angaben auch korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("De waarden in de CGP worden nu ook correct weergegeven voor mmol-gegevens."),
    "Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. " : MessageLookupByLibrary.simpleMessage("De opgegeven URL is niet bereikbaar. Als de URL juist is, kan dit te wijten zijn aan de Nightscout-instellingen. "),
    "Die berechneten IE für Kohlenhydrate in der Tagesgrafik wurden teilweise mit falschen Faktoren ermittelt. Der Fehler wurde behoben." : MessageLookupByLibrary.simpleMessage("De berekende E voor koolhydraten in de dagelijkse grafiek is deels bepaald door verkeerde factoren. De bug is opgelost."),
    "Die eigenen Grenzwerte auf der Analyseseite in mmol/L werden nun korrekt berechnet." : MessageLookupByLibrary.simpleMessage("The own limits on the analysis page in mmol/L are now calculated correctly."),
    "Die einzelne Seite CGP kann jetzt auch im Querformat ausgegeben werden." : MessageLookupByLibrary.simpleMessage("De enkele pagina CGP kan nu ook output zijn in liggend formaat."),
    "Die falsche Bezeichnung für durchschnittliche Kohlenhydrate pro Tag in der Tagesstatistik wurde durch die korrekte Bezeichnung für durchschnittliche Kohlenhydrate pro Mahlzeit ersetzt." : MessageLookupByLibrary.simpleMessage("De onjuiste naam voor gemiddelde koolhydraten per dag in de dagelijkse statistieken is vervangen door de juiste naam voor gemiddelde koolhydraten per maand."),
    "Die fehlerhafte Platzierug der blutigen Werte bei mmol/L in der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Fixed the erroneous placement of the blood values in the daily graph when using mmol/L."),
    "Die fehlerhafte Zentrierung der Auswahlbuttons wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Verkeerde uitlijning van knoppen op de hoofdpagina is hersteld."),
    "Die glykämische Variabilität stellt die Streuung der Werte um den glykämischen Mittelwert herum in Prozent dar." : MessageLookupByLibrary.simpleMessage("Glycemische variabiliteit vertegenwoordigt de variatie van waarden rond de glycemische gemiddelde waarde in procent."),
    "Die glykämische Variabilität wird jetzt im CGP auch bei Tages- und Wochengrafiken korrekt ausgegeben." : MessageLookupByLibrary.simpleMessage("De glycemische variabiliteit is nu correct weergegeven in de CGP zelfs met dagelijkse en wekelijkse grafieken."),
    "Die meisten Spalten auf der Seite \"Stündliche Statistik\" werden bei nicht vorhandenen Daten leer gelassen." : MessageLookupByLibrary.simpleMessage("De meeste kolommen op de pagina \"ourly Statistics\" worden leeg gelaten als er geen gegevens zijn."),
    "Die mittlerweile überflüssige Option zur Darstellung der Basalrate mit zwei Nachkommastellen wurde aus der Tagesgrafik entfernt." : MessageLookupByLibrary.simpleMessage("Verwijderde de verouderde optie voor de decimalen van de basaalstand van de dagelijkse grafieken."),
    "Die teilweise falsch zugewiesenen Grenzwerte für die Bereiche (niedrig, normal, hoch) wurden korrigiert." : MessageLookupByLibrary.simpleMessage("De gedeeltelijk verkeerd toegewezen limieten voor de gebieden (laag, normaal, hoog) zijn gecorrigeerd."),
    "Die temporäre Basalrate am Anfang des Tages wurde bisher falsch gesetzt, wenn sie im vorherigen Tag gesetzt wurde. Das wurde behoben." : MessageLookupByLibrary.simpleMessage("De tijdelijke basaalstand aan het begin van de dag is onjuist ingesteld als deze in de vorige dag is ingesteld. Dit is opgelost."),
    "Die Überschrift über der Tabelle vom Glucose Perzentil Diagramm wurde korrigiert." : MessageLookupByLibrary.simpleMessage("De titel boven de tabel met glucose percentieldiagram is aangepast."),
    "Die Überschrift über der mittleren Spalte im Tagesprofil wurde korrigiert." : MessageLookupByLibrary.simpleMessage("De titel boven de middelste kolom in het dagprofiel is gecorrigeerd."),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("Deze pagina wordt gebruikt voor het genereren van PDF-documenten met de gegevens opgeslagen in Nightscout. Daarom is het noodzakelijk om toegang te krijgen tot deze gegevens, en daarom moeten eerst enkele instellingen worden opgeslagen. Zolang deze niet beschikbaar en geldig zijn, kan de site niets voor u doen."),
    "Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden." : MessageLookupByLibrary.simpleMessage("Toegevoegd deze pagina. Deze wordt elke keer weergegeven als Nightscout Reporter start, als deze niet is weergegeven in de huidige versie. Bovendien kan het weer in het burgermenu worden opgeroepen."),
    "Diese Webseite speichert keine Daten auf Servern. Die benötigten Daten werden von der eingegebenen URL zur Nightscout-Instanz geholt und als PDF aufbereitet. Die Daten, die zur Funktion der Webseite benötigt werden, werden im localStorage des Browsers gespeichert und nicht an den Server übermittelt. Wenn die Synchronisierung mit Google Drive aktiviert wird, dann werden diese Daten zusätzlich in den Anwendungsdaten auf dem Google Drive des verbundenen Kontos gespeichert." : MessageLookupByLibrary.simpleMessage("Deze website slaat geen gegevens op op op servers. De vereiste gegevens worden opgehaald van de ingevoerde URL naar de Nightscout instantie en opgemaakt als PDF. De gegevens die vereist zijn voor het werken van de website worden opgeslagen in de localStorage van de browser en niet verzonden naar de server. Als het synchroniseren met Google Drive is ingeschakeld, dan worden die gegevens ook opgeslagen in de applicatiegegevens op de geassocieerde account van Google Drive."),
    "Dieser Regler legt fest, wie gross eine Ausgabe maximal werden darf, bevor sie auf mehrere PDF-Dateien aufgeteilt wird. Wenn bei Erstellung eines PDFs ein leeres Fenster angezeigt wird, dann hilft es normalerweise, diesen Regler weiter nach links zu bewegen." : MessageLookupByLibrary.simpleMessage("Deze slider definieert de maximale grootte toegestaan voordat de PDF wordt gesplitst in meerdere bestanden. Als een leeg venster wordt weergegeven bij het maken van een PDF, helpt het meestal om deze schuifregelaar verder naar links te verplaatsen."),
    "Dieses Formular ..." : MessageLookupByLibrary.simpleMessage("Dit formulier ..."),
    "Dieses Formular zeig die Verteilung der Glukosewerte\nim ausgewählten Zeitraum an." : MessageLookupByLibrary.simpleMessage("Dit formulier toont de verdeling van de glucosewaarden in de geselecteerde periode."),
    "Dieses Formular zeigt an, wie sich die Glukosewerte im ausgewählten Zeitraum über den Tag\nverteilen. Diese Verteilung kann graphisch und tabellarisch ausgegeben werden.\n\nIn der Grafik sind die Bereiche für bestimmte Abweichungen farblich markiert. Die Linie zeigt den Medianwert\nan. In der Tabelle kann man diese Werte nachlesen. Wenn die Basalrate mit ausgegeben wird, dann ist das die\nBasalrate, die zu Beginn des ausgewählten Zeitraums aktiv war." : MessageLookupByLibrary.simpleMessage("Dit formulier toont hoe de glucosewaarden over de dag in de geselecteerde periode worden verdeeld. Deze distributie kan grafisch en in tabulaire vorm worden uitgewerkt.\n\nIn de grafiek zijn de gebieden voor bepaalde afwijkingen kleurgecodeerd. De lijn toont de mediaan waarde. Je kunt de waarden in de tabel opzoeken. Als de basaalstand ook wordt weergegeven, dan is dit de basaalstand die aan het begin van de geselecteerde periode actief was."),
    "Dieses Formular zeigt das Comprehensive Glucose Pentagon an, welches die Qualität der \nGlukoseeinstellung in einer schnell zu erfassenden Weise darstellt. Es wird für den ausgewählten Zeitraum angezeigt\nwie lange der Glukosewert im Schnitt während des Tages ausserhalb des Zielbereichs war, wie hoch die Intensität\nder Überzuckerungen und der Unterzuckerungen war, wie hoch der Mittelwert war und wie hoch die Variabilität der\nWerte war.\n\nDiese Grafik kann auch bei @05@ und @08@ ausgegeben werden. \n" : MessageLookupByLibrary.simpleMessage("In dit formulier wordt de volledige glucose Pentagon weergegeven, die de kwaliteit van de glucosecontrole op een goed begrepen manier weergeeft. Voor de geselecteerde periode toont het hoe lang de gemiddelde glucosewaarde overdag buiten het streefdoel lag. Hoe hoog de intensiteit van de hyperglycemie en hypoglycemie was, hoe hoog de gemiddelde waarde was en hoe hoog de variabiliteit van de waarden was.\n\nDeze grafiek kan ook worden uitgevoerd op @05@ en @08@."),
    "Dieses Formular zeigt das Profil an. Es werden normalerweise alle Profile des ausgewählten\nZeitraums ausgegeben. Wenn sich in dem Zeitraum das Profil geändert hat, wird ein neues Blatt erzeugt.\n\nEs gibt aber eine Option, welche nur das letzte Profil des Zeitraums ausgibt. Ausserdem gibt es eine Option,\nmit der gleiche Zeilen zusammengefasst werden. Das führt zu einem kürzeren Profil, wenn mehrere Zeiten nacheinander\ndie gleichen Werte beinhalten." : MessageLookupByLibrary.simpleMessage("Dit formulier toont het profiel. Meestal worden alle profielen van de geselecteerde periode weergegeven. Als het profiel is veranderd gedurende deze periode, wordt er een nieuw vel aangemaakt.\n\nEr is echter een optie die alleen het laatste profiel van de periode uitvoert. Er is ook een mogelijkheid om lijnen te combineren met dezelfde waarden. Dit leidt tot een korter profiel als meerdere keren achter elkaar dezelfde waarden bevatten."),
    "Dieses Formular zeigt den Trend der Glukosewerte über den Tag hinweg \nan. Dabei wird in der Spalte Trend immer angezeigt, um wieviel Prozent sich \nder Wert von einer vollen Stunde zur nächsten verändert hat. Dieser Trend ist\nganz hilfreich, wenn man bei einem Basalratentest erkennen will, wie sich der\nGlukosewert nur anhand der Basalrate entwickelt. Es kann auch eine Spalte für\ndie Boluswerte und die Kohlenhydrate angezeigt werden. Diese sollten aber bei\neinem Basalratentest natürlich leer sein. Ebenso muss ein eventuell\nvorhandener Loop im Zeitraum des Tests abgeschaltet sein. Es geht dabei nur\num den Diabetiker und seine Basalrate.\nEs wird auch eine Spalte mit der\nBasalrate angezeigt, wenn die Option \'Alle Werte für einen Tag anzeigen\'\nnicht markiert wurde. Wenn die Option markiert wurde, dann fehlt der Platz\n(und auch der Sinn), diese darzustellen." : MessageLookupByLibrary.simpleMessage("This form shows the trend in glucose levels over the day. The Trend column always shows the percentage by which the value has changed from one full hour to the next. This trend is very helpful if you want to see in a basal rate test how the glucose value is developing based on the basal rate alone. A column for bolus values and carbohydrates can also be displayed. However, these should of course be empty in a basal rate test. Any existing loop must also be switched off during the test. It\'s all about the diabetic and his basal rate.\n\nA column with the basal rate is also displayed if the option \"Show all values for a day\" is not checked. If the option has been marked, then there is no space (and also the sense) to display it."),
    "Dieses Formular zeigt den Verlauf der Glukosekurve für einen Tag. Pro Tag im ausgewählten\nZeitraum wird eine Seite erzeugt. Es gibt sehr viele Optionen, mit denen dieses Formular angepasst werden kann.\nDie Optionen, die auf einen Loop hinweisen sind andersfarbig markiert, um sie schneller identifizieren zu \nkönnen. Die Optionen COB und IOB verlangsamen die Ausgabe teilweise erheblich, weshalb man diese nur dann\nverwenden sollte, wenn sie wirklich von Interesse sind.\n\nUnter der Grafik kann die Basalrate angezeigt werden. Ein laufender Loop wird diese immer wieder hoch und runter\nsetzen. Deshalb kann man sowohl die tatsächliche Basalrate als auch die im Profil eingestellte Basalrate \nanzeigen lassen. Für die Basalrate gibt es noch die Formulare @09@, @11@ und @02@, auf denen man sie genauer \nanalysieren kann. Man kann auch das @10@ für den Tag erzeugen lassen. Das wird dann auf einer neuen Seite ausgegeben.\n\nDieses Formular ist eines der seitenintensivsten Formulare in Nightscout Reporter. Deshalb gibt es hier \ndie Möglichkeit, mehrere Tagesgrafiken auf einer Seite ausgeben zu lassen. Darunter leidet natürlich die Lesbarkeit,\naber für einen Überblick über den Verlauf ist das ganz nützlich." : MessageLookupByLibrary.simpleMessage("Dit formulier toont de glucosecurve voor één dag. Er wordt per dag één pagina in de geselecteerde periode gegenereerd. Er zijn veel opties die kunnen worden gebruikt om dit formulier aan te passen. De opties die een lus aangeven, zijn gemarkeerd in een andere kleur, zodat ze heel gemakkelijk geïdentificeerd kunnen worden. De opties COB en IOB vertragen soms de output aanzienlijk. Daarom moet u ze alleen gebruiken als u er echt belang bij heeft.\n\nDe basaalstand kan onder de grafiek getoond worden. Een looplus zal deze keer op keer verhogen en verlagen. Daarom kun je zowel de werkelijke basaalstand als de ingestelde basaalstand in het profiel laten zien. Voor de basaalstand zijn er de formulieren @09@, @11@ en @02@, waarop je het nauwkeuriger kunt analyseren. Je kan ook de @10@ voor de dag laten genereren. Dit wordt dan op een nieuwe pagina afgedrukt.\n\nDit formulier is een van de meest pagina-intensieve formulieren in Nightscout Reporter. Daarom is het mogelijk om meerdere dagelijkse grafieken op één pagina weer te geven. Natuurlijk lijdt de leesbaarheid daaronder, maar het is zeer nuttig voor een overzicht van de vooruitgang."),
    "Dieses Formular zeigt den Verlauf der Glukosekurve über eine Woche hinweg an. Der Zeitraum wird\ndazu in Wochenabschnitte aufgeteilt und jede Woche wird auf einer eigenen Seite ausgegeben. Die Wochen werden\nfarblich markiert, so dass man sie gut unterscheiden kann. Zusätzlich kann noch das @10@ für die jeweilige\nWoche erzeugt werden." : MessageLookupByLibrary.simpleMessage("In dit formulier staat de glucose curve van een week. De periode is verdeeld in wekelijkse segmenten en elke week wordt weergegeven op een aparte pagina. De weken zijn gekleurd zodat je ze gemakkelijk kunt onderscheiden. Daarnaast kan de @10@ voor de desbetreffende week worden gegenereerd."),
    "Dieses Formular zeigt die Auswertung der Werte des ausgewählten\nZeitraums. Dabei wird auch der durchscnittliche Verbrauch an Materialien\nrechnerisch ermittelt und angezeigt. Dieses Formular beinhaltet die meisten\nInformationen, die Diabetologen gerne wissen wollen.\n\nDer HbA1c wird rechnerisch aus den vorhandenen Daten ermittelt und weicht\nnormalerweise nicht unerheblich von dem tatsächlich gemessenen Wert ab. Der\nWert, der aus der Blutprobe ermittelt wird, gibt die tatsächliche Bindung\nvon Glukose im Blut wieder. Da diese von zusätzlichen Faktoren abhängig ist\nund nicht nur von den hier verwendeten Messdaten, ergeben sich Unterschiede\nzum errechneten Wert. Vor allem, wenn es sich bei den gemessenen Werten nicht\num Blutzucker, sondern um Gewebszucker handelt, wie er von CGM-Systemen\nverwendet wird.\n\nTrotzdem ist dieser Wert ein grober Anhaltspunkt für die Qualität der\nGlukoseeinstellung und wird in der vom Labor ermittelten Form gerne von\nDiabetologen als Richtwert verwendet, weshalb er hier angezeigt wird. Er wird\naber in schwächerer Schrift ausgegeben, damit seine zweifelhafte Natur auch\nerkennbar ist." : MessageLookupByLibrary.simpleMessage("Dit formulier toont de evaluatie van waarden voor de geselecteerde periode. Het gemiddelde verbruik van materialen wordt berekend en weergegeven. Dit formulier bevat de meeste informatie die diabeten graag zouden willen weten.\n\nDe A1C wordt berekend op basis van de beschikbare gegevens en wijkt normaal gesproken niet onaanzienlijk af van de feitelijk gemeten waarde. De waarde die wordt bepaald door het bloed monster toont de feitelijke binding van glucose in het bloed. Aangezien dit afhankelijk is van aanvullende factoren en niet alleen van de hier gebruikte meetgegevens, zijn er verschillen in de berekende waarde. Vooral wanneer de gemeten waarden die worden gemeten, geen bloedsuiker zijn, maar weefselsuiker, zoals gebruikt door CGM-systemen.\n\ndesalniettemin deze waarde is een ruwe schatting naar de kwaliteit van de Glucose instelling en in de vorm die wordt bepaald door het laboratorium wordt vaak door diabeten gebruikt als een richt waarde. dat is de reden waarom het hier wordt weergegeven. Maar het wordt in een zwakker lettertype uitgegeven, zodat ook het twijfelachtige karakter ervan wordt erkend."),
    "Dieses Formular zeigt die Basalrate, die im Profil eingestellt ist in graphischer Form an.\nEs werden normalerweise alle Basalraten des ausgewählten Zeitraums ausgegeben. Wenn sich in dem Zeitraum\ndie Basalrate geändert hat, wird eine neue Seite erzeugt.\n\nEs gibt aber eine Option, welche nur die letzte Basalrate des Zeitraums ausgibt." : MessageLookupByLibrary.simpleMessage("Dit formulier toont het basaal dat in het profiel is ingesteld. Meestal word het basaal voor de geselecteerde periode weergegeven. Als het basaal veranderd is in de periode, wordt er een nieuwe pagina aangemaakt.\n\nEr is echter een optie die alleen het laatste basaal van de periode uitvoert."),
    "Dieses Formular zeigt die Daten in tabellarischer Form an. Es kann abhängig von den\nausgewählten Optionen sehr viele Seiten umfassen. Es ist vor allem dafür sinnvoll, um bestimmte Daten aufzufinden.\nZum Beispiel kann man damit ermitteln, wann Katheterwechsel vorgenommen wurden, wieviele Datensätze als doppelt \nerkannt wurden oder wo Notizen erfasst wurden.\n" : MessageLookupByLibrary.simpleMessage("Dit formulier toont de gegevens in tabulaire vorm. Deze kunnen bestaan uit heel veel pagina\'s afhankelijk van de opties die u kiest. Het is vooral nuttig om bepaalde gegevens te vinden. Het kan bijvoorbeeld worden gebruikt om te bepalen wanneer de catheter is veranderd. Hoeveel gegevensrecords werden herkend als duplicaat of waar notities werden opgenomen."),
    "Dieses Formular zeigt die statistischen Werte für die Tage des ausgewählten Zeitraums\nan. Für jeden Tag wird eine Zeile erzeugt. Die Spalten kann man teilweise konfigurieren. Auch hier wird der geschätzte \nHbA1c ausgegeben. Dieser hat wie auch im Formular @01@ nur sehr wenig Aussagekraft, weshalb er auch hier nur mit \nschwächerer Schrift angezeigt wird.\n" : MessageLookupByLibrary.simpleMessage("Dit formulier toont de statistische waarden voor de dagen van de geselecteerde periode. Er wordt een regel gegenereerd voor elke dag. De kolommen kunnen gedeeltelijk worden geconfigureerd. De geschatte A1C is hier ook de uitvoer. Net als in de @01@ formulier, heeft dit weinig informatieve waarde, en daarom wordt het hier ook met een zwakkere lettertype getoond."),
    "Dieses Formular zeigt die tatsächliche Basalrate, die während des Tages gelaufen ist unter\nBerücksichtigung aller temporären Basalratenanpassungen. Zusätzlich kann noch die im Profil hinterlegte\nBasalrate angezeigt werden. Die Basalrate kann als Wert, als prozentuale Änderung in Bezug auf die Profilbasalrate\noder mit beidem angezeigt werden. Die Summenspalte zeigt die bis zur entsprechenden Uhrzeit abgegebene Basalrate\nan. Es ist auch möglich, die Uhrzeit mit Sekunden anzeigen zu lassen. Damit kann man die angezeigten Werte\nrechnerisch überprüfen.\n\nWenn die Basalrate aus dem Profil angezeigt wird, wird das Maximum für die Darstellung der Balken anhand des\nmaximalen Wertes der Profilbasalrate ermittelt. Dadurch werden bei Werten über 100% des Maximalwerts der \nProfilbasalrate die Balken über die Spalte hinaus verlängert. Es gibt aber eine Option, um diese Balken abzuschneiden \nund als Pfeile darstellen zu lassen." : MessageLookupByLibrary.simpleMessage("Dit formulier toont de werkelijke basaalstand die gedurende de dag is geweest, rekening houdend met eventuele tijdelijke basaalstanden. De opgeslagen basaalstand in het profiel kan ook worden weergegeven. De basaal kan worden weergegeven als een waarde, als een percentage dat verandert ten opzichte van de profiel basaal of beide. De totale kolom toont de basaalstand tot de overeenkomstige tijd. Het is ook mogelijk om de tijd met seconden weer te geven. Dit kan worden gebruikt om wiskundig de weergegeven waarden te controleren.\n\nAls de basaalstand wordt weergegeven in het profiel, het maximum voor weergave van de balken wordt bepaald met behulp van de maximale waarde van de profielbasaalstand. Als gevolg daarvan worden de balken uitgebreid tot boven de kolom voor waarden boven de 100% van de maximale waarde van de basaalstand. Maar er is een optie om deze balken af te knippen\nen ze te laten zien als pijlen."),
    "Dieses Formular zeigt eine Übersicht für einen Tag. Hier \n  werden die Tagesgrafik, die Basalrate, die Basalratenanpassungen, Insulin On \n  Board und Carbs On Board angezeigt." : MessageLookupByLibrary.simpleMessage("Dit formulier toont een overzicht van één dag. Hier\n   de dagelijkse grafiek, de basale snelheid, aanpassingen het basaal, Insuline aan\n   op het bord en de koolhydraten aan het bord."),
    "Dieses Formular zeigt eine Übersicht über die \nStunden der Tage des ausgewählten Zeitraums an. Die angezeigten Werte sind die\nMittelwerte der innerhalb der entsprechenden Stunde gemessenen Werte. Sie\nwerden anhand des ausgewählten Zielbereichs eingefärbt. In den Formularoptionen\nkann man die Startstunde festlegen. Die Datumsspalte befindet sich immer links\nvon 0 Uhr und zeigt an, wo ein neuer Tag beginnt." : MessageLookupByLibrary.simpleMessage("Dit formulier toont een overzicht van de uren van de dagen van de geselecteerde periode. De getoonde waarden zijn de mediane waarden van de waarden gemeten binnen het overeenkomstige uur. Ze zijn gekleurd op basis van het geselecteerde doelgebied. Het beginuur kan worden ingesteld in de formulieropties. De datumkolom loopt altijd links van middernacht en laat zien waar een nieuwe dag begint."),
    "Diverse Abstürze beim Auslesen der Daten bereinigt" : MessageLookupByLibrary.simpleMessage("Verschillende crashes bij het lezen van gegevens opgelost"),
    "Drei Monate vorher" : MessageLookupByLibrary.simpleMessage("Drie maanden ervoor"),
    "Drittes Quartal" : MessageLookupByLibrary.simpleMessage("Derde kwartaal"),
    "Durchschnitt" : MessageLookupByLibrary.simpleMessage("Gemiddelde"),
    "Dämmerung (06:00 - 07:59, 18:00 - 20:59)" : MessageLookupByLibrary.simpleMessage("Schemering (06:00 - 07:59, 18:00 - 20:59)"),
    "Eigene Grenzwerte" : MessageLookupByLibrary.simpleMessage("Eigen doelgebied"),
    "Ein Fehler bei der Ausgabe der temporären Ziele in der Tagesgrafik wurde behoben." : MessageLookupByLibrary.simpleMessage("Er is een fout opgetreden in de output van de tijdelijke doelen in de dagelijkse grafiek."),
    "Ein Fehler beim Laden der ausgewählten Formulare wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Er is een fout opgetreden bij het laden van het geselecteerde formulier."),
    "Ein Fehler in der Zahlenformatierung wurde behoben." : MessageLookupByLibrary.simpleMessage("Een fout in de nummeropmaak is opgelost."),
    "Ein Fehler wurde behoben, der bei der Auswahl des Zeitraums die Benutzung verhinderte, wenn man ein leeres Eingabefeld fokussierte." : MessageLookupByLibrary.simpleMessage("Een bug is verholpen die het gebruik van de app bij het selecteren van de tijdsperiode als je je concentreerde op een leeg invoerveld."),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die Anwendung in einem undefinierten Zustand war, wenn man den letzten Benutzer gelöscht hat." : MessageLookupByLibrary.simpleMessage("Er is een bug opgelost die ervoor heeft gezorgd dat de applicatie zich in een niet-gedefinieerde status bevindt wanneer de laatste gebruiker werd verwijderd."),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die letzten Tage bestimmter Monate nicht im Kalender-Control angezeigt wurden." : MessageLookupByLibrary.simpleMessage("Fixed a bug that caused the last days of certain months not to be displayed in the calendar control."),
    "Ein Fehler wurde behoben, der dafür sorgte, dass temporäre Ziele in der Tagesgrafik mit zeitlicher Verschiebung angezeigt wurden." : MessageLookupByLibrary.simpleMessage("Er is een bug opgelost die ervoor heeft gezorgd dat tijdelijke objecten in de dagelijkse grafiek met een tijdverschuiving worden weergegeven."),
    "Ein Fehler wurde behoben, der dazu führte, dass Dialoge mit Escape geschlossen werden konnten, was die Anwendung in einem unbrauchbaren Zustand zurückliess." : MessageLookupByLibrary.simpleMessage("Bug opgelost die ervoor zorgde dat dialoogvensters gesloten werden met Escape, waardoor de applicatie in een onbruikbare toestand bleef."),
    "Ein Fehler wurde behoben, der dazu führte, dass bei fehlenden Daten wie z.B. Treatments gar kein PDF mehr erstellt werden konnte." : MessageLookupByLibrary.simpleMessage("Er is een fout opgetreden die ertoe heeft geleid dat ontbrekende gegevens, zoals behandelingen, niet langer een PDF kunnen creëren."),
    "Ein Fehler wurde behoben, der in der Tagesgrafik dazu führte, dass Texte in der Legende andere Texte überschrieben haben." : MessageLookupByLibrary.simpleMessage("A bug has been fixed that caused the daily graphics to overwrite texts in the legend."),
    "Ein Fehler wurde wahrscheinlich behoben, der dazu führt, dass bei manchen Profilen der Wert für DIA nicht korrekt ausgelesen wurde." : MessageLookupByLibrary.simpleMessage("An error has probably been fixed that causes some profiles to miss the value for DIA incorrectly."),
    "Ein Jahr vorher" : MessageLookupByLibrary.simpleMessage("Een jaar ervoor"),
    "Ein Link zur Facebookseite von Nightscout Reporter wurde im Menü hinzugefügt." : MessageLookupByLibrary.simpleMessage("Een link naar de Facebook-pagina van Nightscout Reporter is toegevoegd aan het menu."),
    "Ein Shortcut beinhaltet den Zeitraum und die ausgewählten Formulare mit den jeweils gesetzten Optionen. Wenn ein Shortcut aktiviert wird, werden die darin gespeicherten Einstellungen geladen und aktiviert." : MessageLookupByLibrary.simpleMessage("Een snelkoppeling bevat de periode en de geselecteerde formulieren met de opties. Als een snelkoppeling geactiveerd is, worden de instellingen die opgeslagen zijn geladen en geactiveerd."),
    "Ein möglicher Absturz bei der Ausgabe des CGP bei der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Een mogelijke crash in de output van de CGP in de dagelijkse grafiek is opgelost."),
    "Eine" : MessageLookupByLibrary.simpleMessage("Eén"),
    "Einen Monat vorher" : MessageLookupByLibrary.simpleMessage("Een maand ervoor"),
    "Einheit" : MessageLookupByLibrary.simpleMessage("Unit"),
    "Einheit der Glukosemessung" : MessageLookupByLibrary.simpleMessage("Eenheid voor glucose waarden"),
    "Einheiten" : MessageLookupByLibrary.simpleMessage("Eenheden"),
    "Einige Browser sind nicht in der Lage PDF Dateien anzuzeigen, die eine bestimmte Grösse überschreiten. Da das von verschiedenen Faktoren abhängt, die sich nicht ohne Weiteres automatisch ermitteln lassen, gibt es die Möglichkeit, statt einer grossen PDF Datei, die nicht angezeigt werden kann, mehrere kleinere PDF Dateien zu erzeugen, die der Browser anzeigen kann. In den Einstellungen und hier kann diese Grösse festgelegt werden. Diese Seite hier wird nur angezeigt, wenn das PDF aufgeteilt werden musste. Wenn nur ein PDF erzeugt wurde, dann wird es direkt angezeigt." : MessageLookupByLibrary.simpleMessage("Sommige browsers kunnen PDF-bestanden die groter zijn dan een bepaalde grootte niet weergeven. Omdat dit afhankelijk is van verschillende factoren die niet automatisch kunnen worden vastgesteld. er is de mogelijkheid om meerdere kleinere PDF-bestanden te genereren die de browser kan weergeven in plaats van een groot PDF-bestand dat niet kan worden weergegeven. Deze grootte kan hier worden gespecificeerd in de instellingen. Deze pagina wordt alleen getoond als de PDF gesplitst moest worden. Als er maar één PDF is aangemaakt, wordt het direct weergegeven."),
    "Einige Formulare können nun mit Parametern konfiguriert werden; hierzu den Pfeil am rechten Rand des Formularbuttons anklicken und im aufgeklappten Bereich die entsprechenden Einstellungen vornehmen; der Pfeil erscheint erst, wenn das Formular zum Ausdruck markiert wurde" : MessageLookupByLibrary.simpleMessage("Some forms can now be configured with parameters; click on the arrow on the right side of the formbutton and make the appropriate settings in the opened area; the arrow will not appear until the form has been marked for printout"),
    "Einige der Optionen für die PDFs wurden hierarchisch angeordnet. Es macht z.B. keinen Sinn, die SMB Werte in der Tagesgrafik an der Kurve platzieren zu lassen, wenn die SMB Werte gar nicht angezeigt werden. Deswegen werden Optionen, die von einer anderen Option abhängen nur dann angezeigt, wenn die entsprechende Option markiert ist. Dadurch ändert sich leider auch die Speicherung der Optionen, weshalb sich die aktuelle Auswahl der Optionen bei manchen PDFs verändert. Da müssen die Optionen dann neu gesetzt werden." : MessageLookupByLibrary.simpleMessage("Some of the options for the PDFs have been arranged hierarchically. There is no point in having the SMB values placed in the daily graph at the curve if the SMB values are not displayed at all. Therefore, options that depend on another option are only displayed if the corresponding option is selected. This unfortunately also changes the storage of options, which is why the current selection of options for some PDFs changed. These options have to be set again."),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("Instellingen"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("Instellingen voor het gebruik van de pagina"),
    "Einstellungen von Release-Version übernehmen" : MessageLookupByLibrary.simpleMessage("Sla instellingen op van release versie"),
    "Einstiegsvideo" : MessageLookupByLibrary.simpleMessage("Gebruikersvideo"),
    "English (GB)" : MessageLookupByLibrary.simpleMessage("Engels (Brits)"),
    "English (USA)" : MessageLookupByLibrary.simpleMessage("Engels (VS)"),
    "Ermittle ersten Tag mit Daten" : MessageLookupByLibrary.simpleMessage("De eerste dag zoeken met gegevens"),
    "Ermittle letzten Tag mit Daten" : MessageLookupByLibrary.simpleMessage("Op laatste dag zoeken met gegevens"),
    "Erstes Quartal" : MessageLookupByLibrary.simpleMessage("Eerste kwartaal"),
    "Erzeuge PDF..." : MessageLookupByLibrary.simpleMessage("PDF maken..."),
    "Es gibt ein neues Formular namens \"Verteilung der Glucosewerte\". Das zeigt die prozentuale Verteilung der Glukosewerte für den ausgewählen Zeitraum an." : MessageLookupByLibrary.simpleMessage("Er is een nieuw formulier genaamd \"Distributie van glucosewaarden\". Dit toont het percentage van de glucosewaarden voor de geselecteerde periode."),
    "Es gibt ein neues PDF namens Tagesstunden. Dieses zeigt die Durchschnittswerte eines Tages in jedem Stundenintervall an und färbt die Zellen entsprechend des Glukosewertes ein. So hat man eine gut Übersicht über die Werteverteilung im ausgewählten Zeitraum." : MessageLookupByLibrary.simpleMessage("Er is een nieuw PDF-bestand genaamd Daguur. Dit toont de gemiddelde waarden van een dag in elk uur-interval en vult de achtergrondkleur van de cellen volgens de glucosewaarde. Dit geeft een goed overzicht van de waardeverdeling in de geselecteerde periode."),
    "Es gibt ein neues PDF namens Tagestrend. Dieses zeigt die Werte eines Tages zusammen mit dem Trend zu jeder vollen Stunde, sowie der eingestellten Basalrate aus dem Profil. Das ist eine gute Übersicht für Basalratentests, um zu erkennen, wo etwas anzupassen ist." : MessageLookupByLibrary.simpleMessage("Er is een nieuwe PDF genaamd Daily Trend. Dit toont de waarden van een dag samen met de trend op het uur en de ingestelde basaalstand in het profiel. Dit is een goed overzicht van de basaalstanden om te zien waar er iets moet worden aangepast."),
    "Es gibt eine neue Option in der Tagesgrafik mit der man den Zielwert ein- und ausblenden kann." : MessageLookupByLibrary.simpleMessage("Er is een nieuwe optie in de dagelijkse grafiek waarmee u de doelwaarde kunt tonen en verbergen."),
    "Es gibt eine neue PDF-Seite für die Tagesprofile. Darauf ist eine Tabelle zu sehen, die die tatsächliche Basalrate für den Tag zeigt, inklusive aller temporären Anpassungen. Ich brauchte das für Debugzwecke, aber vielleicht findet das der eine oder andere Benutzer auch interessant. Das Profil, das dort angezeigt wird entspricht dem Tagesprofil auf der Seite Tagesgrafik. Beim Loopen können das sehr viele Seiten werden, da dort normalerweise alle paar Minuten Anpassungen an der Basalrate vorgenommen werden. Deswegen wird die Tabelle auch abhängig von der Datenmenge in maximal drei Spalten dargestellt, um die Anzahl an Seiten zu reduzieren." : MessageLookupByLibrary.simpleMessage("Er is een nieuwe PDF-pagina voor de dagelijkse profielen. Het bevat een tabel met de werkelijke basaal voor de dag, inclusief alle tijdelijke aanpassingen. Ik had dat nodig om te debuggen, maar misschien vinden sommige gebruikers het ook interessant. Het profiel dat daar wordt weergegeven komt overeen met het dag profiel op de pagina Dagelijkse Graphics. Lussen kunnen veel pagina\'s produceren, omdat het basaal gewoonlijk elke paar minuten wordt aangepast. Daarom, afhankelijk van het aantal gegevens, wordt de tabel in maximaal drie kolommen weergegeven om het aantal pagina\'s te verminderen."),
    "Es gibt in den Einstellungen eine Option, das PDF herunterladen zu lassen, statt es im Browser direkt anzeigen zu lassen. Das wird für Browser wie Edge benötigt." : MessageLookupByLibrary.simpleMessage("There is an option in the settings to download the PDF instead of having it displayed directly in the browser. This is needed for browsers like Edge."),
    "Es gibt in den Einstellungen eine neue Option, um den letzten in Nightscout gespeicherten Glukosewert in der Titelzeile anzeigen zu lassen. Wenn diese Option aktiviert ist, wird der aktuelle Wert, das Alter des Wertes, der Trendpfeil und die Differenz zum vorherigen Wert rechts in der Titelzeile angezeigt. Diese Anzeige wird jede Minute aktualisiert, solange das Browserfenster den Eingabefokus besitzt. Wenn es diesen nicht hat, wird die Aktualisierung angehalten und der Wert ausgeblendet, um nicht unnötig Systemresourcen zu belasten." : MessageLookupByLibrary.simpleMessage("Er is een nieuwe optie in de instellingen om de laatste glucosewaarde in Nightscout weer te geven in de titelbalk. Als deze optie is ingeschakeld, de huidige waarde, de leeftijd van de waarde de trend pijl en het verschil met de vorige waarde wordt weergegeven aan de rechterkant van de titelbalk. Dit scherm wordt elke minuut bijgewerkt zolang uw browservenster de focus heeft. Als de focus niet op is, wordt de update gestopt en is de waarde verborgen om onnodige belasting van systeembronnen te voorkomen."),
    "Es gibt jetzt Shortcuts, mit denen man die aktuelle Auswahl der Formulare, deren Parameter und den ausgewählten Zeitraum speichern kann. Beim Aktivieren eines Shortcuts wird das alles wieder so eingestellt, wie es war, als der Shortcut gespeichert wurde." : MessageLookupByLibrary.simpleMessage("Er zijn nu snelkoppelingen waarmee u de huidige selectie van formulieren, hun parameters en de geselecteerde periode kunt opslaan. Bij het activeren van een snelweg, wordt alles teruggezet naar wat het was toen de snelkoppeling werd gered."),
    "Es gibt jetzt auch die Möglichkeit, Nightscout Reporter in europäischem Englisch darzustellen. Der Unterschied zum amerikanischen Englisch besteht derzeit lediglich im Datumsformat (gb: dd/MM/yyyy, us: MM/dd/yyyy)." : MessageLookupByLibrary.simpleMessage("Er is nu ook de mogelijkheid om Nightscout Reporter te gebruiken in Europees Engels. Het verschil met Amerikaans Engels bestaat momenteel alleen in het datumformaat (gb: dd/MM/jjjjjjjj)."),
    "Es gibt jetzt die Möglichkeit, PDFs vergangener Zeiträume zu erzeugen, ohne den Zeitraum anpassen zu müssen. Oberhalb des Buttons zur PDF-Erzeugung gibt es zwei Buttons, welche die PDFs für eine frühere Periode erzeugen. Der untere der beiden Buttons erzeugt die Vorperiode, der obere die vorletzte Periode. Auf den Buttons wird das Startdatum und das Enddatum angezeigt. Wenn z.B. als Zeitraum \"Letzte 2 Wochen\" gewählt wurde, dann wird mit dem unteren Button der Zeitraum von zwei Wochen beginnend vor vier Wochen erzeugt und mit dem oberen Button der Zeitraum von zwei Wochen beginnend vor sechs Wochen. Auf diese Art kann man recht einfach Vergleichsberichte erzeugen, um die Entwicklung der Werte zu erkennen. Auf den Seiten wird für diese Ausdrucke in der Kopfzeile das Wort \"Historisch 1\", bzw. \"Historisch 2\" oberhalb des Zeitraums ausgegeben. So kann man beim Vergleich der Werte die Daten voneinander unterscheiden." : MessageLookupByLibrary.simpleMessage("Er is nu de mogelijkheid om PDF\'s van de afgelopen periodes te genereren zonder de periode aan te hoeven passen. er zijn twee knoppen voor eerdere periodes boven de knop voor het maken van PDF die de PDF genereren. De onderkant van de twee knoppen genereert de vorige periode, de bovenste de voorlaatste periode. De knoppen tonen de begindatum en de einddatum. Als de periode \"laatste 2 weken\" is geselecteerd, dan creëert de onderknop de periode van twee weken die beginnen met vier weken geleden en de bovenste knop van twee weken vanaf zes weken geleden. Op deze manier is het gemakkelijk vergelijkingsverslagen op te stellen om de ontwikkeling van de waarden te detecteren. De woorden \"Historisch 1\" of \"Historisch 2\" worden boven de periode op de pagina\'s voor deze afdrukken in de titel geplaatst. Zo kunt u de gegevens van elkaar onderscheiden bij het vergelijken van de vellen."),
    "Es gibt jetzt kleine Hilfebuttons bei den Formularen. In der Listenansicht ersetzen sie die Icons zum Ziehen der Formulare, in der Kachelansicht werden sie links oben auf den Kacheln dargestellt. Die jeweilige Ansicht kann man im Hamburgermenü auswählen. Beim Anklicken eines solchen Buttons wird ein Text angezeigt, der beschreibt, was das entsprechende Formular darstellt." : MessageLookupByLibrary.simpleMessage("Er zijn nu kleine helpknoppen op de formulieren. In de lijstweergave vervangen ze de pictogrammen voor het slepen van de formulieren, in de tegelweergave worden ze links bovenaan de tegels. De respectieve weergave kan worden geselecteerd in het hamburgermenu. Wanneer u op een dergelijke knop klikt, wordt een tekst weergegeven die beschrijft wat het bijbehorende formulier weergeeft."),
    "Es gibt keine mehrfachen Datensätze." : MessageLookupByLibrary.simpleMessage("Er zijn geen meerdere datasets."),
    "Es ist in der Kachelansicht jetzt möglich, Formulare zu duplizieren, um verschiedene Ansichten des gleichen Formulars auf einmal zu erzeugen. Dazu gibt es rechts unten auf den Kacheln ein Kopier-Icon. Wenn dieses ausgelöst wird, dann wird das aktuelle Formular kopiert und als neue Kachel hinter der aktuellen Kachel eingefügt. Diese kann dann genauso behandelt werden, wie jede andere Kachel. Auf dieser neuen Kachel gibt es rechts unten ein Mülleimer-Icon. Wenn dieses ausgelöst wird, dann wird die Kachel wieder entfernt. Von einem Formular können maximal 2 Kopien erstellt werden. Die Optionen der Formulare werden ebenso wie die Reihenfolge wie bisher auch gespeichert. Die kopierten Kacheln bleiben also erhalten. In der Listenansicht tauchen die kopierten Formulare auch auf. Allerdings gibt es dort nicht die Möglichkeit, sie zu kopieren oder zu löschen. Das muss in der Kachelansicht erfolgen." : MessageLookupByLibrary.simpleMessage("It is now possible to duplicate forms in the tile view in order to create different views of the same form at once. There is a copy icon on the bottom right of the tiles. When this is triggered, the current form is copied and inserted as a new tile behind the current tile. This can then be treated in the same way as any other tile. There is a trash can icon at the bottom right of this new tile. When this is triggered, the tile is removed. A maximum of 2 copies can be made of a form. The options for the forms, as well as the order, are saved as before. The copied tiles are therefore retained. The copied forms also appear in the list view. However, there is no possibility of copying or deleting them there. This must be done in the tile view."),
    "Es ist jetzt möglich, die Buttons zur PDF-Auswahl als Kacheln darstellen zu lassen. Die Option dazu ist im Menü auf der linken Seite zu finden. In der Kachelansicht werden die Buttons über die verfügbare Fläche verteilt und sind so auf kleinen Geräten leichter zu treffen. Ausserdem sieht man dann normalerweise alle verfügbaren PDFs auf einen Blick und muss nicht scrollen. Auf den aktivierten Kacheln wird angezeigt, an welcher Stelle im PDF die entsprechenden Seiten ausgegeben werden und wieviele Seiten die entsprechende Kachel ausgibt. Diese Zahl kann für die meisten Kacheln korrekt ermittelt werden, bei einigen ist das aber ohne Auswertung der Daten nicht möglich (z.B. Profile und Protokoll). In diesem Fall wird entweder keine Seitenzahl oder eine Mindestzahl an Seiten angegeben. Sobald die Erstellung des PDFs erfolgt ist, werden die korrekten Zahlen angezeigt. Die Reihenfolge der Kacheln kann verändert werden, indem man sie festhält und an die Stelle verschiebt, an der man sie gerne hätte. Nach Anklicken des Icons in der oberen rechten Ecke können die Parameter für das entsprechende PDF erfasst werden." : MessageLookupByLibrary.simpleMessage("It is now possible to display the buttons for PDF selection as tiles. The option can be found in the menu on the left. In the tile view, the buttons are distributed over the available area and are thus easier to hit on small devices. In addition, you normally see all available PDFs at a glance and do not have to scroll. The activated tiles indicate at which point in the PDF the corresponding pages are created and how many pages the corresponding tile creates. The number of pages can be determined correctly for most tiles, but for some this is not possible without data insight (for example, profiles and protocol). In this case, either no page number or a minimum number of pages is shown. Once the PDF is created, the correct numbers will be displayed. The sortorder of the tiles can be changed by dragging it to where you want it. After clicking the icon in the upper right corner, the parameters for the corresponding PDF can be set."),
    "Es ist jetzt möglich, die Einstellungen auf Google Drive zu speichern. Das hat den Vorteil, dass man die Einstellungen nicht nur im aktuellen Browser hat, sondern bei jedem Browser, mit dem man sich bei Google anmeldet. Die Einstellungen werden nach wie vor im Browser gespeichert. Bei einer Verbindung zu Google Drive werden sie aber zusätzlich auf Google Drive gespeichert. Beim Laden der Seite wird überprüft, ob eine Synchronisierung gewünscht ist. Wenn das der Fall ist, dann werden die Daten von Google Drive heruntergeladen. Wenn die Daten darin neuer sind als die Daten im Browser, werden sie verwendet. Nach dem Speichern der Daten werden bei aktivierter Synchronisierung diese Daten mit dem aktuellen Zeitstempel auf Google Drive gespeichert. Die Synchronisierung wird im Menü auf der linken Seite aktiviert und deaktiviert. Sie kann auch beim erstmaligen Aufruf der Seite in einem neuen Browser direkt im Willkommensbildschirm aktiviert werden. Nightscout Reporter verlangt nur die Berechtigung die eigenen App-Daten zu speichern und zu laden und benötigt keinen Zugriff auf andere Daten auf Google Drive." : MessageLookupByLibrary.simpleMessage("Het is nu mogelijk om de instellingen op te slaan op Google Drive. Dit heeft het voordeel dat je de instellingen niet alleen in de huidige browser hebt, maar in elke browser, die is verbonden met je Google-account. De instellingen worden nog steeds opgeslagen in de browser. Wanneer verbonden met Google Drive, worden deze ook opgeslagen op Google Drive. Bij het laden van de pagina, controleert het of de synchronisatie gewenst is. Als dat het geval is, dan worden de gegevens gedownload van Google Drive. Als de gedownloade gegevens nieuwer zijn dan de data in de browser, zal deze worden gebruikt. Zodra de gegevens zijn opgeslagen, zal het synchroniseren die gegevens opslaan met de huidige tijdstempel naar Google Drive. De synchronisatie is geactiveerd en gedeactiveerd in het menu aan de linkerkant. Het kan ook geactiveerd worden wanneer het aanroepen van de pagina de eerste keer in een nieuwe browser direct op het welkomstscherm gebeurt. Nightscout Reporter heeft alleen toestemming nodig om je eigen app-gegevens op te slaan en te laden, en heeft geen toegang tot andere gegevens op Google Drive nodig."),
    "Es ist jetzt möglich, die Wochentage festzulegen, die im Zeitraum berücksichtigt werden sollen. Die entsprechenden Tage werden bei der Auswahl des Zeitraums mit den Buttons unterhalb des Monats festgelegt. Auf den PDFs werden Zeiträume dann zusätzlich mit der Information versehen, welche Wochentage berücksichtigt werden, wenn es nicht alle sind." : MessageLookupByLibrary.simpleMessage("Het is nu mogelijk om de dagen van de week vast te stellen die in de periode zouden moeten worden gebruikt. Bij het selecteren van een periode worden de overeenkomstige dagen met de knoppen onder de maand ingesteld. Op de PDF\'s worden de periodes weergegeven met de dagen van de week die worden gebruikt, als er ten minste één ontbreekt."),
    "Es sind keine Daten für den Ausdruck vorhanden" : MessageLookupByLibrary.simpleMessage("Er is geen informatie voor de export"),
    "Es sind keine Daten vorhanden." : MessageLookupByLibrary.simpleMessage("Geen gegevens beschikbaar."),
    "Es werden jetzt auch blutige Werte erkannt, die von Loop auf dem IPhone eingetragen werden." : MessageLookupByLibrary.simpleMessage("Blood values which are entered by Loop on the iPhone are now also recognized."),
    "Español" : MessageLookupByLibrary.simpleMessage("Spaans"),
    "Exportieren" : MessageLookupByLibrary.simpleMessage("Exporteren"),
    "Facebook Seite" : MessageLookupByLibrary.simpleMessage("Facebook-pagina"),
    "Faktor" : MessageLookupByLibrary.simpleMessage("Factor"),
    "Fehler" : MessageLookupByLibrary.simpleMessage("Fout"),
    "Fehler behoben, der bei der Kachelansicht teilweise verhindert hat, dass die Parameter für die Kacheln aufgerufen werden konnten." : MessageLookupByLibrary.simpleMessage("Bug opgelost waardoor de parameters voor de tegels soms in de tegelweergave werden aangeroepen."),
    "Fehler beim Laden der Daten" : MessageLookupByLibrary.simpleMessage("Fout bij laden van gegevens"),
    "Fehler werden besser abgefangen und mit sinnvollem Text ersetzt." : MessageLookupByLibrary.simpleMessage("Fouten worden beter onderschept en vervangen door zinvollere tekst."),
    "Fehlerhafte Ausgabe der Blutzuckerwerte in der täglichen Grafik korrigiert." : MessageLookupByLibrary.simpleMessage("Fixed incorrect output of blood glucose levels in the daily graph."),
    "Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt" : MessageLookupByLibrary.simpleMessage("Bij de beoordeling van de grafische gegevens worden fouten niet meer in overweging genomen; deze worden erkend door de waarde \"NONE\" op het gebied van gegevens \"richting\""),
    "Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt." : MessageLookupByLibrary.simpleMessage("Fout bij het laden van profielen zonder startdatum verwijderd."),
    "FixAAPS30: Die Erstellung der PDFs kann extrem lange dauern. Das liegt an einer Flut von Profil-Switches, die durch ein Plugin für die Automatisierung erstellt werden. Das verursacht einen Profil-Switch alle 4 Minuten mit Speicherung des kompletten Profils. Wenn die Option aktiv ist, dann werden diese Profil-Switches aussortiert und ermöglichen dadurch die Erstellung des PDFs. Diese Profil-Switches sind dann in den PDFs nicht mehr sichtbar." : MessageLookupByLibrary.simpleMessage("FixAAPS30: The creation of the PDFs can take an extremely long time. This is due to a flood of profile switches that are created by a plug-in for automation. This causes a profile switch every 4 minutes with storage of the complete profile. If the option is active, then these profile switches are sorted out and thus enable the creation of the PDF. These profile switches are then no longer visible in the PDFs."),
    "Français" : MessageLookupByLibrary.simpleMessage("Frans"),
    "Für die Tagesgrafik gibt es jetzt eine Option, um die Aufsummierung nahe beieinander liegender Werte umzuschalten." : MessageLookupByLibrary.simpleMessage("Er is nu een optie voor de dagelijkse grafieken om de opeenstapeling van nauwe waarden in te schakelen."),
    "GPD" : MessageLookupByLibrary.simpleMessage("GPD"),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("Verjaardag"),
    "Gelbe Kreise zeigen an, dass der entsprechende Wert die Skala überschreitet." : MessageLookupByLibrary.simpleMessage("Gele cirkels geven aan dat de overeenkomstige waarde de schaal overschrijdt."),
    "Genauigkeit der Basalangaben:" : MessageLookupByLibrary.simpleMessage("Precisie van basaal waarden:"),
    "Ges." : MessageLookupByLibrary.simpleMessage("Som"),
    "Gesamt" : MessageLookupByLibrary.simpleMessage("Totaal"),
    "Geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("Geschatte A1C"),
    "Glukose" : MessageLookupByLibrary.simpleMessage("Glucose"),
    "Glukose (aus NS)" : MessageLookupByLibrary.simpleMessage("Glucose (from NS)"),
    "Glukose Pentagon erzeugen" : MessageLookupByLibrary.simpleMessage("Maak glucose pentagon"),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Glucose Percentiel Diagram"),
    "Glukose im Zielbereich" : MessageLookupByLibrary.simpleMessage("Glucose in het doelgebied"),
    "Glukose zu hoch" : MessageLookupByLibrary.simpleMessage("Glucose te hoog"),
    "Glukose zu niedrig" : MessageLookupByLibrary.simpleMessage("Glucose te laag"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("Glucose curve"),
    "Glukosewert" : MessageLookupByLibrary.simpleMessage("Glucose"),
    "Glukosewerte anpassen" : MessageLookupByLibrary.simpleMessage("Adjust glucose values"),
    "Glykämischer Variabilitäts Index (GVI)" : MessageLookupByLibrary.simpleMessage("Glycemische variabele index (GVI)"),
    "Google Assistant" : MessageLookupByLibrary.simpleMessage("Google Assistent"),
    "Grafik" : MessageLookupByLibrary.simpleMessage("Grafiek"),
    "Grafiken pro Seite" : MessageLookupByLibrary.simpleMessage("Grafieken per pagina"),
    "Grenzwerte wurden nicht durchgängig gleich behandelt. Jetzt sollte die Zuordnung der Werte zu den Zielbereichen im gesamten Programm identisch sein." : MessageLookupByLibrary.simpleMessage("Grenswaarden werden niet consequent op dezelfde manier behandeld. Het toewijzen van waarden aan de doelgebieden moet nu identiek zijn in het hele programma."),
    "Gross" : MessageLookupByLibrary.simpleMessage("Groot"),
    "Gruppierung der Zeiten" : MessageLookupByLibrary.simpleMessage("Groepering van tijden"),
    "HTML-Notizen anzeigen" : MessageLookupByLibrary.simpleMessage("HTML-notities weergeven"),
    "Heute" : MessageLookupByLibrary.simpleMessage("Vandaag"),
    "Hiermit wird festgelegt, um wieviel der Zeitraum des PDFs verschoben werden soll, um Vergleichswerte zu erhalten." : MessageLookupByLibrary.simpleMessage("Dit bepaalt hoeveel de periode van het PDF moet worden verschoven om vergelijkende waarden te verkrijgen."),
    "Hinweise auf Nightscout in der Kopf- und Fusszeile des PDFs ausblenden" : MessageLookupByLibrary.simpleMessage("Tekst over Nightscout verbergen in de header en voettekst van de PDF"),
    "Hinzufügen" : MessageLookupByLibrary.simpleMessage("Toevoegen"),
    "Historische Daten" : MessageLookupByLibrary.simpleMessage("Historische gegevens"),
    "Hochformat" : MessageLookupByLibrary.simpleMessage("Staand"),
    "Hohe Basalraten werden jetzt besser dargestellt." : MessageLookupByLibrary.simpleMessage("Hoge basaalstanden zijn nu beter vertegenwoordigd."),
    "Höchster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Hoogste waarde in de periode"),
    "IE" : MessageLookupByLibrary.simpleMessage("E"),
    "IE-Anzeige" : MessageLookupByLibrary.simpleMessage("IE-Display"),
    "IE/std" : MessageLookupByLibrary.simpleMessage("E/uur"),
    "IOB (Insulin On Board) anzeigen" : MessageLookupByLibrary.simpleMessage("Toon IOB (Insuline aan boord)"),
    "Im CGP wurden die Skalenbeschriftungen korrigiert." : MessageLookupByLibrary.simpleMessage("De schaallabels zijn gecorrigeerd in het CGP."),
    "Im CGP wurden verschiedene Berechnungen korrigiert, die sich vor allem in Differenzen bei ToR und Mittelwerten zeigten." : MessageLookupByLibrary.simpleMessage("Verschillende berekeningen zijn gecorrigeerd in het CGP, die voornamelijk te zien waren in verschillen in ToR en gemiddelde waarden."),
    "Im Dialog der Ausgabe Parameter gibt es nun die Möglichkeit, das CGP immer mit dem Standard Zielbereich zu erzeugen. Diese Option ist anfangs eingeschaltet, da das CGP ein standardisiertes Formular ist, das gerne zu Vergleichszwecken herangezogen wird. Man kann es aber für seine eigenen Zwecke ausschalten. Diese Einstellung wird dann auch beibehalten." : MessageLookupByLibrary.simpleMessage("In het dialoogvenster van de uitvoerparameters is er nu de mogelijkheid om de CGP altijd te genereren met het standaard doelgebied. Deze optie is in eerste instantie geactiveerd omdat het CGP een gestandaardiseerd formulier is dat vaak wordt gebruikt voor vergelijkingsdoeleinden. Maar je kunt het uitzetten voor je eigen doeleinden. Deze instelling blijft behouden."),
    "Im Dialog der Ausgabe Parameter wurde rechts oben der Schieberegler \"zu Vergleichszwecken\" hinzugefügt. Wenn dieser aktiviert ist, dann wird überall der Standard Zielbereich verwendet. Intern wird das auch noch für andere Anpassungen verwendet. Diese Option ist dafür gedacht, dass man seine Ausdrucke mit anderen Diabetikern vergleichen kann. Das ist zum Beispiel zur Vorlage bei Ärzten und Diabetesberatern sinnvoll." : MessageLookupByLibrary.simpleMessage("In het dialoogvenster van de Output Parameters werd in de rechterbovenhoek de schakelaar \"voor vergelijkingsdoelen\" toegevoegd. Als dit wordt geactiveerd, wordt het standaard doelgebied overal gebruikt. Intern wordt dit ook gebruikt voor andere aanpassingen. Deze optie is zo ontworpen dat je prints kunt vergelijken met andere diabetica. Dit is bijvoorbeeld nuttig om artsen en diabetesadviseurs voor te leggen."),
    "Im Einstellungen Dialog gibt es jetzt die Möglichkeit, die Einstellungen zu exportieren und zu importieren. Beim Export wird eine Datei mit den allgemeinen Einstellungen geschrieben, beim Import wird so eine Datei wieder eingelesen. Damit kann man auch ohne Google Drive Zugriff die Einstellungen über verschiedene Browser hinweg manuell synchronisieren." : MessageLookupByLibrary.simpleMessage("In het dialoogvenster Instellingen is er nu de mogelijkheid om instellingen te exporteren en importeren. Bij het exporteren van een bestand wordt geschreven met de algemene instellingen; bij het importeren wordt een dergelijk bestand opnieuw gelezen. Hiermee kunt u handmatig de instellingen synchroniseren tussen verschillende browsers, zelfs zonder Google Drive toegang."),
    "Im Einstellungsdialog wurden die Zeilen mit den Benutzerangaben und der URL gegeneinander ausgetauscht, um eine sinnvollere Verwaltung zu ermöglichen." : MessageLookupByLibrary.simpleMessage("In de instellingen zijn de regels met de gebruikersgegevens en de URL ingeruild voor een meer betekenisvolle administratie."),
    "Im Kalender-Control kann kein Datum nach dem aktuellen Tag mehr ausgewählt werden." : MessageLookupByLibrary.simpleMessage("The calendar control can no longer select a date after the current day."),
    "Im Kalender-Control wird ein eingestellter Bereich (Heute, Letzte Woche, etc.) jetzt korrekt auf den aktuellen Tag bezogen." : MessageLookupByLibrary.simpleMessage("In the calendar control, a defined period (today, last week, etc.) is now correctly based on the current day."),
    "Im Kalender-Control wird jetzt der Monat des entsprechenden Datums angezeigt, wenn eines der Felder Von oder bis den Fokus erhält." : MessageLookupByLibrary.simpleMessage("The calendar control now displays the month of the corresponding date when one of the fields From or To receives the focus."),
    "Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert" : MessageLookupByLibrary.simpleMessage("Nummers en datums in de PDF zijn geformatteerd volgens de geselecteerde taal"),
    "Im Profil werden jetzt die richtigen Einheiten verwendet (mg/dL oder mmol/l)." : MessageLookupByLibrary.simpleMessage("The profile now uses the correct units (mg/dL or mmol/l)."),
    "Im Profil werden nun die Gesamtsumme der Basalrate und die durchschnittlichen Werte für ICR und ISF pro Stunde angezeigt." : MessageLookupByLibrary.simpleMessage("The profile now shows the total basal rate and the average ICR and ISF per hour."),
    "Im Protokoll gibt es jetzt die Möglichkeit, sich doppelte Datensätze markieren zu lassen. Sie werden von Nightscout Reporter zwar rausgefiltert, aber er kann anzeigen, wie oft ein bestimmter Datensatz in den Daten gefunden wurde. Man kann dort auch angeben, dass er nur mehrfach vorhandene Datensätze ausgeben soll. So kann man mögliche Diskrepanzen zwischen Nightscout Reporter und anderen Reporting Tools herausfinden." : MessageLookupByLibrary.simpleMessage("In het dagelijkse logboek is er nu de mogelijkheid om dubbele records aan te wijzen. Nightscout Verporter filtert ze uit, maar het kan laten zien hoe vaak een bepaald record is gevonden in de gegevens. Je kunt ook opgeven dat het alleen data records mag bevatten die meer dan één keer bestaan. Op deze manier kun je mogelijke verschillen ontdekken tussen Nightscout Reporter en andere rapporteerhulpmiddelen."),
    "Im Protokoll können jetzt auch Batteriewechsel der Pumpe angezeigt werden." : MessageLookupByLibrary.simpleMessage("Het protocol kan nu ook accuwijzigingen van de pomp tonen."),
    "Im Protokoll werden die Angaben, die ein temporäres Ziel von 0 IE für 0 Minuten setzen als \"Aufhebung von temp. Ziel\" ausgegeben." : MessageLookupByLibrary.simpleMessage("In het log, is de informatie die een tijdelijk streefdoel van 0 U voor 0 U voor 0 minuten instelt de uitvoer als \"Tijdelijk streefdoel annuleren\"."),
    "Im Protokoll werden nun auch temporäre Overrides ausgegeben, die von iOSLoop in die Behandlungsdaten eingetragen werden." : MessageLookupByLibrary.simpleMessage("Tijdelijke overschrijvingen die zijn ingevoerd in de verwerkingsgegevens door iOSLoop worden nu ook getoond in de dagelijkse log."),
    "Im Tagesprofil kann nun angegeben werden, ob nur der Wert, die prozentuale Anpassung des Profils oder beides angezeigt werden soll. Ausserdem kann eine Linie eingefügt werden, die den im Basalprofil zum jeweiligen Zeitpunkt eingestellten Wert darstellt." : MessageLookupByLibrary.simpleMessage("In het dagelijkse profiel kunt u nu aangeven of alleen de waarde, het percentage van aanpassing van het profiel of beide moeten worden weergegeven. Daarnaast kan een lijn worden ingevoegd die de in het basaal ingestelde waarde op het betreffende tijdstip toont."),
    "Importieren" : MessageLookupByLibrary.simpleMessage("Importeren"),
    "Impressum" : MessageLookupByLibrary.simpleMessage("Juridische informatie"),
    "In AAPS 3.0 wird ändert sich einiges an den Datenstrukturen und Datenmengen, die gespeichert werrden. Das verursacht in Nightscout Reporter an einigen Stellen Probleme, die sich nicht generell lösen lassen, Deswegen gibt es jetzt bei den Ausgabe Parametern die Option \"Korrektur für Datenänderungen in AAPS 3.0\", mit der bei Erstellung der PDFs bestimmte Probleme korrigiert werden. Diese Änderungen werden hier mit FixAAPS30 markiert." : MessageLookupByLibrary.simpleMessage("AAPS 3.0 will change some of the data structures and amounts of data that are stored. This causes problems in some places in Nightscout Reporter that cannot be generally solved. That is why there is now the option \"Correction for data changes in AAPS 3.0\" in the output parameters, with which certain problems can be corrected when creating the PDFs. These changes are marked here with FixAAPS30."),
    "In Firefox ist es jetzt auch möglich, die Hauptseite zu scrollen, wenn sie länger ist, als das Browserfenster." : MessageLookupByLibrary.simpleMessage("Het is nu mogelijk om de hoofdpagina in Firefox, als deze langer is dan het browservenster."),
    "In dem Dialog mit den Ausgabe Parametern wurde die Option hinzugefügt, die Genauigkeit der Ausgabe von Basalangaben festzulegen. Diese wird normalerweise aus den Angaben zur Basalrate in den Profilen ermittelt. Das wird auch weiterhin getan, wenn der erste Eintrag in der Liste ausgewählt wird. Ansonsten werden alle Basalangaben mit der Genauigkeit ausgegeben, die bei dieser Option ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("In het dialoogvenster met de uitvoerparameters is een optie toegevoegd om de precisie van de uitgang van basale informatie op te geven. Dit wordt meestal bepaald door de informatie over de basaalstand in de profielen. Dit is nog steeds het geval wanneer het eerste item in de lijst is geselecteerd. Anders is alle basaal informatie de uitvoer met de precisie die is geselecteerd voor deze optie."),
    "In den Ausgabe Parametern kann nun angegeben werden, ob immer der neueste Tag zuerst angezeigt wird. Das hat Auswirkungen auf die Tagesgrafik, die Tagesstatistik und die Wochengrafik. In den Formularoptionen wurde die entsprechende Option entfernt." : MessageLookupByLibrary.simpleMessage("Je kunt nu in de uitvoer parameters aangeven of de nieuwste dag altijd eerst wordt weergegeven. Dit heeft invloed op de dagelijkse grafiek, de dagelijkse statistieken en de wekelijkse grafiek. De corresponderende optie is verwijderd uit de formulieropties."),
    "In den Ausgabeparametern gibt es eine Checkbox, mit der man dafür sorgen kann, dass alle Optionen, die auf einen Loop hinweisen würden, für diese Ausgabe deaktiviert werden. Das sind die Optionen, die mit einem Kreis (=Loop) markiert sind." : MessageLookupByLibrary.simpleMessage("Bij de uitvoerparameters is er een selectievakje waarmee u ervoor kunt zorgen dat alle opties die aangeven dat een loop is gedeactiveerd zijn voor deze uitvoer. Deze opties zijn gemarkeerd met een cirkel (= lus)."),
    "In den Einstellungen gibt es einen Regler, der festlegt, wie gross die erzeugten PDF-Dateien maximal sein dürfen. Wenn nur ein leeres PDF erzeugt wird, dann sollte dieser Regler weiter nach links geschoben werden, um die Dateigrösse zu verringern." : MessageLookupByLibrary.simpleMessage("In de instellingen is er een slider die definieert hoe groot de resulterende PDF-bestanden kunnen zijn. Als een leeg PDF is aangemaakt, dan moet deze schuifregelaar verder naar links worden verplaatst om de bestandsgrootte te verkleinen."),
    "In den Formularen Profil und Basalrate gibt es eine neue Option \"Profil \'NR Profil\' verwenden\". Normalerweise wird das zu verwendende Profil automatisch anhand des angegebenen Zeitraums ermittelt. Hiermit kann das unterbunden werden und ein Profil mit dem Namen \"NR Profil\" wird gesucht. Wenn dieses gefunden wird, dann wird das ausgegeben. Wenn es nicht gefunden wird, wird ein Text ausgegeben, der erklärt, wo man das einstellen kann." : MessageLookupByLibrary.simpleMessage("In the profile and basal rate forms there is a new option \"Use profile \'NR profile\'\". Normally, the profile to be used is determined automatically based on the specified time period. This option can be used to prevent this behavior and a profile with the name \"NR Profil\" is searched for. If this is found, it will be displayed. If it is not found, a text is shown that explains where this can be set."),
    "In den Optionen von Formularen, in denen man Spalten ein- und ausblenden kann, wird nun angezeigt, wieviele Spalten noch verfügbar sind." : MessageLookupByLibrary.simpleMessage("In the options of forms in which you can show and hide columns, it is now shown how many columns are still available."),
    "In den Optionen zur Tagesgrafik gibt es jetzt die Möglichkeit, den oberen Wert für die Kohlenhydrate festzulegen. Das kann bei hohen COB-Werten die Skalierung verbessern." : MessageLookupByLibrary.simpleMessage("In the options for the daily graphic there is now the option to set the upper value for the carbohydrates. This can improve the scaling with high COB values."),
    "In der Analyse können die Prozentzahlen für die Zielbereiche mit Nachkommazahl angezeigt werden. Das verringert die Differenz zu 100%, wenn man sie zusammenzählt. Der verbleibende Rest sind Rundungsdifferenzen." : MessageLookupByLibrary.simpleMessage("In the analysis the percentages for the target areas can be shown with decimal places. This reduces the difference to 100% if you sum it up. The remainder is because of rounding differences."),
    "In der Auswertung gibt es eine neue Option, um den Standardbereich feiner abzustufen. Dort werden dann zusätzlich sehr hohe Werte und sehr niedrige Werte angezeigt." : MessageLookupByLibrary.simpleMessage("There is a new option in the analysis to fine-tune the standard range. Very high values and very low values are displayed with this option."),
    "In der Auswertung können die Angaben für Material (Katheter, Sensor, Ampulle) mit Nachkommastellen angezeigt werden." : MessageLookupByLibrary.simpleMessage("In the analysis, the information for material (catheter, sensor, ampoule) can be displayed with decimal places."),
    "In der Kachelansicht können die Parameter aller ausgewählten Seiten zusammen in einer Liste eingestellt werden. Dazu gibt es im Titelbereich der Parameterliste neben dem Schliessen-Button einen zusätzlichen Button, mit dem man zwischen den beiden Möglichkeiten umschalten kann." : MessageLookupByLibrary.simpleMessage("In de tegelweergave kunnen de parameters van alle geselecteerde pagina\'s samengesteld worden in een lijst. Hiervoor is er een extra knop in de titel van de parameterlijst naast de sluitknop, waarmee je kunt wisselen tussen de twee opties."),
    "In der Legende unter der Tagesgrafik wird die Summe der Kohlenhydrate für den Tag angezeigt." : MessageLookupByLibrary.simpleMessage("De legende onder de dagelijkse grafiek toont de som van koolhydraten voor de dag."),
    "In der Sprachauswahl ist jetzt auch Slowakisch verfügbar." : MessageLookupByLibrary.simpleMessage("Slowaaks is nu ook beschikbaar in de taalselectie."),
    "In der Tabelle im Glukose Perzentil Diagramm kann man nun zwei neue Spalten ausgeben lassen. Diese beinhalten die durchschnittlichen Kohlenhydrate und Insulineinheiten." : MessageLookupByLibrary.simpleMessage("The table in the glucose percentile diagram can now display two new columns. These include the average carbohydrates and units of insulin."),
    "In der Tagesgrafik gibt es die Option, HTML-Notizen zu unterdrücken. Manche Uploader schreiben in die Notizen komplette HTML-Seiten rein, was im PDF extrem schlecht darstellbar ist. Deswegen kann man diese mit Setzen der Option ausblenden." : MessageLookupByLibrary.simpleMessage("In de dagelijkse afbeelding is er de mogelijkheid om HTML-notities te onderdrukken. Sommige uploaders schrijven complete HTML-pagina\'s in de notities, wat uiterst moeilijk te tonen is in de PDF. Daarom kun je ze verbergen door deze optie in te stellen."),
    "In der Tagesgrafik gibt es eine Option, die berechneten IE für aufgenommene Kohlenhydrate anzeigen zu lassen. Der Wert, der unmittelbar unter den Kohlenhydraten angezeigt wird, entspricht dem Bolus, der zu diesem Zeitpunkt für diese Kohlenhydratmenge abgegeben werden sollte. Dieser Wert kann niedriger als der tatsächlich abgegebene Wert ausfallen, weil für die Insulinabgabe noch IOB und andere Faktoren berücksichtigt werden." : MessageLookupByLibrary.simpleMessage("In the daily graph, there is an option to display the calculated IE for ingested carbohydrates. The value displayed below the carbs is the bolus that should be delivered for that amount of carbohydrate at that time. This value may be lower than the actual value delivered, because IOB and other factors are taken into account for insulin delivery."),
    "In der Tagesgrafik gibt es eine Option, mit dem man die verschiedenen Arten der Boli kenntlich machen lassen kann. Wenn diese Option gesetzt ist, wird ein Bolus, der zu einer Mahlzeit abgegeben wurde mit einer anderen Farbe markiert, als ein Bolus zur Korrektur. In der Legende werden dann Korrektur-, Mahlzeiten-Boli und SMB getrennt angezeigt." : MessageLookupByLibrary.simpleMessage("Er is een optie in de dagelijkse grafieken die het mogelijk maakt om onderscheid te maken tussen de verschillende soorten bolus. Als deze optie is ingesteld, wordt een bolus die voor een maaltijd is gegeven met een andere kleur gemarkeerd dan de bolus die is gegeven als correctie. In de legende zijn er ook aparte waarden voor meal-bolus, correctie-bolus en SMB."),
    "In der Tagesgrafik gibt es eine Option, mit der man sich die erfassten Trainingsdaten anzeigen lassen kann. Diese werden dann am unteren Rand über der Tabelle der Glukosewerte eingefügt." : MessageLookupByLibrary.simpleMessage("In de dagelijkse drukte is er een optie, die de oefeningsgegevens toevoegt aan de grafiek. Het zal worden weergegeven aan de onderkant van de grafiek rechts boven de glucose-instelling."),
    "In der Tagesgrafik gibt es eine neue Option, um die Rundung der Insulinwerte auf die maximale Genauigkeit im Profil zu unterbinden. Das macht da Sinn, wo entweder kein Profil vorhanden ist, oder wo Werte mit höherer Genauigkeit als im Profil eingegeben werden." : MessageLookupByLibrary.simpleMessage("Er is een nieuwe optie in de dagelijkse grafiek om te voorkomen dat de insuline-afrondingen tot de maximale precisie in het profiel plaatsvinden. Dit is logisch wanneer er geen profiel is of wanneer waarden met een grotere precisie worden ingevoerd dan in het profiel."),
    "In der Tagesgrafik kann die Anzeige der SMB nun ausgeblendet werden." : MessageLookupByLibrary.simpleMessage("De weergave van SMB kan nu worden verborgen in de dagelijkse grafieken."),
    "In der Tagesgrafik kann jetzt bei Auswahl der Tages Basalrate angegeben werden, dass der Name des Profils angezeigt wird, das am Beginn des Tages aktiv war. Dieser wird dann so angezeigt, wie ein Profilwechsel um 0 Uhr." : MessageLookupByLibrary.simpleMessage("Bij het kiezen van de dagelijkse basaalstand het is nu mogelijk om in de opties van de dagelijkse grafiek op te geven dat de naam van het profiel dat aan het begin van de dag actief was, wordt weergegeven. Dit wordt dan weergegeven als een profielwijziging om 0 uur."),
    "In der Tagesgrafik kann man nun die IOB (Insulin On Board) und COB (Carbs On Board) anzeigen lassen. Die IOB werden am oberen Rand angezeigt, wo auch die Bolusabgaben dargestellt werden, die COB am unteren Rand, wo auch die Kohlenhydrate dargestellt werden." : MessageLookupByLibrary.simpleMessage("In de dagelijkse grafiek kunt u nu de IOB (Insuline aan boord) en COB (koolhydraten aan boord) tonen. De IOB staat bovenaan waar de bolus wordt getoond, de COB aan de onderkant, waar de koolhydraten worden getoond."),
    "In der Tagesgrafik kann man nun die temporären Overrides von iLoop auch anzeigen lassen. Es wird der Grund angezeigt. Für genauere Informationen kann das so wie bisher auch im Protokoll angezeigt werden." : MessageLookupByLibrary.simpleMessage("De tijdelijke overschrijvingen van iLoop kunnen nu ook worden weergegeven in de dagelijkse grafieken. De tekst van de reden wordt weergegeven. Zoals eerder kan dit ook in het logboek voor meer gedetailleerde informatie worden weergegeven."),
    "In der Tagesgrafik kann nun angezeigt werden, wie lange die Basalrate auf 0% lief." : MessageLookupByLibrary.simpleMessage("De dagelijkse grafiek toont nu de duur van de basaalstand op 0%."),
    "In der Tagesgrafik werden Profilwechsel nicht mehr angezeigt, wenn sich das Profil beim Wechsel nicht geändert hat. iOSLoop fügt in die Nightscoutdatensätze sehr häufig neue Profile ein, die keine Änderung beinhalten, weil dort zusätzlich andere Konfigurationseinstellungen gespeichert werden." : MessageLookupByLibrary.simpleMessage("Profielwijzigingen worden niet langer in de dagafbeelding weergegeven als het profiel niet is gewijzigd. iOSLoop introduceert heel vaak nieuwe profielen in de Nightscout data records die geen wijzigingen bevatten omdat andere configuratie-instellingen daar ook worden opgeslagen."),
    "In der Tagesgrafik werden die Insulinangaben jetzt kleiner dargestellt, wenn die Basalrate eine Genauigkeit von mehr als 2 Nachkommastellen hat." : MessageLookupByLibrary.simpleMessage("Als de basalrate meer dan 2 decimalen heeft, zijn de insuline waarden kleiner in de dagelijkse grafiek."),
    "In der Tagesgrafik werden jetzt auch Blutzuckermessungen angezeigt. Sie werden als rote Quadrate dargestellt und die zugehörigen Werte in der Tabelle unterhalb der Grafik werden ebenfalls mit roter Schrift angezeigt." : MessageLookupByLibrary.simpleMessage("The daily chart now also displays blood glucose values. They are displayed as red squares and the associated values ​​in the table below the graphic are also displayed in red."),
    "In der Tagesgrafik werden nun SMBs auch angezeigt, wenn die Option für die Darstellung von Insulin akitivert wurde. Man kann festlegen, ob die SMBs an der Glukosekurve oder am Zielwert angezeigt werden." : MessageLookupByLibrary.simpleMessage("SMBs are now also displayed in the daily graphics if the option for displaying insulin has been activated. You can specify whether the SMBs are displayed on the glucose curve or at the target value."),
    "In der Tagesgrafik werden nun auch Kohlenhydratkorrekturen angezeigt." : MessageLookupByLibrary.simpleMessage("Carbohydrate corrections are now displayed in the daily graph."),
    "In der Tagesgrafik werden nun auch Reservoirwechsel angezeigt." : MessageLookupByLibrary.simpleMessage("Veranderingen van reservoir worden nu ook weergegeven in de dagelijkse grafiek."),
    "In der Tagesgrafik werden nun auch bei Anzeige des Zielwertes die temporären Ziele berücksichtigt." : MessageLookupByLibrary.simpleMessage("In the daily graph, the temporary targets are now also taken into account when displaying the target value."),
    "In der Tagesgrafik werden nun auch verzögerte Boli angezeigt." : MessageLookupByLibrary.simpleMessage("Vertraagde boli worden nu weergegeven in de dagelijkse grafiek."),
    "In der Tagesgrafik werden nun der geschätzte HbA1C und die prozentuale Menge an Bolusinsulin und Basalinsulin für den Tag angezeigt. Diese Anzeige erfolgt innerhalb der Legende, weshalb diese aktiviert sein muss, damit die Werte angezeigt werden." : MessageLookupByLibrary.simpleMessage("De dagelijkse grafiek toont nu de geschatte A1C en het percentage bolus insuline en basale insuline voor overdag. Deze waarden worden weergegeven in de legende, daarom moet het ingeschakeld zijn om de waarden te laten verschijnen."),
    "In der Tagesgrafik wird jetzt eine Tabelle mit halbstündigen Glukosewerten eingeblendet angezeigt. Diese kann über einen Parameter ausgeschaltet werden." : MessageLookupByLibrary.simpleMessage("The daily graphics now displays a chart with half-hourly glucose values. This can be switched off via a parameter."),
    "In der Tagesgrafik wurde \"Training\" in \"Bewegung\" umbenannt. Das passt besser zu den Einträgen in AAPS." : MessageLookupByLibrary.simpleMessage("In de dagelijkse grafische versie van de german versie \"Training\" is vervangen door \"Bewegung\" omdat deze beter overeenkomt met de formulering in AAPS."),
    "In der Tagesgraphic werden jetzt Insulinwerte und Kohlenhydratwerte zusammengefasst, wenn es mehrere innerhalb einer Stunde gibt. Die Balken werden nach wie vor für jeden Wert einzeln ausgegeben. Auf diese Art sollte es keine überlappende Ausgabe der Werte mehr geben. Die zusammengefassten Werte werden in eckigen Klammern ausgegeben, um anzuzeigen, dass hier Werte aufsummiert wurden." : MessageLookupByLibrary.simpleMessage("The daily graphic now sums up insulin values and carbohydrate values when there are several values within an hour. The bars are still drawn individually for each value. In this way there should be no overlapping output of the values anymore. The summarized values are displayed in square brackets to indicate that values have been summed up here."),
    "In der Tagesstatistik können nun Spalten für TDD und Kohlenhydrate angezeigt werden." : MessageLookupByLibrary.simpleMessage("Kolommen voor TDD en koolhydraten kunnen nu worden weergegeven in de dagelijkse statistieken."),
    "In der Tagesstatistik und in den täglichen Grafiken werden jetzt zum Datum die Wochentage mit angezeigt." : MessageLookupByLibrary.simpleMessage("In the daily statistics and in the daily graphics, the days of the week are now displayed with the day of the week."),
    "In der Tagesstatistik werden nun in der Summenzeile die Durchschnittswerte für einige Werte zusätzlich angezeigt." : MessageLookupByLibrary.simpleMessage("In de dagelijkse statistieken worden de gemiddelde waarden voor sommige waarden nu ook in de totale grens weergegeven."),
    "In der Tagesstatistik wurde die Spalte Varianzkoeffizient hinzugefügt (VarK)." : MessageLookupByLibrary.simpleMessage("In the daily statistics, the column Coefficient of variation has been added (CV)."),
    "In der Tagesstatistik wurden bei unvollständigen Daten teilweise fehlerhafte Werte ausgegeben. Das wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Onjuiste gegevensweergave in de dagelijkse statistieken opgelost wanneer een dag te weinig gegevens heeft."),
    "In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen." : MessageLookupByLibrary.simpleMessage("De variabele ENABLE moet het woord \"cors\" bevatten, zodat externe tools zoals deze toegang hebben tot de gegevens."),
    "Information" : MessageLookupByLibrary.simpleMessage("Informatie"),
    "Initiale Version, alles ist neu!" : MessageLookupByLibrary.simpleMessage("Eerste versie, alles is nieuw!"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("Insuline"),
    "Insulin Kohlenhydrate Verhältnis (ICR)" : MessageLookupByLibrary.simpleMessage("Insuline koolhydraten verhouding (ICR)"),
    "Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE" : MessageLookupByLibrary.simpleMessage("Insuline koolhydraat verhouding (ICR) X g koolhydraten voor 1 E"),
    "Insulin Sensitivitäts Faktoren (ISF)" : MessageLookupByLibrary.simpleMessage("Insuline gevoeligheidsfactoren (ISF)"),
    "Insulin auf maximale Stellen im Profil runden" : MessageLookupByLibrary.simpleMessage("Rond insuline af op maximale precisie in profiel"),
    "Insulin-Quelle" : MessageLookupByLibrary.simpleMessage("Insuline-bron"),
    "Irgendwas zum Einstellen" : MessageLookupByLibrary.simpleMessage("Iets te configureren"),
    "Ja" : MessageLookupByLibrary.simpleMessage("Ja"),
    "Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember" : MessageLookupByLibrary.simpleMessage("Januari|Februari|Maart|April|Mei|Juni|Juli|Augustus|September|Oktober|November|December"),
    "Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez" : MessageLookupByLibrary.simpleMessage("Jan|Feb|Mrt|Apr|Mei|Jun|Jul|Aug|Sept|Okt|Nov|Dec"),
    "KH" : MessageLookupByLibrary.simpleMessage("Koolhydraten"),
    "Kalibrierung und blutige Messungen" : MessageLookupByLibrary.simpleMessage("Kalibratie en bloedwaarden"),
    "Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Site wijzigen"),
    "Keine" : MessageLookupByLibrary.simpleMessage("Geen"),
    "Keine Änderung" : MessageLookupByLibrary.simpleMessage("Geen verandering"),
    "Klein" : MessageLookupByLibrary.simpleMessage("Klein"),
    "Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Koolhydraten"),
    "Kohlenhydrate und Bolusinsulin werden jetzt in den täglichen Grafiken angezeigt" : MessageLookupByLibrary.simpleMessage("Koolhydraten en bolus insuline worden nu weergegeven in de dagelijkse grafieken"),
    "Korrektur für Datenänderungen in AAPS 3.0" : MessageLookupByLibrary.simpleMessage("Correction for data changes in AAPS 3.0"),
    "Lade die Basisdaten..." : MessageLookupByLibrary.simpleMessage("Basedata wordt geladen..."),
    "Leer" : MessageLookupByLibrary.simpleMessage("Empty"),
    "Legende" : MessageLookupByLibrary.simpleMessage("Legende"),
    "Legende für Katheter- und Sensorwechsel zur Tagesgrafik hinzugefügt." : MessageLookupByLibrary.simpleMessage("Legenda voor catheter en sensorwijzigingen toegevoegd aan de dagelijkse grafiek."),
    "Letzte 2 Tage" : MessageLookupByLibrary.simpleMessage("Afgelopen 2 dagen"),
    "Letzte 2 Wochen" : MessageLookupByLibrary.simpleMessage("Afgelopen 2 weken"),
    "Letzte 3 Monate" : MessageLookupByLibrary.simpleMessage("Afgelopen 3 maanden"),
    "Letzte 3 Tage" : MessageLookupByLibrary.simpleMessage("Afgelopen 3 dagen"),
    "Letzte 3 Wochen" : MessageLookupByLibrary.simpleMessage("Afgelopen 3 weken"),
    "Letzte Unterzuckerung" : MessageLookupByLibrary.simpleMessage("Laatste Hypo"),
    "Letzte Woche" : MessageLookupByLibrary.simpleMessage("Afgelopen week"),
    "Letzten Messwert in der Titelzeile anzeigen" : MessageLookupByLibrary.simpleMessage("Toon laatste glucosewaarde in de titelbalk"),
    "Letzter Behandlungswert" : MessageLookupByLibrary.simpleMessage("Laatste behandelingswaarde"),
    "Letzter Glukosewert" : MessageLookupByLibrary.simpleMessage("Laatste glucosevalue"),
    "Letzter Monat" : MessageLookupByLibrary.simpleMessage("Afgelopen maand"),
    "Linien um Bereiche" : MessageLookupByLibrary.simpleMessage("Lines around areas"),
    "Loopdaten verbergen (die auf diese Art markierten Optionen ignorieren)" : MessageLookupByLibrary.simpleMessage("Verberg gegevens van loop (negeer de opties gemarkeerd op deze manier)"),
    "Löschen" : MessageLookupByLibrary.simpleMessage("Verwijderen"),
    "Mahlzeitenbolus_bolus to handle a meal" : MessageLookupByLibrary.simpleMessage("Maaltijd bolus"),
    "Man kann jetzt mehrere Benutzer anlegen. Das ist nützlich, um mehrere Nightscout-Instanzen auszuwerten (z.B. für Ärzte, Betreuer oder den Entwickler dieser Software)" : MessageLookupByLibrary.simpleMessage("U kunt nu meerdere gebruikers maken. Dit is handig voor het analyseren van meerdere nightscout instanties (bijvoorbeeld voor artsen, zorgverleners of de ontwikkelaar van deze software)"),
    "Material mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Materiaal met decimalen"),
    "Max" : MessageLookupByLibrary.simpleMessage("Max"),
    "Max Mustermann" : MessageLookupByLibrary.simpleMessage("John Smith"),
    "Maximaler Glukosewert in Grafiken:" : MessageLookupByLibrary.simpleMessage("Maximale glucosewaarde in grafieken:"),
    "Maximalwert für Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Maximum value for carbohydrates"),
    "Median" : MessageLookupByLibrary.simpleMessage("Mediaan"),
    "Mehr gibt es dazu eigentlich nicht zu sagen." : MessageLookupByLibrary.simpleMessage("Daar valt niets meer over te zeggen."),
    "Mehrfache Datensätze kennzeichnen" : MessageLookupByLibrary.simpleMessage("Denote herhaalde datasets"),
    "Menü" : MessageLookupByLibrary.simpleMessage("Menu"),
    "Mess-\nwerte" : MessageLookupByLibrary.simpleMessage("Waarden"),
    "Min" : MessageLookupByLibrary.simpleMessage("Min"),
    "Mit Google Drive synchronisieren" : MessageLookupByLibrary.simpleMessage("Synchroniseer met Google Drive"),
    "Mittel-\nwert" : MessageLookupByLibrary.simpleMessage("Gemiddeld"),
    "Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|Sonntag" : MessageLookupByLibrary.simpleMessage("Maandag|Dinsdag|Woensdag|Donderdag|Vrijdag|Zaterdag|Zondag"),
    "Mo|Di|Mi|Do|Fr|Sa|So" : MessageLookupByLibrary.simpleMessage("Ma|Di|Wo|Do|Vr|Za|Zo"),
    "Nacht (21:00 - 05:59)" : MessageLookupByLibrary.simpleMessage("Nacht (21:00 - 05:59)"),
    "Nahe zusammen liegende Werte aufsummieren" : MessageLookupByLibrary.simpleMessage("Verzamel waarden in dichtingsbereik"),
    "Name" : MessageLookupByLibrary.simpleMessage("Naam"),
    "Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat." : MessageLookupByLibrary.simpleMessage("Naam, verjaardag, insuline en de begindatum van diabetes kunnen nu leeg gelaten worden zonder negatieve gevolgen voor de presentatie in het PDF."),
    "Nein" : MessageLookupByLibrary.simpleMessage("Nee"),
    "Neue Option im Profil, um fortlaufende Zeiten mit gleichen Werten zu einem Eintrag zusammen zu fassen." : MessageLookupByLibrary.simpleMessage("New option in the profile to combine consecutive times with the same values into a single entry."),
    "Neuer Parameter für die Tagesgrafik, der festlegt, ob die Linien für die Notizen unter der Grafik bis zur Glukosekurve gezeichnet werden sollen oder nicht." : MessageLookupByLibrary.simpleMessage("New daily graph parameter that determines whether or not to draw the lines for the notes under the graph up to the glucose curve."),
    "Neues PDF für eine Wochengrafik hinzugefügt, auf der die Glukosekurven der Woche übereinander gelegt werden." : MessageLookupByLibrary.simpleMessage("Added a new PDF for a weekly graphics where the week\'s glucose curves are shown all at once."),
    "Neuester Tag zuerst" : MessageLookupByLibrary.simpleMessage("Nieuwste dag eerst"),
    "Niedrigster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Laagste waarde in de periode"),
    "Night-Watch" : MessageLookupByLibrary.simpleMessage("Night-Watch"),
    "Night-Watch zeigt nun auch Werte an, wenn diese von mehreren Uploadern innerhalb kurzer Zeit mehrfach in Nightscout gespeichert wurden. Das sollte man zwar möglichst vermeiden, aber nun kann Night-Watch auch damit umgehen." : MessageLookupByLibrary.simpleMessage("Night-Watch now also displays values if they have been saved multiple times in Nightscout by multiple uploaders within a short period of time. This should be avoided if possible, but now Night-Watch can also deal with it."),
    "Nightscout Berichte" : MessageLookupByLibrary.simpleMessage("Nightscout Raport"),
    "Nightscout Reporter ist nun auch grösstenteils in Spanisch und Polnisch verfügbar. Entsprechende Buttons wurden dem Hauptmenü hinzugefügt. Danke an die fleissigen Übersetzer :)." : MessageLookupByLibrary.simpleMessage("Het grootste deel van Nightscout Reporter is nu vertaald naar het Spaans en Pools. Corresponderende knoppen zijn toegevoegd aan het hoofdmenu. Dankzij de ijverige vertalers :)."),
    "Nightscout Reporter kann nun auch auf Portugiesisch verwendet werden." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter kan nu ook in het Portugees worden gebruikt."),
    "Nightscout Reporter kann nun auch in Japanisch verwendet werden." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter can now be used in Japanese."),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("Nightscout site"),
    "Nightscout Url in der Fusszeile des PDFs anzeigen" : MessageLookupByLibrary.simpleMessage("Nightscout Url weergeven in de voettekst van de PDF\'s"),
    "Normal" : MessageLookupByLibrary.simpleMessage("Normaal"),
    "Notiz" : MessageLookupByLibrary.simpleMessage("Notitie"),
    "Notiz-Linien bis zur Kurve zeichnen" : MessageLookupByLibrary.simpleMessage("Lijnen van notities naar de curve tekenen"),
    "Notizen" : MessageLookupByLibrary.simpleMessage("Aantekeningen"),
    "Nur letzte Basalrate ausgeben" : MessageLookupByLibrary.simpleMessage("Toon alleen de laatste basaal waarde"),
    "Nur letztes Profil ausgeben" : MessageLookupByLibrary.simpleMessage("Toon alleen laatste profiel"),
    "Nur mehrfache Datensätze anzeigen" : MessageLookupByLibrary.simpleMessage("Alleen herhaalde datasets tonen"),
    "Ok" : MessageLookupByLibrary.simpleMessage("Ok"),
    "Optionen" : MessageLookupByLibrary.simpleMessage("Instellingen"),
    "Optionen für die PDFs, die eine eindeutige Beziehung zu einem laufenden Loop haben, werden nun in Blau dargestellt. Das vereinfacht es, PDFs zu erstellen, denen man nicht ohne Weiteres entnehmen kann, dass ein Loop vorliegt. Dazu müssen nur die Haken bei den blauen Optionen entfernt werden." : MessageLookupByLibrary.simpleMessage("Options for the PDFs that have a unique relationship to a running loop are now displayed in blue. This makes it easy to create PDFs where you can not easily deduce that there is a loop running. All you have to do is to uncheck the blue options."),
    "PDF anzeigen" : MessageLookupByLibrary.simpleMessage("Toon PDF"),
    "PDF erneut erzeugen" : MessageLookupByLibrary.simpleMessage("PDF opnieuw aanmaken"),
    "PDF erzeugen" : MessageLookupByLibrary.simpleMessage("PDF Creëren"),
    "PDF für Profildaten" : MessageLookupByLibrary.simpleMessage("PDF for profile data"),
    "PDF herunterladen (bei einigen Browsern benötigt)" : MessageLookupByLibrary.simpleMessage("Download PDF (nodig voor sommige browsers)"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("Open PDF in hetzelfde venster"),
    "PGR" : MessageLookupByLibrary.simpleMessage("PGR"),
    "Patient Glykämischer Status (PGS)" : MessageLookupByLibrary.simpleMessage("Patiënt Glycemische Status (PGS)"),
    "Pausiert" : MessageLookupByLibrary.simpleMessage("Gepauseerd"),
    "Polski" : MessageLookupByLibrary.simpleMessage("Pools"),
    "Português" : MessageLookupByLibrary.simpleMessage("Portugees"),
    "Problem auf GitHub melden" : MessageLookupByLibrary.simpleMessage("Probleem melden op GitHub"),
    "Profil" : MessageLookupByLibrary.simpleMessage("Profiel"),
    "Profil-Basalrate" : MessageLookupByLibrary.simpleMessage("Basaal Profiel"),
    "Profileinstellungen" : MessageLookupByLibrary.simpleMessage("Profielinstellingen"),
    "Profilwechsel" : MessageLookupByLibrary.simpleMessage("Profiel Wissel"),
    "Protokoll" : MessageLookupByLibrary.simpleMessage("Log"),
    "Prozent" : MessageLookupByLibrary.simpleMessage("Procent"),
    "Quelle: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)" : MessageLookupByLibrary.simpleMessage("Source: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)"),
    "Querformat" : MessageLookupByLibrary.simpleMessage("Liggend"),
    "Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse." : MessageLookupByLibrary.simpleMessage("Volgorde van PDF-pagina\'s veranderd - Percentile Diagram komt nu na analyse."),
    "Reservoirwechsel" : MessageLookupByLibrary.simpleMessage("Reservoir vervangen"),
    "SMB" : MessageLookupByLibrary.simpleMessage("SMB"),
    "SMB Werte anzeigen" : MessageLookupByLibrary.simpleMessage("Toon SMB waarden"),
    "SMB an der Kurve platzieren" : MessageLookupByLibrary.simpleMessage("Plaats SMB op de curve"),
    "Schliessen" : MessageLookupByLibrary.simpleMessage("Sluiten"),
    "Schliessen Button im Nachrichtenbereich hinzugefügt." : MessageLookupByLibrary.simpleMessage("Sluitknop toegevoegd aan het berichtengebied."),
    "Schritte" : MessageLookupByLibrary.simpleMessage("Stappen"),
    "Sechs Monate vorher" : MessageLookupByLibrary.simpleMessage("Zes maanden ervoor"),
    "Sechzehn" : MessageLookupByLibrary.simpleMessage("Zestien"),
    "Sekunden anzeigen" : MessageLookupByLibrary.simpleMessage("Toon seconden"),
    "Sensorwechsel" : MessageLookupByLibrary.simpleMessage("Sensor verwisseld"),
    "Shortcut anlegen" : MessageLookupByLibrary.simpleMessage("Snelkoppeling toevoegen"),
    "Shortcut ändern" : MessageLookupByLibrary.simpleMessage("Snelkoppeling bewerken"),
    "Shortcuts" : MessageLookupByLibrary.simpleMessage("Snelkoppelingen"),
    "Skala" : MessageLookupByLibrary.simpleMessage("Range"),
    "Slovenský" : MessageLookupByLibrary.simpleMessage("Sloveens"),
    "Soll der Benutzer mit der URL" : MessageLookupByLibrary.simpleMessage("Moet de gebruiker met de URL"),
    "Soll der Shortcut mit der Bezeichnung" : MessageLookupByLibrary.simpleMessage("`Moet de snelkoppeling met de titel"),
    "Soll der Zeitraum" : MessageLookupByLibrary.simpleMessage("Moet de periode"),
    "Soll die Einheit zur Glukosemessung" : MessageLookupByLibrary.simpleMessage("Moet de eenheid voor glucosevaluaties"),
    "Soll die Formularauswahl mit der aktuellen Auswahl ersetzt werden?" : MessageLookupByLibrary.simpleMessage("Moet de formulierselectie worden vervangen door de huidige selectie?"),
    "Soll die URL" : MessageLookupByLibrary.simpleMessage("URL verwijderen"),
    "Spalte Basal anzeigen" : MessageLookupByLibrary.simpleMessage("Show column basal"),
    "Spalte Bolus anzeigen" : MessageLookupByLibrary.simpleMessage("Show column bolus"),
    "Spalte HbA1c" : MessageLookupByLibrary.simpleMessage("Kolom A1C"),
    "Spalte HbA1c zu Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Kolom A1C toegevoegd aan dagelijkse statistieken"),
    "Spalte IE anzeigen" : MessageLookupByLibrary.simpleMessage("Show column U"),
    "Spalte KH anzeigen" : MessageLookupByLibrary.simpleMessage("Show column carbs"),
    "Spalte Kohlenhydrate anzeigen" : MessageLookupByLibrary.simpleMessage("Show column carbs"),
    "Spalte Max anzeigen" : MessageLookupByLibrary.simpleMessage("Show column max"),
    "Spalte Messwerte" : MessageLookupByLibrary.simpleMessage("Kolom waarde aantal"),
    "Spalte Messwerte anzeigen" : MessageLookupByLibrary.simpleMessage("Show column valuecount"),
    "Spalte Min anzeigen" : MessageLookupByLibrary.simpleMessage("Show column min"),
    "Spalte Mittelwert anzeigen" : MessageLookupByLibrary.simpleMessage("Show column average"),
    "Spalte Standardabweichung" : MessageLookupByLibrary.simpleMessage("Kolom standaard deviatie"),
    "Spalte Std.Abw. anzeigen" : MessageLookupByLibrary.simpleMessage("Show column SDev"),
    "Spalte Variationskoeffizient" : MessageLookupByLibrary.simpleMessage("Kolom coëfficiënt variatie"),
    "Spalten Min / Max anzeigen" : MessageLookupByLibrary.simpleMessage("Show columns min / max"),
    "Spalten Perzentile" : MessageLookupByLibrary.simpleMessage("Kolommen percentielen"),
    "Spalten für 10% und 90% anzeigen" : MessageLookupByLibrary.simpleMessage("Toon kolommen voor 10% en 90%"),
    "Spaltenbreite der Informationen in der Analyse erhöht" : MessageLookupByLibrary.simpleMessage("Kolom breedte van de informatie in de analyse is verhoogd"),
    "Speichern" : MessageLookupByLibrary.simpleMessage("Opslaan"),
    "Spenden" : MessageLookupByLibrary.simpleMessage("Doneer"),
    "Standard_theme selection - standard" : MessageLookupByLibrary.simpleMessage("Standaard"),
    "Standardabweichung" : MessageLookupByLibrary.simpleMessage("Standaard afwijking"),
    "Standardabweichung statt Anzahl" : MessageLookupByLibrary.simpleMessage("Standaardafwijking in plaats van waardetelling"),
    "Standardbereich mit feinerer Abstufung" : MessageLookupByLibrary.simpleMessage("Standaard bereik met fijnere beoordeling"),
    "Standardgrenzwerte" : MessageLookupByLibrary.simpleMessage("Standard Doel Gebied"),
    "Startstunde" : MessageLookupByLibrary.simpleMessage("Start uur"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("SDev"),
    "Stunden" : MessageLookupByLibrary.simpleMessage("uren"),
    "Stündliche Statistik" : MessageLookupByLibrary.simpleMessage("Statistieken per uur"),
    "Summe" : MessageLookupByLibrary.simpleMessage("Som"),
    "Summen für Bolus Insulin, Basalrate für den Tag und Basalrate aus dem Profil zur Tagesgrafik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Sums for bolus insulin, basal rate for the day, and basalrate from the profile added to the daily chart"),
    "Symbole (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Symbolen (catheters etc.)"),
    "Synchronisierung aufheben" : MessageLookupByLibrary.simpleMessage("Synchronisatie annuleren"),
    "TDD" : MessageLookupByLibrary.simpleMessage("TDD"),
    "TDD anzeigen" : MessageLookupByLibrary.simpleMessage("TDD weergeven"),
    "Tabelle" : MessageLookupByLibrary.simpleMessage("Tabel"),
    "Tabelle mit Glukosewerten" : MessageLookupByLibrary.simpleMessage("Tabel met glucose waarden"),
    "Tag (08:00 - 17:59)" : MessageLookupByLibrary.simpleMessage("Dag (08:00 - 17:59)"),
    "Tages-Basalrate" : MessageLookupByLibrary.simpleMessage("Dagelijks basaal"),
    "Tagesanalyse" : MessageLookupByLibrary.simpleMessage("Dag analyse"),
    "Tagesbasalrate verwenden" : MessageLookupByLibrary.simpleMessage("Gebruik dagelijkse basaal"),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("Dagelijkse grafiek"),
    "Tagesgrafikparameter zur Anzeige der Legende" : MessageLookupByLibrary.simpleMessage("Daily graphic parameters for displaying notes"),
    "Tagesgrafikparameter zur Anzeige von Notizen" : MessageLookupByLibrary.simpleMessage("Daily graphic parameters for displaying notes"),
    "Tagesgrafikparameter zur umgekehrten Sortierung hinzugefügt. Die Tage werden damit beginnend mit dem höchsten Datum ausgegeben." : MessageLookupByLibrary.simpleMessage("Added daily graphic parameters for reverse sorting. The daily graphics are created starting with the highest date."),
    "Tagesnamen in Grafik anzeigen" : MessageLookupByLibrary.simpleMessage("Dagnamen in grafiek formaat weergeven"),
    "Tagesprofil" : MessageLookupByLibrary.simpleMessage("Dagelijks Profiel"),
    "Tagesstartprofil anzeigen" : MessageLookupByLibrary.simpleMessage("Toon profiel bij dagstart"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("Dagelijkse Statistieken"),
    "Tagesstunden" : MessageLookupByLibrary.simpleMessage("Daguren"),
    "Tagestrend" : MessageLookupByLibrary.simpleMessage("Dagelijkse Trend"),
    "Template" : MessageLookupByLibrary.simpleMessage("Sjabloon"),
    "Temporäre Basalraten" : MessageLookupByLibrary.simpleMessage("Tijdelijke basaal"),
    "Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt" : MessageLookupByLibrary.simpleMessage("Tijdelijke basaalstanden met absolute waarden × zijn correct weergegeven"),
    "Temporäre Overrides" : MessageLookupByLibrary.simpleMessage("Tijdelijke overrides"),
    "Temporäre Profilwechsel werden jetzt erkannt und in der Tagesgrafik korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Tijdelijke profiel veranderingen worden nu herkend en correct weergegeven in de dagelijkse grafieken."),
    "Temporäre Ziele" : MessageLookupByLibrary.simpleMessage("Tijdelijke doelen"),
    "Titelangaben für Datumsbereiche auf den PDFs vereinheitlicht" : MessageLookupByLibrary.simpleMessage("Titelinformatie voor datumbereik op de PDF\'s zijn verenigd"),
    "Trend" : MessageLookupByLibrary.simpleMessage("Trend"),
    "Trendpfeil" : MessageLookupByLibrary.simpleMessage("Trendarrow"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("Tijd"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("Tijd"),
    "Umbruch" : MessageLookupByLibrary.simpleMessage("Newline"),
    "Unbegrenzt" : MessageLookupByLibrary.simpleMessage("Onbeperkt"),
    "Unterzuckerungen anzeigen" : MessageLookupByLibrary.simpleMessage("Toon hypoglycemie"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("Url naar Nightscout-API (bijv. https://xxx.herokuapp.com)"),
    "VarK\nin %" : MessageLookupByLibrary.simpleMessage("CV in %"),
    "Verbinde zu Google Drive..." : MessageLookupByLibrary.simpleMessage("Verbinden met Google Drive..."),
    "Verbinde zu Google..." : MessageLookupByLibrary.simpleMessage("Verbinden met Google..."),
    "Verbindung zu Google Drive herstellen" : MessageLookupByLibrary.simpleMessage("Verbinden met Google Drive"),
    "Verbindung zu Google Drive trennen" : MessageLookupByLibrary.simpleMessage("Verbreek verbinding met Google Drive"),
    "Vergleich" : MessageLookupByLibrary.simpleMessage("Vergelijking"),
    "Version" : MessageLookupByLibrary.simpleMessage("Versie"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("Distributie"),
    "Verteilung der Glukosewerte" : MessageLookupByLibrary.simpleMessage("Distributie van glucose waarden"),
    "Verzögerter Bolus" : MessageLookupByLibrary.simpleMessage("Vertraagde bolus"),
    "Vier" : MessageLookupByLibrary.simpleMessage("Vier"),
    "Viertes Quartal" : MessageLookupByLibrary.simpleMessage("Vierde kwartaal"),
    "ViewWhatsnewComponent0__message_47" : m0,
    "ViewWhatsnewComponent0__message_6" : m1,
    "ViewWhatsnewComponent0__message_9" : m2,
    "Von" : MessageLookupByLibrary.simpleMessage("Van"),
    "Vor der Erzeugung eines PDFs wird noch ein Dialog angezeigt, auf dem man Parameter für alle erzeugten PDFs eingeben kann. Man kann dort den Zielbereich auf den Standardbereich festlegen, den Ärzte gerne sehen. Das hat Auswirkungen auf alle Darstellungen des Zielbereichs, sowie auf die Verteilung der Werte innerhalb und ausserhalb des Zielbereichs. Man kann dort auch den Maximalwert für Glukose in Grafiken festlegen. Dieser Wert wird in der Tagesgrafik, dem Perzentil Diagramm und der Wochengrafik verwendet. Wenn er auf \"Automatisch\" gesetzt wird, wird der Maximalwert wie bisher auch aus den vorhandenen Daten ermittelt. Ausserdem kann man hier angeben, ob man den aktuellen Zeitraum erzeugen möchte oder einen Vergleichszeitraum. Das ist nützlich, um dem Arzt die Gegenüberstellung von Werten der Vergangenheit und jetzt zu zeigen." : MessageLookupByLibrary.simpleMessage("Voordat een PDF wordt aangemaakt, wordt er een dialoogvenster weergegeven waarin u parameters kunt invoeren voor alle PDF\'s die worden aangemaakt. U kunt het doel instellen op het standaardgebied dat artsen graag zien. Dit heeft gevolgen voor alle vertegenwoordigingen van het doelgebied. evenals de verspreiding van de waarden binnen en buiten het doelgebied. Je kunt daar ook de maximale waarde voor glucose instellen in de grafieken. Deze waarde wordt gebruikt in de dagelijkse grafiek, het percentiele diagram en de wekelijkse grafieken. Als het is ingesteld op \"Automatisch\", wordt de maximale waarde bepaald op basis van de bestaande data zoals voorheen. U kunt hier ook opgeven of u de huidige periode of een vergelijkingsperiode wilt genereren. Dit is nuttig om de arts een vergelijking te laten maken van vroegere en huidige waarden."),
    "Warnung" : MessageLookupByLibrary.simpleMessage("Waarschuwing"),
    "Warum werde ich mit mehreren Buttons genervt, statt eine einzelne PDF angezeigt zu kriegen?" : MessageLookupByLibrary.simpleMessage("Waarom heb ik me geërgerd met meerdere knoppen in plaats van één enkele PDF?"),
    "Was bisher geschah..." : MessageLookupByLibrary.simpleMessage("Wat is er tot nu toe gebeurd..."),
    "Wechsel" : MessageLookupByLibrary.simpleMessage("Wijzigen"),
    "Wechsel (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Veranderingen (catheters etc.)"),
    "Weihnachten_theme selection - christmas" : MessageLookupByLibrary.simpleMessage("Kerstmis"),
    "Wenn Night-Watch beim Aufruf feststellt, dass noch keine Konfiguration vorgenommen wurde, dann kann man über das altbekannte Settingsfenster seine Einstellungen vornehmen. Das kommt vor, wenn man die Seite als WebApp installiert, da dort der Browserspeicher, in dem die Konfiguration gehalten wird, normalerweise noch nicht befüllt wurde." : MessageLookupByLibrary.simpleMessage("If Night-Watch is called without any configuration available, you can edit your settings via the well-known settings window. This happens when you install the page as a web app, since the browser memory, in which the configuration is stored, has usually not yet been filled."),
    "Wenn Sonderzeichen in den Daten vorhanden sind (z.B. Smileys in den Notizen), führte das zu einem Absturz während der PDF-Erstellung. Das wurde behoben, indem diese Sonderzeichen aus der Ausgabe entfernt werden." : MessageLookupByLibrary.simpleMessage("If special characters are present in the data (eg smileys in the notes), this caused a crash during the PDF creation. This has been fixed by removing these special characters from the output."),
    "Wenn auf der Profilseite leere Spalten vorkommen, führt das nicht mehr zu einer leeren Seite." : MessageLookupByLibrary.simpleMessage("Als er lege kolommen op de profielpagina staan, leidt dit niet langer tot een lege pagina."),
    "Wenn das erzeugte PDF zu gross wird, wird es nun auf mehrere PDF-Dateien aufgeteilt. In diesem Fall wird es nicht direkt geöffnet, sondern es wird eine Liste mit durchnummerierten Buttons angezeigt. Diese Buttons öffnen bei Betätigung das entsprechende PDF und erhalten einen Haken, um anzuzeigen, dass es geöffnet wurde. Das sollte es erleichtern, die PDFs nacheinander zu öffnen, weil normalerweise der Browser im Hintergrund verschwindet, wenn ein neues Fenster aufgemacht wird." : MessageLookupByLibrary.simpleMessage("Als de gegenereerde PDF te groot is, is het nu verdeeld in meerdere PDF-bestanden. In dit geval zal het niet direct worden geopend, maar er zal een lijst met genummerde knoppen worden weergegeven. Deze knoppen openen de bijbehorende PDF en krijgen een checkmark, wat aangeeft dat deze is geopend. Dit zou het gemakkelijker moeten maken om de PDF\'s te openen, omdat meestal het huidige browservenster naar de achtergrond wordt verplaatst wanneer een nieuw venster wordt geopend."),
    "Wenn der Zeitraum leer ist, wird der Button für die Auswahl deutlich markiert und in dem Dialog zur Auswahl wird in der Titelzeile ein Hinweis darauf angezeigt." : MessageLookupByLibrary.simpleMessage("Als de periode leeg is, de knop voor de selectie is duidelijk gemarkeerd en in het dialoogvenster om een indicatie te kiezen verschijnt in de titelbalk."),
    "Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet" : MessageLookupByLibrary.simpleMessage("Als de drempelwaarden in Nightscout (BG_TARGET_BOTTOM en BG_TARGET_TOP) gelijk zijn aan 70 en 180, dan zal het gebied voor de standaard doelen worden verborgen op de analyse pagina"),
    "Wenn die Synchronisierung mit Google Drive aufgehoben wird, wird die Berechtigung nun korrekt zurückgesetzt. Wenn man sich danach wieder synchronisieren will, werden nochmal die Berechtigungen abgefragt." : MessageLookupByLibrary.simpleMessage("Bij het annuleren van de synchronisatie met Google Drive wordt de autorisatie nu opnieuw ingesteld. Als u daarna opnieuw wilt synchroniseren, worden de autorisaties opnieuw aangevraagd."),
    "Wenn im CGP ein Wert den Maximalwert der Skala überschreitet, wird die entsprechende Ecke mit einem gelben Kreis markiert." : MessageLookupByLibrary.simpleMessage("Als een waarde in de CGP de maximale waarde van de schaal overschrijdt, wordt de overeenkomstige hoek met een gele cirkel gemarkeerd."),
    "Wenn in Nightscout die Daten für die täglich erzielten Schritte vorhanden sind, dann werden diese in der Tagesgrafik angezeigt, wenn dort die Option \"Bewegung anzeigen\" aktiviert ist." : MessageLookupByLibrary.simpleMessage("If the data for the daily steps taken is available in Nightscout, then these are displayed in the daily graph if the \"Show Exercises\" option is activated there."),
    "Wenn in den Einstellungen eine Verbindung zum Google-Konto hergestellt wird, werden die Cookies von Google verwendet und die Daten nicht mehr im localStorage des Browsers gespeichert, sondern im AppStorage auf Google Drive. Auf diese Art kann man die Daten zentralisiert verwalten und hat diese in jedem Browser zur Verfügung, der mit dem angegebenen Google Konto verbunden ist." : MessageLookupByLibrary.simpleMessage("Wanneer de instellingen zijn verbonden met het Google Account, Google\'s cookies worden gebruikt en de gegevens worden niet langer opgeslagen in de localStorage van de browser, maar in de AppStorage op Google Drive. Op deze manier kunt u de gegevens centraal beheren en beschikbaar maken in een browser verbonden met het opgegeven Google-account."),
    "Wenn in den Einträgen Lücken von 15 Minuten oder mehr sind, führen diese zu einer Unterbrechung der Linie in der Tagesgrafik." : MessageLookupByLibrary.simpleMessage("If there are gaps in the entries of 15 minutes or more, there will also be a gap in the daily chart."),
    "Wenn in einem Profil mehr Zeiten erfasst wurden, als auf eine Seite passen, wurden diese fortlaufend in die nächste Seite hineingeschrieben. Jetzt wird an geeigneter Stelle eine neue Seite ausgegeben." : MessageLookupByLibrary.simpleMessage("If more times were recorded in a profile than fit on one page, they were overlaying the content of the next page. Now a new page is created as needed."),
    "Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt." : MessageLookupByLibrary.simpleMessage("Als er geen gegevens beschikbaar zijn, worden lege pagina\'s met een gepaste hint gegenereerd."),
    "Wert" : MessageLookupByLibrary.simpleMessage("Waarde"),
    "Wert & Prozent" : MessageLookupByLibrary.simpleMessage("Waarde & percentage"),
    "Werte über dem Maximum als Pfeile darstellen" : MessageLookupByLibrary.simpleMessage("Toon waarden boven het maximum als pijlen"),
    "Willkommen" : MessageLookupByLibrary.simpleMessage("Welkom"),
    "Willkommen bei Nightscout Reporter!" : MessageLookupByLibrary.simpleMessage("Welkom bij Nightscout Reporter!"),
    "Wochengrafik" : MessageLookupByLibrary.simpleMessage("Wekelijkse Grafiek"),
    "Zeilen mit gleichen Werten zusammenfassen" : MessageLookupByLibrary.simpleMessage("Combineer invoergegevens met dezelfde waarden"),
    "Zeit" : MessageLookupByLibrary.simpleMessage("Time"),
    "Zeitraum" : MessageLookupByLibrary.simpleMessage("Periode"),
    "Zeitraum festlegen" : MessageLookupByLibrary.simpleMessage("Stel de periode in"),
    "Zeitraum:" : MessageLookupByLibrary.simpleMessage("Periode:"),
    "Zeitzone" : MessageLookupByLibrary.simpleMessage("Tijdzone"),
    "Zielbereich" : MessageLookupByLibrary.simpleMessage("Doelgebied"),
    "Zielbereich mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Doelbereik met decimalen"),
    "Zielwert anzeigen" : MessageLookupByLibrary.simpleMessage("Toon doelwaarde"),
    "Zugriffsschlüssel" : MessageLookupByLibrary.simpleMessage("Toegangs-token"),
    "Zur Berechnung der Analyse, Tagesstatistik und Tagesgrafik wird nun die gleiche Datenbasis verwendet, so dass die Werte auf allen PDFs gleich sind." : MessageLookupByLibrary.simpleMessage("The same database is used to calculate the analysis, daily statistics and daily graphs so that the values are the same on all PDFs."),
    "Zur Kachelansicht" : MessageLookupByLibrary.simpleMessage("Naar de tegelweergave"),
    "Zur Listenansicht" : MessageLookupByLibrary.simpleMessage("Naar de lijstweergave"),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("Extra functies"),
    "Zusätzliche Informationen zu den PDFs und im UI hinzugefügt" : MessageLookupByLibrary.simpleMessage("added additional information about the PDFs and in the UI"),
    "Zusätzliche Spalte anzeigen" : MessageLookupByLibrary.simpleMessage("Toon extra kolom"),
    "Zwei" : MessageLookupByLibrary.simpleMessage("Twee"),
    "Zweites Quartal" : MessageLookupByLibrary.simpleMessage("Tweede kwartaal"),
    "_msgAdjustCalc" : m3,
    "_msgAdjustLab" : m4,
    "_msgAdjustTarget" : m5,
    "_msgLowerGlucHint" : m6,
    "_msgPageCount" : m7,
    "_msgPageCountEst" : m8,
    "_msgRaiseGlucHint" : m9,
    "ab 4,6" : MessageLookupByLibrary.simpleMessage("van 4,6"),
    "bis" : MessageLookupByLibrary.simpleMessage("tot"),
    "dd.MM." : MessageLookupByLibrary.simpleMessage("dd/MM"),
    "dd.MM.yyyy" : MessageLookupByLibrary.simpleMessage("dd/MM/yyyy"),
    "ersetzt werden?" : MessageLookupByLibrary.simpleMessage("?"),
    "extrem hohes Risiko" : MessageLookupByLibrary.simpleMessage("extreem hoog risico"),
    "g / Stunde" : MessageLookupByLibrary.simpleMessage("g / uur"),
    "geringes Risiko" : MessageLookupByLibrary.simpleMessage("laag risico"),
    "gesch. HbA1c" : MessageLookupByLibrary.simpleMessage("est. A1C"),
    "hohes Risiko" : MessageLookupByLibrary.simpleMessage("hoog risico"),
    "https://nightscout-reporter.zreptil.de/beta" : MessageLookupByLibrary.simpleMessage("https://nightscout-reporter.zreptil.de/beta"),
    "iOS Loop missbraucht die Profiltabelle dazu, seine eigenen Settings zu speichern, was bei Benutzern dieser Software dazu führte, dass die Tabelle Profil nicht korrekt geladen werden kann. Deshalb gibt es jetzt in den Einstellungen die Möglichkeit, die Anzahl der Datensätze, die aus der Profiltabelle geladen werden einzuschränken." : MessageLookupByLibrary.simpleMessage("iOS Loop misbruikt de profieltabel om zijn eigen instellingen op te slaan dit betekend voor gebruikers van deze software dat de profieltabel niet correct geladen kon worden. Daarom is er nu in de instellingen de optie om het aantal datarecords te beperken die worden geladen vanuit de profieltabel."),
    "mg/dL" : MessageLookupByLibrary.simpleMessage("mg/dL"),
    "mit dem Zeitraum" : MessageLookupByLibrary.simpleMessage("wordt vervangen door de periode"),
    "mit der Einheit" : MessageLookupByLibrary.simpleMessage("met de unit"),
    "mmol/L" : MessageLookupByLibrary.simpleMessage("mmol/L"),
    "moderates Risiko" : MessageLookupByLibrary.simpleMessage("gematigd risico"),
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
    "sehr geringes Risiko" : MessageLookupByLibrary.simpleMessage("zeer laag risico"),
    "tl;dr" : MessageLookupByLibrary.simpleMessage("tl;dr"),
    "verwerfen" : MessageLookupByLibrary.simpleMessage("verwerpen"),
    "vom Benutzer wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("Weet je het zeker?"),
    "wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("echt verwijderen?"),
    "zu Vergleichszwecken (z.B. Arzt)" : MessageLookupByLibrary.simpleMessage("voor vergelijkingsdoeleinden (bijv. dokter)"),
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("Avg. Basaal per dag"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("Gem. bolus per dag"),
    "Ø ICR/Stunde" : MessageLookupByLibrary.simpleMessage("Gem. ICR/Uur"),
    "Ø ISF/Stunde" : MessageLookupByLibrary.simpleMessage("Gem. ISF/Uur"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("Gem. insuline per dag"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("Gem. insuline ratio"),
    "Ø KH pro Mahlzeit" : MessageLookupByLibrary.simpleMessage("Gem. koolhydraten per dag"),
    "Ø KH pro Tag" : MessageLookupByLibrary.simpleMessage("Gem. koolhydraten per dag"),
    "Ø Microbolus pro Tag" : MessageLookupByLibrary.simpleMessage("Gem. Microbolus per dag"),
    "Ø Zuckerwert" : MessageLookupByLibrary.simpleMessage("Gem. glucose"),
    "Überprüfe Zugriff auf Nightscout ..." : MessageLookupByLibrary.simpleMessage("Toegang tot Nightscout controleren..."),
    "Übersetzungen korrigiert" : MessageLookupByLibrary.simpleMessage("Gecorrigeerde vertalingen"),
    "日本の" : MessageLookupByLibrary.simpleMessage("日本の")
  };
}
