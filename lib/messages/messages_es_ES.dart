// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es_ES locale. All the
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
  get localeName => 'es_ES';

  static m0(startTag0, endTag0) => "Nachdem ich immer wieder gefragt wurde, ob man mir eine Spende zukommen lassen kann, habe ich mich jetzt dann doch dazu entschlossen, so eine Möglichkeit zur Verfügung zu stellen. Nightscout Reporter ist aber nach wie vor komplett kostenlos und wird das auch bleiben. Wer dennoch seiner Zuneigung zum Programm Ausdruck verleihen will, dem will ich mich nicht länger in den Weg stellen. Der Spenden-Button ist nicht sichtbar. Aber wer etwas in den ${startTag0}Hut${endTag0} werfen will, der wird ihn finden :)";

  static m1(startTag0, endTag0, startTag1, endTag1, startTag2, endTag2) => "Eine neue Ansicht namens ${startTag0}Night-Watch${endTag0} wurde hinzugefügt. In dieser Ansicht sieht man, so wie auch in der Uhr-Anzeige auf der Nightscout-Seite, den aktuellen Glukosewert und weitere Informationen, die man sich in gewissem Rahmen so konfigurieren kann, wie sie einem gefallen. Night-Watch wird über diese URL aufgerufen: ${startTag1}https://nightscout-reporter.zreptil.de/watch${endTag1} Es kann auch über das Hauptmenü unter dem Menüpunkt ${startTag2}Night-Watch${endTag2} aufgerufen werden, oder indem man den aktuellen Zuckerwert in der Titelleiste von Nightscout Reporter anklickt, wenn man diesen in den Einstellungen aktiviert hat.";

  static m2(startTag0, endTag0) => "Dort, wo ein CGP erstellt werden kann, gibt es nun die Option ${startTag0}Linien um Bereiche${endTag0}. Diese ist standardmässig eingeschaltet. Wenn sie ausgeschaltet wird, werden die Wertebereiche für den gesunden und den aktuellen Menschen nicht mehr mit einer Linie umrandet. Damit sieht die Grafik etwas blasser aus, aber man kann die Werte auf den Achsen genauer untersuchen, wenn man das möchte.";

  static m3(value) => "HbA1c calculado: ${value}%";

  static m4(value) => "Valor HbA1c calculado en laboratorio: ${value}%";

  static m5(factor) => "Los valores de BG_TARGET_BOTTOM y BG_TARGET_TOP se dividieron por el factor ${factor}";

  static m6(factor) => "Todos valores sensoriales se han reducido por ${factor} %";

  static m7(count) => "${Intl.plural(count, zero: '', one: '1 página', other: '${count} páginas')}";

  static m8(count) => "${Intl.plural(count, zero: '', one: '1 página o más', other: '${count} páginas o más')}";

  static m9(factor) => "Todos valores sensoriales se han aumentado por ${factor} %";

  static m10(isVisible) => "Solo se necesita la clave de acceso si se ha restringido el acceso a nightscout por AUTH_DEFAULT_ROLES";

  static m11(time) => "La tasa basal está activada desde ${time} y no contiene cambios.";

  static m12(unit) => "Esta tasa basal estaba activa ${unit}.";

  static m13(value) => "Perfil basal diario (${value})";

  static m14(value) => "Tasas basales del perfil (${value})";

  static m15(value) => "Insulina bolo (${value})";

  static m16(value) => "VarK [${value}%]";

  static m17(date) => "Verifico ${date} ...";

  static m18(scale, intercept, slope) => "Calibración (scale ${scale} / intercept ${intercept} / slope ${slope})";

  static m19(value) => "Bolo de comida (${value})";

  static m20(value) => "Carbohidratos (${value}g)";

  static m21(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt}dias por catéter)', other: '(${txt} dias por catéter)')}";

  static m22(name, from, to) => "${name} ${from} => ${to}";

  static m23(url) => "Compruebe el acceso a ${url}...";

  static m24(count) => "${Intl.plural(count, zero: 'Deseleccionar una columna para poder activar @nl otra', one: 'Una columna eligible', other: 'Quedan ${count} columnas a eligir')}";

  static m25(value) => "Bolo de corrección (${value})";

  static m26(value) => "${Intl.plural(value, zero: 'ningún dato', one: '1 dato', other: '${value} datos')}";

  static m27(value) => "${value} dias";

  static m28(hours, minutes) => "${hours} h ${minutes} min";

  static m29(isVisible) => "La fecha del último día con datos completos";

  static m30(beg, end) => "${beg} - ${end}";

  static m31(count) => "${Intl.plural(count, zero: '', one: '1 Formulario', other: '${count} Formularios')}";

  static m32(max) => "malo (mayor a ${max})";

  static m33(min, max) => "bueno (${min} a ${max})";

  static m34(min) => "no disponible (menor a ${min})";

  static m35(min, max) => "muy bueno (${min} a ${max})";

  static m36(time) => "${Intl.plural(time, zero: 'hace un momento', one: 'hace ${time} Minutos', other: 'hace ${time} Minutos')}";

  static m37(unit, value) => "Intensidad hiperglucemia\n[${unit} x min²]";

  static m38(unit) => "La intensidad de hiperglucemias por día (valores bajo o igual ${unit}).";

  static m39(unit, value) => "Intensidad hipoglucemia\n[${unit} x min²]";

  static m40(unit) => "La intensidad de hipoglucemias por día (valores bajo o igual ${unit}).";

  static m41(value) => "Alto${value}";

  static m42(value) => "Histórico ${value}";

  static m43(value) => "Hipoglycemia (< ${value})";

  static m44(unit) => "Factores sensibilidad insulina (ISF)\n1 Ui baja la glucosa por X ${unit}";

  static m45(value) => "${value} g";

  static m46(value) => "g HC (${value} unidades HC)";

  static m47(date) => "KW${date}";

  static m48(value) => "Insulina en total (${value})";

  static m49(error, stacktrace) => "Error al cargar los datos: \n${error}\n${stacktrace}";

  static m50(date) => "Cargando datos para ${date}...";

  static m51(insulin, unit) => "Micro bolo ${insulin} ${unit}";

  static m52(range, duration, reason, scale) => "sust. temp. Por ${duration} min, razón: ${reason}, objectivo: ${range}, ajuste: ${scale}%";

  static m53(insulin, unit) => "SMB ${insulin} ${unit}";

  static m54(percent, duration) => "basal temporal ${percent}% / ${duration} min";

  static m55(value, duration) => "basal temp. ${value} / ${duration} min";

  static m56(target, duration, reason) => "objetivo temporal ${target} para ${duration} min, razon: ${reason}";

  static m57(value) => "Bajo${value}";

  static m58(gluc, unit) => "Medición capilar ${gluc} ${unit}";

  static m59(unit, value) => "Glucemia media\n[${unit}]";

  static m60(hba1c) => "Glucemia media en el período elegido.";

  static m61(name) => "Usar perfil \"${name}\"";

  static m62(name) => "No se ha encontrado el perfil \"${name}\". Este se debe editar en el editor de perfil en la página Nightscout. Aquí se debe crear un perfil con el nombre \"${name}\" para poder crear el formulario. El enlace de abajo te llevará al editor de perfil. A lo mejor te tendrás que autentificar para poder editar los valores.";

  static m63(min, max) => "malo (${min} a ${max})";

  static m64(min, max) => "bueno (${min} a ${max})";

  static m65(max) => "muy malo (mayor a ${max})";

  static m66(min) => "excelente (menos de ${min})";

  static m67(oldName, newName) => "Cambio de perfil - ${oldName} => ${newName}";

  static m68(oldName, newName, duration) => "Cambio de perfil ${oldName} => ${newName} für ${duration} minutos";

  static m69(howMany, fmt) => "${Intl.plural(howMany, zero: 'no hay datos', one: '1 medicion por minuto', other: 'medición cada ${fmt}minutos')}";

  static m70(howMany, fmt) => "${Intl.plural(howMany, zero: 'no hay datos', one: '1 medicion diaria', other: '${fmt} mediciones diarias')}";

  static m71(howMany, fmt) => "${Intl.plural(howMany, zero: 'no hay datos', one: '1 medicion por hora', other: '${fmt} mediciones por hora')}";

  static m72(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt}dias por ampolla)', other: '(${txt} dias por ampolla)')}";

  static m73(value) => "SMB (${value})";

  static m74(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt}dias por sensor)', other: '(${txt} dias por sensor)')}";

  static m75(low, high, unit) => "Usar objetivo de glucemia estándar (${low} ${unit} - ${high} ${unit})";

  static m76(isVisible) => "La fecha del primer día con datos";

  static m77(value) => "(dev h ${value})";

  static m78(value) => "ToR [${value}min/d]";

  static m79(min, max) => "El tiempo en minutos en el que los valores se encuentran fuera del margen ${min} a ${max}.";

  static m80(unit) => "Objectvo de glucosa\n${unit}";

  static m81(min, max, units) => "Rango objetivo (${min} - ${max} ${units})";

  static m82(value) => "Objectivo";

  static m83(time) => "${time} hora";

  static m84(time) => "${time} am";

  static m85(time) => "${time} pm";

  static m86(maxCount, count, text) => "${Intl.plural(count, zero: '', one: 'El uploader \"${text}\" ha creado registros.', other: 'Siguientes Uploaders han creado registros: ${text}')}";

  static m87(maxCount) => "No se han podido cargar todos perfiles, por que en el tiempo seleccionado hay más de ${maxCount} guardados. ";

  static m88(begDate) => "valido a partir de ${begDate}";

  static m89(begDate, endDate) => "valido de ${begDate} a ${endDate}";

  static m90(endDate) => "valido hasta ${endDate}";

  static m91(high) => "Valores superior a ${high}";

  static m92(low) => "Valores bajo ${low}";

  static m93(low, high) => "Valores entre ${low} y ${high}";

  static m94(low, high) => "Objetivos (${low} - ${high})";

  static m95(value) => "Valores altos (${value})";

  static m96(value) => "Valores bajos (${value})";

  static m97(value) => "Valores muy altos ( > ${value})";

  static m98(value) => "Valores muy bajos ( < ${value})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "0,0 bis 2,0" : MessageLookupByLibrary.simpleMessage("0,0 a 2,0"),
    "1 Minute" : MessageLookupByLibrary.simpleMessage("1 minuto"),
    "1 Stunde" : MessageLookupByLibrary.simpleMessage("1 hora"),
    "1.0.0 - 20.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.0 - 20.10.2018"),
    "1.0.1 - 23.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.1 - 23.10.2018"),
    "1.0.2 - 23.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.2 - 23.10.2018"),
    "1.0.3 - 26.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.3 - 26.10.2018"),
    "1.0.4 - 28.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.4 - 28.10.2018"),
    "1.1.0 - 09.11.2018" : MessageLookupByLibrary.simpleMessage("1.1.0-09.11.2018"),
    "1.1.1 - 19.11.2018" : MessageLookupByLibrary.simpleMessage("1.1.1-19.11.2018"),
    "1.1.2 - 08.01.2019" : MessageLookupByLibrary.simpleMessage("1.1.2-08.01.2019"),
    "1.2.0 - 21.01.2019" : MessageLookupByLibrary.simpleMessage("1.2.0-21.01.2019"),
    "1.2.1 - 22.01.2019" : MessageLookupByLibrary.simpleMessage("1.2.1 22.01.2019"),
    "1.2.10 - 18.04.2019" : MessageLookupByLibrary.simpleMessage("1.2.10 - 18.04.2019"),
    "1.2.11 - 17.05.2019" : MessageLookupByLibrary.simpleMessage("1.2.11 - 17.05.2019"),
    "1.2.2 - 24.01.2019" : MessageLookupByLibrary.simpleMessage("1.2.2 24.01.2019"),
    "1.2.3 - 04.02.2019" : MessageLookupByLibrary.simpleMessage("1.2.3-04.02.2019"),
    "1.2.4 - 12.02.2019" : MessageLookupByLibrary.simpleMessage("1.2.4 - 12.02.2019"),
    "1.2.5 - 25.03.2019" : MessageLookupByLibrary.simpleMessage("1.2.5 - 25.03.2019"),
    "1.2.6 - 27.03.2019" : MessageLookupByLibrary.simpleMessage("1.2.6 - 27.03.2019"),
    "1.2.7 - 28.03.2019" : MessageLookupByLibrary.simpleMessage("1.2.7 - 28.03.2019"),
    "1.2.8 - 11.04.2019" : MessageLookupByLibrary.simpleMessage("1.2.8 - 11.04.2019"),
    "1.2.9 - 15.04.2019" : MessageLookupByLibrary.simpleMessage("1.2.9-15.04.2019"),
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
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("10% - 90% de los valores"),
    "15 Minuten" : MessageLookupByLibrary.simpleMessage("15 minutos"),
    "2,1 bis 3,0" : MessageLookupByLibrary.simpleMessage("2,1 a 3,0"),
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
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("25% -75% de los valores"),
    "3,1 bis 4,0" : MessageLookupByLibrary.simpleMessage("3,1 a 4,0"),
    "3.0.0 - 21.08.2022" : MessageLookupByLibrary.simpleMessage("3.0.0 - 21.08.2022"),
    "3.0.1 - xx.08.2022" : MessageLookupByLibrary.simpleMessage("3.0.1 - xx.08.2022"),
    "30 Minuten" : MessageLookupByLibrary.simpleMessage("30 minutos"),
    "4,1 bis 4,5" : MessageLookupByLibrary.simpleMessage("4,1 a 4,5"),
    "5 Minuten" : MessageLookupByLibrary.simpleMessage("5 minutos"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "90%" : MessageLookupByLibrary.simpleMessage("90%"),
    "<br><br>Wenn diese URL geschützt ist, muss ausserdem der Zugriffsschlüssel korrekt definiert sein. Diesen erreicht man über \"Administrator-Werkzeuge\" auf der persönlichen Nightscout Seite." : MessageLookupByLibrary.simpleMessage("<br><br> si esta URL está protegida también es necesario definir la clave de acceso. Esta se encuentra en la parte \"herramientas administrativas\" en tu página personal de nightscout."),
    "Abbruch" : MessageLookupByLibrary.simpleMessage("Descartar"),
    "Absturz behoben, der auftrat, wenn kein passendes Profil für einen Zeitpunkt gefunden werden konnte" : MessageLookupByLibrary.simpleMessage("Arreglada falta que se produjo, cuando no se encontraban perfiles coincidente para un tiempo"),
    "Acht" : MessageLookupByLibrary.simpleMessage("Ocho"),
    "Alle Benutzer ausgeben" : MessageLookupByLibrary.simpleMessage("Mostrar todos usuarios"),
    "Alle Werte für den Tag anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar todos los datos del dia"),
    "Alles" : MessageLookupByLibrary.simpleMessage("Todo"),
    "Allgemeines" : MessageLookupByLibrary.simpleMessage("General"),
    "Als ersten Tag der Woche festlegen" : MessageLookupByLibrary.simpleMessage("Elegir como primer día de la semana"),
    "Ampullenwechsel" : MessageLookupByLibrary.simpleMessage("Cambio de ampolla"),
    "Anmelden" : MessageLookupByLibrary.simpleMessage("Registrar"),
    "Anmeldung bei Google..." : MessageLookupByLibrary.simpleMessage("Registrando en Google..."),
    "Anmeldung erfolgreich" : MessageLookupByLibrary.simpleMessage("Registro necesario"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("Adapta-\nción"),
    "Anzahl Ampullenwechsel" : MessageLookupByLibrary.simpleMessage("Número cambios de ampollas"),
    "Anzahl Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Número cambio catéteres"),
    "Anzahl Messungen" : MessageLookupByLibrary.simpleMessage("Número de mediciones"),
    "Anzahl Sensorenwechsel" : MessageLookupByLibrary.simpleMessage("Número cambio de sensores"),
    "Anzahl Unterzuckerungen" : MessageLookupByLibrary.simpleMessage("Número de hipoglycemias"),
    "Anzahl der Sensoren zur Analyse hinzugefügt" : MessageLookupByLibrary.simpleMessage("Añadido numero de sensores al analisis"),
    "Anzahl:" : MessageLookupByLibrary.simpleMessage("Cantidad:"),
    "Anzeigeeinstellungen" : MessageLookupByLibrary.simpleMessage("Configuración de pantalla"),
    "Auf 10be muss beim Server in den Standardeinstellungen der Haken bei \"cors\" aktiviert werden, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen. Wenn \"cors\" aktiviert wurde, muss auf dem Server eventuell noch ReDeploy gemacht werden, bevor es wirklich verfügbar ist." : MessageLookupByLibrary.simpleMessage("En el servidor 10be hay que activar \"cors\" en las configuraciónes generales para que aplicaciónes externas como esta tengan acceso a los datos. Si \"cors\" fue activado en el servidor probablemente hay que hacer un redeploy para activarlo."),
    "Auf Kacheln Bilder statt Namen anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar imágenes en vez de nombres en azulejos"),
    "Auf dem Einstellungen-Dialog gibt es neben den URL-Eingabefeldern jeweils einen Button, um die URL in einem neuen Browser-Fenster zu öffnen." : MessageLookupByLibrary.simpleMessage("En los ajustes ahora hay un botón para abrir URL en una nueva ventana."),
    "Auf den Kacheln können nun Bilder statt der Namen angezeigt werden. Die Bilder zeigen dann das ungefähre Aussehen der entsprechenden Seite an. Sie entsprechen nicht den tatsächlichen Daten, sondern sind nur eine visuelle Darstellung, die es manchem Benutzer vielleicht einfacher machen, die gewünschten Seiten schneller auszuwählen. Die Aktivierung der Bilder erfolgt im Einstellungsdialog." : MessageLookupByLibrary.simpleMessage("En los azulejos ahora se pueden mostrar imágenes en vez de nombres. Las imágenes muestran más o menos la página seleccionada. Esto no corresponde a los datos reales, si no son solo und visualización que ayudan a encontrar las páginas fácilmente. Se activan los imágenes en el diálogo de ajustes."),
    "Auf den Seiten Profil und Basalrate wird in der Titelzeile jetzt wieder das Datum angezeigt, ab dem das Profil gilt." : MessageLookupByLibrary.simpleMessage("En la página del perfil y del perfil basal se muestra la fecha desde la activación del perfil."),
    "Auf der Analyseseite kann statt der Anzahl der Werte bei den Zielbereichen jetzt die Standardabweichung der Werte im Zielbereich angezeigt werden." : MessageLookupByLibrary.simpleMessage("En la página del análisis se puede mostrar la desviación estándar de los valores en rango en lugar del número de valores."),
    "Auf der Analyseseite werden nun auch GVI und PGS ausgegeben." : MessageLookupByLibrary.simpleMessage("En la página de análisis, ahora también se muestran GVI y PGS."),
    "Auf der Analyseseite wird jetzt auch die Standardabweichung aller Werte der Periode angezeigt." : MessageLookupByLibrary.simpleMessage("En la página de análisis, ahora también se muestra la desviación estándar de todos los valores del período seleccionado."),
    "Auf der Profilseite wurde die Spalte für die Werte von ICR verbreitert." : MessageLookupByLibrary.simpleMessage("En la página del perfil se ha ampliado la columna para los datos ICR."),
    "Auf der Seite \"Profil\" wird die Gültigkeit jetzt mit Uhrzeit angezeigt." : MessageLookupByLibrary.simpleMessage("En la página \"perfil\" ahora se muestra la validez con hora."),
    "Auf der Seite \"Stündliche Statistik\" gibt es eine neue Option, um auch Spalten mit 10% und 90% anzeigen zu lassen." : MessageLookupByLibrary.simpleMessage("En la página \"estatistica por hora\" hay una da opción para mostrar columnas con 10% y 90%."),
    "Auf der Seite Protokoll werden jetzt auch Insulinabgaben angezeigt, die z.B. über xdrip eingegeben wurden." : MessageLookupByLibrary.simpleMessage("En la página del protocolo ahora también se muestran informaciónes sobre insulina que se inserten por ejemplo por xdrip."),
    "Aufhebung von temp. Ziel" : MessageLookupByLibrary.simpleMessage("Anulación de objetivos temp"),
    "Aufsummierte Werte" : MessageLookupByLibrary.simpleMessage("Datos acumulados"),
    "Aus den Profilen ermitteln" : MessageLookupByLibrary.simpleMessage("Calculado por los perfiles"),
    "Ausgabe" : MessageLookupByLibrary.simpleMessage("Edición"),
    "Ausgabe Parameter" : MessageLookupByLibrary.simpleMessage("Edición parámetros"),
    "Ausgewertete Tage" : MessageLookupByLibrary.simpleMessage("Días evaluados"),
    "Ausgewählter Zeitraum" : MessageLookupByLibrary.simpleMessage("Período seleccionado"),
    "Ausrichtung" : MessageLookupByLibrary.simpleMessage("Orientación"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("Análisis"),
    "Automatisch" : MessageLookupByLibrary.simpleMessage("Automático"),
    "Automatisch_theme selection - automatic" : MessageLookupByLibrary.simpleMessage("Automático"),
    "Basal" : MessageLookupByLibrary.simpleMessage("Basal"),
    "Basal 0%" : MessageLookupByLibrary.simpleMessage("Basal 0%"),
    "Basal aus Profil anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar basal del perfil"),
    "Basal ges." : MessageLookupByLibrary.simpleMessage("Basal total"),
    "Basal mit zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Basal con dos décimas"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("Perfil basal"),
    "Basalrate\nIE / Stunde" : MessageLookupByLibrary.simpleMessage("Programa basal\nUI / Hora"),
    "Basalrate anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar tasa basal"),
    "Batteriewechsel" : MessageLookupByLibrary.simpleMessage("Cambio de pila"),
    "Behandlungen" : MessageLookupByLibrary.simpleMessage("Tratamientos"),
    "Bei 0 beginnen" : MessageLookupByLibrary.simpleMessage("Comenzar con 0"),
    "Bei Herokuapp und anderen Anbietern kostenloser Datenbankinstanzen ist der Speicherplatz der Instanz beschränkt, weshalb sie irgendwann voll ist. Dann kann man zwar eine neue Instanz anlegen, Nightscout Reporter benötigt aber für eine lückenlose Darstellung aller Tage Zugriff auf alle Instanzen, für die man eine Auswertung erhalten will. Deshalb können nun mehrere URLs für die Nightscout Instanzen eingegeben werden. Zusätzlich muss noch eingegeben werden, welches der erste und der letzte Tag mit Daten ist. Mit diesen Informationen ist es Nightscout Reporter dann möglich die benötigten Daten lückenlos auch über mehrere Instanzen hinweg auszuwerten." : MessageLookupByLibrary.simpleMessage("En Herokoapp y otros Servidores de Bases de Datos el espacio de almacenamiento esta restrigido, asi que a lo largo del tiempo se llena. Se puede crear una base nueva pero Nightscout Reporter necesita acceso a todas bases para poder mostrar los datos de todos los dias seguidos sin falta de datos. Por eso ahora se pueden usar varias URL para las bases de nightscout. Adicionalmente se debe indicar cual es el primer y cual es el último día con datos. Con estas informaciones Nightscout Reporter puede evaluar los datos completamente usando varias bases de datos."),
    "Bei Tagesgrafiken und Wochengrafiken gibt es jetzt die Möglichkeit 1, 2, 4, 8 oder 16 Grafiken auf einer Seite zu platzieren." : MessageLookupByLibrary.simpleMessage("Para los gráficos diarios y semanales ahora existe la posibilidad de mostrar 1, 2, 4, 8 o 16 gráficos en cada página."),
    "Bei den Ausgabeparametern kann jetzt festgelegt werden, in welcher Einheit die Glukosemessungen ausgegeben werden sollen. Diese wird zu Beginn aus den in Nightscout gespeicherten Daten ermittelt und entsprechend vorbelegt. Es ist aber auch möglich, diese Einheit zu ändern oder beide Einheiten ausgeben zu lassen. Wenn beide ausgegeben werden, dann wird jedes Formular auf dem Glukoseangaben vorhanden sind zunächst mit mg/dL und danach nochmal mit mmol/l ausgegeben. Diese Einheit wird auch in den Shortcuts gespeichert." : MessageLookupByLibrary.simpleMessage("En los parámetros mostrados se puede definir la unidad en la que se muestran los valc de glucosa. Esta al principio resulta de los datos en nightscout. Es posible cambiar las unidades o mostrar las dos. Si se eligen ambas unidades se muestran los formularios que contienen estas unidas primero en mg/dl y después en mmol. Las unidades también se guardan en los shortcuts."),
    "Bei der Auswertung kann nun ein Bereich angezeigt werden, in dem die Anzahl an Unterzuckerungen während des ausgewählten Zeitraums und der Zeitpunkt der letzten Unterzuckerung angezeigt werden." : MessageLookupByLibrary.simpleMessage("Para la análisis ahora se puede elegir un espacio en el que se muestra el número de hipoglucemias durante el periodo elegido y la hora de la última hipoglucemia."),
    "Bei der Basalrate und dem Profil gibt es nun eine Option jeweils nur das letzte im entsprechenden Zeitraum ausgeben zu lassen. Das verringert die Blätterflut bei häufigem Profilwechsel." : MessageLookupByLibrary.simpleMessage("Para la tasa basal y el perfil ahora hay una opción para solo mostrar el perfil o la tasa reciente durante el periodo elegido. Esto reduce la cantidad de páginas producidos por muchos cambios de perfil."),
    "Bei der Berechnung der Kohlenhydrate werden weitere Datensätze berücksichtigt" : MessageLookupByLibrary.simpleMessage("Al calcular los carbohidratos se utilizan varios datos"),
    "Bei der Festlegung des Zeitraums kann man jetzt angeben, bis zu welchem Tag der Zeitraum ermittelt werden soll. Voreingestellt ist so wie bisher auch der aktuelle Tag. Man kann aber auch den gestrigen Tag einstellen, um Tage mit vollständigen Daten zu haben, oder das letzte Wochenende, wenn man an vollständigen Wochen interessiert ist." : MessageLookupByLibrary.simpleMessage("Al especificar el periodo ahora se puede definir hasta que día el periodo será determinado. Predeterminado está, como siempre, el día actual. Se puede elegir el día de ayer para obtener datos denel día entero o el fin de semana pasado para obtener datos de la semana entera."),
    "Bei der Profilermittlung wurde manchmal der letzte Profilwechsel ignoriert. Das ist nun behoben." : MessageLookupByLibrary.simpleMessage("Al recompilar los perfiles alguna vez se ha ignorado el último perfil. Esto ha sido corregido."),
    "Bei der letzten Version sind Änderungen in den Code eingeflossen, die nicht wirklich durchdacht waren. Dafür entschuldige ich mich. Ich habe diese wieder entfernt, damit Nightscout Reporter für alle Benutzer die gewohnte Funktionalität bietet." : MessageLookupByLibrary.simpleMessage("En la última versión, se incorporaron cambios en el código que no fueron realmente pensados. Pido disculpas por ello. Los he eliminado de nuevo para que Nightscout Reporter ofrezca la funcionalidad habitual para todos los usuarios."),
    "Beide" : MessageLookupByLibrary.simpleMessage("Ambos"),
    "Beim Auslesen der Profile ist ein Fehler aufgetreten. Möglicherweise sind zu viele Daten in der Profiltabelle (wird z.B. von iOS Loop verursacht). Du kannst versuchen, in den Einstellungen die Anzahl an auszulesenden Profildatensätzen zu verringern." : MessageLookupByLibrary.simpleMessage("Al leer los perfiles ha ocurrido un error. Probablemente hay demasiados datos en la tabla del perfil (se produce por ejemplo por el bucle de iOS). Puedes intentar reducir el número de registros de perfil que se van a leer en la configuración."),
    "Beim CGP werden die aktuellen Werte jetzt in der Legende angezeigt." : MessageLookupByLibrary.simpleMessage("Ahora se muestran los datos actuales del CGP en la leyenda."),
    "Beim Erzeugen des PDF ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("Al crear el PDF ha ocurrido und error."),
    "Beim Glukose Perzentil Diagramm kann man nun ein Maximum für die Skalierung festlegen. Wenn es auf \"Automatisch\" gesetzt wird, wird das Maximum wie bisher auch ermittelt. Bei einem anderen Wert wird die Obergrenze für das Diagramm auf diesen Wert festgesetzt. Damit ist es leichter möglich zwei Diagramme miteinander zu vergleichen, deren Obergrenze unterschiedlich ist." : MessageLookupByLibrary.simpleMessage("En el percentil de glucosa ahora se puede definir un máximo para la escala. Si seleccionas \"automático\" el máximo será mostrado como antes. Si eliges otro valor este será utilizado como máximo en el gráfico. Así es más fácil comprar diferentes gráficos con diferentes máximos."),
    "Beim Laden der Behandlungsdaten werden doppelte Datensätze herausgefiltert." : MessageLookupByLibrary.simpleMessage("Al cargar los datos de tratamientos se eliminaran duplicados."),
    "Beim Laden der Daten wird das entsprechende Datumsformat zur Anzeige verwendet" : MessageLookupByLibrary.simpleMessage("Se utiliza el formato de fecha apropiado al cargar los datos"),
    "Beim Perzentil Diagramm gibt es eine neue Option, mit der man die Basalrate unter dem Diagramm anzeigen lassen kann. Da das Diagramm normalerweise einen grösseren Zeitraum umspannt, wird dort die Basalrate angezeigt, die zu Beginn des Zeitraums aktiv war." : MessageLookupByLibrary.simpleMessage("En el gráfico del percentil hay una nueva opción para mostrar la tasa basal debajo del gráfico. Como el gráfico suele mostrar un período más amplio, aquí se mostrará la tasa basal estando activa al principio del periodo."),
    "Beim erstmaligen Start von Nightscout Reporter wurde er schon bei Sprachänderung normal angezeigt. Jetzt bleibt er wie vorgesehen auf dem Willkommen Dialog." : MessageLookupByLibrary.simpleMessage("Al primer inicio de Nightscout Reporter se ha mostrado normal al cambiar el lenguaje. Ahora se muestra, como previsto, el la página inicial."),
    "Benutzer" : MessageLookupByLibrary.simpleMessage("Usuario"),
    "Benutzer können ein User-Token angeben, um sich mit geschützten Nightscout-Instanzen zu verbinden" : MessageLookupByLibrary.simpleMessage("Usarios pueden insertar un User-Token para conectar con paginas Nightscout protegidas"),
    "Benutzer können nun gelöscht werden" : MessageLookupByLibrary.simpleMessage("El usuario ya puede ser borrado"),
    "Benutzerdaten" : MessageLookupByLibrary.simpleMessage("Datos del usuario"),
    "Benutzerdaten werden nun verschlüsselt im Browser gespeichert" : MessageLookupByLibrary.simpleMessage("Datos del usario son guardados y protegidos"),
    "Berechnete IE für Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Insulina calculada para HC"),
    "Berechnete IE für Kohlenhydrate anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar UI calculadas para CH"),
    "Bereite Daten vor..." : MessageLookupByLibrary.simpleMessage("Preparando datos..."),
    "Bestätigung" : MessageLookupByLibrary.simpleMessage("Confirmación"),
    "Bewegung" : MessageLookupByLibrary.simpleMessage("Actividad"),
    "Bewegung anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar actividad"),
    "Bezeichnung" : MessageLookupByLibrary.simpleMessage("Título"),
    "Bis" : MessageLookupByLibrary.simpleMessage("Hasta"),
    "Bis heute|Bis gestern|Bis Wochenende" : MessageLookupByLibrary.simpleMessage("Hasta hoy|Hasta ayer|Hasta fin de semana"),
    "Bisher fehlende Summenwerte in der Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Añadido sumas en la estatistica diaria"),
    "Bitte den Dateinamen für die Speicherung auswählen" : MessageLookupByLibrary.simpleMessage("Por favor elige nombre de archivo para guardar"),
    "Bitte einen Zeitraum wählen." : MessageLookupByLibrary.simpleMessage("Por favor elige periodo."),
    "Bitte überprüfe die Aktivierung der Wochentage unter dem Monat" : MessageLookupByLibrary.simpleMessage("Por favor comprueba la activación de los días de semana debajo del mes"),
    "Blutige Messung" : MessageLookupByLibrary.simpleMessage("Prueba de glucosa en sangre"),
    "Blutige Werte sollten jetzt auch bei mmol-Daten korrekt in der Tagesgrafik angezeigt werden." : MessageLookupByLibrary.simpleMessage("Valores de glucosa en sangre también serán mostrados correctamente en los gráficos díarios en mmol."),
    "Blutwerte werden jetzt auch bei mmol/L in den Grafiken korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Valores sanguíneos se muestran ahora correctamente en mmol/L en los gráficos."),
    "Bolus" : MessageLookupByLibrary.simpleMessage("Bolus"),
    "Bolus Rechner_bolus calculated by the bolus wizard" : MessageLookupByLibrary.simpleMessage("Calculadora de Bolo"),
    "Bolus ges." : MessageLookupByLibrary.simpleMessage("Bolo total"),
    "Bolusarten anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar tipos de bolo"),
    "Bolusspalte anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar columna bolo"),
    "CGP" : MessageLookupByLibrary.simpleMessage("CGP"),
    "CGP immer mit Standard Zielbereich" : MessageLookupByLibrary.simpleMessage("CGP siempre con objetivos de glucosa estándar"),
    "COB (Carbs On Board) anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar COB (carbohidratos a bordo)"),
    "Comprehensive Glucose Pentagon" : MessageLookupByLibrary.simpleMessage("Comprehensive Glucose Pentagon"),
    "Da wir seit einiger Zeit in Europa eine DSGVO haben, werden im Folgenden noch die Vorschriften dafür erfüllt. Der folgende Text ist nur auf Deutsch verfügbar:" : MessageLookupByLibrary.simpleMessage("Como desde hace tiempo tenemos la DSGVO las regulaciones son respetadas. El texto siguiente solo existe en alemán.\ninfo for DSGVO in dataprotection:"),
    "Dansk" : MessageLookupByLibrary.simpleMessage("Dansk"),
    "Das \"Comprehensive Glucose Pentagon\" (Umfassendes Glukose Fünfeck) wurde als eigenes PDF und als Zusatzseite zur Tagesgrafik und Wochengrafik hinzugefügt. Es handelt sich hierbei um eine Darstellung von fünf Messgrössen, mit deren Hilfe sich die Qualität der Therapie ermitteln und mit anderen vergleichen lässt. Auf den Ausdrucken wird ein Verweis auf die zugrunde liegende Abhandlung ausgegeben." : MessageLookupByLibrary.simpleMessage("El \"Comprehensive Glucose Pentagono\" se ha añadido como propia página PDF adjuntado al gráfico diario y al gráfico semanal. Se trata de una representación de 5 valores con la cual se puede valorar la calidad de la terapia y compararla con otros. En el impreso se encuentra una información sobre la disertación."),
    "Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr." : MessageLookupByLibrary.simpleMessage("Pinchando area de mensajes ya no lo cierra."),
    "Das CGP wird jetzt auch bei extremen Werten korrekt erzeugt." : MessageLookupByLibrary.simpleMessage("El CGP ahora tambien se muestra correctamente con valores extremos."),
    "Das Control für die Eingabe des Zeitraums wurde angepasst, damit es auf schmalen Display auch korrekt dargestellt wird." : MessageLookupByLibrary.simpleMessage("El control para insertar el periodo se ha ajustado para que se muestre correctamente en pantalla estrecha."),
    "Das Enddatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("La fecha final no es correcta"),
    "Das Logo von Nightscout Reporter wurde geändert. Es ist nach wie vor die bekannte und beliebte Eule, aber sie hat nun eine Mütze auf wie die Zeitungsausträger und teilweise auch Journalisten in uralten Filmen. Das Logo ist nur im Programm vorhanden und erscheint nicht auf den PDFs. Dort ist nach wie vor das normale Nightscout Logo, weil es dort platziert wurde, um auf Nightscout selbst hinzuweisen." : MessageLookupByLibrary.simpleMessage("Se ha cambiado el logotipo de Nightscout Reporter. Sigue siendo el querido buho, pero ahora lleva und gorra como los periodistas en las antiguas películas. El logro sólo se muestra dentro del programa y no sale en los PDFs. Ahí se sigue mostrando el logotipo normal de Nightscout, para apuntar a la página Nightscout."),
    "Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag." : MessageLookupByLibrary.simpleMessage("El PDF para el perfil básico no fue correcto, si no existia un valor para cada hora."),
    "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren." : MessageLookupByLibrary.simpleMessage("PDF ha sido generado. Si no se visualiza, probablemente es debido a un bloqueador popup. Por favor desactivar bloqueador."),
    "Das Problem, dass bestimmte Tage nicht erzeugt werden konnten, wurde behoben." : MessageLookupByLibrary.simpleMessage("Se han eliminado errores al crear datos para ciertos dias."),
    "Das Profil-PDF wird nun im Querformat erzeugt, um auch Profile mit vielen Einträgen für die Parameter brauchbar darstellen zu können." : MessageLookupByLibrary.simpleMessage("El PDF con el perfil se produce ahora en modo paisaje para reprensentar perfiles con muchas entradas adecuadamente."),
    "Das Projekt wurde auf Dart 2.13.4 und Angular 6.0.1 aktualisiert." : MessageLookupByLibrary.simpleMessage("El projecto se ha actualizado a Dart 2.13.4 y Angular 6.0.1."),
    "Das Startdatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("La fecha inicial no es correcta"),
    "Das gelbe Fünfeck stellt den Wertebereich des angegebenen Zeitraums dar." : MessageLookupByLibrary.simpleMessage("El pentágono verde presenta el margen de valores en el periodo de tiempo indicado."),
    "Das grüne Fünfeck stellt den Wertebereich eines gesunden Menschen ohne Diabetes dar." : MessageLookupByLibrary.simpleMessage("El pentágono verde representa el margen de valores de una persona sana sin diabetes."),
    "Daten bis" : MessageLookupByLibrary.simpleMessage("Datos hasta"),
    "Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen." : MessageLookupByLibrary.simpleMessage("Datos para los valores de glucosa con formato de fecha incorrecto se leen correctamente."),
    "Daten verschiedener Uploader werden nun besser interpretiert." : MessageLookupByLibrary.simpleMessage("Informaciones de diferentes cargadores de datos ahora se interpretan mejor."),
    "Daten von" : MessageLookupByLibrary.simpleMessage("Datos de"),
    "Daten, die von xDrip als sync markiert wurden, werden bei der Auswertung ignoriert." : MessageLookupByLibrary.simpleMessage("Datos que se han marcado por xDrip como sync, se ignoran en la evaluación."),
    "Datenschutzerklärung" : MessageLookupByLibrary.simpleMessage("Declaración de privacidad"),
    "Datum" : MessageLookupByLibrary.simpleMessage("Fecha"),
    "Dauer der Insulinaktivität (DIA)" : MessageLookupByLibrary.simpleMessage("Duración de acción de insulina (DIA)"),
    "Dauer der Kohlenhydrataktivität" : MessageLookupByLibrary.simpleMessage("Duración de accion de carbohidratos"),
    "Dauer der abgeschalteten Basalrate anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar duración de tasa basal apagada"),
    "Dauer mit Minutenbruchteil" : MessageLookupByLibrary.simpleMessage("Duración con partes por minutos"),
    "Der Fehler im Profil, der dazu führte, dass die Werte für ISF und Zielbereich falsch umgerechnet werden, wurde behoben." : MessageLookupByLibrary.simpleMessage("El error que produjo sumar los valores para ISF y el objectivo incorrectamente ha sido corregido."),
    "Der Fehler mit der Vervielfachung der Kohlenhydrate bei wiederholter Ausgabe der PDFs wurde korrigiert." : MessageLookupByLibrary.simpleMessage("El problema con la multiplicacion de los hidratos de carbono al crear varios PDF seguidos ha sido corregido."),
    "Der Titel vom Glucose Percentil Diagramm wird nun auch bei Ausdruck im Hochformat nicht mehr falsch in den Optionen Formularauswahl dargestellt." : MessageLookupByLibrary.simpleMessage("El nombre del gráfico de glucosa percentil ahora se muestra correctamente al imprimir en formato alto."),
    "Der Wert für die mittlere Glukose bei gesunden Menschen im CGM wurde auf die korrekten 90 mg/dl korrigiert." : MessageLookupByLibrary.simpleMessage("El valor de glucosa media para personas sanas con MGC ha sido corregido al valor correcto de 90 mg/dl."),
    "Der Zeitraum enthält keine auswertbaren Tage" : MessageLookupByLibrary.simpleMessage("El período no contiene días evaluables"),
    "Der prognostische glykämische Risikoparameter stellt das Risiko von Langzeitkomplikationen dar (bisher nicht durch Studien belegt)." : MessageLookupByLibrary.simpleMessage("Los parámetros glucemicos prognosticados muestra el riesgo de complicaciones a largo tiempo (hasta ahora no evaluado por estudios científicos)."),
    "Details des Profilwechsels" : MessageLookupByLibrary.simpleMessage("Detalles del cambio de perfil"),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("Deutsch"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("Diabetes desde"),
    "Dialoge und die Anzeige des Fortschritts werden nun technisch etwas anders umgesetzt. Deswegen wird der Anwendungshintergrund nun in den Fällen dunkler dargestellt und es ist nicht möglich darauf etwas anzuklicken." : MessageLookupByLibrary.simpleMessage("Diálogos y visualización del progreso se muestran diferentemente. Por eso el fondo de la aplicación en estos casos se muestra en oscuro y no se puede pulsar botones."),
    "Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an" : MessageLookupByLibrary.simpleMessage("La pagina de la analisis ha sido corregida y muestra títulos"),
    "Die Analysewerte wurden nicht ganz korrekt ermittelt. Das wurde korrigiert und nun sollten die statistischen Daten über den Zeitraum richtig ausgewertet werden." : MessageLookupByLibrary.simpleMessage("Los datos de la analítica no fueron calculadas correctamente. Esto se ha corregido y ahora los datos estatisticos deben ser calculados correspondiendo al periodo elegido."),
    "Die Angabe DIA auf der Profilseite wird nun mit zwei Nachkommastellen angezeigt." : MessageLookupByLibrary.simpleMessage("El valor DIA se muestra en la pagina del perfil con dos decimales."),
    "Die Anpassung der Glukosewerte wird nun bei den Einstellungen gespeichert. Sie kann aber weiterhin bei den Ausgabeparametern geändert werden, um ohne grosse Umwege einen Vergleich erstellen zu können." : MessageLookupByLibrary.simpleMessage("El ajuste de los valores de glucosa ahora se guarda en la configuración. Pero todavía se puede cambiar en los parámetros de salida para poder crear una comparación sin grandes desvíos."),
    "Die Anzeige der Bilder auf Kacheln wird nun wie vorgesehen korrekt in den Einstellungen vorbelegt." : MessageLookupByLibrary.simpleMessage("El diseño de las imágenes en azulejos ahora se inicia correctamente en los ajustes."),
    "Die Anzeige des Faktors auf dem PDF, wenn ein Korrekturfaktor eingestellt wurde, wurde in eine Prozentangabe geändert um welche die Zuckerwerte erhöht oder verringert wurden." : MessageLookupByLibrary.simpleMessage("La visualización del factor en el PDF cuando se ha establecido un factor de corrección se ha cambiado a un valor de porcentaje en el que los niveles de azúcar se han incrementado o disminuido."),
    "Die Aufsummierung der Werte in der Analyse wurde korrigiert." : MessageLookupByLibrary.simpleMessage("La sumas de los valores en la análisis han sido corregidas."),
    "Die Aufteilung auf mehrere PDF-Dateien funktioniert jetzt besser." : MessageLookupByLibrary.simpleMessage("La división en varios archivos PDF funciona mejor."),
    "Die Ausgabe des Zielwertes und der blutigen Werte in der Tagesgrafik wurde korrigiert. Da gab es Probleme, wenn man eine andere Blutzucker Einheit als die auf dem Server eingestellte zur Ausgabe verwendet hat." : MessageLookupByLibrary.simpleMessage("La visualización del objetivo y de los valores sanguíneos en el gráfico diario se ha corregido. Aquí había problemas al elegir otra unidad que elegido en el servidor."),
    "Die Auswahl des Zeitraums ist nun flexibler. Die Auswahl erfolgt in einem Dialog, der die eingestellte Sprache berücksichtigt. Mit der Auswahl der vorbelegten Bereiche (Heute, Letzte Woche, usw.) wird festgelegt, dass beim nächsten Aufruf das aktuelle Datum als Grundlage für den Bereich verwendet wird. Wenn der Bereich direkt im Kalender festgelegt wird, dann gilt dieser beim nächsten Aufruf so wie er festgelegt wurde. Standardmässig ist der erste Tag der Woche jetzt ein Montag. Dieser kann aber durch Anklicken des Wochentags in der Titelzeile des Monats auf die eigene Präferenz festgelegt werden. Die Eingabe der Datumsfelder erfolgt in der Form, die der Sprache entspricht (Tag.Monat.Jahr für deutsch, Monat/Tag/Jahr für englisch)." : MessageLookupByLibrary.simpleMessage("La selección del período ahora es más flexible. La selección se realiza en un diálogo que tiene en cuenta el lenguaje seleccionado. La selección de rangos preestablecidos (hoy en día, la semana pasada, etc.) determina que la fecha actual se utiliza la próxima vez como base para el periodo. Si el rango se establece directamente en el calendario, este sera utilizado próxima vez. De forma predeterminada, el primer día de la semana es lunes. Esto puede ser ajustado haciendo clic en el día de la semana en la barra de título del mes. Los campos de fecha se escriben en el formato que corresponde al lenguaje seleccionado (dia.mes.año para el alemán, mes/día/año para el inglés)."),
    "Die Auswahl des Zeitraums und der Benutzer wurde in die Titelzeile verschoben." : MessageLookupByLibrary.simpleMessage("La selección del período y el usuario han sido movido al encabezamiento."),
    "Die Balken für das Bolusinsulin in der Tagesgrafik werden nun entsprechend dem Maximalwert an Bolusinsulin an dem Tag skaliert." : MessageLookupByLibrary.simpleMessage("La barra de la insulina de bolo en el gráfico díario ahora se escala según el valor máximo de la insulina de bolo en el día."),
    "Die Balken in der Analyse werden jetzt korrekt skaliert." : MessageLookupByLibrary.simpleMessage("La barra en la análisis ahora son escaladas correctamente."),
    "Die Basalratenprofile für den Tag werden nun auch anhand der Behandlungsdaten ermittelt. Profilwechsel werden in der Tagesgrafik angezeigt und sollten ab dem Zeitpunkt des Wechsels auch eine korrekte Basalratenanpassung anzeigen." : MessageLookupByLibrary.simpleMessage("Los perfiles basales diarios se calculan por los datos de tratamientos. Cambios de perfil se muestran en el resumen diario y deberán mostrar resultados basales correctos a partir del momento de cambio."),
    "Die Berechnung der PDF-Grössen wurde korrigiert, so dass nun weniger PDFs erstellt werden, wenn sie aufgrund der Grösse aufgeteilt werden." : MessageLookupByLibrary.simpleMessage("El tamaño del PDF ha sido corregido, ahora se crean menos páginas si se dividen por el tamaño."),
    "Die Berechnung der Summenzeile auf der Seite Tagesstatistik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Se ha corregido el cálculo de la fila de totales en la página de estadísticas diarias."),
    "Die Berechnung der tatsächlichen Basalrate wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Se corrigió el cálculo de la tasa basal real."),
    "Die Berechnung des täglichen Insulins berücksichtigt nun auch die SMB." : MessageLookupByLibrary.simpleMessage("El cálculo de insulina diario toma en cuenta también el SMB."),
    "Die Bilder auf den Kacheln sind nun in der jeweiligen Sprache beschriftet." : MessageLookupByLibrary.simpleMessage("Las imágenes en los azulejos ahora son marcados en el idioma correspondiente."),
    "Die Buttons für die Erzeugung vergangener Zeiträume wurden entfernt. Das kann jetzt im neuen PDF-Dialog eingestellt werden." : MessageLookupByLibrary.simpleMessage("Los botones para crear periodos pasados han sido borrados. Esto ahora es crea en la nueva ventana."),
    "Die Buttons für die vergangenen Perioden werden nicht angezeigt, wenn kein Zeitraum oder kein PDF ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("Los botones para periodos pasados no se muestran si no se ha elegido un PDF o un periodo."),
    "Die Daten, die Du hier eingibst, werden normalerweise im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. In diesem Fall werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("Los datos que introduces aquí, se almacenan normalmente en el navegador localStorage. Esto incluye datos relacionados con la página web que se pueden leer solamente en este sitio web. En este caso, no se utilizan cookies y no se guardan datos en los servidores. Se establece sólo una conexión a la instancia especificada de Nightscout y se leen los datos existentes para crear un documento PDF. Esto puede presentarse al endocrinologo a otras partes interesadas."),
    "Die Eingabe des Zugriffsschlüssels auf dem Einstellungen-Dialog kann jetzt mit einem Button neben dem Eingabefeld lesbar gemacht werden." : MessageLookupByLibrary.simpleMessage("El código de acceso a los ajustes ahora se puede hacer visible con el botón al lado de la casilla."),
    "Die Einstellung für das Öffnen des PDF im gleichen Fenster, das Herunterladen des PDFs und den Hinweis auf Nightscout im PDF wurde aus den Einstellungen in die Ausgabe Parameter verschoben. Dadurch kann man das bei jedem Ausdruck schnell festlegen und ändern." : MessageLookupByLibrary.simpleMessage("Las opiniones para abrir el PDF en la misma ventana, para guardar el PDF y la referencia a Nightscout en el PDF hab sido integrados en los parámetros de edición. Así es posible cambiarlo rápidamente con cada impreso."),
    "Die Einstellung für die Anpassung von BG_TARGET_BOTTOM und BG_TARGET_TOP ist nun unabhängig von der Auswahl \"Glucosewerte anpassen\". Damit kann man die Option umschalten, ohne den Zielbereich auf dem Server neu konfigurieren zu müssen." : MessageLookupByLibrary.simpleMessage("Die Einstellung für die Anpassung von BG_TARGET_BOTTOM und BG_TARGET_TOP ist nun unabhängig von der Auswahl \"Glucosewerte anpassen\". Damit kann man die Option umschalten, ohne den Zielbereich auf dem Server neu konfigurieren zu müssen."),
    "Die Einstellungen für das Herunterladen des PDFs, das Öffnen im gleichen Fenster und die Maximalgrösse der PDFs wurden von der Synchronisierung mit Google Drive ausgenommen, weil sie speziell für den verwendeten Browser oder das verwendete Gerät benötigt werden. Sie werden nach wie vor gespeichert, aber sie werden nicht zwischen verschiedenen Browsern synchronisiert." : MessageLookupByLibrary.simpleMessage("Los ajustes para bajar el PDF, abrirlo en la misma página y el tamaño máximo del PDF no se sincronizan con Google Drive, por que son exclusivos para cada navegador. Siguen siendo guardadas, pero no sincronizadas entre los navegadores."),
    "Die Einträge im Protokoll für temporäre Ziele werden jetzt auch bei mmol-Angaben richtig angezeigt." : MessageLookupByLibrary.simpleMessage("Las entradas en el protocolo para objetivos temporales ahora también se muestran en mmol correctamente."),
    "Die Ermittlung der Einheit (mg/dl oder mmol/l) wird nun flexibler gehandhabt, so dass auch Leerzeichen in der entsprechenden Einstellung nicht mehr zu einer Fehlinterpretation führen." : MessageLookupByLibrary.simpleMessage("La determinación de unidades (mg/dl o mmol/l) se maneja flexiblemente. Así caracteres en blanco no producen malinterpretaciones."),
    "Die Ermittlung der effektiven täglichen Basalrate wurde umstrukturiert und sollte nun genauere Werte ergeben." : MessageLookupByLibrary.simpleMessage("La calculation de la tasa basal diaria tiene una estructura nueva que llevara a datos más precisos."),
    "Die Farbe für Bewegung in der Tagesgrafik wurde geändert." : MessageLookupByLibrary.simpleMessage("El color para mostrar las actividades en el gráfico diario ha sido cambiado."),
    "Die Farben für Dialoge und Scrollbars wurden angepasst." : MessageLookupByLibrary.simpleMessage("Se han ajustado los colores para diálogos y barras de desplazamiento."),
    "Die Farben für die Glukosebereiche werden jetzt dort, wo sie als Hintergrundfarbe mit Text verwendet werden heller dargestellt, um die Lesbarkeit zu erhöhen." : MessageLookupByLibrary.simpleMessage("Los colores para los espacios de glucosa ahora se muestran más claro donde se usan como fondo con texto, para mejorar la legibilidad."),
    "Die Genauigkeit der ISF Angaben im Profil wurde korrigiert." : MessageLookupByLibrary.simpleMessage("La exactitud de los datos ISF en el perfil ha sido corregido."),
    "Die Genauigkeit der Insulindosierung wird aus dem Profil ermittelt. Der Wert mit der höchsten Genauigkeit legt fest, mit wieviel Nachkommastellen Basalratenwerte angezeigt werden." : MessageLookupByLibrary.simpleMessage("La exactitud de la dosis de insulina se calcula a base del perfil. El valor con la mayor exactitud determina, cuantos decimales serán mostrados."),
    "Die Glucose Perzentil Grafik wurde um die Tabelle \"Stündliche Statistik\" erweitert. Diese listet tabellarisch die Werte des Zeitraums für jede Stunde des Tages auf. Man kann entweder nur die Grafik, nur die Tabelle oder beides zusammen erzeugen lassen." : MessageLookupByLibrary.simpleMessage("\"Estadística por hora\" ha sido añadido al gráfico para el percentil de glucosa. Esta muestra en una tabla los datos del periodo elegido para cada hora del día. Puedes crear la tabla, el gráfico o las dos cosas."),
    "Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit." : MessageLookupByLibrary.simpleMessage("La curva de glucosa de gráficos diarios fue liberada de datos ausentes."),
    "Die Glukosewerte können nun mit einem Faktor korrigiert werden, der sich aus dem im Labor ermittelten und errechneten HbA1C Wert ergibt. Dieser Faktor betrifft alle Sensorwerte, die in Nightscout Reporter verarbeitet werden. Der Faktor wird in den Ausgabeparametern festgelegt. Dort wird er über die Checkbox \"Glukosewerte anpassen\" aktiviert und deaktiviert. Wenn er aktiviert ist, erscheinen zwei Schieberegler. Der obere legt den errechneten HbA1C fest, der untere den im Labor ermittelten HbA1C. Wenn er aktiviert ist, wird auf jedem PDF rechts oben angegeben, mit welchem Faktor die Glukosewerte korrigiert wurden. Das hat auf jedem PDF Auswirkungen auf dem Glukosewerte verarbeitet werden." : MessageLookupByLibrary.simpleMessage("Los valores de glucosa ahora se pueden corregir con un factor que resulta del valor de HbA1C determinado y calculado en el laboratorio. Este factor afecta a todos los valores de los sensores procesados ​​en Nightscout Reporter. El factor se especifica en los parámetros. Allí se activa y desactiva a través de la casilla de verificación \"Ajustar valores de glucosa\". Cuando está activado, aparecen dos controles deslizantes. El superior define el HbA1C calculado, el inferior el HbA1C determinado en el laboratorio. Si está activado, en la parte superior derecha de cada PDF se indica el factor con el que se corrigieron los valores de glucosa. Esto afecta a todos los PDF en los que se procesan los valores de glucosa."),
    "Die Icons auf einigen Buttons waren zu nahe am Text" : MessageLookupByLibrary.simpleMessage("Iconos en algunos botones estaban muy cerca del texto"),
    "Die Kohlenhydratangaben auf der Tagesgrafik werden jetzt ohne den Zusatz KH ausgegeben." : MessageLookupByLibrary.simpleMessage("La información sobre los carbohidratos en el gráfico diario se muestran ahora sin la unidad HC."),
    "Die Konfiguration erfolgt direkt im Fenster von Night-Watch, indem man etwas anklickt. Dadurch wechselt die Seite in den Editiermodus und mit den Controls am unteren Rand des Fensters können die vorhandenen Elemente verändert, verschoben, gelöscht oder neue Elemente hinzugefügt werden. Mit dem Speichern-Icon in den Controls werden die Einstellungen gespeichert und der Editiermodus beendet. Er kann auch beendet werden, indem man das aktive Element anklickt, wobei dann die Änderungen aber nicht gespeichert werden. Nach dem Neuladen der Seite hat man dann die letzte Ansicht vor sich." : MessageLookupByLibrary.simpleMessage("La configuración se realiza directamente en la ventana de Night-Watch haciendo clic en algo. Esto cambia la página al modo de edición y con los controles en la parte inferior de la ventana, los elementos existentes se pueden cambiar, mover, eliminar o agregar nuevos elementos. Con el icono de guardar en los controles, la configuración se guarda y el modo de edición termina. También se puede terminar haciendo clic en el elemento activo, pero así no se realizan los cambios y no se guardan. Después de volver a cargar la página, tendra la última vista."),
    "Die Legende der Tagesgrafik wurde um den Eintrag für Bewegung erweitert." : MessageLookupByLibrary.simpleMessage("En la leyenda del gráfico diario se ha añadido la información sobre actividad."),
    "Die Legende der Tagesgrafik wurde um den Eintrag für blutige Messungen erweitert." : MessageLookupByLibrary.simpleMessage("En la leyenda del gráfico diario se ha añadido la información sobre medidas de glucosa en sangre."),
    "Die Links zu Nightscout und den Reports von Nightscout im Menü funktionieren jetzt auch richtig, wenn ein Usertoken angegeben wurde." : MessageLookupByLibrary.simpleMessage("Los enlaces a Nightscout y sus evaluaciónes ahora funcionan correctamente si se ha especificado un token de usario."),
    "Die Listenansicht ist jetzt wieder scrollbar." : MessageLookupByLibrary.simpleMessage("La vista de lista se puede deslizar."),
    "Die Microboli des Minimed 600 Uploaders werden jetzt auch ermittelt und in der Analyse ausgegeben, wenn sie vorhanden sind." : MessageLookupByLibrary.simpleMessage("Los microbolus del MiniMed Uploader 600 serán también calculado y publicado en el análisis si es que existen."),
    "Die Microboli vom Minimed 600 Uploader wurden aus der Ausgabe entfernt, da es sich dabei nur um Temporäre Basalraten handelt." : MessageLookupByLibrary.simpleMessage("Los micro bolos del Minimed 600 Uploader se han borrado de la emisión, pou que se trata sólo de bases basales temporales."),
    "Die Mischung von zwei Seiten auf einer PDF-Seite, die manchmal vorkam, wurde behoben." : MessageLookupByLibrary.simpleMessage("La mezcla de dos páginas en una página PDF, que ocurrió a veces se ha solucionado."),
    "Die Möglichkeit für Beta-Funktionen wurde entfernt; die Betaversion ist nun hier zu finden:" : MessageLookupByLibrary.simpleMessage("La posibilidad para las funciones Beta se ha borrado; la versión Beta ahora se encuentra aqui:"),
    "Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird" : MessageLookupByLibrary.simpleMessage("Borrada la posibilidad den mostrar la URL en el título; aqui ahora se ve el usario actual o su URL"),
    "Die Oberfläche kann jetzt verschiedene Darstellungen annehmen. Diese zeigen sich zur Zeit durch geänderte Farben und ein angepasstes Icon im Browsertab und beim Laden der Seite. Das hat keine Auswirkungen auf die erzeugten PDF-Dateien. Es ist die Vorbereitung für eine teilweise anpassbare Oberfläche. Das Thema der Darstellung wird standardmässig vom System festgelegt, was zur Zeit heisst, dass im Dezember ein weihnachtliches Thema angezeigt wird. Das kann aber durch Anklicken des Icons, das ab jetzt links unten zu sehen ist, geändert werden. Beim Anklicken wird rechts neben dem Icon ein Bereich mit den verfügbaren Darstellungen eingeblendet. Das erste Icon (der kleine Zauberer) bedeutet dabei, dass die Darstellung vom System ermittelt wird. Zur Zeit bedeutet das die weihnachtliche Darstellung im Dezember. Es kann in Zukunft aber auch weitere Kriterien geben, anhand derer das Thema angepasst wird. Die direkte Festlegung eines Themas mit einem der anderen icons hat aber immer Vorrang vor der systemeigenen Logik." : MessageLookupByLibrary.simpleMessage("La cara ahora puede mostrarse de distintas maneras. Esto se muestra con diferentesccolores, con un icono adaptado y al cargar la página. Esto afecta a los PDF creados. Es la preparación para una cara configurable. El tema de la cara será determinado por el sistema, lo que quiere decir, que en diciembre es un tema navideño. Esto se puede cambiar haciendo clic en el icono que a partir de ahora se muestra abajo a la izquierda. Al hacer clic a la derecha se muestran diferentes iconos. El primero (el pequeño mago) signific, que la cara será determinada por el sistem. De momento es el diseño navideño en diciembre. En el futuro puede haber más criterios para determinar el tema. La determinación del tema a mano siempre tiene prioridad a la del sistema."),
    "Die Positionierung der Notizen in der Tagesgrafik wurde korrigiert, so dass sie näher an der Uhrzeit stehen. Die Striche wurden so verkürzt, dass sie nur noch bis zum unteren Rand der Grafik gehen und nicht mehr durch die Wertetabelle." : MessageLookupByLibrary.simpleMessage("La colocación de las notas en el gráfico diario se ha corregido para que estén más cerca de la hora. Las lineas han sido reducidas para que solamente lleguen hasta la parte inferior del gráfico y no la tabla de valor."),
    "Die Profilbasalrate im Formular Tagesprofil wird jetzt ebenfalls mit Balken dargestellt." : MessageLookupByLibrary.simpleMessage("La tasa basal del perfil en el formulario diario ahora también se muestra con barras."),
    "Die Profile für den Zeitraum wurden teilweise nicht korrekt identifiziert. Das sollte behoben sein." : MessageLookupByLibrary.simpleMessage("Se han eliminado errores al identificar perfiles para ciertos períodos."),
    "Die Profilseite wurde angepasst, damit Einträge für 24 Stunden auf eine Seite passen." : MessageLookupByLibrary.simpleMessage("La página de perfil se ha adaptado para que se muestren los datos de 24 horas en una sola página."),
    "Die Profiltabelle sollte normalerweise nur Daten zu den verwendeten Profilen beinhalten. iOS Loop verwendet diese Tabelle aber dazu, um dort eigene Einstellungen zu speichern und tut dies bei einigen Benutzern exzessiv. Ab einer bestimmten Datenmenge kann die Profiltabelle über die API dann nicht mehr korrekt abgefragt werden. Deswegen gibt es hier die Möglichkeit, die Anzahl an Datensätzen einzuschränken, die aus dieser Tabelle geholt werden. Das ist so lange notwendig, wie iOS Loop oder andere Uploader diese Tabelle falsch befüllen.\n\nMaximale Anzahl an Profildatensätzen:" : MessageLookupByLibrary.simpleMessage("Normalmente, la tabla de perfiles debe contener solo datos sobre los perfiles utilizados. Sin embargo, iOS Loop utiliza esta tabla para almacenar su propia configuración allí y lo hace excesivamente para algunos usuarios. A partir de una cierta cantidad de datos, la tabla de perfil ya no se puede consultar correctamente a través de la API. Por lo tanto, existe la posibilidad de limitar el número de registros que se recuperan de esta tabla. Esto es necesario siempre y cuando iOS Loop u otros cargadores rellenen incorrectamente esta tabla. Número máximo de registros de perfil:"),
    "Die Reihenfolge der Formulare kann nun verändert werden. Dazu einfach das Handle auf der linken Seite des Buttons für das Formular anklicken, festhalten und an die Stelle ziehen, vor der es ausgedruckt werden soll." : MessageLookupByLibrary.simpleMessage("Ahora se puede cambiar el orden en que se muestran los informes. Para esto, mantener pulsado el botón del informe, y tirar hacia el lugar deseado antes de ser imprimido."),
    "Die Seiten Profil und Basalrate zeigen nun bei einem Profil, das nur temporär während eines Tages aktiv war den Zeitraum an, in dem es aktiv war." : MessageLookupByLibrary.simpleMessage("Las páginas perfil y perfil basal ahora muestran el tiempo duramte el que el perfil ha estado activado."),
    "Die Seitenzahlen auf den Kacheln wurden weiter an den unteren Rand verschoben, damit sie immer gut lesbar sind." : MessageLookupByLibrary.simpleMessage("Los números de las páginas se han movido para abajo para mejorar el diseño."),
    "Die Skalen an den Grafiken wurden überarbeitet. Sie zeigen jetzt für mmol/L ganzzahlige Werte an und die Einheiten wurden entfernt. Diese stehen nur noch unten an der Grafik. Das betrifft die täglichen Grafiken, wöchentlichen Grafiken und das Glukose Percentil Diagramm." : MessageLookupByLibrary.simpleMessage("Se han actualizado las escalas de los gráficos. Mostran números enteros para valores de mmol/L y las unidades han sido borradas. Estas solamente aparecen debajo del gráfico. Esto se refiere a los gráficos diarios, semanales y la tabla de percentil de glucosa."),
    "Die Spalten auf der Profilseite wurden korrigiert, damit auch längere Zeitnamen (z.B. in spanisch) Platz finden." : MessageLookupByLibrary.simpleMessage("Se corrigieron las columnas en la página del perfil para también poder mostrar títulos largos (p.e. en Español)."),
    "Die Standardabweichung wird jetzt auch bei mmol/L korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("La desviación estándar se mostrará correctamente ahora también en mmol/L."),
    "Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an" : MessageLookupByLibrary.simpleMessage("La estatistica diaria ahora muestra valores mmol/l correctamente"),
    "Die URL wurde noch nicht festgelegt" : MessageLookupByLibrary.simpleMessage("La URL aún no ha sido determinada"),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("La URL aún no ha sido determinada."),
    "Die URLs der Benutzer werden nun nach dem Enddatum sortiert." : MessageLookupByLibrary.simpleMessage("Las URL del usuario se ordenan por la fecha final."),
    "Die Url zur Nightscout-API muss mit https beginnen, da Nightscout Reporter auch auf https läuft. Ein Zugriff auf unsichere http-Resourcen ist nicht möglich." : MessageLookupByLibrary.simpleMessage("La URL para la Nightscout - API tiene que empezar con https ya que Nightscout Reporter también va por https. Un acceso a páginas no seguras con http no es posible."),
    "Die Vorschaubilder auf den Kacheln passen sich abhängig von den ausgewählten Optionen teilweise an (z.B. die Auswahl von CGP bei Tagesgrafiken)." : MessageLookupByLibrary.simpleMessage("Las imágenes de prevista en los mosaicos se acoplan parcialmente a las opciones elegidas (por ejemplo CGP en el gráfico diario)."),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("La pagina web utiliza generalmente Javascript para resolver las tareas. Para crear el documento PDF se utilizan Javascript y PHP."),
    "Die Werte VarK und ToR im CGP werden bei Tages- und Wochengrafiken in der Legende und in der Grafik korrekt ausgegeben." : MessageLookupByLibrary.simpleMessage("Los valores VarK y TeR en el CGP serán mostrados correctamente en el gráfico yen la leyenda."),
    "Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt" : MessageLookupByLibrary.simpleMessage("Los valores del objectivo estandar se calculan corrctamente en la pagina analisis"),
    "Die Werte im CGP werden jetzt bei mmol-Angaben auch korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Los valores en el CGP ahora son mostrados también correctamente en mmol."),
    "Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. " : MessageLookupByLibrary.simpleMessage("La URL introducida no es accesible. Si la URL es correcta puede ser causado por los ajustes en Nightscout. "),
    "Die berechneten IE für Kohlenhydrate in der Tagesgrafik wurden teilweise mit falschen Faktoren ermittelt. Der Fehler wurde behoben." : MessageLookupByLibrary.simpleMessage("Las UI para los carbohidratos en el gráfico diario se han calculado con factores erróneos. Esto ha sido corregido."),
    "Die eigenen Grenzwerte auf der Analyseseite in mmol/L werden nun korrekt berechnet." : MessageLookupByLibrary.simpleMessage("Los propios límites en la página de análisis en mmol/L se calculan correctamente."),
    "Die einzelne Seite CGP kann jetzt auch im Querformat ausgegeben werden." : MessageLookupByLibrary.simpleMessage("Las páginas del CGP ahora se pueden mostrar en formato oblongo."),
    "Die falsche Bezeichnung für durchschnittliche Kohlenhydrate pro Tag in der Tagesstatistik wurde durch die korrekte Bezeichnung für durchschnittliche Kohlenhydrate pro Mahlzeit ersetzt." : MessageLookupByLibrary.simpleMessage("El nombre incorrecto del promedio de carbohidratos al día en la estadística diaria se ha cambiado al promedio de carbohidratos por comida."),
    "Die fehlerhafte Platzierug der blutigen Werte bei mmol/L in der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Se ha corregido la falta en mostrar valores de glucosa medidos en sangre en mmol/l en el gráfico diario."),
    "Die fehlerhafte Zentrierung der Auswahlbuttons wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Se ha corregido el centrado incorrecto de los botones de selección."),
    "Die glykämische Variabilität stellt die Streuung der Werte um den glykämischen Mittelwert herum in Prozent dar." : MessageLookupByLibrary.simpleMessage("La variabilidad de glucemia indica en % la difusión de valores al rededor de la glucemia media."),
    "Die glykämische Variabilität wird jetzt im CGP auch bei Tages- und Wochengrafiken korrekt ausgegeben." : MessageLookupByLibrary.simpleMessage("La variabilidad glucemica es mostrada correctamente en los gráficos díarios y semanales en el CGP."),
    "Die meisten Spalten auf der Seite \"Stündliche Statistik\" werden bei nicht vorhandenen Daten leer gelassen." : MessageLookupByLibrary.simpleMessage("En la página \"estatistica por hora\" la mayoría de las columnas se quedan vacias si no contienen datos."),
    "Die mittlerweile überflüssige Option zur Darstellung der Basalrate mit zwei Nachkommastellen wurde aus der Tagesgrafik entfernt." : MessageLookupByLibrary.simpleMessage("Se ha eliminado la opción innecesaria de mostrar el perfil basal con dos decimales en el gráfico diario."),
    "Die teilweise falsch zugewiesenen Grenzwerte für die Bereiche (niedrig, normal, hoch) wurden korrigiert." : MessageLookupByLibrary.simpleMessage("Los límites parcialmente erróneos (bajo, normal, alto) han sido corrigidos."),
    "Die temporäre Basalrate am Anfang des Tages wurde bisher falsch gesetzt, wenn sie im vorherigen Tag gesetzt wurde. Das wurde behoben." : MessageLookupByLibrary.simpleMessage("La tasa basal temporal al principio del dia ha sido mostrada incorrectamente en caso de haber sido establecida al día anterior. Esto se ha corregido."),
    "Die Überschrift über der Tabelle vom Glucose Perzentil Diagramm wurde korrigiert." : MessageLookupByLibrary.simpleMessage("El título de la tabla del percentil de glucosa ha sido corregido."),
    "Die Überschrift über der mittleren Spalte im Tagesprofil wurde korrigiert." : MessageLookupByLibrary.simpleMessage("El título de la columna mediana en el perfil diario ha sido corregido."),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("Esta pagina genera documentos PDF con los datos almacenados en Nightscout. Para esto es necesario tener acceso a los datos, por lo cual algunos ajustes se almacenarán. Siempre y cuando éstos no estén presentes y válidos, la página no puede hacer nada para usted."),
    "Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden." : MessageLookupByLibrary.simpleMessage("Añadido a esta página. Aparecerá cada al cargar Nightscout Reporter, si no se mostraba en la versión actual. También puede recuperar en el menú."),
    "Diese Webseite speichert keine Daten auf Servern. Die benötigten Daten werden von der eingegebenen URL zur Nightscout-Instanz geholt und als PDF aufbereitet. Die Daten, die zur Funktion der Webseite benötigt werden, werden im localStorage des Browsers gespeichert und nicht an den Server übermittelt. Wenn die Synchronisierung mit Google Drive aktiviert wird, dann werden diese Daten zusätzlich in den Anwendungsdaten auf dem Google Drive des verbundenen Kontos gespeichert." : MessageLookupByLibrary.simpleMessage("Esta página no almacena datos en el servidor. Los datos provienen desde la URL al la página Nightscout y son creadas como PDF. Los datos necesarios se almacenan local y no son mandados al servidor. Si se activa la sincronización con Google Drive, los datos serán también guardados en los datos del usuario en la cuenta registrada de Google Drive."),
    "Dieser Regler legt fest, wie gross eine Ausgabe maximal werden darf, bevor sie auf mehrere PDF-Dateien aufgeteilt wird. Wenn bei Erstellung eines PDFs ein leeres Fenster angezeigt wird, dann hilft es normalerweise, diesen Regler weiter nach links zu bewegen." : MessageLookupByLibrary.simpleMessage("Este mando ajusta el tamaño máximo, antes de ser dividido en varios documentos PDF. Si se muestra una pagina en blanco al crear un PDF, ayuda mover la barra hacia la izquierda."),
    "Dieses Formular ..." : MessageLookupByLibrary.simpleMessage("Este formulario..."),
    "Dieses Formular zeig die Verteilung der Glukosewerte\nim ausgewählten Zeitraum an." : MessageLookupByLibrary.simpleMessage("Este formulario muestra la distribución de los valores de glucosa durante el periodo seleccionado."),
    "Dieses Formular zeigt an, wie sich die Glukosewerte im ausgewählten Zeitraum über den Tag\nverteilen. Diese Verteilung kann graphisch und tabellarisch ausgegeben werden.\n\nIn der Grafik sind die Bereiche für bestimmte Abweichungen farblich markiert. Die Linie zeigt den Medianwert\nan. In der Tabelle kann man diese Werte nachlesen. Wenn die Basalrate mit ausgegeben wird, dann ist das die\nBasalrate, die zu Beginn des ausgewählten Zeitraums aktiv war." : MessageLookupByLibrary.simpleMessage("Este formulario muestra cómo se distribuyen los niveles de glucosa durante el día durante el período seleccionado. Esta distribución se puede generar gráfica y tabularmente. En el gráfico, las áreas están codificadas por colores para desviaciones específicas. La línea muestra el valor medio. Estos valores se pueden leer en la tabla. Si se muestra la tasa basal, esa es la tasa basal que estaba activa al principio del período seleccionado."),
    "Dieses Formular zeigt das Comprehensive Glucose Pentagon an, welches die Qualität der \nGlukoseeinstellung in einer schnell zu erfassenden Weise darstellt. Es wird für den ausgewählten Zeitraum angezeigt\nwie lange der Glukosewert im Schnitt während des Tages ausserhalb des Zielbereichs war, wie hoch die Intensität\nder Überzuckerungen und der Unterzuckerungen war, wie hoch der Mittelwert war und wie hoch die Variabilität der\nWerte war.\n\nDiese Grafik kann auch bei @05@ und @08@ ausgegeben werden. \n" : MessageLookupByLibrary.simpleMessage("Est formulario meuestra el Pentágono de glucosa integral, que muestra la calidad de la configuración de glucosa de una manera rápida de ver y comprender. Para el período seleccionado, se muestra cuánto tiempo el valor de glucosa fue en promedio fuera del objetivo durante el día, la intensidad del exceso de azúcar y del bajo en azúcar, la media y la variabilidad de los valores. Este gráfico también se puede imprimir en @05@ y @08@.\n"),
    "Dieses Formular zeigt das Profil an. Es werden normalerweise alle Profile des ausgewählten\nZeitraums ausgegeben. Wenn sich in dem Zeitraum das Profil geändert hat, wird ein neues Blatt erzeugt.\n\nEs gibt aber eine Option, welche nur das letzte Profil des Zeitraums ausgibt. Ausserdem gibt es eine Option,\nmit der gleiche Zeilen zusammengefasst werden. Das führt zu einem kürzeren Profil, wenn mehrere Zeiten nacheinander\ndie gleichen Werte beinhalten." : MessageLookupByLibrary.simpleMessage("Este formulario muestra el perfil. Normalmente, se generan todos los perfiles del período de tiempo seleccionado. Si el perfil ha cambiado en el período, se crea una pagina nueva. Sin embargo, hay una opción que devuelve solo el último perfil del período. También hay una opción para resumir las mismas líneas. Esto da como resultado un perfil más corto si varias veces seguidas contienen los mismos valores."),
    "Dieses Formular zeigt den Trend der Glukosewerte über den Tag hinweg \nan. Dabei wird in der Spalte Trend immer angezeigt, um wieviel Prozent sich \nder Wert von einer vollen Stunde zur nächsten verändert hat. Dieser Trend ist\nganz hilfreich, wenn man bei einem Basalratentest erkennen will, wie sich der\nGlukosewert nur anhand der Basalrate entwickelt. Es kann auch eine Spalte für\ndie Boluswerte und die Kohlenhydrate angezeigt werden. Diese sollten aber bei\neinem Basalratentest natürlich leer sein. Ebenso muss ein eventuell\nvorhandener Loop im Zeitraum des Tests abgeschaltet sein. Es geht dabei nur\num den Diabetiker und seine Basalrate.\nEs wird auch eine Spalte mit der\nBasalrate angezeigt, wenn die Option \'Alle Werte für einen Tag anzeigen\'\nnicht markiert wurde. Wenn die Option markiert wurde, dann fehlt der Platz\n(und auch der Sinn), diese darzustellen." : MessageLookupByLibrary.simpleMessage("Este formulario muestra la tendencia en los niveles de glucosa a lo largo del día. La columna tendencia siempre muestra el porcentaje de que el valor ha cambiado de una hora a la siguiente. Esta tendencia es muy útil si desea ver cómo el valor de glucosa se desarrolla sólo sobre la base de la tasa basal en una fase de prueba de tasa basal. También puede mostrar una columna para los valores de bolo y carbohidratos. Sin embargo, estos deben, por supuesto, estar vacíos en una fase de prueba de tasa basal. Del mismo modo, un bucle cerrado que puede existir debe desactivarse durante el período de prueba. Se trata exclusivamente del diabético y su tasa basal. También se muestra una columna con la tasa basal si la opción \"Mostrar todos los valores de una día\" no está seleccionada. Si la opción está seleccionada, entonces no hay espacio (ni el sentido) para representarla."),
    "Dieses Formular zeigt den Verlauf der Glukosekurve für einen Tag. Pro Tag im ausgewählten\nZeitraum wird eine Seite erzeugt. Es gibt sehr viele Optionen, mit denen dieses Formular angepasst werden kann.\nDie Optionen, die auf einen Loop hinweisen sind andersfarbig markiert, um sie schneller identifizieren zu \nkönnen. Die Optionen COB und IOB verlangsamen die Ausgabe teilweise erheblich, weshalb man diese nur dann\nverwenden sollte, wenn sie wirklich von Interesse sind.\n\nUnter der Grafik kann die Basalrate angezeigt werden. Ein laufender Loop wird diese immer wieder hoch und runter\nsetzen. Deshalb kann man sowohl die tatsächliche Basalrate als auch die im Profil eingestellte Basalrate \nanzeigen lassen. Für die Basalrate gibt es noch die Formulare @09@, @11@ und @02@, auf denen man sie genauer \nanalysieren kann. Man kann auch das @10@ für den Tag erzeugen lassen. Das wird dann auf einer neuen Seite ausgegeben.\n\nDieses Formular ist eines der seitenintensivsten Formulare in Nightscout Reporter. Deshalb gibt es hier \ndie Möglichkeit, mehrere Tagesgrafiken auf einer Seite ausgeben zu lassen. Darunter leidet natürlich die Lesbarkeit,\naber für einen Überblick über den Verlauf ist das ganz nützlich." : MessageLookupByLibrary.simpleMessage("Este formulario muestra el curso de la curva de glucosa durante un día. Se crea una página por día en el período seleccionado. Hay muchas opciones que se pueden usar para personalizar este formulario. Las opciones que indican un bucle cerrado se marcan de otro color para poder identificarlas rápidamente. Las opciones COB e IOB ralentizan considerablemente la salida, por lo que solo debe usarlas si son realmente de interés. La tasa basal se puede mostrar debajo del gráfico. Un bucle en ejecución los configurará una y otra vez. Por lo tanto, se pueden mostrar tanto la tasa basal real como la tasa basal establecida en el perfil. Para la tasa basal, también existen los formularios@\'09@, @11@ y @02@, con las que se pueden analizar con más detalle. También se puede crear el @10@ para el día. A continuación, se imprimirá en una nueva página. Este formulario es uno de los formularios de más páginas en Nightscout Reporter. Es por eso que se pueden configurar varias salidas de gráficos diarias en una página. Por supuesto, la visibilidad sufre un poco, pero es muy útil para una visión general del curso."),
    "Dieses Formular zeigt den Verlauf der Glukosekurve über eine Woche hinweg an. Der Zeitraum wird\ndazu in Wochenabschnitte aufgeteilt und jede Woche wird auf einer eigenen Seite ausgegeben. Die Wochen werden\nfarblich markiert, so dass man sie gut unterscheiden kann. Zusätzlich kann noch das @10@ für die jeweilige\nWoche erzeugt werden." : MessageLookupByLibrary.simpleMessage("Este formulario muestra el curso de la curva de glucosa durante una semana. El período se divide en secciones semanales y cada semana se imprime en su propia página. Las semanas están codificadas por colores para que puedan distinguirse. Además, puede crear el @1@ para la semana respectiva."),
    "Dieses Formular zeigt die Auswertung der Werte des ausgewählten\nZeitraums. Dabei wird auch der durchscnittliche Verbrauch an Materialien\nrechnerisch ermittelt und angezeigt. Dieses Formular beinhaltet die meisten\nInformationen, die Diabetologen gerne wissen wollen.\n\nDer HbA1c wird rechnerisch aus den vorhandenen Daten ermittelt und weicht\nnormalerweise nicht unerheblich von dem tatsächlich gemessenen Wert ab. Der\nWert, der aus der Blutprobe ermittelt wird, gibt die tatsächliche Bindung\nvon Glukose im Blut wieder. Da diese von zusätzlichen Faktoren abhängig ist\nund nicht nur von den hier verwendeten Messdaten, ergeben sich Unterschiede\nzum errechneten Wert. Vor allem, wenn es sich bei den gemessenen Werten nicht\num Blutzucker, sondern um Gewebszucker handelt, wie er von CGM-Systemen\nverwendet wird.\n\nTrotzdem ist dieser Wert ein grober Anhaltspunkt für die Qualität der\nGlukoseeinstellung und wird in der vom Labor ermittelten Form gerne von\nDiabetologen als Richtwert verwendet, weshalb er hier angezeigt wird. Er wird\naber in schwächerer Schrift ausgegeben, damit seine zweifelhafte Natur auch\nerkennbar ist." : MessageLookupByLibrary.simpleMessage("Este formulario muestra la evaluación de los valores del período seleccionado. También se calcula y visualiza el consumo medio de materiales. Este formulario contiene la mayor parte de las informaciónes que interesan a los endocrinologos. El HbA1c se calcula a partir de los datos existentes y, por lo general, difiere significantemente del valor medido real. El valor obtenido de la muestra de sangre refleja la concentracíon real de la glucosa en la sangre. Dado que esto depende de factores adicionales y no sólo de los datos de medición utilizados aquí, hay diferencias con el valor calculado. Especialmente si los valores medidos no son azúcar en la sangre, sino azúcar de tejido, como utilizan los sistemas de MGC. Sin embargo, este valor es una indicación aproximada de la calidad de la configuración de glucosa y a menudo es utilizado por los endocrinologos como una directriz en la forma determinada por el laboratorio, razón por la cual se muestra aquí. Pero se muestra en escritura más débil, por lo que su naturaleza dudosa también es reconocible."),
    "Dieses Formular zeigt die Basalrate, die im Profil eingestellt ist in graphischer Form an.\nEs werden normalerweise alle Basalraten des ausgewählten Zeitraums ausgegeben. Wenn sich in dem Zeitraum\ndie Basalrate geändert hat, wird eine neue Seite erzeugt.\n\nEs gibt aber eine Option, welche nur die letzte Basalrate des Zeitraums ausgibt." : MessageLookupByLibrary.simpleMessage("Este formulario muestra la tasa basal establecida en el perfil en forma gráfica. Normalmente, se emiten todas las tasas basales del período de tiempo seleccionado. Si la tasa basal ha cambiado en ese período, se crea una nueva página. Sin embargo, hay una opción que devuelve solo la última tasa basal del período."),
    "Dieses Formular zeigt die Daten in tabellarischer Form an. Es kann abhängig von den\nausgewählten Optionen sehr viele Seiten umfassen. Es ist vor allem dafür sinnvoll, um bestimmte Daten aufzufinden.\nZum Beispiel kann man damit ermitteln, wann Katheterwechsel vorgenommen wurden, wieviele Datensätze als doppelt \nerkannt wurden oder wo Notizen erfasst wurden.\n" : MessageLookupByLibrary.simpleMessage("Este formulario muestra los datos en forma tabular. Puede abarcar un gran número de páginas, dependiendo de las opciones seleccionadas. Es especialmente útil para encontrar ciertos datos. Por ejemplo, puede usarlo para determinar cuándo se realizaron cambios en el catéter, cuántos registros se reconocieron como duplicados o dónde se recogieron las notas.\n"),
    "Dieses Formular zeigt die statistischen Werte für die Tage des ausgewählten Zeitraums\nan. Für jeden Tag wird eine Zeile erzeugt. Die Spalten kann man teilweise konfigurieren. Auch hier wird der geschätzte \nHbA1c ausgegeben. Dieser hat wie auch im Formular @01@ nur sehr wenig Aussagekraft, weshalb er auch hier nur mit \nschwächerer Schrift angezeigt wird.\n" : MessageLookupByLibrary.simpleMessage("Este formulario muestra los valores estadísticos de los días del período seleccionado. Se crea una línea para cada día. Las columnas se pueden configurar parcialmente. Una vez más, se emite el HbA1c estimado. Esto tiene muy poco significado, como en la forma @01@ por lo que sólo se muestra aquí con una fuente más débil.\n"),
    "Dieses Formular zeigt die tatsächliche Basalrate, die während des Tages gelaufen ist unter\nBerücksichtigung aller temporären Basalratenanpassungen. Zusätzlich kann noch die im Profil hinterlegte\nBasalrate angezeigt werden. Die Basalrate kann als Wert, als prozentuale Änderung in Bezug auf die Profilbasalrate\noder mit beidem angezeigt werden. Die Summenspalte zeigt die bis zur entsprechenden Uhrzeit abgegebene Basalrate\nan. Es ist auch möglich, die Uhrzeit mit Sekunden anzeigen zu lassen. Damit kann man die angezeigten Werte\nrechnerisch überprüfen.\n\nWenn die Basalrate aus dem Profil angezeigt wird, wird das Maximum für die Darstellung der Balken anhand des\nmaximalen Wertes der Profilbasalrate ermittelt. Dadurch werden bei Werten über 100% des Maximalwerts der \nProfilbasalrate die Balken über die Spalte hinaus verlängert. Es gibt aber eine Option, um diese Balken abzuschneiden \nund als Pfeile darstellen zu lassen." : MessageLookupByLibrary.simpleMessage("Este formulario muestra la tasa basal real que se ha ejecutado durante el día, teniendo en cuenta todos los ajustes temporales de la tasa basal. Además, se puede visualizar la tasa basal almacenada en el perfil. La tasa basal se puede mostrar como un valor, como un cambio porcentual en términos de la tasa basal del perfil, o ambos. La columna total muestra la tasa basal entregada hasta el momento adecuado. También es posible mostrar el tiempo con segundos. Esto permite comprobar matemáticamente los valores mostrados. Cuando la tasa basal se muestra desde el perfil, el máximo para mostrar las barras viene determinado por el valor máximo de la tasa basal del perfil. Esto extiende las barras más allá de la columna para valores superiores al 100% del valor máximo de la tasa basal del perfil. Sin embargo, hay una opción para cortar estas barras y mostrarlas como flechas."),
    "Dieses Formular zeigt eine Übersicht für einen Tag. Hier \n  werden die Tagesgrafik, die Basalrate, die Basalratenanpassungen, Insulin On \n  Board und Carbs On Board angezeigt." : MessageLookupByLibrary.simpleMessage("Esta página muestra la información sobe un día. Aquí se muestran el gráfico diario, la tasa basal, los ajustes a la tasa basal, insulina a bordo y carbohidratos a bordo."),
    "Dieses Formular zeigt eine Übersicht über die \nStunden der Tage des ausgewählten Zeitraums an. Die angezeigten Werte sind die\nMittelwerte der innerhalb der entsprechenden Stunde gemessenen Werte. Sie\nwerden anhand des ausgewählten Zielbereichs eingefärbt. In den Formularoptionen\nkann man die Startstunde festlegen. Die Datumsspalte befindet sich immer links\nvon 0 Uhr und zeigt an, wo ein neuer Tag beginnt." : MessageLookupByLibrary.simpleMessage("Este formulario muestra un resumen de las horas de los días del período de tiempo seleccionado. Los valores mostrados son los valores medios de los valores medidos en la hora correspondiente. Se colorean en función del rango de destino seleccionado. En las opciones del formulario se puede configurar la hora de inicio. La columna de fecha está siempre a la izquierda de las 0h en punto y muestra dónde comienza un nuevo día."),
    "Diverse Abstürze beim Auslesen der Daten bereinigt" : MessageLookupByLibrary.simpleMessage("Arreglado varias faltas al leer datos"),
    "Drei Monate vorher" : MessageLookupByLibrary.simpleMessage("Tres meses antes"),
    "Drittes Quartal" : MessageLookupByLibrary.simpleMessage("Tercer trimestre"),
    "Durchschnitt" : MessageLookupByLibrary.simpleMessage("Intermedio"),
    "Dämmerung (06:00 - 07:59, 18:00 - 20:59)" : MessageLookupByLibrary.simpleMessage("Crepúsculo (06:00 - 07:59, 18:00 - 20:59)"),
    "Eigene Grenzwerte" : MessageLookupByLibrary.simpleMessage("Límites propios"),
    "Ein Fehler bei der Ausgabe der temporären Ziele in der Tagesgrafik wurde behoben." : MessageLookupByLibrary.simpleMessage("Und falta en los objetivos temporales de ja corregido."),
    "Ein Fehler beim Laden der ausgewählten Formulare wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Una falta al cargar formularios elegidos ha sido corregida."),
    "Ein Fehler in der Zahlenformatierung wurde behoben." : MessageLookupByLibrary.simpleMessage("Se ha corregido falta de formato de valores."),
    "Ein Fehler wurde behoben, der bei der Auswahl des Zeitraums die Benutzung verhinderte, wenn man ein leeres Eingabefeld fokussierte." : MessageLookupByLibrary.simpleMessage("Se ha corregido una falta, que al elegir un período dejando una casilla vacía impedía el uso."),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die Anwendung in einem undefinierten Zustand war, wenn man den letzten Benutzer gelöscht hat." : MessageLookupByLibrary.simpleMessage("Se ha corregido una falta que dejaba la aplicación en un estado no definido al borrar el último usuario."),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die letzten Tage bestimmter Monate nicht im Kalender-Control angezeigt wurden." : MessageLookupByLibrary.simpleMessage("Se ha corregido un error que provocó, que los últimos días de algunos meses no aparecieron en el control de calendario."),
    "Ein Fehler wurde behoben, der dafür sorgte, dass temporäre Ziele in der Tagesgrafik mit zeitlicher Verschiebung angezeigt wurden." : MessageLookupByLibrary.simpleMessage("Se ha corregido una falta que causaba que los objetivos temporales se mostraban incorrectamente."),
    "Ein Fehler wurde behoben, der dazu führte, dass Dialoge mit Escape geschlossen werden konnten, was die Anwendung in einem unbrauchbaren Zustand zurückliess." : MessageLookupByLibrary.simpleMessage("Se ha corregido una falta que admitía cerrar diálogos por el botón \"escape\" y dejaba la aplicación inutilizable."),
    "Ein Fehler wurde behoben, der dazu führte, dass bei fehlenden Daten wie z.B. Treatments gar kein PDF mehr erstellt werden konnte." : MessageLookupByLibrary.simpleMessage("De ha corregido una falta que al faltar valores impedía el establecimiento del PDF."),
    "Ein Fehler wurde behoben, der in der Tagesgrafik dazu führte, dass Texte in der Legende andere Texte überschrieben haben." : MessageLookupByLibrary.simpleMessage("Se ha corregido una falta que producía que algunos textos aparecían por encima de otros."),
    "Ein Fehler wurde wahrscheinlich behoben, der dazu führt, dass bei manchen Profilen der Wert für DIA nicht korrekt ausgelesen wurde." : MessageLookupByLibrary.simpleMessage("Solucionado un problema, que provocó que en algunos perfiles los valores para el DIA no se han leido correctamente."),
    "Ein Jahr vorher" : MessageLookupByLibrary.simpleMessage("Un año antes"),
    "Ein Link zur Facebookseite von Nightscout Reporter wurde im Menü hinzugefügt." : MessageLookupByLibrary.simpleMessage("Se ha agregado un enlace a la página de Facebook de Nightscout Reportero en el menú."),
    "Ein Shortcut beinhaltet den Zeitraum und die ausgewählten Formulare mit den jeweils gesetzten Optionen. Wenn ein Shortcut aktiviert wird, werden die darin gespeicherten Einstellungen geladen und aktiviert." : MessageLookupByLibrary.simpleMessage("Un atajo contiene el periodo y los formularios elegidos con las opciones seleccionadas. Si se activa un atajo, se cargarán y activarán los criterios elegidos.\ntexto informativo sobre atajos."),
    "Ein möglicher Absturz bei der Ausgabe des CGP bei der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Un posible error al crear el CGP en el gráfico diario se ha corregido."),
    "Eine" : MessageLookupByLibrary.simpleMessage("Una"),
    "Einen Monat vorher" : MessageLookupByLibrary.simpleMessage("Un mes antes"),
    "Einheit" : MessageLookupByLibrary.simpleMessage("Unidad"),
    "Einheit der Glukosemessung" : MessageLookupByLibrary.simpleMessage("Unidas para calcular la glucemia"),
    "Einheiten" : MessageLookupByLibrary.simpleMessage("Unidades"),
    "Einige Browser sind nicht in der Lage PDF Dateien anzuzeigen, die eine bestimmte Grösse überschreiten. Da das von verschiedenen Faktoren abhängt, die sich nicht ohne Weiteres automatisch ermitteln lassen, gibt es die Möglichkeit, statt einer grossen PDF Datei, die nicht angezeigt werden kann, mehrere kleinere PDF Dateien zu erzeugen, die der Browser anzeigen kann. In den Einstellungen und hier kann diese Grösse festgelegt werden. Diese Seite hier wird nur angezeigt, wenn das PDF aufgeteilt werden musste. Wenn nur ein PDF erzeugt wurde, dann wird es direkt angezeigt." : MessageLookupByLibrary.simpleMessage("Algunos navegadores no son capaz de mostrar PDF de cierto tamaño. Esto depende de varios factores. Existe la posibilidad de crear varios documentos PDF pequeños en vez de uno grande para poder ser mostrado correctamente en el navegador. Se puede elegir el tamaño aquí y en configuración. Aquí solo se muestra si el PDF ha tenido que ser dividido. Si solo se ha creado un PDF se mostrará directamente."),
    "Einige Formulare können nun mit Parametern konfiguriert werden; hierzu den Pfeil am rechten Rand des Formularbuttons anklicken und im aufgeklappten Bereich die entsprechenden Einstellungen vornehmen; der Pfeil erscheint erst, wenn das Formular zum Ausdruck markiert wurde" : MessageLookupByLibrary.simpleMessage("Algunas formas pueden ser configuradas con parámetros; para ello, haga clic en la flecha en el borde derecho de los botones del formulario y insertarlos ajustes apropiados en el área ampliada; la flecha aparecerá sólo si marcó la forma de imprimir"),
    "Einige der Optionen für die PDFs wurden hierarchisch angeordnet. Es macht z.B. keinen Sinn, die SMB Werte in der Tagesgrafik an der Kurve platzieren zu lassen, wenn die SMB Werte gar nicht angezeigt werden. Deswegen werden Optionen, die von einer anderen Option abhängen nur dann angezeigt, wenn die entsprechende Option markiert ist. Dadurch ändert sich leider auch die Speicherung der Optionen, weshalb sich die aktuelle Auswahl der Optionen bei manchen PDFs verändert. Da müssen die Optionen dann neu gesetzt werden." : MessageLookupByLibrary.simpleMessage("Algunas opciones han sido ordenadas jerárquicamente. No tiene sentido, poner los smb en el gráfico diario junto a la curva, si no son mostrados. Por lo tanto opciones que dependen de otras opciones sólo son mostradas, si la opción correspondiente está seleccionada. Aquí cambia el almacenamiento de las opciones y por eso cambia la actual selección de opciones en algunos PDF. Por desgracia hay que seleccionar las opciones de nuevo."),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("Ajustes"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("Ajustes para la utilisación de la pagina"),
    "Einstellungen von Release-Version übernehmen" : MessageLookupByLibrary.simpleMessage("Aplicar la configuración de la versión del lanzamiento"),
    "Einstiegsvideo" : MessageLookupByLibrary.simpleMessage("Vidéo de entrada"),
    "English (GB)" : MessageLookupByLibrary.simpleMessage("English (GB)"),
    "English (USA)" : MessageLookupByLibrary.simpleMessage("English (USA)"),
    "Ermittle ersten Tag mit Daten" : MessageLookupByLibrary.simpleMessage("Averigua el primer día con datos"),
    "Ermittle letzten Tag mit Daten" : MessageLookupByLibrary.simpleMessage("Averigua el último día con datos"),
    "Erstes Quartal" : MessageLookupByLibrary.simpleMessage("Primer trimestre"),
    "Erzeuge PDF..." : MessageLookupByLibrary.simpleMessage("Creando PDF..."),
    "Es gibt ein neues Formular namens \"Verteilung der Glucosewerte\". Das zeigt die prozentuale Verteilung der Glukosewerte für den ausgewählen Zeitraum an." : MessageLookupByLibrary.simpleMessage("Hay un nuevo formulario llamado \"distribución de va de glucosa\". Este muestra la distribución porcentual para el período elegido."),
    "Es gibt ein neues PDF namens Tagesstunden. Dieses zeigt die Durchschnittswerte eines Tages in jedem Stundenintervall an und färbt die Zellen entsprechend des Glukosewertes ein. So hat man eine gut Übersicht über die Werteverteilung im ausgewählten Zeitraum." : MessageLookupByLibrary.simpleMessage("Hay un PDF nuevo llamado horas de día. Este muestra el medio diario por cada hora y color cada célula según el valor de la glucosa. Así se optiene un buen resumen sobre la distribución de los valores en el periodo elegido."),
    "Es gibt ein neues PDF namens Tagestrend. Dieses zeigt die Werte eines Tages zusammen mit dem Trend zu jeder vollen Stunde, sowie der eingestellten Basalrate aus dem Profil. Das ist eine gute Übersicht für Basalratentests, um zu erkennen, wo etwas anzupassen ist." : MessageLookupByLibrary.simpleMessage("Hay un nuevo PDF \"tendencia diaria\". Este muestra los valores diarios por hora y el perfil actual. Esto es un buen resumen para verificar tasas basales."),
    "Es gibt eine neue Option in der Tagesgrafik mit der man den Zielwert ein- und ausblenden kann." : MessageLookupByLibrary.simpleMessage("Hay una nueva opción en el gráfico diario para mostrar y esconder el objetivo."),
    "Es gibt eine neue PDF-Seite für die Tagesprofile. Darauf ist eine Tabelle zu sehen, die die tatsächliche Basalrate für den Tag zeigt, inklusive aller temporären Anpassungen. Ich brauchte das für Debugzwecke, aber vielleicht findet das der eine oder andere Benutzer auch interessant. Das Profil, das dort angezeigt wird entspricht dem Tagesprofil auf der Seite Tagesgrafik. Beim Loopen können das sehr viele Seiten werden, da dort normalerweise alle paar Minuten Anpassungen an der Basalrate vorgenommen werden. Deswegen wird die Tabelle auch abhängig von der Datenmenge in maximal drei Spalten dargestellt, um die Anzahl an Seiten zu reduzieren." : MessageLookupByLibrary.simpleMessage("Hay una página para el perfil diario. Ahí se muestra una tabla con la tasa basal actual incluyendo los ajustes temporales. Lo necesitaba para trabajos de programación, pero quizás a alguien le resulta interesante. El perfil que se muestra corresponde al perfil en la página del gráfico diario. En modo del lazo cerrado pueden ser muchas páginas por que cada pocos minutos se ajusta la tasa basal. Por esto la tabla contiene como máximo tres columnas para reducir la cantidad de páginas."),
    "Es gibt in den Einstellungen eine Option, das PDF herunterladen zu lassen, statt es im Browser direkt anzeigen zu lassen. Das wird für Browser wie Edge benötigt." : MessageLookupByLibrary.simpleMessage("Hay una opción para descargar el PDF, en lugar de verlo directamente en la configuración del explorador. Esto es necesario para navegadores como el Edge."),
    "Es gibt in den Einstellungen eine neue Option, um den letzten in Nightscout gespeicherten Glukosewert in der Titelzeile anzeigen zu lassen. Wenn diese Option aktiviert ist, wird der aktuelle Wert, das Alter des Wertes, der Trendpfeil und die Differenz zum vorherigen Wert rechts in der Titelzeile angezeigt. Diese Anzeige wird jede Minute aktualisiert, solange das Browserfenster den Eingabefokus besitzt. Wenn es diesen nicht hat, wird die Aktualisierung angehalten und der Wert ausgeblendet, um nicht unnötig Systemresourcen zu belasten." : MessageLookupByLibrary.simpleMessage("Hay una nueva opción para mostrar el último valor de glucosa almacenado en Nightscout en el encabezado en la configuración. Si esta opción está activada, aparece el valor actual, la edad del valor, la flecha de tendencia y la diferencia al valor anterior en la barra de título. Esta pantalla se actualiza cada minuto mirntras la ventana del explorador tiene el foco de entrada. Si no lo tiene, se detiene la actualización y el valor desaparece, para evitar la carga innecesaria de datoss del sistema."),
    "Es gibt jetzt Shortcuts, mit denen man die aktuelle Auswahl der Formulare, deren Parameter und den ausgewählten Zeitraum speichern kann. Beim Aktivieren eines Shortcuts wird das alles wieder so eingestellt, wie es war, als der Shortcut gespeichert wurde." : MessageLookupByLibrary.simpleMessage("Ahora existen atajos con los que puedes guardar la selección actual de formularios, los parámetros y el periodo seleccionado. Al activar un atajo, todo se repone como seleccionado al guardar el atajo."),
    "Es gibt jetzt auch die Möglichkeit, Nightscout Reporter in europäischem Englisch darzustellen. Der Unterschied zum amerikanischen Englisch besteht derzeit lediglich im Datumsformat (gb: dd/MM/yyyy, us: MM/dd/yyyy)." : MessageLookupByLibrary.simpleMessage("Ahora también existe la posibilidad de representar Nightscout Repoerter en inglés europeo. La única diferencia esta en el formato de la fecha para el inglés americano (gb: dd/MM/AAAA, U. S.: dd/MM/AAAA)."),
    "Es gibt jetzt die Möglichkeit, PDFs vergangener Zeiträume zu erzeugen, ohne den Zeitraum anpassen zu müssen. Oberhalb des Buttons zur PDF-Erzeugung gibt es zwei Buttons, welche die PDFs für eine frühere Periode erzeugen. Der untere der beiden Buttons erzeugt die Vorperiode, der obere die vorletzte Periode. Auf den Buttons wird das Startdatum und das Enddatum angezeigt. Wenn z.B. als Zeitraum \"Letzte 2 Wochen\" gewählt wurde, dann wird mit dem unteren Button der Zeitraum von zwei Wochen beginnend vor vier Wochen erzeugt und mit dem oberen Button der Zeitraum von zwei Wochen beginnend vor sechs Wochen. Auf diese Art kann man recht einfach Vergleichsberichte erzeugen, um die Entwicklung der Werte zu erkennen. Auf den Seiten wird für diese Ausdrucke in der Kopfzeile das Wort \"Historisch 1\", bzw. \"Historisch 2\" oberhalb des Zeitraums ausgegeben. So kann man beim Vergleich der Werte die Daten voneinander unterscheiden." : MessageLookupByLibrary.simpleMessage("Existe la posibilidad de crear documentos PDF para períodos pasados sin tener que ajustar el tiempo. Superior al botón para crear el PDF hay dos botones para crear los PDF para periodos pasados. El botón de abajo crea el PDF para el período parado, el da arriba para el antepasado. En la botones se muestra la fecha de inicio y la del fin de período. Si por ejemplo eliges un periodo de dos semanas, el botón de abajo muestra el período de dos semanas empezando hace 4 semanas. El botón de arriba muetrara las dos semanas empezando hace 6 semanas. De esta manera se pueden crear fácilmente crónicas para comparar tendencias y ver desarrollos. En las páginas se muestran las palabras \"histórico 1\" y \"histórico 2\" por encima de las fechas. Así se pueden distinguir los datos al compararlos."),
    "Es gibt jetzt kleine Hilfebuttons bei den Formularen. In der Listenansicht ersetzen sie die Icons zum Ziehen der Formulare, in der Kachelansicht werden sie links oben auf den Kacheln dargestellt. Die jeweilige Ansicht kann man im Hamburgermenü auswählen. Beim Anklicken eines solchen Buttons wird ein Text angezeigt, der beschreibt, was das entsprechende Formular darstellt." : MessageLookupByLibrary.simpleMessage("Es gibt jetzt kleine Hilfebuttons bei den Formularen. In der Listenansicht ersetzen sie die Icons zum Ziehen der Formulare, in der Kachelansicht werden sie links oben auf den Kacheln dargestellt. Die jeweilige Ansicht kann man im Hamburgermenü auswählen. Beim Anklicken eines solchen Buttons wird ein Text angezeigt, der beschreibt, was das entsprechende Formular darstellt. Al pinchar estos botones se muestran información sobre el formulario."),
    "Es gibt keine mehrfachen Datensätze." : MessageLookupByLibrary.simpleMessage("No hay múltiples registros."),
    "Es ist in der Kachelansicht jetzt möglich, Formulare zu duplizieren, um verschiedene Ansichten des gleichen Formulars auf einmal zu erzeugen. Dazu gibt es rechts unten auf den Kacheln ein Kopier-Icon. Wenn dieses ausgelöst wird, dann wird das aktuelle Formular kopiert und als neue Kachel hinter der aktuellen Kachel eingefügt. Diese kann dann genauso behandelt werden, wie jede andere Kachel. Auf dieser neuen Kachel gibt es rechts unten ein Mülleimer-Icon. Wenn dieses ausgelöst wird, dann wird die Kachel wieder entfernt. Von einem Formular können maximal 2 Kopien erstellt werden. Die Optionen der Formulare werden ebenso wie die Reihenfolge wie bisher auch gespeichert. Die kopierten Kacheln bleiben also erhalten. In der Listenansicht tauchen die kopierten Formulare auch auf. Allerdings gibt es dort nicht die Möglichkeit, sie zu kopieren oder zu löschen. Das muss in der Kachelansicht erfolgen." : MessageLookupByLibrary.simpleMessage("Es ist in der Kachelansicht jetzt möglich, Formulare zu duplizieren, um verschiedene Ansichten des gleichen Formulars auf einmal zu erzeugen. Dazu gibt es rechts unten auf den Kacheln ein Kopier-Icon. Wenn dieses ausgelöst wird, dann wird das aktuelle Formular kopiert und als neue Kachel hinter der aktuellen Kachel eingefügt. Diese kann dann genauso behandelt werden, wie jede andere Kachel. Auf dieser neuen Kachel gibt es rechts unten ein Mülleimer-Icon. Wenn dieses ausgelöst wird, dann wird die Kachel wieder entfernt. Von einem Formular können maximal 2 Kopien erstellt werden. Die Optionen der Formulare werden ebenso wie die Reihenfolge wie bisher auch gespeichert. Die kopierten Kacheln bleiben also erhalten. In der Listenansicht tauchen die kopierten Formulare auch auf. Allerdings gibt es dort nicht die Möglichkeit, sie zu kopieren oder zu löschen. Das muss in der Kachelansicht erfolgen."),
    "Es ist jetzt möglich, die Buttons zur PDF-Auswahl als Kacheln darstellen zu lassen. Die Option dazu ist im Menü auf der linken Seite zu finden. In der Kachelansicht werden die Buttons über die verfügbare Fläche verteilt und sind so auf kleinen Geräten leichter zu treffen. Ausserdem sieht man dann normalerweise alle verfügbaren PDFs auf einen Blick und muss nicht scrollen. Auf den aktivierten Kacheln wird angezeigt, an welcher Stelle im PDF die entsprechenden Seiten ausgegeben werden und wieviele Seiten die entsprechende Kachel ausgibt. Diese Zahl kann für die meisten Kacheln korrekt ermittelt werden, bei einigen ist das aber ohne Auswertung der Daten nicht möglich (z.B. Profile und Protokoll). In diesem Fall wird entweder keine Seitenzahl oder eine Mindestzahl an Seiten angegeben. Sobald die Erstellung des PDFs erfolgt ist, werden die korrekten Zahlen angezeigt. Die Reihenfolge der Kacheln kann verändert werden, indem man sie festhält und an die Stelle verschiebt, an der man sie gerne hätte. Nach Anklicken des Icons in der oberen rechten Ecke können die Parameter für das entsprechende PDF erfasst werden." : MessageLookupByLibrary.simpleMessage("Ahora es posible mostrar los botones para seleccionar el PDF como cuadros. Esta opción se encuentra en el menú en el lado izquierdo. Los cuadros se reparten por todo la pantalla, así se muestran mejor en pantalla pequeña. Así también se pueden ver todos PDFs a la vez. En el botón activo se muestra en que posición del PDF se encuentra el documento y cuantas páginas contiene. Esta información se puede mostrar correctamente para la mayoría de los cuadros, para algunos no es posible sin analizar los datos (perfiles y protocolos). En este caso no se muestra la cantidad de páginas o sólo se muestra la cantidad mínima. En el momento de crear el PDF el número correcto será mostrado. El orden de los cuadros puede serpersonalizado como en la lista con el icono en el icono en el rincón izquierdo. Al pinchar el icono en el rincón derecho se pueden registrar los parámetros para el PDF."),
    "Es ist jetzt möglich, die Einstellungen auf Google Drive zu speichern. Das hat den Vorteil, dass man die Einstellungen nicht nur im aktuellen Browser hat, sondern bei jedem Browser, mit dem man sich bei Google anmeldet. Die Einstellungen werden nach wie vor im Browser gespeichert. Bei einer Verbindung zu Google Drive werden sie aber zusätzlich auf Google Drive gespeichert. Beim Laden der Seite wird überprüft, ob eine Synchronisierung gewünscht ist. Wenn das der Fall ist, dann werden die Daten von Google Drive heruntergeladen. Wenn die Daten darin neuer sind als die Daten im Browser, werden sie verwendet. Nach dem Speichern der Daten werden bei aktivierter Synchronisierung diese Daten mit dem aktuellen Zeitstempel auf Google Drive gespeichert. Die Synchronisierung wird im Menü auf der linken Seite aktiviert und deaktiviert. Sie kann auch beim erstmaligen Aufruf der Seite in einem neuen Browser direkt im Willkommensbildschirm aktiviert werden. Nightscout Reporter verlangt nur die Berechtigung die eigenen App-Daten zu speichern und zu laden und benötigt keinen Zugriff auf andere Daten auf Google Drive." : MessageLookupByLibrary.simpleMessage("Ahora es posible guardar ajustes en Google Drive. Esto permite tener todos los ajustes en varios navegadores en los que se esté registrado por Google. Los ajustes siguen guardados en el navegador. Con la conexión con Google Drive también serán guardados aquí. Al cargar la página se comprueba si la sincronización es deseada. En este caso, los datos serán bajado desde Google Drive. Si estod datos resultan más actuales que los datos en el navegador, se utilizarán. Después de guardar los datos estos serán guardados con la fecha actual en Google Drive si la sincronización está activada. La sincronización se activa y desactiva en el lado izquierdo del menú. También se puede activar en la página principal al abrir la página por primera vez con un navegador nuevo. Nightscout Reporter sólo necesita el derecho a subir y guardar los propios datos de la aplicación. No necesita ningún derecho a otros datos en Google Drive."),
    "Es ist jetzt möglich, die Wochentage festzulegen, die im Zeitraum berücksichtigt werden sollen. Die entsprechenden Tage werden bei der Auswahl des Zeitraums mit den Buttons unterhalb des Monats festgelegt. Auf den PDFs werden Zeiträume dann zusätzlich mit der Information versehen, welche Wochentage berücksichtigt werden, wenn es nicht alle sind." : MessageLookupByLibrary.simpleMessage("Es posible elegir los días de la semana que deben ser incluido en el período. Se eligen los días correspondientes para la selección del período con los botones debajo del mes. En los archivos PDF, los los dias elegidos serán marcados con la información correspondiente en los períodos elegidos si no han sido todos."),
    "Es sind keine Daten für den Ausdruck vorhanden" : MessageLookupByLibrary.simpleMessage("No hay datos para imprimir"),
    "Es sind keine Daten vorhanden." : MessageLookupByLibrary.simpleMessage("No hay datos disponibles."),
    "Es werden jetzt auch blutige Werte erkannt, die von Loop auf dem IPhone eingetragen werden." : MessageLookupByLibrary.simpleMessage("Ahora también se reconocen mediciones capilares transmitidos por Loop desde el iPhone."),
    "Español" : MessageLookupByLibrary.simpleMessage("Español"),
    "Exportieren" : MessageLookupByLibrary.simpleMessage("Exportar"),
    "Facebook Seite" : MessageLookupByLibrary.simpleMessage("Página de Facebook"),
    "Faktor" : MessageLookupByLibrary.simpleMessage("Factor"),
    "Fehler" : MessageLookupByLibrary.simpleMessage("Error"),
    "Fehler behoben, der bei der Kachelansicht teilweise verhindert hat, dass die Parameter für die Kacheln aufgerufen werden konnten." : MessageLookupByLibrary.simpleMessage("Arreglado problema con visualización en pantalla de azilejos."),
    "Fehler beim Laden der Daten" : MessageLookupByLibrary.simpleMessage("Error al cargar los datos"),
    "Fehler werden besser abgefangen und mit sinnvollem Text ersetzt." : MessageLookupByLibrary.simpleMessage("Errores son mejor atrapados y sustituidos por texto significativo."),
    "Fehlerhafte Ausgabe der Blutzuckerwerte in der täglichen Grafik korrigiert." : MessageLookupByLibrary.simpleMessage("Corregido la indicación falsa de los valores de glucosa medida en sangre en el grafico diario."),
    "Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt" : MessageLookupByLibrary.simpleMessage("Mediciones erróneas en la evaluación de los gráficos ya no son calculadas; se reconocen por el valor \"NONE\" en los datos del campo \"dirección\""),
    "Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt." : MessageLookupByLibrary.simpleMessage("Mensaje erronep eliminado al cargar perfiles sin fecha de inicio."),
    "FixAAPS30: Die Erstellung der PDFs kann extrem lange dauern. Das liegt an einer Flut von Profil-Switches, die durch ein Plugin für die Automatisierung erstellt werden. Das verursacht einen Profil-Switch alle 4 Minuten mit Speicherung des kompletten Profils. Wenn die Option aktiv ist, dann werden diese Profil-Switches aussortiert und ermöglichen dadurch die Erstellung des PDFs. Diese Profil-Switches sind dann in den PDFs nicht mehr sichtbar." : MessageLookupByLibrary.simpleMessage("FixAAPS30: crear los pdfs puede tardar mucho. Esto es debido a los múltiples cambios de perfiles iniciados por las automatizaciónes. Esto provoca un cambio de perfil cada 4 minutos con almacenamiento del perfil completo. Si esta opción esta activa, estos cambios de perfil serán evitados y el pdf se crea. Estos cambios de perfil no serán visibles en el pdf."),
    "Français" : MessageLookupByLibrary.simpleMessage("Français"),
    "Für die Tagesgrafik gibt es jetzt eine Option, um die Aufsummierung nahe beieinander liegender Werte umzuschalten." : MessageLookupByLibrary.simpleMessage("Hay una opción para cambiar a la adición de valores similares."),
    "GPD" : MessageLookupByLibrary.simpleMessage("GPD"),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("Fecha nacimiento"),
    "Gelbe Kreise zeigen an, dass der entsprechende Wert die Skala überschreitet." : MessageLookupByLibrary.simpleMessage("Circulos amarillos indican que el valor correspondiente sobresale la escala."),
    "Genauigkeit der Basalangaben:" : MessageLookupByLibrary.simpleMessage("Exactitud de los datos del perfil basal:"),
    "Ges." : MessageLookupByLibrary.simpleMessage("Sum."),
    "Gesamt" : MessageLookupByLibrary.simpleMessage("Total"),
    "Geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("HbA1c estimado"),
    "Glukose" : MessageLookupByLibrary.simpleMessage("Glucosa"),
    "Glukose (aus NS)" : MessageLookupByLibrary.simpleMessage("Glucosa (desde NS)"),
    "Glukose Pentagon erzeugen" : MessageLookupByLibrary.simpleMessage("Crear pentágono de glucosa"),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Tabla de percentil de glucosa"),
    "Glukose im Zielbereich" : MessageLookupByLibrary.simpleMessage("Glucosa detro del objectivo"),
    "Glukose zu hoch" : MessageLookupByLibrary.simpleMessage("Golucosa muy alta"),
    "Glukose zu niedrig" : MessageLookupByLibrary.simpleMessage("Glucosa demasiada baja"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("Curva glucosa"),
    "Glukosewert" : MessageLookupByLibrary.simpleMessage("Valor de glucosa"),
    "Glukosewerte anpassen" : MessageLookupByLibrary.simpleMessage("Ajustar valores de glucosa"),
    "Glykämischer Variabilitäts Index (GVI)" : MessageLookupByLibrary.simpleMessage("Índice de variabilidad glucémica (GVI)"),
    "Google Assistant" : MessageLookupByLibrary.simpleMessage("Asistente Google"),
    "Grafik" : MessageLookupByLibrary.simpleMessage("Gráfica"),
    "Grafiken pro Seite" : MessageLookupByLibrary.simpleMessage("Gráficos por página"),
    "Grenzwerte wurden nicht durchgängig gleich behandelt. Jetzt sollte die Zuordnung der Werte zu den Zielbereichen im gesamten Programm identisch sein." : MessageLookupByLibrary.simpleMessage("Valores límite no se han tratado siempre igual. Ahora la asignación de valores a los objetivos debe ser idéntica en todo el programa."),
    "Gross" : MessageLookupByLibrary.simpleMessage("Grande"),
    "Gruppierung der Zeiten" : MessageLookupByLibrary.simpleMessage("Agrupación de tiempos"),
    "HTML-Notizen anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar notas HTML"),
    "Heute" : MessageLookupByLibrary.simpleMessage("Hoy"),
    "Hiermit wird festgelegt, um wieviel der Zeitraum des PDFs verschoben werden soll, um Vergleichswerte zu erhalten." : MessageLookupByLibrary.simpleMessage("Aquí defines por cuanto tiempo se postpone el PDF para comparar valores y datos."),
    "Hinweise auf Nightscout in der Kopf- und Fusszeile des PDFs ausblenden" : MessageLookupByLibrary.simpleMessage("Esconder notas sobre Nightscout en el encabezado y el pie del PDF"),
    "Hinzufügen" : MessageLookupByLibrary.simpleMessage("Añadir"),
    "Historische Daten" : MessageLookupByLibrary.simpleMessage("Datos históricos"),
    "Hochformat" : MessageLookupByLibrary.simpleMessage("Vertical"),
    "Hohe Basalraten werden jetzt besser dargestellt." : MessageLookupByLibrary.simpleMessage("Altas tasas basales están mejor representadas."),
    "Höchster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Valor más alto en periodo"),
    "IE" : MessageLookupByLibrary.simpleMessage("UI"),
    "IE-Anzeige" : MessageLookupByLibrary.simpleMessage("Ui-pantalla"),
    "IE/std" : MessageLookupByLibrary.simpleMessage("UI /h"),
    "IOB (Insulin On Board) anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar IOB (insulina a bordo)"),
    "Im CGP wurden die Skalenbeschriftungen korrigiert." : MessageLookupByLibrary.simpleMessage("Se ha corregido el etiquetado de la escala del CGP."),
    "Im CGP wurden verschiedene Berechnungen korrigiert, die sich vor allem in Differenzen bei ToR und Mittelwerten zeigten." : MessageLookupByLibrary.simpleMessage("En el CGP se han corregido varias cálculos que se han mostrado sobre todo en diferencias en ToR y en promedios."),
    "Im Dialog der Ausgabe Parameter gibt es nun die Möglichkeit, das CGP immer mit dem Standard Zielbereich zu erzeugen. Diese Option ist anfangs eingeschaltet, da das CGP ein standardisiertes Formular ist, das gerne zu Vergleichszwecken herangezogen wird. Man kann es aber für seine eigenen Zwecke ausschalten. Diese Einstellung wird dann auch beibehalten." : MessageLookupByLibrary.simpleMessage("En el diálogo de parámetros de visualización ahora existe la posibilidad de crear el CGP con valores de objetivos de glucosa estándar. Esta opción está seleccionada desde el principio, por que se trata de un documento estándar que permite comparaciónes. Puedes desactivarlo para tu propio fin. Esta opción quedará seleccionada."),
    "Im Dialog der Ausgabe Parameter wurde rechts oben der Schieberegler \"zu Vergleichszwecken\" hinzugefügt. Wenn dieser aktiviert ist, dann wird überall der Standard Zielbereich verwendet. Intern wird das auch noch für andere Anpassungen verwendet. Diese Option ist dafür gedacht, dass man seine Ausdrucke mit anderen Diabetikern vergleichen kann. Das ist zum Beispiel zur Vorlage bei Ärzten und Diabetesberatern sinnvoll." : MessageLookupByLibrary.simpleMessage("En el diálogo de expedición se ha añadido a la derecha el botón \"para comparación\". Acitivandolo se usan en todos los informes los valores estándar para los objetivos de glucosa. También se usa para ajustes internos. Esta opción quiere ayudar a comparar los datos con otros diabeticos. Esto es útil para médicos y sus consejeros."),
    "Im Einstellungen Dialog gibt es jetzt die Möglichkeit, die Einstellungen zu exportieren und zu importieren. Beim Export wird eine Datei mit den allgemeinen Einstellungen geschrieben, beim Import wird so eine Datei wieder eingelesen. Damit kann man auch ohne Google Drive Zugriff die Einstellungen über verschiedene Browser hinweg manuell synchronisieren." : MessageLookupByLibrary.simpleMessage("En el dialogo de los ajustes ahora existe la opción de exportar e importar los ajustes. Al exportar se crea un archivo con los ajustes basicos y al importar se leé este archivo. Asi se pueden sincronizar los ajustes sin necesidad de tener Google Drive."),
    "Im Einstellungsdialog wurden die Zeilen mit den Benutzerangaben und der URL gegeneinander ausgetauscht, um eine sinnvollere Verwaltung zu ermöglichen." : MessageLookupByLibrary.simpleMessage("Se han cambiado los espacios para nombre de usuario y URL por razones de eficacia."),
    "Im Kalender-Control kann kein Datum nach dem aktuellen Tag mehr ausgewählt werden." : MessageLookupByLibrary.simpleMessage("En el control del calendario ya no se puede elegir una fecha en el futuro."),
    "Im Kalender-Control wird ein eingestellter Bereich (Heute, Letzte Woche, etc.) jetzt korrekt auf den aktuellen Tag bezogen." : MessageLookupByLibrary.simpleMessage("En el control del calendario se refiere el periodo elegido (hoy, la semana pasada, etc.) correctamente a la fecha actual."),
    "Im Kalender-Control wird jetzt der Monat des entsprechenden Datums angezeigt, wenn eines der Felder Von oder bis den Fokus erhält." : MessageLookupByLibrary.simpleMessage("En el control de calendario, se muestra el mes correspondiente a la fecha, si uno de los campos contiene De o hasta."),
    "Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert" : MessageLookupByLibrary.simpleMessage("En el PDF los numeros y las fechas tienen el formato del idioma seleccionado"),
    "Im Profil werden jetzt die richtigen Einheiten verwendet (mg/dL oder mmol/l)." : MessageLookupByLibrary.simpleMessage("El perfil ahora muestra las unidades correctas (mg/dL o mmol/l)."),
    "Im Profil werden nun die Gesamtsumme der Basalrate und die durchschnittlichen Werte für ICR und ISF pro Stunde angezeigt." : MessageLookupByLibrary.simpleMessage("En el perfil ahora se muestran el total del perfil basal y los promedios para ICR y ISF por hora."),
    "Im Protokoll gibt es jetzt die Möglichkeit, sich doppelte Datensätze markieren zu lassen. Sie werden von Nightscout Reporter zwar rausgefiltert, aber er kann anzeigen, wie oft ein bestimmter Datensatz in den Daten gefunden wurde. Man kann dort auch angeben, dass er nur mehrfach vorhandene Datensätze ausgeben soll. So kann man mögliche Diskrepanzen zwischen Nightscout Reporter und anderen Reporting Tools herausfinden." : MessageLookupByLibrary.simpleMessage("Ahora existe la opción de marcar entradas dobles. Nightscout Reportar las puede filtrar, pero tambien puede mostrar cuantas veces se han encontrado duplicados. Hay la opción de solo mostrar datos duplicados. Así se pueden detectar diferencias entre Nightscout Reporter y otras aplicaciones."),
    "Im Protokoll können jetzt auch Batteriewechsel der Pumpe angezeigt werden." : MessageLookupByLibrary.simpleMessage("En el protokolo ahora se pueden mostrar el cambio de pila en la bomba."),
    "Im Protokoll werden die Angaben, die ein temporäres Ziel von 0 IE für 0 Minuten setzen als \"Aufhebung von temp. Ziel\" ausgegeben." : MessageLookupByLibrary.simpleMessage("En el protocolo un perfil temporal de 0 UI por 0 minutos se declararán como \"cancelación de perfil temporal\"."),
    "Im Protokoll werden nun auch temporäre Overrides ausgegeben, die von iOSLoop in die Behandlungsdaten eingetragen werden." : MessageLookupByLibrary.simpleMessage("En el protocolo ahora también se muestran sustituciónes temporales que son importadas por los valores de iOsLoop."),
    "Im Tagesprofil kann nun angegeben werden, ob nur der Wert, die prozentuale Anpassung des Profils oder beides angezeigt werden soll. Ausserdem kann eine Linie eingefügt werden, die den im Basalprofil zum jeweiligen Zeitpunkt eingestellten Wert darstellt." : MessageLookupByLibrary.simpleMessage("En el perfil diario se puede seleccionar si se muestran el valor absoluto, el porcentaje o los dos valores. Además se puede mostrar una línea que representa el valor del perfil del momento."),
    "Importieren" : MessageLookupByLibrary.simpleMessage("Importar"),
    "Impressum" : MessageLookupByLibrary.simpleMessage("Aviso legal"),
    "In AAPS 3.0 wird ändert sich einiges an den Datenstrukturen und Datenmengen, die gespeichert werrden. Das verursacht in Nightscout Reporter an einigen Stellen Probleme, die sich nicht generell lösen lassen, Deswegen gibt es jetzt bei den Ausgabe Parametern die Option \"Korrektur für Datenänderungen in AAPS 3.0\", mit der bei Erstellung der PDFs bestimmte Probleme korrigiert werden. Diese Änderungen werden hier mit FixAAPS30 markiert." : MessageLookupByLibrary.simpleMessage("En AAPS 3.0 habrá grandes cambios en la structura y en la cantidad de datos que se guardaran. Esto produce problemas en algunos puntos de Nightscout Reporter que no se pueden solucionar en general. Por eso ahora existe en los parámetros la opción \"corrección de cambios de datos en AAPS 3.0\". Con esto se pueden corregir ciertos problemas al crear los pdfs. Estos cambios serán marcados con FixAAPS30."),
    "In Firefox ist es jetzt auch möglich, die Hauptseite zu scrollen, wenn sie länger ist, als das Browserfenster." : MessageLookupByLibrary.simpleMessage("Ahora también es posible deslizar la página inicial si es más larga que la ventanilla del navegador Firefox."),
    "In dem Dialog mit den Ausgabe Parametern wurde die Option hinzugefügt, die Genauigkeit der Ausgabe von Basalangaben festzulegen. Diese wird normalerweise aus den Angaben zur Basalrate in den Profilen ermittelt. Das wird auch weiterhin getan, wenn der erste Eintrag in der Liste ausgewählt wird. Ansonsten werden alle Basalangaben mit der Genauigkeit ausgegeben, die bei dieser Option ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("En el diálogo de los parámetros de edición se ha añadido la opción de definir la exactitud de edición de datos basales. Esto se obtiene normalmente desde las informaciones en los perfiles. Esto sigue siendo así, si se eligo el primer valor de la lista. Si no todos los datos basales serán mostrado con la exactitud elegido para esta opción."),
    "In den Ausgabe Parametern kann nun angegeben werden, ob immer der neueste Tag zuerst angezeigt wird. Das hat Auswirkungen auf die Tagesgrafik, die Tagesstatistik und die Wochengrafik. In den Formularoptionen wurde die entsprechende Option entfernt." : MessageLookupByLibrary.simpleMessage("En los parámetros de edición ahora se puede definir si siempre se muestra el actual día como primero. Esto efectúa el gráfico diario, los informes diarios y los informes semanales. En las opciones del formulario se han borrado las opciones correspondientes."),
    "In den Ausgabeparametern gibt es eine Checkbox, mit der man dafür sorgen kann, dass alle Optionen, die auf einen Loop hinweisen würden, für diese Ausgabe deaktiviert werden. Das sind die Optionen, die mit einem Kreis (=Loop) markiert sind." : MessageLookupByLibrary.simpleMessage("En los parámetros hay una opción para desactivar todos las informaciones que estan relacionadas con el bucle cerrado para esta actual edición. Estos son los parámetros marcados con un círculo (=Loop)."),
    "In den Einstellungen gibt es einen Regler, der festlegt, wie gross die erzeugten PDF-Dateien maximal sein dürfen. Wenn nur ein leeres PDF erzeugt wird, dann sollte dieser Regler weiter nach links geschoben werden, um die Dateigrösse zu verringern." : MessageLookupByLibrary.simpleMessage("En la configuración hay un controlador que determina el tamaño máximo los archivos PDF. Cuando se crea un PDF sólo en blanco, este controlador se debe mover hacia la izquierda para reducir el tamaño del archivo."),
    "In den Formularen Profil und Basalrate gibt es eine neue Option \"Profil \'NR Profil\' verwenden\". Normalerweise wird das zu verwendende Profil automatisch anhand des angegebenen Zeitraums ermittelt. Hiermit kann das unterbunden werden und ein Profil mit dem Namen \"NR Profil\" wird gesucht. Wenn dieses gefunden wird, dann wird das ausgegeben. Wenn es nicht gefunden wird, wird ein Text ausgegeben, der erklärt, wo man das einstellen kann." : MessageLookupByLibrary.simpleMessage("En los formularios perfil y tasa basal hay una opción nueva \"Usar perfil \'NR Profil\'\". Normalerweise se usa el perfil seleccionado automáticamente por el periodo de tiempo seleccionado. Este se puede evitar y se busca el perfil con nombre \"NR perfil\". Se se encuentra este perfil será mostrado, si no aparecerá una información que explica como crearlo."),
    "In den Optionen von Formularen, in denen man Spalten ein- und ausblenden kann, wird nun angezeigt, wieviele Spalten noch verfügbar sind." : MessageLookupByLibrary.simpleMessage("En las operaciones de los formularios donde se pueden seleccionar columnas ahora se muestra cuantas columnas quedan para mostrar."),
    "In den Optionen zur Tagesgrafik gibt es jetzt die Möglichkeit, den oberen Wert für die Kohlenhydrate festzulegen. Das kann bei hohen COB-Werten die Skalierung verbessern." : MessageLookupByLibrary.simpleMessage("En las opciones del gráfico diario ahora existe la posibilidad de insertar el valor máximo para carbohidratos. Esto puede ayudar a mejorar la visualización cuando hay muchos carbohidratos activos."),
    "In der Analyse können die Prozentzahlen für die Zielbereiche mit Nachkommazahl angezeigt werden. Das verringert die Differenz zu 100%, wenn man sie zusammenzählt. Der verbleibende Rest sind Rundungsdifferenzen." : MessageLookupByLibrary.simpleMessage("En la analisis ahora se muestran los procentajes para los objectivos con decimales. Esto reduce la diferencia al sumar hasta 100%. El resto es debido al diferencias de redondeo."),
    "In der Auswertung gibt es eine neue Option, um den Standardbereich feiner abzustufen. Dort werden dann zusätzlich sehr hohe Werte und sehr niedrige Werte angezeigt." : MessageLookupByLibrary.simpleMessage("Hay una opción para mostrar el rango estándar con una graduación más fina. Ahí se pueden mostrar valores muy altos o muy bajos."),
    "In der Auswertung können die Angaben für Material (Katheter, Sensor, Ampulle) mit Nachkommastellen angezeigt werden." : MessageLookupByLibrary.simpleMessage("En la evaluación se pueden mostrar los datos de material (catéter, sensor, ampolla) con decimales."),
    "In der Kachelansicht können die Parameter aller ausgewählten Seiten zusammen in einer Liste eingestellt werden. Dazu gibt es im Titelbereich der Parameterliste neben dem Schliessen-Button einen zusätzlichen Button, mit dem man zwischen den beiden Möglichkeiten umschalten kann." : MessageLookupByLibrary.simpleMessage("En la vista mosaico todos los parámetros de las páginas seleccionadas pueden ser juntados en una lista. Para esto existe un botón adicional en la parte del título de la lista de parámetros junto al botón para cerrar. Aquí puedes seleccionar una de las dos opciones."),
    "In der Legende unter der Tagesgrafik wird die Summe der Kohlenhydrate für den Tag angezeigt." : MessageLookupByLibrary.simpleMessage("La cantidad de carbohidratos diarios se mostrará en la leyenda debajo del gráfico del día."),
    "In der Sprachauswahl ist jetzt auch Slowakisch verfügbar." : MessageLookupByLibrary.simpleMessage("Existe eslovaco en la selección de lenguajes."),
    "In der Tabelle im Glukose Perzentil Diagramm kann man nun zwei neue Spalten ausgeben lassen. Diese beinhalten die durchschnittlichen Kohlenhydrate und Insulineinheiten." : MessageLookupByLibrary.simpleMessage("En la tabla percentil glucosa ahora se puede mostrar dos columnas nuevas. Estas muestran los promedios de carbohidratos y de unidadss de insulina."),
    "In der Tagesgrafik gibt es die Option, HTML-Notizen zu unterdrücken. Manche Uploader schreiben in die Notizen komplette HTML-Seiten rein, was im PDF extrem schlecht darstellbar ist. Deswegen kann man diese mit Setzen der Option ausblenden." : MessageLookupByLibrary.simpleMessage("En la estadística diaria existe la opción de suprimir las notas HTML. Algunos navegadores implementan páginas completas en las notas, esto se muestra malamente en el PDF. Por eso se puede deshabilitar está opción."),
    "In der Tagesgrafik gibt es eine Option, die berechneten IE für aufgenommene Kohlenhydrate anzeigen zu lassen. Der Wert, der unmittelbar unter den Kohlenhydraten angezeigt wird, entspricht dem Bolus, der zu diesem Zeitpunkt für diese Kohlenhydratmenge abgegeben werden sollte. Dieser Wert kann niedriger als der tatsächlich abgegebene Wert ausfallen, weil für die Insulinabgabe noch IOB und andere Faktoren berücksichtigt werden." : MessageLookupByLibrary.simpleMessage("Hay una opción en el gráfico diario para mostrar las UI calculadas para los HC absorbados. El valor mostrado justamente debajo de los HC corresponde al bolo administrado en ese momento. Este valor puede ser menor al valor realmente administrado, por que se suman varios factores (iob etc) para la administración de la insulina."),
    "In der Tagesgrafik gibt es eine Option, mit dem man die verschiedenen Arten der Boli kenntlich machen lassen kann. Wenn diese Option gesetzt ist, wird ein Bolus, der zu einer Mahlzeit abgegeben wurde mit einer anderen Farbe markiert, als ein Bolus zur Korrektur. In der Legende werden dann Korrektur-, Mahlzeiten-Boli und SMB getrennt angezeigt." : MessageLookupByLibrary.simpleMessage("En el gráfico díario, hay una opción, con la cual pueden ser indicados los diferentes tipos de bolos. Si se usa esta opción, un bolo que fue dado para una comida será marcado con un color diferente que un bolo de corrección. En la leyenda, los bolos de comida, de corrección y SMB aparecerán por separado."),
    "In der Tagesgrafik gibt es eine Option, mit der man sich die erfassten Trainingsdaten anzeigen lassen kann. Diese werden dann am unteren Rand über der Tabelle der Glukosewerte eingefügt." : MessageLookupByLibrary.simpleMessage("En el gráfico diario, hay una opción que muestra los datos de entrenamiento. Se ven en la parte inferior de la tabla de los valores de glucosa."),
    "In der Tagesgrafik gibt es eine neue Option, um die Rundung der Insulinwerte auf die maximale Genauigkeit im Profil zu unterbinden. Das macht da Sinn, wo entweder kein Profil vorhanden ist, oder wo Werte mit höherer Genauigkeit als im Profil eingegeben werden." : MessageLookupByLibrary.simpleMessage("En el gráfico diario hay una nueva opción para evitar el redondeo máximo de los valores de insulina a la máxima exactitud. Esto se necesita donde no existe perfil o donde los valores insertados son más exactos que los del perfil."),
    "In der Tagesgrafik kann die Anzeige der SMB nun ausgeblendet werden." : MessageLookupByLibrary.simpleMessage("En el gráfico diario ahora se puede ocultar SMB."),
    "In der Tagesgrafik kann jetzt bei Auswahl der Tages Basalrate angegeben werden, dass der Name des Profils angezeigt wird, das am Beginn des Tages aktiv war. Dieser wird dann so angezeigt, wie ein Profilwechsel um 0 Uhr." : MessageLookupByLibrary.simpleMessage("En el gráfico diario al elegir el perfil diario ahora se puede mostrar el nombre del perfil que se ha utilizado al principio del día. Este se muestra como un cambio de perfil a media noche."),
    "In der Tagesgrafik kann man nun die IOB (Insulin On Board) und COB (Carbs On Board) anzeigen lassen. Die IOB werden am oberen Rand angezeigt, wo auch die Bolusabgaben dargestellt werden, die COB am unteren Rand, wo auch die Kohlenhydrate dargestellt werden." : MessageLookupByLibrary.simpleMessage("En el gráfico diario ahora también se muestran IOB (insulina a bordo) y COB (carbohidratos a bordo). IOB se muestran en la parte superior donde también se muestran los bolos, COB se muestran en la parte de abajo donde también se muestran los carbohidratos."),
    "In der Tagesgrafik kann man nun die temporären Overrides von iLoop auch anzeigen lassen. Es wird der Grund angezeigt. Für genauere Informationen kann das so wie bisher auch im Protokoll angezeigt werden." : MessageLookupByLibrary.simpleMessage("En el gráfico diario ahora se pueden mostrar los datos temporales del iLoop. Se muestra la razón. Para más información se puede consultar el protocolo como antes."),
    "In der Tagesgrafik kann nun angezeigt werden, wie lange die Basalrate auf 0% lief." : MessageLookupByLibrary.simpleMessage("El gráfico diario ahora también se puede mostrar la duración de la tasa basal en 0%."),
    "In der Tagesgrafik werden Profilwechsel nicht mehr angezeigt, wenn sich das Profil beim Wechsel nicht geändert hat. iOSLoop fügt in die Nightscoutdatensätze sehr häufig neue Profile ein, die keine Änderung beinhalten, weil dort zusätzlich andere Konfigurationseinstellungen gespeichert werden." : MessageLookupByLibrary.simpleMessage("En el gráfico diario ya no se muestran cambios de perfil si no cambia el perfil. IosLoop adjunta muchos perfiles en nightscout, que no contienenccambio, por que contienen también valoresdde cconfiguración."),
    "In der Tagesgrafik werden die Insulinangaben jetzt kleiner dargestellt, wenn die Basalrate eine Genauigkeit von mehr als 2 Nachkommastellen hat." : MessageLookupByLibrary.simpleMessage("En el gráfico diario los datos de insulina se muestran más pequeños si el perfil basal contiene más de dos decimales."),
    "In der Tagesgrafik werden jetzt auch Blutzuckermessungen angezeigt. Sie werden als rote Quadrate dargestellt und die zugehörigen Werte in der Tabelle unterhalb der Grafik werden ebenfalls mit roter Schrift angezeigt." : MessageLookupByLibrary.simpleMessage("En el grafico diario ahora se muestran mediciones de glucosa de sangre. Se muestran como cuadrados rojos y sus valores correspondientes en la tabla debajo el gráfico también se muestran con el texto en rojo."),
    "In der Tagesgrafik werden nun SMBs auch angezeigt, wenn die Option für die Darstellung von Insulin akitivert wurde. Man kann festlegen, ob die SMBs an der Glukosekurve oder am Zielwert angezeigt werden." : MessageLookupByLibrary.simpleMessage("En el gráfico diario se muestran los SMB, si la opción para mostrar la insulina es activada. Se puede elegir si se muestran los SMB junto a la curva de la glucosa o al valor objetivo."),
    "In der Tagesgrafik werden nun auch Kohlenhydratkorrekturen angezeigt." : MessageLookupByLibrary.simpleMessage("El gráfico diario ahora también se muestran correcciónes de carbohidratos."),
    "In der Tagesgrafik werden nun auch Reservoirwechsel angezeigt." : MessageLookupByLibrary.simpleMessage("El gráfico diario ahora también se muestra el cambio de depósito."),
    "In der Tagesgrafik werden nun auch bei Anzeige des Zielwertes die temporären Ziele berücksichtigt." : MessageLookupByLibrary.simpleMessage("En el gráfico diario ahora también se muestran los objetivos temporales."),
    "In der Tagesgrafik werden nun auch verzögerte Boli angezeigt." : MessageLookupByLibrary.simpleMessage("El gráfico diario ahora también se muestra el bolo retardado."),
    "In der Tagesgrafik werden nun der geschätzte HbA1C und die prozentuale Menge an Bolusinsulin und Basalinsulin für den Tag angezeigt. Diese Anzeige erfolgt innerhalb der Legende, weshalb diese aktiviert sein muss, damit die Werte angezeigt werden." : MessageLookupByLibrary.simpleMessage("En el gráfico diario se muetra la HbA1C estimada y la cantidad porcentual de insulina de bolo e insulina basal para el día. Esto se muestra en la leyenda, por lo cual se debe activar para poder ver los valores."),
    "In der Tagesgrafik wird jetzt eine Tabelle mit halbstündigen Glukosewerten eingeblendet angezeigt. Diese kann über einen Parameter ausgeschaltet werden." : MessageLookupByLibrary.simpleMessage("En el gráfico diario se muestra una tabla con valores de glucosa a la media hora. Esto puede desactivarse mediante un parámetro."),
    "In der Tagesgrafik wurde \"Training\" in \"Bewegung\" umbenannt. Das passt besser zu den Einträgen in AAPS." : MessageLookupByLibrary.simpleMessage("En el gráfico diario se ha cambiado \"entrenamiento\" por \"actividad\". Esto va mejor con los datos en AAPS."),
    "In der Tagesgraphic werden jetzt Insulinwerte und Kohlenhydratwerte zusammengefasst, wenn es mehrere innerhalb einer Stunde gibt. Die Balken werden nach wie vor für jeden Wert einzeln ausgegeben. Auf diese Art sollte es keine überlappende Ausgabe der Werte mehr geben. Die zusammengefassten Werte werden in eckigen Klammern ausgegeben, um anzuzeigen, dass hier Werte aufsummiert wurden." : MessageLookupByLibrary.simpleMessage("Valores de insulina y carbohidratos se juntan en el grafico diario en caso de que haya varios datos durante una hora. Las barras siguen muestradas individualmente para cada valor. De esta manera, no se deben solapar valores. Para indicar que se resumen valores, serán mostrados en corchetes."),
    "In der Tagesstatistik können nun Spalten für TDD und Kohlenhydrate angezeigt werden." : MessageLookupByLibrary.simpleMessage("En la estatistica diaria ahora se pueden mostrar columnas para carbohidratos y TBD."),
    "In der Tagesstatistik und in den täglichen Grafiken werden jetzt zum Datum die Wochentage mit angezeigt." : MessageLookupByLibrary.simpleMessage("En el diario y los gráficos diarios se muestran la fecha y el dia de la semana."),
    "In der Tagesstatistik werden nun in der Summenzeile die Durchschnittswerte für einige Werte zusätzlich angezeigt." : MessageLookupByLibrary.simpleMessage("En el gráfico diario ahora se muestran adicionalmente promedios de algunos valores en la columna del valor total."),
    "In der Tagesstatistik wurde die Spalte Varianzkoeffizient hinzugefügt (VarK)." : MessageLookupByLibrary.simpleMessage("En el grafico diario se agregó una columna con el coeficiente de variación (VarK)."),
    "In der Tagesstatistik wurden bei unvollständigen Daten teilweise fehlerhafte Werte ausgegeben. Das wurde korrigiert." : MessageLookupByLibrary.simpleMessage("En la estadística diaria tal vez se han mostrado valores erróneos al no insertar datos completos. Esto ha sido corregido."),
    "In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen." : MessageLookupByLibrary.simpleMessage("La variable ENABLE tiene que contener la palabra \"cors\" para que herramientas externas como esta puedan acceder a los datos."),
    "Information" : MessageLookupByLibrary.simpleMessage("Informacíon"),
    "Initiale Version, alles ist neu!" : MessageLookupByLibrary.simpleMessage("Versión inicial, todo es nuevo!"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("Insulina"),
    "Insulin Kohlenhydrate Verhältnis (ICR)" : MessageLookupByLibrary.simpleMessage("Proporción de hidratos de carbono insulina (ICR)"),
    "Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE" : MessageLookupByLibrary.simpleMessage("Relación insulina carbohidratos (ICR)\nX gr carbohidratos para 1 UI"),
    "Insulin Sensitivitäts Faktoren (ISF)" : MessageLookupByLibrary.simpleMessage("Factores de sensibilidad de insulina (ISF)"),
    "Insulin auf maximale Stellen im Profil runden" : MessageLookupByLibrary.simpleMessage("Redondear insulina a máximos dígitos en el perfil"),
    "Insulin-Quelle" : MessageLookupByLibrary.simpleMessage("Fuente de Insulina"),
    "Irgendwas zum Einstellen" : MessageLookupByLibrary.simpleMessage("Algo para ajustar"),
    "Ja" : MessageLookupByLibrary.simpleMessage("Sí"),
    "Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember" : MessageLookupByLibrary.simpleMessage("Enero|Febrero|Marzo|Abril|Mayo|Junio|Julio|Agosto|Septiembre|Octubre|Noviembre|Diciembre"),
    "Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez" : MessageLookupByLibrary.simpleMessage("Ene|Feb|Mar|Abr|May|Jun|Jul|Ago|Sep|Oct|Nov|Dic"),
    "KH" : MessageLookupByLibrary.simpleMessage("CH"),
    "Kalibrierung und blutige Messungen" : MessageLookupByLibrary.simpleMessage("Calibración y medicmedición capilar"),
    "Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Cambio de catéter"),
    "Keine" : MessageLookupByLibrary.simpleMessage("Ninguna"),
    "Keine Änderung" : MessageLookupByLibrary.simpleMessage("Sin cambio"),
    "Klein" : MessageLookupByLibrary.simpleMessage("Pequeño"),
    "Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Carbohidratos"),
    "Kohlenhydrate und Bolusinsulin werden jetzt in den täglichen Grafiken angezeigt" : MessageLookupByLibrary.simpleMessage("Carbohidratos y insulina bolo son mostradas en los graficos diarios"),
    "Korrektur für Datenänderungen in AAPS 3.0" : MessageLookupByLibrary.simpleMessage("Corrección para cambio de datos en AAPS 3.0"),
    "Lade die Basisdaten..." : MessageLookupByLibrary.simpleMessage("Cargando los datos básicos..."),
    "Leer" : MessageLookupByLibrary.simpleMessage("Vacío"),
    "Legende" : MessageLookupByLibrary.simpleMessage("Declaración"),
    "Legende für Katheter- und Sensorwechsel zur Tagesgrafik hinzugefügt." : MessageLookupByLibrary.simpleMessage("Leyenda para cambio de catéter y del sensor a los gráficos díarios añadidos."),
    "Letzte 2 Tage" : MessageLookupByLibrary.simpleMessage("Ultimos 2 dias"),
    "Letzte 2 Wochen" : MessageLookupByLibrary.simpleMessage("Las 2 semanas anteriores"),
    "Letzte 3 Monate" : MessageLookupByLibrary.simpleMessage("Los 3 meses anteriores"),
    "Letzte 3 Tage" : MessageLookupByLibrary.simpleMessage("Ultimos 3 dias"),
    "Letzte 3 Wochen" : MessageLookupByLibrary.simpleMessage("Las 3 semanas anteriores"),
    "Letzte Unterzuckerung" : MessageLookupByLibrary.simpleMessage("Última hipoglucemia"),
    "Letzte Woche" : MessageLookupByLibrary.simpleMessage("Semana anterior"),
    "Letzten Messwert in der Titelzeile anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar el último valor medido en la barra de título"),
    "Letzter Behandlungswert" : MessageLookupByLibrary.simpleMessage("Último valor de tratamiento"),
    "Letzter Glukosewert" : MessageLookupByLibrary.simpleMessage("Último valor de glucosa"),
    "Letzter Monat" : MessageLookupByLibrary.simpleMessage("El mes anterior"),
    "Linien um Bereiche" : MessageLookupByLibrary.simpleMessage("Líneas por sector"),
    "Loopdaten verbergen (die auf diese Art markierten Optionen ignorieren)" : MessageLookupByLibrary.simpleMessage("Esconder datos que revelan el bucle cerrado (ignorar el señalando en otro color)"),
    "Löschen" : MessageLookupByLibrary.simpleMessage("Borrar"),
    "Mahlzeitenbolus_bolus to handle a meal" : MessageLookupByLibrary.simpleMessage("Bolo comida"),
    "Man kann jetzt mehrere Benutzer anlegen. Das ist nützlich, um mehrere Nightscout-Instanzen auszuwerten (z.B. für Ärzte, Betreuer oder den Entwickler dieser Software)" : MessageLookupByLibrary.simpleMessage("Se pueden inserter varios usarios. Esto es practico para usar varias paginas Nightsout (para doctores, enfermeros, productores de este software)"),
    "Material mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Materiál con décimas"),
    "Max" : MessageLookupByLibrary.simpleMessage("Max"),
    "Max Mustermann" : MessageLookupByLibrary.simpleMessage("Juan Gómez"),
    "Maximaler Glukosewert in Grafiken:" : MessageLookupByLibrary.simpleMessage("Valor máximo de glucosa en gráfico:"),
    "Maximalwert für Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Valor máximo para carbohidratos"),
    "Median" : MessageLookupByLibrary.simpleMessage("Medio"),
    "Mehr gibt es dazu eigentlich nicht zu sagen." : MessageLookupByLibrary.simpleMessage("No hay más que decir."),
    "Mehrfache Datensätze kennzeichnen" : MessageLookupByLibrary.simpleMessage("Marcar múltiples registros"),
    "Menü" : MessageLookupByLibrary.simpleMessage("Menú"),
    "Mess-\nwerte" : MessageLookupByLibrary.simpleMessage("Valores medidos"),
    "Min" : MessageLookupByLibrary.simpleMessage("Min"),
    "Mit Google Drive synchronisieren" : MessageLookupByLibrary.simpleMessage("Sincronizar con Google Drive"),
    "Mittel-\nwert" : MessageLookupByLibrary.simpleMessage("Valor medio"),
    "Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|Sonntag" : MessageLookupByLibrary.simpleMessage("Lunes|Martes|Miercoles|Jueves|Viernes|Sabado|Domingo"),
    "Mo|Di|Mi|Do|Fr|Sa|So" : MessageLookupByLibrary.simpleMessage("Lu|Ma|Mier|Jue|Vier|Sa|Do"),
    "Nacht (21:00 - 05:59)" : MessageLookupByLibrary.simpleMessage("Noche (21:00 - 05:59)"),
    "Nahe zusammen liegende Werte aufsummieren" : MessageLookupByLibrary.simpleMessage("Sumar valores semejantes"),
    "Name" : MessageLookupByLibrary.simpleMessage("Nombre"),
    "Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat." : MessageLookupByLibrary.simpleMessage("Día de nacimiento, nombre y la fecha de inicio de la diabetes, insulina pueden dejarse en blanco, sin tener efectos negativos en la presentación del PDF."),
    "Nein" : MessageLookupByLibrary.simpleMessage("No"),
    "Neue Option im Profil, um fortlaufende Zeiten mit gleichen Werten zu einem Eintrag zusammen zu fassen." : MessageLookupByLibrary.simpleMessage("Nueva opción en el perfil resumir tiempo continuo con los mismos valores a un ingreso."),
    "Neuer Parameter für die Tagesgrafik, der festlegt, ob die Linien für die Notizen unter der Grafik bis zur Glukosekurve gezeichnet werden sollen oder nicht." : MessageLookupByLibrary.simpleMessage("Nuevo parámetro para el gráfico diario que determina si las líneas de las notas deben establecerse hasta la curva de glucosa o no."),
    "Neues PDF für eine Wochengrafik hinzugefügt, auf der die Glukosekurven der Woche übereinander gelegt werden." : MessageLookupByLibrary.simpleMessage("Añadido nuevo PDF para un gráfico semanal en el que las curvas de glucosa de la semana se colocan una sobre la otra."),
    "Neuester Tag zuerst" : MessageLookupByLibrary.simpleMessage("Empezando con el dia reciente"),
    "Niedrigster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Valor más bajo en periodo"),
    "Night-Watch" : MessageLookupByLibrary.simpleMessage("Night-Watch"),
    "Night-Watch zeigt nun auch Werte an, wenn diese von mehreren Uploadern innerhalb kurzer Zeit mehrfach in Nightscout gespeichert wurden. Das sollte man zwar möglichst vermeiden, aber nun kann Night-Watch auch damit umgehen." : MessageLookupByLibrary.simpleMessage("Night-Watch zeigt nun auch Werte an, wenn diese von mehreren Uploadern innerhalb kurzer Zeit mehrfach in Nightscout gespeichert wurden. Das sollte man zwar möglichst vermeiden, aber nun kann Night-Watch auch damit umgehen."),
    "Nightscout Berichte" : MessageLookupByLibrary.simpleMessage("Informes Nightscout"),
    "Nightscout Reporter ist nun auch grösstenteils in Spanisch und Polnisch verfügbar. Entsprechende Buttons wurden dem Hauptmenü hinzugefügt. Danke an die fleissigen Übersetzer :)." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter ahora también está disponible en Español y Polaco. Se han añadido los botones correspondientes al menú principal. Gracias a los traductores diligentes :)."),
    "Nightscout Reporter kann nun auch auf Portugiesisch verwendet werden." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter ahora puede ser usado en portugués."),
    "Nightscout Reporter kann nun auch in Japanisch verwendet werden." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter ahora puede ser usado en japonés."),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("Página Nightscout"),
    "Nightscout Url in der Fusszeile des PDFs anzeigen" : MessageLookupByLibrary.simpleMessage("Mostral Nightscout Url en el pie de la página PDF"),
    "Normal" : MessageLookupByLibrary.simpleMessage("Normal"),
    "Notiz" : MessageLookupByLibrary.simpleMessage("Nota"),
    "Notiz-Linien bis zur Kurve zeichnen" : MessageLookupByLibrary.simpleMessage("Conectar lineas de información a la curva"),
    "Notizen" : MessageLookupByLibrary.simpleMessage("Notas"),
    "Nur letzte Basalrate ausgeben" : MessageLookupByLibrary.simpleMessage("Solo mostrar perfil basal reciente"),
    "Nur letztes Profil ausgeben" : MessageLookupByLibrary.simpleMessage("Solo mostrar perfil reciente"),
    "Nur mehrfache Datensätze anzeigen" : MessageLookupByLibrary.simpleMessage("Solo mostrar multiples registros"),
    "Ok" : MessageLookupByLibrary.simpleMessage("Ok"),
    "Optionen" : MessageLookupByLibrary.simpleMessage("Opciones"),
    "Optionen für die PDFs, die eine eindeutige Beziehung zu einem laufenden Loop haben, werden nun in Blau dargestellt. Das vereinfacht es, PDFs zu erstellen, denen man nicht ohne Weiteres entnehmen kann, dass ein Loop vorliegt. Dazu müssen nur die Haken bei den blauen Optionen entfernt werden." : MessageLookupByLibrary.simpleMessage("Opciónes del PDF relacionadas con el lazo en marcha ahora son mostradas en azul. Esto simplifica crear PDFs, en los que no se nota desde el principio que se trata de un bucle cerrado. Para esto solo hay que quitar las opciones marcadas en azul."),
    "PDF anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar PDF"),
    "PDF erneut erzeugen" : MessageLookupByLibrary.simpleMessage("Volver a crear PDF"),
    "PDF erzeugen" : MessageLookupByLibrary.simpleMessage("Generar PDF"),
    "PDF für Profildaten" : MessageLookupByLibrary.simpleMessage("PDF para los datos del perfil"),
    "PDF herunterladen (bei einigen Browsern benötigt)" : MessageLookupByLibrary.simpleMessage("Descargar PDF (necesario para algunos navegadores)"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("Abrir PDF en la misma ventana"),
    "PGR" : MessageLookupByLibrary.simpleMessage("PGR"),
    "Patient Glykämischer Status (PGS)" : MessageLookupByLibrary.simpleMessage("Estado glucémico paciente (PGS)"),
    "Pausiert" : MessageLookupByLibrary.simpleMessage("Pausado"),
    "Polski" : MessageLookupByLibrary.simpleMessage("Polski"),
    "Português" : MessageLookupByLibrary.simpleMessage("Português"),
    "Problem auf GitHub melden" : MessageLookupByLibrary.simpleMessage("Comunicar el problema en GitHub"),
    "Profil" : MessageLookupByLibrary.simpleMessage("Perfil"),
    "Profil-Basalrate" : MessageLookupByLibrary.simpleMessage("Perfil basal"),
    "Profileinstellungen" : MessageLookupByLibrary.simpleMessage("Configuraciónes de perfil"),
    "Profilwechsel" : MessageLookupByLibrary.simpleMessage("Cambio de perfil"),
    "Protokoll" : MessageLookupByLibrary.simpleMessage("Protocolo"),
    "Prozent" : MessageLookupByLibrary.simpleMessage("Porcentaje"),
    "Quelle: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)" : MessageLookupByLibrary.simpleMessage("Origen: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)"),
    "Querformat" : MessageLookupByLibrary.simpleMessage("Horizontal"),
    "Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse." : MessageLookupByLibrary.simpleMessage("Cambio del orden de las páginas PDF - tabla de percentil ahora viene después del análisis."),
    "Reservoirwechsel" : MessageLookupByLibrary.simpleMessage("Cambio deposito"),
    "SMB" : MessageLookupByLibrary.simpleMessage("SMB"),
    "SMB Werte anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar valores SMB"),
    "SMB an der Kurve platzieren" : MessageLookupByLibrary.simpleMessage("Mostrar SMB en la linea"),
    "Schliessen" : MessageLookupByLibrary.simpleMessage("Cerrar"),
    "Schliessen Button im Nachrichtenbereich hinzugefügt." : MessageLookupByLibrary.simpleMessage("Añadido botón cerrar en el panel de mensajes."),
    "Schritte" : MessageLookupByLibrary.simpleMessage("Pasos"),
    "Sechs Monate vorher" : MessageLookupByLibrary.simpleMessage("Seis meses antes"),
    "Sechzehn" : MessageLookupByLibrary.simpleMessage("Dieciséis"),
    "Sekunden anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar segundos"),
    "Sensorwechsel" : MessageLookupByLibrary.simpleMessage("Cambio de sensor"),
    "Shortcut anlegen" : MessageLookupByLibrary.simpleMessage("Crear atajo"),
    "Shortcut ändern" : MessageLookupByLibrary.simpleMessage("Cambiar atajo"),
    "Shortcuts" : MessageLookupByLibrary.simpleMessage("Shortcuts"),
    "Skala" : MessageLookupByLibrary.simpleMessage("Escala"),
    "Slovenský" : MessageLookupByLibrary.simpleMessage("Slovenský"),
    "Soll der Benutzer mit der URL" : MessageLookupByLibrary.simpleMessage("El usuario con la dirección URL debe"),
    "Soll der Shortcut mit der Bezeichnung" : MessageLookupByLibrary.simpleMessage("El atajo con el nombre se debe"),
    "Soll der Zeitraum" : MessageLookupByLibrary.simpleMessage("El periodo se debe"),
    "Soll die Einheit zur Glukosemessung" : MessageLookupByLibrary.simpleMessage("La unidad para medir la glucemia debe"),
    "Soll die Formularauswahl mit der aktuellen Auswahl ersetzt werden?" : MessageLookupByLibrary.simpleMessage("Quieres sustituir la selección de formularios con la selección actual?"),
    "Soll die URL" : MessageLookupByLibrary.simpleMessage("URL debe"),
    "Spalte Basal anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar columna para basal"),
    "Spalte Bolus anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar columna para bolo"),
    "Spalte HbA1c" : MessageLookupByLibrary.simpleMessage("Columna HbA1c"),
    "Spalte HbA1c zu Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Añadido columna HbA1c a las estatistica diaria"),
    "Spalte IE anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar columna UI"),
    "Spalte KH anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar columna HC"),
    "Spalte Kohlenhydrate anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar columna carbohidratos"),
    "Spalte Max anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar columna máximo"),
    "Spalte Messwerte" : MessageLookupByLibrary.simpleMessage("Columna de valores de medición"),
    "Spalte Messwerte anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar columnas valores"),
    "Spalte Min anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar columna mínimo"),
    "Spalte Mittelwert anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar columna promedio"),
    "Spalte Standardabweichung" : MessageLookupByLibrary.simpleMessage("Columna desviación estandar"),
    "Spalte Std.Abw. anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar columna desv/hora"),
    "Spalte Variationskoeffizient" : MessageLookupByLibrary.simpleMessage("Columna coeficiente de variación"),
    "Spalten Min / Max anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar columna min / máx"),
    "Spalten Perzentile" : MessageLookupByLibrary.simpleMessage("Columna percentiles"),
    "Spalten für 10% und 90% anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar columnas para 10% y 90%"),
    "Spaltenbreite der Informationen in der Analyse erhöht" : MessageLookupByLibrary.simpleMessage("Ampliado columna de información en la pagina analisis"),
    "Speichern" : MessageLookupByLibrary.simpleMessage("Guardar"),
    "Spenden" : MessageLookupByLibrary.simpleMessage("Donación"),
    "Standard_theme selection - standard" : MessageLookupByLibrary.simpleMessage("Por defecto"),
    "Standardabweichung" : MessageLookupByLibrary.simpleMessage("Desviación estándar"),
    "Standardabweichung statt Anzahl" : MessageLookupByLibrary.simpleMessage("Desviación estándar en lugar de número"),
    "Standardbereich mit feinerer Abstufung" : MessageLookupByLibrary.simpleMessage("Rango estándar con graduación más fina"),
    "Standardgrenzwerte" : MessageLookupByLibrary.simpleMessage("Límites estándar"),
    "Startstunde" : MessageLookupByLibrary.simpleMessage("Hora de inicio"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("h\ndesv."),
    "Stunden" : MessageLookupByLibrary.simpleMessage("Horas"),
    "Stündliche Statistik" : MessageLookupByLibrary.simpleMessage("Estadística por horas"),
    "Summe" : MessageLookupByLibrary.simpleMessage("Total"),
    "Summen für Bolus Insulin, Basalrate für den Tag und Basalrate aus dem Profil zur Tagesgrafik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Añadido sumas para insulina de bolo, el perfil básico para el día y el perfil básico a los gráficos de día"),
    "Symbole (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Símbolos (catéter etc)"),
    "Synchronisierung aufheben" : MessageLookupByLibrary.simpleMessage("Deshabilitar sincronización"),
    "TDD" : MessageLookupByLibrary.simpleMessage("TDD"),
    "TDD anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar TTD"),
    "Tabelle" : MessageLookupByLibrary.simpleMessage("Tabla"),
    "Tabelle mit Glukosewerten" : MessageLookupByLibrary.simpleMessage("Tabla con valores glucosa"),
    "Tag (08:00 - 17:59)" : MessageLookupByLibrary.simpleMessage("Día (08:00 - 17:59)"),
    "Tages-Basalrate" : MessageLookupByLibrary.simpleMessage("Perfil basal diario"),
    "Tagesanalyse" : MessageLookupByLibrary.simpleMessage("Analisis diaria"),
    "Tagesbasalrate verwenden" : MessageLookupByLibrary.simpleMessage("Usar tasa basal diaria"),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("Grafico diario"),
    "Tagesgrafikparameter zur Anzeige der Legende" : MessageLookupByLibrary.simpleMessage("Parámetros gráficos diarios para mostrar la leyenda"),
    "Tagesgrafikparameter zur Anzeige von Notizen" : MessageLookupByLibrary.simpleMessage("Parámetros gráficos diarios para la visualización de notas"),
    "Tagesgrafikparameter zur umgekehrten Sortierung hinzugefügt. Die Tage werden damit beginnend mit dem höchsten Datum ausgegeben." : MessageLookupByLibrary.simpleMessage("Añadido parámetros gráfico diario con clasificación inversa. Los días se muestran a partir de la fecha más reciente."),
    "Tagesnamen in Grafik anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar dias en el grafico"),
    "Tagesprofil" : MessageLookupByLibrary.simpleMessage("Perfil de día"),
    "Tagesstartprofil anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar perfil diario"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("Estatistica diaria"),
    "Tagesstunden" : MessageLookupByLibrary.simpleMessage("Horas de dia"),
    "Tagestrend" : MessageLookupByLibrary.simpleMessage("Tendencia diaria"),
    "Template" : MessageLookupByLibrary.simpleMessage("Patron"),
    "Temporäre Basalraten" : MessageLookupByLibrary.simpleMessage("Tasas basales temporales"),
    "Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt" : MessageLookupByLibrary.simpleMessage("Perfiles temporales con valores absolutes son mostrados correctamente"),
    "Temporäre Overrides" : MessageLookupByLibrary.simpleMessage("Sustituciónes temporales"),
    "Temporäre Profilwechsel werden jetzt erkannt und in der Tagesgrafik korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Ahora se detectan los cambios de perfil y son mostrados correctamente en el gráfico diario."),
    "Temporäre Ziele" : MessageLookupByLibrary.simpleMessage("Objetivos temporales"),
    "Titelangaben für Datumsbereiche auf den PDFs vereinheitlicht" : MessageLookupByLibrary.simpleMessage("Información título estandardizado para intervalos de fechas en los archivos PDF"),
    "Trend" : MessageLookupByLibrary.simpleMessage("Tendencia"),
    "Trendpfeil" : MessageLookupByLibrary.simpleMessage("Flecha tendencia"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("Hora"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("Hora"),
    "Umbruch" : MessageLookupByLibrary.simpleMessage("Salto de línea"),
    "Unbegrenzt" : MessageLookupByLibrary.simpleMessage("Sin límite"),
    "Unterzuckerungen anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar hipoglycemias"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("URL Nightscout API (https://xxx.herokuapp.com)"),
    "VarK\nin %" : MessageLookupByLibrary.simpleMessage("VarK\nin %"),
    "Verbinde zu Google Drive..." : MessageLookupByLibrary.simpleMessage("Conectando a Google Drive..."),
    "Verbinde zu Google..." : MessageLookupByLibrary.simpleMessage("Conectar con Google..."),
    "Verbindung zu Google Drive herstellen" : MessageLookupByLibrary.simpleMessage("Establecer conección con Google Drive"),
    "Verbindung zu Google Drive trennen" : MessageLookupByLibrary.simpleMessage("Desconectar de Google Drive"),
    "Vergleich" : MessageLookupByLibrary.simpleMessage("Comparación"),
    "Version" : MessageLookupByLibrary.simpleMessage("Versión"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("Distribuición"),
    "Verteilung der Glukosewerte" : MessageLookupByLibrary.simpleMessage("Distribución de valores de glucosa"),
    "Verzögerter Bolus" : MessageLookupByLibrary.simpleMessage("Bolo extendido"),
    "Vier" : MessageLookupByLibrary.simpleMessage("Cuatro"),
    "Viertes Quartal" : MessageLookupByLibrary.simpleMessage("Cuarto trimestre"),
    "ViewWhatsnewComponent0__message_47" : m0,
    "ViewWhatsnewComponent0__message_6" : m1,
    "ViewWhatsnewComponent0__message_9" : m2,
    "Von" : MessageLookupByLibrary.simpleMessage("De"),
    "Vor der Erzeugung eines PDFs wird noch ein Dialog angezeigt, auf dem man Parameter für alle erzeugten PDFs eingeben kann. Man kann dort den Zielbereich auf den Standardbereich festlegen, den Ärzte gerne sehen. Das hat Auswirkungen auf alle Darstellungen des Zielbereichs, sowie auf die Verteilung der Werte innerhalb und ausserhalb des Zielbereichs. Man kann dort auch den Maximalwert für Glukose in Grafiken festlegen. Dieser Wert wird in der Tagesgrafik, dem Perzentil Diagramm und der Wochengrafik verwendet. Wenn er auf \"Automatisch\" gesetzt wird, wird der Maximalwert wie bisher auch aus den vorhandenen Daten ermittelt. Ausserdem kann man hier angeben, ob man den aktuellen Zeitraum erzeugen möchte oder einen Vergleichszeitraum. Das ist nützlich, um dem Arzt die Gegenüberstellung von Werten der Vergangenheit und jetzt zu zeigen." : MessageLookupByLibrary.simpleMessage("Antes de crear el PDF se muestra un diálogo para elegir los parámetros para los PDF. Se puede definir el rango de los valores estándar como lo quieren ver los médicos. Esto se aplica a todos los gráficos que muestran estos valores, también afecta a la distribución de los valores dentro y fuera del rango. Aquí también se puede definir un valor de glucosa máximo para los gráficos. Este será usado en el gráfico diario, en el gráfico del percentil y en el gráfico semanal. Si se usa el valor automático este será calculado a base de los datos. Además aquí puedes elegir si quieres usar el periodo actual o un periodo de comparación. Esto es práctico para comparar con el médico valores de periodos actuales y pasados."),
    "Warnung" : MessageLookupByLibrary.simpleMessage("Advertencia"),
    "Warum werde ich mit mehreren Buttons genervt, statt eine einzelne PDF angezeigt zu kriegen?" : MessageLookupByLibrary.simpleMessage("¿Por qué me molestan varios botones en lugar de obtener un PDF único?"),
    "Was bisher geschah..." : MessageLookupByLibrary.simpleMessage("Lo que sucedió hasta ahora..."),
    "Wechsel" : MessageLookupByLibrary.simpleMessage("Cambio"),
    "Wechsel (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Cambio (catéter etc.)"),
    "Weihnachten_theme selection - christmas" : MessageLookupByLibrary.simpleMessage("Navidad"),
    "Wenn Night-Watch beim Aufruf feststellt, dass noch keine Konfiguration vorgenommen wurde, dann kann man über das altbekannte Settingsfenster seine Einstellungen vornehmen. Das kommt vor, wenn man die Seite als WebApp installiert, da dort der Browserspeicher, in dem die Konfiguration gehalten wird, normalerweise noch nicht befüllt wurde." : MessageLookupByLibrary.simpleMessage("Si Night-Watch detecta que aún no se ha realizado ninguna configuración, puede realizar sus ajustes a través de la ventana de configuración conocida. Esto sucede cuando instala la página como una WebApp, porque la memoria del navegador en la que se encuentra la configuración generalmente aún no se ha cargado."),
    "Wenn Sonderzeichen in den Daten vorhanden sind (z.B. Smileys in den Notizen), führte das zu einem Absturz während der PDF-Erstellung. Das wurde behoben, indem diese Sonderzeichen aus der Ausgabe entfernt werden." : MessageLookupByLibrary.simpleMessage("Caracteres especiales en los datos (como emoticonos en las notas) llevaron a fallar la creación del PDF. Esto se ha solucionado eliminando estos caracteres especiales."),
    "Wenn auf der Profilseite leere Spalten vorkommen, führt das nicht mehr zu einer leeren Seite." : MessageLookupByLibrary.simpleMessage("Si en la página del perfil existen columnas vacias ya no se producen páginas vacias."),
    "Wenn das erzeugte PDF zu gross wird, wird es nun auf mehrere PDF-Dateien aufgeteilt. In diesem Fall wird es nicht direkt geöffnet, sondern es wird eine Liste mit durchnummerierten Buttons angezeigt. Diese Buttons öffnen bei Betätigung das entsprechende PDF und erhalten einen Haken, um anzuzeigen, dass es geöffnet wurde. Das sollte es erleichtern, die PDFs nacheinander zu öffnen, weil normalerweise der Browser im Hintergrund verschwindet, wenn ein neues Fenster aufgemacht wird." : MessageLookupByLibrary.simpleMessage("Si el PDF generado es demasiado grande, ahora se divide en varios archivos PDF. En este caso no se abrirá directamente, pero aparecerá una lista de botones numerados. Estos botones abren el PDF correspondiente y se indicará que se ha abierto. Debería ser más fácil abrir los archivos PDF uno tras otro, por que generalmente el navegador en segundo plano desaparece cuando se abre una ventana nueva."),
    "Wenn der Zeitraum leer ist, wird der Button für die Auswahl deutlich markiert und in dem Dialog zur Auswahl wird in der Titelzeile ein Hinweis darauf angezeigt." : MessageLookupByLibrary.simpleMessage("Si el período está vacío, el botón de selección estára marcado claramente y en el cuadro de diálogo aparece una información."),
    "Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet" : MessageLookupByLibrary.simpleMessage("Si los limites de los valores en Nightscout (BG_TARGET_BOTTOM y BG_TARGET_TOP) corresponden a los valores 70 y 180 no se muestran los objectivos estandar en la pagina analisis"),
    "Wenn die Synchronisierung mit Google Drive aufgehoben wird, wird die Berechtigung nun korrekt zurückgesetzt. Wenn man sich danach wieder synchronisieren will, werden nochmal die Berechtigungen abgefragt." : MessageLookupByLibrary.simpleMessage("Al cancelar la sincronizacion con Google Drive se reconstruye todo correctamente. Si se vuelve a activar la sincronizacion se vuelven a pedir derechos."),
    "Wenn im CGP ein Wert den Maximalwert der Skala überschreitet, wird die entsprechende Ecke mit einem gelben Kreis markiert." : MessageLookupByLibrary.simpleMessage("Si se sale un valor en el CGP del máximo de la escala, la punta se indicará con un circulo amarillo."),
    "Wenn in Nightscout die Daten für die täglich erzielten Schritte vorhanden sind, dann werden diese in der Tagesgrafik angezeigt, wenn dort die Option \"Bewegung anzeigen\" aktiviert ist." : MessageLookupByLibrary.simpleMessage("Si hay datos de Nightscout contando los pasos diarios, estos se mostrarán en el gráfico diario si se activa la opción \"mostrar movimiento\"."),
    "Wenn in den Einstellungen eine Verbindung zum Google-Konto hergestellt wird, werden die Cookies von Google verwendet und die Daten nicht mehr im localStorage des Browsers gespeichert, sondern im AppStorage auf Google Drive. Auf diese Art kann man die Daten zentralisiert verwalten und hat diese in jedem Browser zur Verfügung, der mit dem angegebenen Google Konto verbunden ist." : MessageLookupByLibrary.simpleMessage("En caso de que en los ajustes conectes con una cuenta de Google, seran utilizados los cookies por Google y los datos no se almacenan en el localStorage del navegador, pero en la AppStorage de Google drive. De esta manera, usted puede gestionar los datos centralizados y los tiene disponible en cualquier navegador, asociado a la cuenta de Google especificada."),
    "Wenn in den Einträgen Lücken von 15 Minuten oder mehr sind, führen diese zu einer Unterbrechung der Linie in der Tagesgrafik." : MessageLookupByLibrary.simpleMessage("Si faltan datos para 15 minutos o más, la linéa en el grafico diario será interrumpida."),
    "Wenn in einem Profil mehr Zeiten erfasst wurden, als auf eine Seite passen, wurden diese fortlaufend in die nächste Seite hineingeschrieben. Jetzt wird an geeigneter Stelle eine neue Seite ausgegeben." : MessageLookupByLibrary.simpleMessage("Si en un perfil han sido acumulados más tiempos que cabian en una página, estos fueron escritos en forma continua en la página siguiente. Ahora se crea una nueva página en un lugar adecuado."),
    "Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt." : MessageLookupByLibrary.simpleMessage("Si no hay datos disponibles, se crean páginas en blanco con una nota correspondiente."),
    "Wert" : MessageLookupByLibrary.simpleMessage("Valor"),
    "Wert & Prozent" : MessageLookupByLibrary.simpleMessage("Valor & Porcentaje"),
    "Werte über dem Maximum als Pfeile darstellen" : MessageLookupByLibrary.simpleMessage("Mostrar valores por encima del máximo como flecha"),
    "Willkommen" : MessageLookupByLibrary.simpleMessage("Bienvenido"),
    "Willkommen bei Nightscout Reporter!" : MessageLookupByLibrary.simpleMessage("Bienvenido a Nightscout Reporter!"),
    "Wochengrafik" : MessageLookupByLibrary.simpleMessage("Grafico semanal"),
    "Zeilen mit gleichen Werten zusammenfassen" : MessageLookupByLibrary.simpleMessage("Sumar lineas con valores identicos"),
    "Zeit" : MessageLookupByLibrary.simpleMessage("Tiempo"),
    "Zeitraum" : MessageLookupByLibrary.simpleMessage("Periodo"),
    "Zeitraum festlegen" : MessageLookupByLibrary.simpleMessage("Determinar periodo"),
    "Zeitraum:" : MessageLookupByLibrary.simpleMessage("Periodo:"),
    "Zeitzone" : MessageLookupByLibrary.simpleMessage("Zona horaria"),
    "Zielbereich" : MessageLookupByLibrary.simpleMessage("Rango Objetivo"),
    "Zielbereich mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Objectivo con décimas"),
    "Zielwert anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar número objetivo"),
    "Zugriffsschlüssel" : MessageLookupByLibrary.simpleMessage("Clave de acceso"),
    "Zur Berechnung der Analyse, Tagesstatistik und Tagesgrafik wird nun die gleiche Datenbasis verwendet, so dass die Werte auf allen PDFs gleich sind." : MessageLookupByLibrary.simpleMessage("Para el cálculo de la análisis, la estadística diaria y el gráfico diario ahora se utilizan los mismos datos, así todos los datos en todos PDF son iguales."),
    "Zur Kachelansicht" : MessageLookupByLibrary.simpleMessage("Ir a la vista de mosaico"),
    "Zur Listenansicht" : MessageLookupByLibrary.simpleMessage("Ir a vista de lista"),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("Funciones adicionales"),
    "Zusätzliche Informationen zu den PDFs und im UI hinzugefügt" : MessageLookupByLibrary.simpleMessage("Añadido información adicional sobre los documentos PDF y en Ui"),
    "Zusätzliche Spalte anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar columna additional"),
    "Zwei" : MessageLookupByLibrary.simpleMessage("Dos"),
    "Zweites Quartal" : MessageLookupByLibrary.simpleMessage("Segundo trimestre"),
    "_msgAdjustCalc" : m3,
    "_msgAdjustLab" : m4,
    "_msgAdjustTarget" : m5,
    "_msgLowerGlucHint" : m6,
    "_msgPageCount" : m7,
    "_msgPageCountEst" : m8,
    "_msgRaiseGlucHint" : m9,
    "ab 4,6" : MessageLookupByLibrary.simpleMessage("a partir de 4,6"),
    "bis" : MessageLookupByLibrary.simpleMessage("hasta"),
    "dd.MM." : MessageLookupByLibrary.simpleMessage("dd.MM."),
    "dd.MM.yyyy" : MessageLookupByLibrary.simpleMessage("dd/MM/yyyy"),
    "ersetzt werden?" : MessageLookupByLibrary.simpleMessage("ser sustituido?"),
    "extrem hohes Risiko" : MessageLookupByLibrary.simpleMessage("riesgo muy alro"),
    "g / Stunde" : MessageLookupByLibrary.simpleMessage("gr / hora"),
    "geringes Risiko" : MessageLookupByLibrary.simpleMessage("riesgo bajo"),
    "gesch. HbA1c" : MessageLookupByLibrary.simpleMessage("hbA1c estim."),
    "hohes Risiko" : MessageLookupByLibrary.simpleMessage("riesgo alto"),
    "https://nightscout-reporter.zreptil.de/beta" : MessageLookupByLibrary.simpleMessage("https://nightscout-reporter.zreptil.de/beta"),
    "iOS Loop missbraucht die Profiltabelle dazu, seine eigenen Settings zu speichern, was bei Benutzern dieser Software dazu führte, dass die Tabelle Profil nicht korrekt geladen werden kann. Deshalb gibt es jetzt in den Einstellungen die Möglichkeit, die Anzahl der Datensätze, die aus der Profiltabelle geladen werden einzuschränken." : MessageLookupByLibrary.simpleMessage("el bucle de iOS hace un uso indebido de la tabla de perfiles para guardar su propia configuración, lo que provocó que no se cargaba correctamente la tabla de perfiles. Por lo tanto, ahora existe la posibilidad en la configuración de limitar el número de registros que se cargan desde la tabla de perfiles."),
    "mg/dL" : MessageLookupByLibrary.simpleMessage("mg/dL"),
    "mit dem Zeitraum" : MessageLookupByLibrary.simpleMessage("con el periodo"),
    "mit der Einheit" : MessageLookupByLibrary.simpleMessage("con la unidad"),
    "mmol/L" : MessageLookupByLibrary.simpleMessage("mmol/L"),
    "moderates Risiko" : MessageLookupByLibrary.simpleMessage("riesgo moderado"),
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
    "sehr geringes Risiko" : MessageLookupByLibrary.simpleMessage("riesgo muy bajo"),
    "tl;dr" : MessageLookupByLibrary.simpleMessage("tl;dr"),
    "verwerfen" : MessageLookupByLibrary.simpleMessage("descartar"),
    "vom Benutzer wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("ser borrada por el usuario?"),
    "wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("verdaderamente ser eliminado?"),
    "zu Vergleichszwecken (z.B. Arzt)" : MessageLookupByLibrary.simpleMessage("para comparaciónes (p.e. médicos)"),
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Basal por día"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Bolo por día"),
    "Ø ICR/Stunde" : MessageLookupByLibrary.simpleMessage("Ø ICR/hora"),
    "Ø ISF/Stunde" : MessageLookupByLibrary.simpleMessage("Ø ISF/hora"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("Insulina Ø por día"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("Proporción de insulina Ø"),
    "Ø KH pro Mahlzeit" : MessageLookupByLibrary.simpleMessage("Ø HC por comida"),
    "Ø KH pro Tag" : MessageLookupByLibrary.simpleMessage("Ø HC por día"),
    "Ø Microbolus pro Tag" : MessageLookupByLibrary.simpleMessage("Ø micro bolo por día"),
    "Ø Zuckerwert" : MessageLookupByLibrary.simpleMessage("Valor glucosa Ø"),
    "Überprüfe Zugriff auf Nightscout ..." : MessageLookupByLibrary.simpleMessage("Verifico acceso a Nightscout..."),
    "Übersetzungen korrigiert" : MessageLookupByLibrary.simpleMessage("Traducción corregida"),
    "日本の" : MessageLookupByLibrary.simpleMessage("日本の")
  };
}
