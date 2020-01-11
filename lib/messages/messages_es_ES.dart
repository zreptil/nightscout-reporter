// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es_ES locale. All the
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
  get localeName => 'es_ES';

  static m0(count) => "${Intl.plural(count, zero: '', one: '1 página', other: '${count} páginas')}";

  static m1(count) => "${Intl.plural(count, zero: '', one: '1 página o más', other: '${count} páginas o más')}";

  static m2(value) => "Perfil basal diario (${value})";

  static m3(value) => "Tasas basales del perfil (${value})";

  static m4(value) => "Insulina bolo (${value})";

  static m5(value) => "VarK [${value}%]";

  static m6(scale, intercept, slope) => "Calibración (scale ${scale} / intercept ${intercept} / slope ${slope})";

  static m7(value) => "Bolo de comida (${value})";

  static m8(value) => "Carbohidratos (${value}g)";

  static m9(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt}dias por catéter)', other: '(${txt} dias por catéter)')}";

  static m10(name, from, to) => "${name} ${from} => ${to}";

  static m11(url) => "Compruebe el acceso a ${url}...";

  static m12(value) => "Bolo de corrección (${value})";

  static m13(value) => "${Intl.plural(value, zero: 'ningún dato', one: '1 dato', other: '${value} datos')}";

  static m14(value) => "${value} dias";

  static m15(hours, minutes) => "${hours} h ${minutes} min";

  static m16(beg, end) => "${beg} - ${end}";

  static m17(max) => "malo (mayor a ${max})";

  static m18(min, max) => "bueno (${min} a ${max})";

  static m19(min) => "no disponible (menor a ${min})";

  static m20(min, max) => "muy bueno (${min} a ${max})";

  static m21(unit, value) => "Intensidad hiperglucemia\n[${unit} x min²]";

  static m22(unit) => "La intensidad de hiperglucemias por día (valores bajo o igual ${unit}).";

  static m23(unit, value) => "Intensidad hipoglucemia\n[${unit} x min²]";

  static m24(unit) => "La intensidad de hipoglucemias por día (valores bajo o igual ${unit}).";

  static m25(value) => "Alto${value}";

  static m26(value) => "Histórico ${value}";

  static m27(value) => "Hipoglycemia (< ${value})";

  static m28(unit) => "Factores sensibilidad insulina (ISF)\n1 Ui baja la glucosa por X ${unit}";

  static m29(value) => "${value} g";

  static m30(value) => "g HC (${value} unidades HC)";

  static m31(value) => "Insulina en total (${value})";

  static m32(error, stacktrace) => "Error al cargar los datos: \n${error}\n${stacktrace}";

  static m33(date) => "Cargando datos para ${date}...";

  static m34(insulin, unit) => "SMB ${insulin} ${unit}";

  static m35(percent, duration) => "basal temporal ${percent}% / ${duration} min";

  static m36(target, duration, reason) => "objetivo temporal ${target} para ${duration} min, razon: ${reason}";

  static m37(value) => "Bajo${value}";

  static m38(gluc, unit) => "Medición capilar ${gluc} ${unit}";

  static m39(unit, value) => "Glucemia media\n[${unit}]";

  static m40(hba1c) => "Glucemia media en el período elegido.";

  static m41(min, max) => "malo (${min} a ${max})";

  static m42(min, max) => "bueno (${min} a ${max})";

  static m43(max) => "muy malo (mayor a ${max})";

  static m44(min) => "excelente (menos de ${min})";

  static m45(oldName, newName) => "Cambio de perfil - ${oldName} => ${newName}";

  static m46(oldName, newName, duration) => "Cambio de perfil ${oldName} => ${newName} für ${duration} minutos";

  static m47(howMany, fmt) => "${Intl.plural(howMany, zero: 'no hay datos', one: '1 medicion por minuto', other: 'medición cada ${fmt}minutos')}";

  static m48(howMany, fmt) => "${Intl.plural(howMany, zero: 'no hay datos', one: '1 medicion diaria', other: '${fmt} mediciones diarias')}";

  static m49(howMany, fmt) => "${Intl.plural(howMany, zero: 'no hay datos', one: '1 medicion por hora', other: '${fmt} mediciones por hora')}";

  static m50(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt}dias por ampolla)', other: '(${txt} dias por ampolla)')}";

  static m51(value) => "SMB (${value})";

  static m52(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt}dias por sensor)', other: '(${txt} dias por sensor)')}";

  static m53(value) => "(dev estándar ${value})";

  static m54(value) => "ToR [${value}min/d]";

  static m55(min, max) => "El tiempo en minutos en el que los valores se encuentran fuera del margen ${min} a ${max}.";

  static m56(unit) => "Objectvo de glucosa\n${unit}";

  static m57(min, max, units) => "Rango objetivo (${min} - ${max} ${units})";

  static m58(value) => "Objectivo";

  static m59(time) => "${time} hora";

  static m60(time) => "${time} am";

  static m61(time) => "${time} pm";

  static m62(begDate) => "valido a partir de ${begDate}";

  static m63(begDate, endDate) => "valido de ${begDate} a ${endDate}";

  static m64(endDate) => "valido hasta ${endDate}";

  static m65(high) => "Valores superior a ${high}";

  static m66(low) => "Valores bajo ${low}";

  static m67(low, high) => "Valores entre ${low} y ${high}";

  static m68(low, high) => "Objetivos (${low} - ${high})";

  static m69(value) => "Valores altos (${value})";

  static m70(value) => "Valores bajos (${value})";

  static m71(value) => "Valores muy altos ( > ${value})";

  static m72(value) => "Valores muy bajos ( < ${value})";

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
    "10%" : MessageLookupByLibrary.simpleMessage("10%"),
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("10% - 90% de los valores"),
    "15 Minuten" : MessageLookupByLibrary.simpleMessage("15 minutos"),
    "2,1 bis 3,0" : MessageLookupByLibrary.simpleMessage("2,1 a 3,0"),
    "25%" : MessageLookupByLibrary.simpleMessage("25%"),
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("25% -75% de los valores"),
    "3,1 bis 4,0" : MessageLookupByLibrary.simpleMessage("3,1 a 4,0"),
    "30 Minuten" : MessageLookupByLibrary.simpleMessage("30 minutos"),
    "4,1 bis 4,5" : MessageLookupByLibrary.simpleMessage("4,1 a 4,5"),
    "5 Minuten" : MessageLookupByLibrary.simpleMessage("5 minutos"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "90%" : MessageLookupByLibrary.simpleMessage("90%"),
    "<br><br>Wenn diese URL geschützt ist, muss ausserdem das UserToken korrekt definiert sein." : MessageLookupByLibrary.simpleMessage("<br><br> Si esta URL está protegida el token del usuario tiene que ser definido."),
    "Absturz behoben, der auftrat, wenn kein passendes Profil für einen Zeitpunkt gefunden werden konnte" : MessageLookupByLibrary.simpleMessage("Arreglada falta que se produjo, cuando no se encontraban perfiles coincidente para un tiempo"),
    "Acht" : MessageLookupByLibrary.simpleMessage("Ocho"),
    "Aktuelle Periode" : MessageLookupByLibrary.simpleMessage("Período actual"),
    "Alles" : MessageLookupByLibrary.simpleMessage("Todo"),
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
    "Anzeigeeinstellungen" : MessageLookupByLibrary.simpleMessage("Configuración de pantalla"),
    "Auf 10be muss beim Server in den Standardeinstellungen der Haken bei \"cors\" aktiviert werden, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen." : MessageLookupByLibrary.simpleMessage("En 10be el proveedor tiene que tener activado \"cors\" en los ajustes generales para que herramientas externas puedan acceder a los datos."),
    "Auf Kacheln Bilder statt Namen anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar imágenes en vez de nombres en azulejos"),
    "Auf den Kacheln können nun Bilder statt der Namen angezeigt werden. Die Bilder zeigen dann das ungefähre Aussehen der entsprechenden Seite an. Sie entsprechen nicht den tatsächlichen Daten, sondern sind nur eine visuelle Darstellung, die es manchem Benutzer vielleicht einfacher machen, die gewünschten Seiten schneller auszuwählen. Die Aktivierung der Bilder erfolgt im Einstellungsdialog." : MessageLookupByLibrary.simpleMessage("En los azulejos ahora se pueden mostrar imágenes en vez de nombres. Las imágenes muestran más o menos la página seleccionada. Esto no corresponde a los datos reales, si no son solo und visualización que ayudan a encontrar las páginas fácilmente. Se activan los imágenes en el diálogo de ajustes."),
    "Auf den Seiten Profil und Basalrate wird in der Titelzeile jetzt wieder das Datum angezeigt, ab dem das Profil gilt." : MessageLookupByLibrary.simpleMessage("En la página del perfil y del perfil basal se muestra la fecha desde la activación del perfil."),
    "Auf der Analyseseite kann statt der Anzahl der Werte bei den Zielbereichen jetzt die Standardabweichung der Werte im Zielbereich angezeigt werden." : MessageLookupByLibrary.simpleMessage("En la página del análisis se puede mostrar la desviación estándar de los valores en rango en lugar del número de valores."),
    "Auf der Analyseseite werden nun auch GVI und PGS ausgegeben." : MessageLookupByLibrary.simpleMessage("En la página de análisis, ahora también se muestran GVI y PGS."),
    "Auf der Analyseseite wird jetzt auch die Standardabweichung aller Werte der Periode angezeigt." : MessageLookupByLibrary.simpleMessage("En la página de análisis, ahora también se muestra la desviación estándar de todos los valores del período seleccionado."),
    "Auf der Profilseite wurde die Spalte für die Werte von ICR verbreitert." : MessageLookupByLibrary.simpleMessage("En la página del perfil se ha ampliado la columna para los datos ICR."),
    "Auf der Seite \"Profil\" wird die Gültigkeit jetzt mit Uhrzeit angezeigt." : MessageLookupByLibrary.simpleMessage("En la página \"perfil\" ahora se muestra la validez con hora."),
    "Auf der Seite \"Stündliche Statistik\" gibt es eine neue Option, um auch Spalten mit 10% und 90% anzeigen zu lassen." : MessageLookupByLibrary.simpleMessage("En la página \"estatistica por hora\" hay una da opción para mostrar columnas con 10% y 90%."),
    "Aufsummierte Werte" : MessageLookupByLibrary.simpleMessage("Datos acumulados"),
    "Ausgabe" : MessageLookupByLibrary.simpleMessage("Edición"),
    "Ausgewertete Tage" : MessageLookupByLibrary.simpleMessage("Días evaluados"),
    "Ausrichtung" : MessageLookupByLibrary.simpleMessage("Orientación"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("Análisis"),
    "Automatisch_theme selection - automatic" : MessageLookupByLibrary.simpleMessage("Automático"),
    "Basal" : MessageLookupByLibrary.simpleMessage("Basal"),
    "Basal 0%" : MessageLookupByLibrary.simpleMessage("Basal 0%"),
    "Basal ges." : MessageLookupByLibrary.simpleMessage("Basal total"),
    "Basal mit zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Basal con dos décimas"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("Perfil basal"),
    "Basalrate\nIE / Stunde" : MessageLookupByLibrary.simpleMessage("Programa basal\nUI / Hora"),
    "Batteriewechsel" : MessageLookupByLibrary.simpleMessage("Cambio de pila"),
    "Behandlungen" : MessageLookupByLibrary.simpleMessage("Tratamientos"),
    "Bei Tagesgrafiken und Wochengrafiken gibt es jetzt die Möglichkeit 1, 2, 4, 8 oder 16 Grafiken auf einer Seite zu platzieren." : MessageLookupByLibrary.simpleMessage("Para los gráficos diarios y semanales ahora existe la posibilidad de mostrar 1, 2, 4, 8 o 16 gráficos en cada página."),
    "Bei der Auswertung kann nun ein Bereich angezeigt werden, in dem die Anzahl an Unterzuckerungen während des ausgewählten Zeitraums und der Zeitpunkt der letzten Unterzuckerung angezeigt werden." : MessageLookupByLibrary.simpleMessage("Para la análisis ahora se puede elegir un espacio en el que se muestra el número de hipoglucemias durante el periodo elegido y la hora de la última hipoglucemia."),
    "Bei der Basalrate und dem Profil gibt es nun eine Option jeweils nur das letzte im entsprechenden Zeitraum ausgeben zu lassen. Das verringert die Blätterflut bei häufigem Profilwechsel." : MessageLookupByLibrary.simpleMessage("Para la tasa basal y el perfil ahora hay una opción para solo mostrar el perfil o la tasa reciente durante el periodo elegido. Esto reduce la cantidad de páginas producidos por muchos cambios de perfil."),
    "Bei der Berechnung der Kohlenhydrate werden weitere Datensätze berücksichtigt" : MessageLookupByLibrary.simpleMessage("Al calcular los carbohidratos se utilizan varios datos"),
    "Beim Auslesen des Profils ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("Al leer el perfil ha ocurrido un error."),
    "Beim CGP werden die aktuellen Werte jetzt in der Legende angezeigt." : MessageLookupByLibrary.simpleMessage("Ahora se muestran los datos actuales del CGP en la leyenda."),
    "Beim Erzeugen des PDF ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("Al crear el PDF ha ocurrido und error."),
    "Beim Laden der Daten wird das entsprechende Datumsformat zur Anzeige verwendet" : MessageLookupByLibrary.simpleMessage("Se utiliza el formato de fecha apropiado al cargar los datos"),
    "Benutzer können ein User-Token angeben, um sich mit geschützten Nightscout-Instanzen zu verbinden" : MessageLookupByLibrary.simpleMessage("Usarios pueden insertar un User-Token para conectar con paginas Nightscout protegidas"),
    "Benutzer können nun gelöscht werden" : MessageLookupByLibrary.simpleMessage("El usuario ya puede ser borrado"),
    "Benutzerdaten" : MessageLookupByLibrary.simpleMessage("Datos del usuario"),
    "Benutzerdaten werden nun verschlüsselt im Browser gespeichert" : MessageLookupByLibrary.simpleMessage("Datos del usario son guardados y protegidos"),
    "Berechnete IE für Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Insulina calculada para HC"),
    "Berechnete IE für Kohlenhydrate anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar UI calculadas para HC"),
    "Bereite Daten vor..." : MessageLookupByLibrary.simpleMessage("Preparando datos..."),
    "Bestätigung" : MessageLookupByLibrary.simpleMessage("Confirmación"),
    "Bis" : MessageLookupByLibrary.simpleMessage("Hasta"),
    "Bisher fehlende Summenwerte in der Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Añadido sumas en la estatistica diaria"),
    "Bitte einen Zeitraum wählen." : MessageLookupByLibrary.simpleMessage("Por favor elige periodo."),
    "Bitte überprüfe die Aktivierung der Wochentage unter dem Monat" : MessageLookupByLibrary.simpleMessage("Por favor comprueba la activación de los días de semana debajo del mes"),
    "Blutige Werte sollten jetzt auch bei mmol-Daten korrekt in der Tagesgrafik angezeigt werden." : MessageLookupByLibrary.simpleMessage("Blutige Werte sollten jetzt auch bei mmol-Daten korrekt in der Tagesgrafik angezeigt werden."),
    "Blutwerte werden jetzt auch bei mmol/L in den Grafiken korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Valores sanguíneos se muestran ahora correctamente en mmol/L en los gráficos."),
    "Bolus" : MessageLookupByLibrary.simpleMessage("Bolus"),
    "Bolus Rechner_bolus calculated by the bolus wizard" : MessageLookupByLibrary.simpleMessage("Calculadora de Bolo"),
    "Bolus ges." : MessageLookupByLibrary.simpleMessage("Bolo total"),
    "Bolusarten anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar tipos de bolo"),
    "CGP" : MessageLookupByLibrary.simpleMessage("CGP"),
    "Comprehensive Glucose Pentagon" : MessageLookupByLibrary.simpleMessage("Comprehensive Glucose Pentagon"),
    "Da wir seit einiger Zeit in Europa eine DSGVO haben, werden im Folgenden noch die Vorschriften dafür erfüllt. Der folgende Text ist nur auf Deutsch verfügbar:" : MessageLookupByLibrary.simpleMessage("Como desde hace tiempo tenemos la DSGVO las regulaciones son respetadas. El texto siguiente solo existe en alemán.\ninfo for DSGVO in dataprotection:"),
    "Das \"Comprehensive Glucose Pentagon\" (Umfassendes Glukose Fünfeck) wurde als eigenes PDF und als Zusatzseite zur Tagesgrafik und Wochengrafik hinzugefügt. Es handelt sich hierbei um eine Darstellung von fünf Messgrössen, mit deren Hilfe sich die Qualität der Therapie ermitteln und mit anderen vergleichen lässt. Auf den Ausdrucken wird ein Verweis auf die zugrunde liegende Abhandlung ausgegeben." : MessageLookupByLibrary.simpleMessage("El \"Comprehensive Glucose Pentagono\" se ha añadido como propia página PDF adjuntado al gráfico diario y al gráfico semanal. Se trata de una representación de 5 valores con la cual se puede valorar la calidad de la terapia y compararla con otros. En el impreso se encuentra una información sobre la disertación."),
    "Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr." : MessageLookupByLibrary.simpleMessage("Pinchando area de mensajes ya no lo cierra."),
    "Das Control für die Eingabe des Zeitraums wurde angepasst, damit es auf schmalen Display auch korrekt dargestellt wird." : MessageLookupByLibrary.simpleMessage("El control para insertar el periodo se ha ajustado para que se muestre correctamente en pantalla estrecha."),
    "Das Enddatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("La fecha final no es correcta"),
    "Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag." : MessageLookupByLibrary.simpleMessage("El PDF para el perfil básico no fue correcto, si no existia un valor para cada hora."),
    "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren." : MessageLookupByLibrary.simpleMessage("PDF ha sido generado. Si no se visualiza, probablemente es debido a un bloqueador popup. Por favor desactivar bloqueador."),
    "Das Problem, dass bestimmte Tage nicht erzeugt werden konnten, wurde behoben." : MessageLookupByLibrary.simpleMessage("Se han eliminado errores al crear datos para ciertos dias."),
    "Das Profil-PDF wird nun im Querformat erzeugt, um auch Profile mit vielen Einträgen für die Parameter brauchbar darstellen zu können." : MessageLookupByLibrary.simpleMessage("El PDF con el perfil se produce ahora en modo paisaje para reprensentar perfiles con muchas entradas adecuadamente."),
    "Das Startdatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("La fecha inicial no es correcta"),
    "Das User-Token wird nur benötigt, wenn der Zugriff in Nightscout über AUTH_DEFAULT_ROLES eingeschränkt wurde" : MessageLookupByLibrary.simpleMessage("El token de usuario sólo es necesario si restringió el acceso en Nightscout sobre AUTH_DEFAULT_ROLES"),
    "Das gelbe Fünfeck stellt den Wertebereich des angegebenen Zeitraums dar." : MessageLookupByLibrary.simpleMessage("El pentágono verde presenta el margen de valores en el periodo de tiempo indicado."),
    "Das grüne Fünfeck stellt den Wertebereich eines gesunden Menschen ohne Diabetes dar." : MessageLookupByLibrary.simpleMessage("El pentágono verde representa el margen de valores de una persona sana sin diabetes."),
    "Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen." : MessageLookupByLibrary.simpleMessage("Datos para los valores de glucosa con formato de fecha incorrecto se leen correctamente."),
    "Daten verschiedener Uploader werden nun besser interpretiert." : MessageLookupByLibrary.simpleMessage("Informaciones de diferentes cargadores de datos ahora se interpretan mejor."),
    "Daten, die von xDrip als sync markiert wurden, werden bei der Auswertung ignoriert." : MessageLookupByLibrary.simpleMessage("Datos que se han marcado por xDrip como sync, se ignoran en la evaluación."),
    "Datenschutzerklärung" : MessageLookupByLibrary.simpleMessage("Declaración de privacidad"),
    "Datum" : MessageLookupByLibrary.simpleMessage("Fecha"),
    "Dauer der Insulinaktivität (DIA)" : MessageLookupByLibrary.simpleMessage("Duración de acción de insulina (DIA)"),
    "Dauer der Kohlenhydrataktivität" : MessageLookupByLibrary.simpleMessage("Duración de accion de carbohidratos"),
    "Dauer der abgeschalteten Basalrate anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar duración de tasa basal apagada"),
    "Dauer mit Minutenbruchteil" : MessageLookupByLibrary.simpleMessage("Duración con partes por minutos"),
    "Der Fehler im Profil, der dazu führte, dass die Werte für ISF und Zielbereich falsch umgerechnet werden, wurde behoben." : MessageLookupByLibrary.simpleMessage("El error que produjo sumar los valores para ISF y el objectivo incorrectamente ha sido corregido."),
    "Der Fehler mit der Vervielfachung der Kohlenhydrate bei wiederholter Ausgabe der PDFs wurde korrigiert." : MessageLookupByLibrary.simpleMessage("El problema con la multiplicacion de los hidratos de carbono al crear varios PDF seguidos ha sido corregido."),
    "Der Zeitraum enthält keine auswertbaren Tage" : MessageLookupByLibrary.simpleMessage("El período no contiene días evaluables"),
    "Der prognostische glykämische Risikoparameter stellt das Risiko von Langzeitkomplikationen dar (bisher nicht durch Studien belegt)." : MessageLookupByLibrary.simpleMessage("Los parámetros glucemicos prognosticados muestra el riesgo de complicaciones a largo tiempo (hasta ahora no evaluado por estudios científicos)."),
    "Details des Profilwechsels" : MessageLookupByLibrary.simpleMessage("Detalles del cambio de perfil"),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("Deutsch"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("Diabetes desde"),
    "Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an" : MessageLookupByLibrary.simpleMessage("La pagina de la analisis ha sido corregida y muestra títulos"),
    "Die Angabe DIA auf der Profilseite wird nun mit zwei Nachkommastellen angezeigt." : MessageLookupByLibrary.simpleMessage("El valor DIA se muestra en la pagina del perfil con dos decimales."),
    "Die Aufsummierung der Werte in der Analyse wurde korrigiert." : MessageLookupByLibrary.simpleMessage("La sumas de los valores en la análisis han sido corregidas."),
    "Die Aufteilung auf mehrere PDF-Dateien funktioniert jetzt besser." : MessageLookupByLibrary.simpleMessage("La división en varios archivos PDF funciona mejor."),
    "Die Auswahl des Zeitraums ist nun flexibler. Die Auswahl erfolgt in einem Dialog, der die eingestellte Sprache berücksichtigt. Mit der Auswahl der vorbelegten Bereiche (Heute, Letzte Woche, usw.) wird festgelegt, dass beim nächsten Aufruf das aktuelle Datum als Grundlage für den Bereich verwendet wird. Wenn der Bereich direkt im Kalender festgelegt wird, dann gilt dieser beim nächsten Aufruf so wie er festgelegt wurde. Standardmässig ist der erste Tag der Woche jetzt ein Montag. Dieser kann aber durch Anklicken des Wochentags in der Titelzeile des Monats auf die eigene Präferenz festgelegt werden. Die Eingabe der Datumsfelder erfolgt in der Form, die der Sprache entspricht (Tag.Monat.Jahr für deutsch, Monat/Tag/Jahr für englisch)." : MessageLookupByLibrary.simpleMessage("La selección del período ahora es más flexible. La selección se realiza en un diálogo que tiene en cuenta el lenguaje seleccionado. La selección de rangos preestablecidos (hoy en día, la semana pasada, etc.) determina que la fecha actual se utiliza la próxima vez como base para el periodo. Si el rango se establece directamente en el calendario, este sera utilizado próxima vez. De forma predeterminada, el primer día de la semana es lunes. Esto puede ser ajustado haciendo clic en el día de la semana en la barra de título del mes. Los campos de fecha se escriben en el formato que corresponde al lenguaje seleccionado (dia.mes.año para el alemán, mes/día/año para el inglés)."),
    "Die Auswahl des Zeitraums und der Benutzer wurde in die Titelzeile verschoben." : MessageLookupByLibrary.simpleMessage("La selección del período y el usuario han sido movido al encabezamiento."),
    "Die Balken für das Bolusinsulin in der Tagesgrafik werden nun entsprechend dem Maximalwert an Bolusinsulin an dem Tag skaliert." : MessageLookupByLibrary.simpleMessage("La barra de la insulina de bolo en el gráfico díario ahora se escala según el valor máximo de la insulina de bolo en el día."),
    "Die Balken in der Analyse werden jetzt korrekt skaliert." : MessageLookupByLibrary.simpleMessage("La barra en la análisis ahora son escaladas correctamente."),
    "Die Basalratenprofile für den Tag werden nun auch anhand der Behandlungsdaten ermittelt. Profilwechsel werden in der Tagesgrafik angezeigt und sollten ab dem Zeitpunkt des Wechsels auch eine korrekte Basalratenanpassung anzeigen." : MessageLookupByLibrary.simpleMessage("Los perfiles basales diarios se calculan por los datos de tratamientos. Cambios de perfil se muestran en el resumen diario y deberán mostrar resultados basales correctos a partir del momento de cambio."),
    "Die Berechnung der PDF-Grössen wurde korrigiert, so dass nun weniger PDFs erstellt werden, wenn sie aufgrund der Grösse aufgeteilt werden." : MessageLookupByLibrary.simpleMessage("El tamaño del PDF ha sido corregido, ahora se crean menos páginas si se dividen por el tamaño."),
    "Die Berechnung der Summenzeile auf der Seite Tagesstatistik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Se ha corregido el cálculo de la fila de totales en la página de estadísticas diarias."),
    "Die Berechnung der tatsächlichen Basalrate wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Se corrigió el cálculo de la tasa basal real."),
    "Die Berechnung des täglichen Insulins berücksichtigt nun auch die SMB." : MessageLookupByLibrary.simpleMessage("El cálculo de insulina diario toma en cuenta también el SMB."),
    "Die Bilder auf den Kacheln sind nun in der jeweiligen Sprache beschriftet." : MessageLookupByLibrary.simpleMessage("Die Bilder auf den Kacheln sind nun in der jeweiligen Sprache beschriftet."),
    "Die Buttons für die vergangenen Perioden werden nicht angezeigt, wenn kein Zeitraum oder kein PDF ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("Los botones para periodos pasados no se muestran si no se ha elegido un PDF o un periodo."),
    "Die Daten, die Du hier eingibst, werden normalerweise im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. In diesem Fall werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("Los datos que introduces aquí, se almacenan normalmente en el navegador localStorage. Esto incluye datos relacionados con la página web que se pueden leer solamente en este sitio web. En este caso, no se utilizan cookies y no se guardan datos en los servidores. Se establece sólo una conexión a la instancia especificada de Nightscout y se leen los datos existentes para crear un documento PDF. Esto puede presentarse al endocrinologo a otras partes interesadas."),
    "Die Einstellungen für das Herunterladen des PDFs, das Öffnen im gleichen Fenster und die Maximalgrösse der PDFs wurden von der Synchronisierung mit Google Drive ausgenommen, weil sie speziell für den verwendeten Browser oder das verwendete Gerät benötigt werden. Sie werden nach wie vor gespeichert, aber sie werden nicht zwischen verschiedenen Browsern synchronisiert." : MessageLookupByLibrary.simpleMessage("Los ajustes para bajar el PDF, abrirlo en la misma página y el tamaño máximo del PDF no se sincronizan con Google Drive, por que son exclusivos para cada navegador. Siguen siendo guardadas, pero no sincronizadas entre los navegadores."),
    "Die Einträge im Protokoll für temporäre Ziele werden jetzt auch bei mmol-Angaben richtig angezeigt." : MessageLookupByLibrary.simpleMessage("Las entradas en el protocolo para objetivos temporales ahora también se muestran en mmol correctamente."),
    "Die Ermittlung der Einheit (mg/dl oder mmol/l) wird nun flexibler gehandhabt, so dass auch Leerzeichen in der entsprechenden Einstellung nicht mehr zu einer Fehlinterpretation führen." : MessageLookupByLibrary.simpleMessage("La determinación de unidades (mg/dl o mmol/l) se maneja flexiblemente. Así caracteres en blanco no producen malinterpretaciones."),
    "Die Ermittlung der effektiven täglichen Basalrate wurde umstrukturiert und sollte nun genauere Werte ergeben." : MessageLookupByLibrary.simpleMessage("La calculation de la tasa basal diaria tiene una estructura nueva que llevara a datos más precisos."),
    "Die Farben für Dialoge und Scrollbars wurden angepasst." : MessageLookupByLibrary.simpleMessage("Se han ajustado los colores para diálogos y barras de desplazamiento."),
    "Die Genauigkeit der Insulindosierung wird aus dem Profil ermittelt. Der Wert mit der höchsten Genauigkeit legt fest, mit wieviel Nachkommastellen Basalratenwerte angezeigt werden." : MessageLookupByLibrary.simpleMessage("La exactitud de la dosis de insulina se calcula a base del perfil. El valor con la mayor exactitud determina, cuantos decimales serán mostrados."),
    "Die Glucose Perzentil Grafik wurde um die Tabelle \"Stündliche Statistik\" erweitert. Diese listet tabellarisch die Werte des Zeitraums für jede Stunde des Tages auf. Man kann entweder nur die Grafik, nur die Tabelle oder beides zusammen erzeugen lassen." : MessageLookupByLibrary.simpleMessage("\"Estadística por hora\" ha sido añadido al gráfico para el percentil de glucosa. Esta muestra en una tabla los datos del periodo elegido para cada hora del día. Puedes crear la tabla, el gráfico o las dos cosas."),
    "Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit." : MessageLookupByLibrary.simpleMessage("La curva de glucosa de gráficos diarios fue liberada de datos ausentes."),
    "Die Icons auf einigen Buttons waren zu nahe am Text" : MessageLookupByLibrary.simpleMessage("Iconos en algunos botones estaban muy cerca del texto"),
    "Die Kohlenhydratangaben auf der Tagesgrafik werden jetzt ohne den Zusatz KH ausgegeben." : MessageLookupByLibrary.simpleMessage("La información sobre los carbohidratos en el gráfico diario se muestran ahora sin la unidad HC."),
    "Die Links zu Nightscout und den Reports von Nightscout im Menü funktionieren jetzt auch richtig, wenn ein Usertoken angegeben wurde." : MessageLookupByLibrary.simpleMessage("Los enlaces a Nightscout y sus evaluaciónes ahora funcionan correctamente si se ha especificado un token de usario."),
    "Die Listenansicht ist jetzt wieder scrollbar." : MessageLookupByLibrary.simpleMessage("La vista de lista se puede deslizar."),
    "Die Microboli des Minimed 600 Uploaders werden jetzt auch ermittelt und in der Analyse ausgegeben, wenn sie vorhanden sind." : MessageLookupByLibrary.simpleMessage("Los microbolus del MiniMed Uploader 600 serán también calculado y publicado en el análisis si es que existen."),
    "Die Mischung von zwei Seiten auf einer PDF-Seite, die manchmal vorkam, wurde behoben." : MessageLookupByLibrary.simpleMessage("La mezcla de dos páginas en una página PDF, que ocurrió a veces se ha solucionado."),
    "Die Möglichkeit für Beta-Funktionen wurde entfernt; die Betaversion ist nun hier zu finden:" : MessageLookupByLibrary.simpleMessage("La posibilidad para las funciones Beta se ha borrado; la versión Beta ahora se encuentra aqui:"),
    "Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird" : MessageLookupByLibrary.simpleMessage("Borrada la posibilidad den mostrar la URL en el título; aqui ahora se ve el usario actual o su URL"),
    "Die Oberfläche kann jetzt verschiedene Darstellungen annehmen. Diese zeigen sich zur Zeit durch geänderte Farben und ein angepasstes Icon im Browsertab und beim Laden der Seite. Das hat keine Auswirkungen auf die erzeugten PDF-Dateien. Es ist die Vorbereitung für eine teilweise anpassbare Oberfläche. Das Thema der Darstellung wird standardmässig vom System festgelegt, was zur Zeit heisst, dass im Dezember ein weihnachtliches Thema angezeigt wird. Das kann aber durch Anklicken des Icons, das ab jetzt links unten zu sehen ist, geändert werden. Beim Anklicken wird rechts neben dem Icon ein Bereich mit den verfügbaren Darstellungen eingeblendet. Das erste Icon (der kleine Zauberer) bedeutet dabei, dass die Darstellung vom System ermittelt wird. Zur Zeit bedeutet das die weihnachtliche Darstellung im Dezember. Es kann in Zukunft aber auch weitere Kriterien geben, anhand derer das Thema angepasst wird. Die direkte Festlegung eines Themas mit einem der anderen icons hat aber immer Vorrang vor der systemeigenen Logik." : MessageLookupByLibrary.simpleMessage("La cara ahora puede mostrarse de distintas maneras. Esto se muestra con diferentesccolores, con un icono adaptado y al cargar la página. Esto afecta a los PDF creados. Es la preparación para una cara configurable. El tema de la cara será determinado por el sistema, lo que quiere decir, que en diciembre es un tema navideño. Esto se puede cambiar haciendo clic en el icono que a partir de ahora se muestra abajo a la izquierda. Al hacer clic a la derecha se muestran diferentes iconos. El primero (el pequeño mago) signific, que la cara será determinada por el sistem. De momento es el diseño navideño en diciembre. En el futuro puede haber más criterios para determinar el tema. La determinación del tema a mano siempre tiene prioridad a la del sistema."),
    "Die Positionierung der Notizen in der Tagesgrafik wurde korrigiert, so dass sie näher an der Uhrzeit stehen. Die Striche wurden so verkürzt, dass sie nur noch bis zum unteren Rand der Grafik gehen und nicht mehr durch die Wertetabelle." : MessageLookupByLibrary.simpleMessage("La colocación de las notas en el gráfico diario se ha corregido para que estén más cerca de la hora. Las lineas han sido reducidas para que solamente lleguen hasta la parte inferior del gráfico y no la tabla de valor."),
    "Die Profile für den Zeitraum wurden teilweise nicht korrekt identifiziert. Das sollte behoben sein." : MessageLookupByLibrary.simpleMessage("Se han eliminado errores al identificar perfiles para ciertos períodos."),
    "Die Profilseite wurde angepasst, damit Einträge für 24 Stunden auf eine Seite passen." : MessageLookupByLibrary.simpleMessage("La página de perfil se ha adaptado para que se muestren los datos de 24 horas en una sola página."),
    "Die Reihenfolge der Formulare kann nun verändert werden. Dazu einfach das Handle auf der linken Seite des Buttons für das Formular anklicken, festhalten und an die Stelle ziehen, vor der es ausgedruckt werden soll." : MessageLookupByLibrary.simpleMessage("Ahora se puede cambiar el orden en que se muestran los informes. Para esto, mantener pulsado el botón del informe, y tirar hacia el lugar deseado antes de ser imprimido."),
    "Die Seiten Profil und Basalrate zeigen nun bei einem Profil, das nur temporär während eines Tages aktiv war den Zeitraum an, in dem es aktiv war." : MessageLookupByLibrary.simpleMessage("Las páginas perfil y perfil basal ahora muestran el tiempo duramte el que el perfil ha estado activado."),
    "Die Seitenzahlen auf den Kacheln wurden weiter an den unteren Rand verschoben, damit sie immer gut lesbar sind." : MessageLookupByLibrary.simpleMessage("Los números de las páginas se han movido para abajo para mejorar el diseño."),
    "Die Skalen an den Grafiken wurden überarbeitet. Sie zeigen jetzt für mmol/L ganzzahlige Werte an und die Einheiten wurden entfernt. Diese stehen nur noch unten an der Grafik. Das betrifft die täglichen Grafiken, wöchentlichen Grafiken und das Glukose Percentil Diagramm." : MessageLookupByLibrary.simpleMessage("Se han actualizado las escalas de los gráficos. Mostran números enteros para valores de mmol/L y las unidades han sido borradas. Estas solamente aparecen debajo del gráfico. Esto se refiere a los gráficos diarios, semanales y la tabla de percentil de glucosa."),
    "Die Spalten auf der Profilseite wurden korrigiert, damit auch längere Zeitnamen (z.B. in spanisch) Platz finden." : MessageLookupByLibrary.simpleMessage("Se corrigieron las columnas en la página del perfil para también poder mostrar títulos largos (p.e. en Español)."),
    "Die Standardabweichung wird jetzt auch bei mmol/L korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("La desviación estándar se mostrará correctamente ahora también en mmol/L."),
    "Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an" : MessageLookupByLibrary.simpleMessage("La estatistica diaria ahora muestra valores mmol/l correctamente"),
    "Die URL wurde noch nicht festgelegt" : MessageLookupByLibrary.simpleMessage("La URL aún no ha sido determinada"),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("La URL aún no ha sido determinada."),
    "Die Vorschaubilder auf den Kacheln passen sich abhängig von den ausgewählten Optionen teilweise an (z.B. die Auswahl von CGP bei Tagesgrafiken)." : MessageLookupByLibrary.simpleMessage("Las imágenes de prevista en los mosaicos se acoplan parcialmente a las opciones elegidas (por ejemplo CGP en el gráfico diario)."),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("La pagina web utiliza generalmente Javascript para resolver las tareas. Para crear el documento PDF se utilizan Javascript y PHP."),
    "Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt" : MessageLookupByLibrary.simpleMessage("Los valores del objectivo estandar se calculan corrctamente en la pagina analisis"),
    "Die Werte im CGP werden jetzt bei mmol-Angaben auch korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Die Werte im CGP werden jetzt bei mmol-Angaben auch korrekt angezeigt."),
    "Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. " : MessageLookupByLibrary.simpleMessage("La URL introducida no es accesible. Si la URL es correcta puede ser causado por los ajustes en Nightscout. "),
    "Die eigenen Grenzwerte auf der Analyseseite in mmol/L werden nun korrekt berechnet." : MessageLookupByLibrary.simpleMessage("Los propios límites en la página de análisis en mmol/L se calculan correctamente."),
    "Die einzelne Seite CGP kann jetzt auch im Querformat ausgegeben werden." : MessageLookupByLibrary.simpleMessage("Las páginas del CGP ahora se pueden mostrar en formato oblongo."),
    "Die fehlerhafte Platzierug der blutigen Werte bei mmol/L in der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Se ha corregido la falta en mostrar valores de glucosa medidos en sangre en mmol/l en el gráfico diario."),
    "Die fehlerhafte Zentrierung der Auswahlbuttons wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Se ha corregido el centrado incorrecto de los botones de selección."),
    "Die glykämische Variabilität stellt die Streuung der Werte um den glykämischen Mittelwert herum in Prozent dar." : MessageLookupByLibrary.simpleMessage("La variabilidad de glucemia indica en % la difusión de valores al rededor de la glucemia media."),
    "Die glykämische Variabilität wird jetzt im CGP auch bei Tages- und Wochengrafiken korrekt ausgegeben." : MessageLookupByLibrary.simpleMessage("Die glykämische Variabilität wird jetzt im CGP auch bei Tages- und Wochengrafiken korrekt ausgegeben."),
    "Die meisten Spalten auf der Seite \"Stündliche Statistik\" werden bei nicht vorhandenen Daten leer gelassen." : MessageLookupByLibrary.simpleMessage("En la página \"estatistica por hora\" la mayoría de las columnas se quedan vacias si no contienen datos."),
    "Die mittlerweile überflüssige Option zur Darstellung der Basalrate mit zwei Nachkommastellen wurde aus der Tagesgrafik entfernt." : MessageLookupByLibrary.simpleMessage("Se ha eliminado la opción innecesaria de mostrar el perfil basal con dos decimales en el gráfico diario."),
    "Die teilweise falsch zugewiesenen Grenzwerte für die Bereiche (niedrig, normal, hoch) wurden korrigiert." : MessageLookupByLibrary.simpleMessage("Los límites parcialmente erróneos (bajo, normal, alto) han sido corrigidos."),
    "Die temporäre Basalrate am Anfang des Tages wurde bisher falsch gesetzt, wenn sie im vorherigen Tag gesetzt wurde. Das wurde behoben." : MessageLookupByLibrary.simpleMessage("La tasa basal temporal al principio del dia ha sido mostrada incorrectamente en caso de haber sido establecida al día anterior. Esto se ha corregido."),
    "Die Überschrift über der mittleren Spalte im Tagesprofil wurde korrigiert." : MessageLookupByLibrary.simpleMessage("El título de la columna mediana en el perfil diario ha sido corregido."),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("Esta pagina genera documentos PDF con los datos almacenados en Nightscout. Para esto es necesario tener acceso a los datos, por lo cual algunos ajustes se almacenarán. Siempre y cuando éstos no estén presentes y válidos, la página no puede hacer nada para usted."),
    "Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden." : MessageLookupByLibrary.simpleMessage("Añadido a esta página. Aparecerá cada al cargar Nightscout Reporter, si no se mostraba en la versión actual. También puede recuperar en el menú."),
    "Diese Webseite speichert keine Daten auf Servern. Die benötigten Daten werden von der eingegebenen URL zur Nightscout-Instanz geholt und als PDF aufbereitet. Die Daten, die zur Funktion der Webseite benötigt werden, werden im localStorage des Browsers gespeichert und nicht an den Server übermittelt. Wenn die Synchronisierung mit Google Drive aktiviert wird, dann werden diese Daten zusätzlich in den Anwendungsdaten auf dem Google Drive des verbundenen Kontos gespeichert." : MessageLookupByLibrary.simpleMessage("Esta página no almacena datos en el servidor. Los datos provienen desde la URL al la página Nightscout y son creadas como PDF. Los datos necesarios se almacenan local y no son mandados al servidor. Si se activa la sincronización con Google Drive, los datos serán también guardados en los datos del usuario en la cuenta registrada de Google Drive."),
    "Dieser Regler legt fest, wie gross eine Ausgabe maximal werden darf, bevor sie auf mehrere PDF-Dateien aufgeteilt wird. Wenn bei Erstellung eines PDFs ein leeres Fenster angezeigt wird, dann hilft es normalerweise, diesen Regler weiter nach links zu bewegen." : MessageLookupByLibrary.simpleMessage("Este mando ajusta el tamaño máximo, antes de ser dividido en varios documentos PDF. Si se muestra una pagina en blanco al crear un PDF, ayuda mover la barra hacia la izquierda."),
    "Diverse Abstürze beim Auslesen der Daten bereinigt" : MessageLookupByLibrary.simpleMessage("Arreglado varias faltas al leer datos"),
    "Dämmerung (06:00 - 08:00, 18:00 - 20:00)" : MessageLookupByLibrary.simpleMessage("Crepúsculo (06:00 - 08:00, 18:00 - 20:00)"),
    "Eigene Grenzwerte" : MessageLookupByLibrary.simpleMessage("Límites propios"),
    "Ein Fehler in der Zahlenformatierung wurde behoben." : MessageLookupByLibrary.simpleMessage("Se ha corregido falta de formato de valores."),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die letzten Tage bestimmter Monate nicht im Kalender-Control angezeigt wurden." : MessageLookupByLibrary.simpleMessage("Se ha corregido un error que provocó, que los últimos días de algunos meses no aparecieron en el control de calendario."),
    "Ein Fehler wurde behoben, der in der Tagesgrafik dazu führte, dass Texte in der Legende andere Texte überschrieben haben." : MessageLookupByLibrary.simpleMessage("Se ha corregido una falta que producía que algunos textos aparecían por encima de otros."),
    "Ein Fehler wurde wahrscheinlich behoben, der dazu führt, dass bei manchen Profilen der Wert für DIA nicht korrekt ausgelesen wurde." : MessageLookupByLibrary.simpleMessage("Solucionado un problema, que provocó que en algunos perfiles los valores para el DIA no se han leido correctamente."),
    "Ein Link zur Facebookseite von Nightscout Reporter wurde im Menü hinzugefügt." : MessageLookupByLibrary.simpleMessage("Se ha agregado un enlace a la página de Facebook de Nightscout Reportero en el menú."),
    "Eine" : MessageLookupByLibrary.simpleMessage("Una"),
    "Einige Browser sind nicht in der Lage PDF Dateien anzuzeigen, die eine bestimmte Grösse überschreiten. Da das von verschiedenen Faktoren abhängt, die sich nicht ohne Weiteres automatisch ermitteln lassen, gibt es die Möglichkeit, statt einer grossen PDF Datei, die nicht angezeigt werden kann, mehrere kleinere PDF Dateien zu erzeugen, die der Browser anzeigen kann. In den Einstellungen und hier kann diese Grösse festgelegt werden. Diese Seite hier wird nur angezeigt, wenn das PDF aufgeteilt werden musste. Wenn nur ein PDF erzeugt wurde, dann wird es direkt angezeigt." : MessageLookupByLibrary.simpleMessage("Algunos navegadores no son capaz de mostrar PDF de cierto tamaño. Esto depende de varios factores. Existe la posibilidad de crear varios documentos PDF pequeños en vez de uno grande para poder ser mostrado correctamente en el navegador. Se puede elegir el tamaño aqui y en configuraciónes. Aqui solo se muestra si el PDF ha tenido que ser dividido. Si solo se ha creado un PDF se mostrará directamente."),
    "Einige Formulare können nun mit Parametern konfiguriert werden; hierzu den Pfeil am rechten Rand des Formularbuttons anklicken und im aufgeklappten Bereich die entsprechenden Einstellungen vornehmen; der Pfeil erscheint erst, wenn das Formular zum Ausdruck markiert wurde" : MessageLookupByLibrary.simpleMessage("Algunas formas pueden ser configuradas con parámetros; para ello, haga clic en la flecha en el borde derecho de los botones del formulario y insertarlos ajustes apropiados en el área ampliada; la flecha aparecerá sólo si marcó la forma de imprimir"),
    "Einige der Optionen für die PDFs wurden hierarchisch angeordnet. Es macht z.B. keinen Sinn, die SMB Werte in der Tagesgrafik an der Kurve platzieren zu lassen, wenn die SMB Werte gar nicht angezeigt werden. Deswegen werden Optionen, die von einer anderen Option abhängen nur dann angezeigt, wenn die entsprechende Option markiert ist. Dadurch ändert sich leider auch die Speicherung der Optionen, weshalb sich die aktuelle Auswahl der Optionen bei manchen PDFs verändert. Da müssen die Optionen dann neu gesetzt werden." : MessageLookupByLibrary.simpleMessage("Algunas opciones han sido ordenadas jerárquicamente. No tiene sentido, poner los smb en el gráfico diario junto a la curva, si no son mostrados. Por lo tanto opciones que dependen de otras opciones sólo son mostradas, si la opción correspondiente está seleccionada. Aquí cambia el almacenamiento de las opciones y por eso cambia la actual selección de opciones en algunos PDF. Por desgracia hay que seleccionar las opciones de nuevo."),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("Ajustes"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("Ajustes para la utilisación de la pagina"),
    "Einstellungen von Release-Version übernehmen" : MessageLookupByLibrary.simpleMessage("Aplicar la configuración de la versión del lanzamiento"),
    "English (GB)" : MessageLookupByLibrary.simpleMessage("English (GB)"),
    "English (USA)" : MessageLookupByLibrary.simpleMessage("English (USA)"),
    "Erzeuge PDF..." : MessageLookupByLibrary.simpleMessage("Creando PDF..."),
    "Es gibt eine neue PDF-Seite für die Tagesprofile. Darauf ist eine Tabelle zu sehen, die die tatsächliche Basalrate für den Tag zeigt, inklusive aller temporären Anpassungen. Ich brauchte das für Debugzwecke, aber vielleicht findet das der eine oder andere Benutzer auch interessant. Das Profil, das dort angezeigt wird entspricht dem Tagesprofil auf der Seite Tagesgrafik. Beim Loopen können das sehr viele Seiten werden, da dort normalerweise alle paar Minuten Anpassungen an der Basalrate vorgenommen werden. Deswegen wird die Tabelle auch abhängig von der Datenmenge in maximal drei Spalten dargestellt, um die Anzahl an Seiten zu reduzieren." : MessageLookupByLibrary.simpleMessage("Hay una página para el perfil diario. Ahí se muestra una tabla con la tasa basal actual incluyendo los ajustes temporales. Lo necesitaba para trabajos de programación, pero quizás a alguien le resulta interesante. El perfil que se muestra corresponde al perfil en la página del gráfico diario. En modo del bucle cerrado pueden ser muchas páginas por que cada pocos minutos se ajusta la tasa basal. Por esto la tabla contiene como máximo tres columnas para reducir la cantidad de páginas."),
    "Es gibt in den Einstellungen eine Option, das PDF herunterladen zu lassen, statt es im Browser direkt anzeigen zu lassen. Das wird für Browser wie Edge benötigt." : MessageLookupByLibrary.simpleMessage("Hay una opción para descargar el PDF, en lugar de verlo directamente en la configuración del explorador. Esto es necesario para navegadores como el Edge."),
    "Es gibt in den Einstellungen eine neue Option, um den letzten in Nightscout gespeicherten Glukosewert in der Titelzeile anzeigen zu lassen. Wenn diese Option aktiviert ist, wird der aktuelle Wert, das Alter des Wertes, der Trendpfeil und die Differenz zum vorherigen Wert rechts in der Titelzeile angezeigt. Diese Anzeige wird jede Minute aktualisiert, solange das Browserfenster den Eingabefokus besitzt. Wenn es diesen nicht hat, wird die Aktualisierung angehalten und der Wert ausgeblendet, um nicht unnötig Systemresourcen zu belasten." : MessageLookupByLibrary.simpleMessage("Hay una nueva opción para mostrar el último valor de glucosa almacenado en Nightscout en el encabezado en la configuración. Si esta opción está activada, aparece el valor actual, la edad del valor, la flecha de tendencia y la diferencia al valor anterior en la barra de título. Esta pantalla se actualiza cada minuto mirntras la ventana del explorador tiene el foco de entrada. Si no lo tiene, se detiene la actualización y el valor desaparece, para evitar la carga innecesaria de datoss del sistema."),
    "Es gibt jetzt auch die Möglichkeit, Nightscout Reporter in europäischem Englisch darzustellen. Der Unterschied zum amerikanischen Englisch besteht derzeit lediglich im Datumsformat (gb: dd/MM/yyyy, us: MM/dd/yyyy)." : MessageLookupByLibrary.simpleMessage("Ahora también existe la posibilidad de representar Nightscout Repoerter en inglés europeo. La única diferencia esta en el formato de la fecha para el inglés americano (gb: dd/MM/AAAA, U. S.: dd/MM/AAAA)."),
    "Es gibt jetzt die Möglichkeit, PDFs vergangener Zeiträume zu erzeugen, ohne den Zeitraum anpassen zu müssen. Oberhalb des Buttons zur PDF-Erzeugung gibt es zwei Buttons, welche die PDFs für eine frühere Periode erzeugen. Der untere der beiden Buttons erzeugt die Vorperiode, der obere die vorletzte Periode. Auf den Buttons wird das Startdatum und das Enddatum angezeigt. Wenn z.B. als Zeitraum \"Letzte 2 Wochen\" gewählt wurde, dann wird mit dem unteren Button der Zeitraum von zwei Wochen beginnend vor vier Wochen erzeugt und mit dem oberen Button der Zeitraum von zwei Wochen beginnend vor sechs Wochen. Auf diese Art kann man recht einfach Vergleichsberichte erzeugen, um die Entwicklung der Werte zu erkennen. Auf den Seiten wird für diese Ausdrucke in der Kopfzeile das Wort \"Historisch 1\", bzw. \"Historisch 2\" oberhalb des Zeitraums ausgegeben. So kann man beim Vergleich der Werte die Daten voneinander unterscheiden." : MessageLookupByLibrary.simpleMessage("Existe la posibilidad de crear documentos PDF para períodos pasados sin tener que ajustar el tiempo. Superior al botón para crear el PDF hay dos botones para crear los PDF para periodos pasados. El botón de abajo crea el PDF para el período parado, el da arriba para el antepasado. En la botones se muestra la fecha de inicio y la del fin de período. Si por ejemplo eliges un periodo de dos semanas, el botón de abajo muestra el período de dos semanas empezando hace 4 semanas. El botón de arriba muetrara las dos semanas empezando hace 6 semanas. De esta manera se pueden crear fácilmente crónicas para comparar tendencias y ver desarrollos. En las páginas se muestran las palabras \"histórico 1\" y \"histórico 2\" por encima de las fechas. Así se pueden distinguir los datos al compararlos."),
    "Es ist jetzt möglich, die Buttons zur PDF-Auswahl als Kacheln darstellen zu lassen. Die Option dazu ist im Menü auf der linken Seite zu finden. In der Kachelansicht werden die Buttons über die verfügbare Fläche verteilt und sind so auf kleinen Geräten leichter zu treffen. Ausserdem sieht man dann normalerweise alle verfügbaren PDFs auf einen Blick und muss nicht scrollen. Auf den aktivierten Kacheln wird angezeigt, an welcher Stelle im PDF die entsprechenden Seiten ausgegeben werden und wieviele Seiten die entsprechende Kachel ausgibt. Diese Zahl kann für die meisten Kacheln korrekt ermittelt werden, bei einigen ist das aber ohne Auswertung der Daten nicht möglich (z.B. Profile und Protokoll). In diesem Fall wird entweder keine Seitenzahl oder eine Mindestzahl an Seiten angegeben. Sobald die Erstellung des PDFs erfolgt ist, werden die korrekten Zahlen angezeigt. Die Reihenfolge der Kacheln kann verändert werden, indem man sie festhält und an die Stelle verschiebt, an der man sie gerne hätte. Nach Anklicken des Icons in der oberen rechten Ecke können die Parameter für das entsprechende PDF erfasst werden." : MessageLookupByLibrary.simpleMessage("Ahora es posible mostrar los botones para seleccionar el PDF como cuadros. Esta opción se encuentra en el menú en el lado izquierdo. Los cuadros se reparten por todo la pantalla, así se muestran mejor en pantalla pequeña. Así también se pueden ver todos PDFs a la vez. En el botón activo se muestra en que posición del PDF se encuentra el documento y cuantas páginas contiene. Esta información se puede mostrar correctamente para la mayoría de los cuadros, para algunos no es posible sin analizar los datos (perfiles y protocolos). En este caso no se muestra la cantidad de páginas o sólo se muestra la cantidad mínima. En el momento de crear el PDF el número correcto será mostrado. El orden de los cuadros puede serpersonalizado como en la lista con el icono en el icono en el rincón izquierdo. Al pinchar el icono en el rincón derecho se pueden registrar los parámetros para el PDF."),
    "Es ist jetzt möglich, die Einstellungen auf Google Drive zu speichern. Das hat den Vorteil, dass man die Einstellungen nicht nur im aktuellen Browser hat, sondern bei jedem Browser, mit dem man sich bei Google anmeldet. Die Einstellungen werden nach wie vor im Browser gespeichert. Bei einer Verbindung zu Google Drive werden sie aber zusätzlich auf Google Drive gespeichert. Beim Laden der Seite wird überprüft, ob eine Synchronisierung gewünscht ist. Wenn das der Fall ist, dann werden die Daten von Google Drive heruntergeladen. Wenn die Daten darin neuer sind als die Daten im Browser, werden sie verwendet. Nach dem Speichern der Daten werden bei aktivierter Synchronisierung diese Daten mit dem aktuellen Zeitstempel auf Google Drive gespeichert. Die Synchronisierung wird im Menü auf der linken Seite aktiviert und deaktiviert. Sie kann auch beim erstmaligen Aufruf der Seite in einem neuen Browser direkt im Willkommensbildschirm aktiviert werden. Nightscout Reporter verlangt nur die Berechtigung die eigenen App-Daten zu speichern und zu laden und benötigt keinen Zugriff auf andere Daten auf Google Drive." : MessageLookupByLibrary.simpleMessage("Ahora es posible guardar ajustes en Google Drive. Esto permite tener todos los ajustes en varios navegadores en los que se esté registrado por Google. Los ajustes siguen guardados en el navegador. Con la conexión con Google Drive también serán guardados aquí. Al cargar la página se comprueba si la sincronización es deseada. En este caso, los datos serán bajado desde Google Drive. Si estod datos resultan más actuales que los datos en el navegador, se utilizarán. Después de guardar los datos estos serán guardados con la fecha actual en Google Drive si la sincronización está activada. La sincronización se activa y desactiva en el lado izquierdo del menú. También se puede activar en la página principal al abrir la página por primera vez con un navegador nuevo. Nightscout Reporter sólo necesita el derecho a subir y guardar los propios datos de la aplicación. No necesita ningún derecho a otros datos en Google Drive."),
    "Es ist jetzt möglich, die Wochentage festzulegen, die im Zeitraum berücksichtigt werden sollen. Die entsprechenden Tage werden bei der Auswahl des Zeitraums mit den Buttons unterhalb des Monats festgelegt. Auf den PDFs werden Zeiträume dann zusätzlich mit der Information versehen, welche Wochentage berücksichtigt werden, wenn es nicht alle sind." : MessageLookupByLibrary.simpleMessage("Es posible elegir los días de la semana que deben ser incluido en el período. Se eligen los días correspondientes para la selección del período con los botones debajo del mes. En los archivos PDF, los los dias elegidos serán marcados con la información correspondiente en los períodos elegidos si no han sido todos."),
    "Es sind keine Daten für den Ausdruck vorhanden" : MessageLookupByLibrary.simpleMessage("No hay datos para imprimir"),
    "Es werden jetzt auch blutige Werte erkannt, die von Loop auf dem IPhone eingetragen werden." : MessageLookupByLibrary.simpleMessage("Ahora también se reconocen mediciones capilares transmitidos por Loop desde el iPhone."),
    "Español" : MessageLookupByLibrary.simpleMessage("Español"),
    "Facebook Seite" : MessageLookupByLibrary.simpleMessage("Página de Facebook"),
    "Fehler beim Laden der Daten" : MessageLookupByLibrary.simpleMessage("Error al cargar los datos"),
    "Fehler werden besser abgefangen und mit sinnvollem Text ersetzt." : MessageLookupByLibrary.simpleMessage("Errores son mejor atrapados y sustituidos por texto significativo."),
    "Fehlerhafte Ausgabe der Blutzuckerwerte in der täglichen Grafik korrigiert." : MessageLookupByLibrary.simpleMessage("Corregido la indicación falsa de los valores de glucosa medida en sangre en el grafico diario."),
    "Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt" : MessageLookupByLibrary.simpleMessage("Mediciones erróneas en la evaluación de los gráficos ya no son calculadas; se reconocen por el valor \"NONE\" en los datos del campo \"dirección\""),
    "Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt." : MessageLookupByLibrary.simpleMessage("Mensaje erronep eliminado al cargar perfiles sin fecha de inicio."),
    "Français" : MessageLookupByLibrary.simpleMessage("Français"),
    "Für die Tagesgrafik gibt es jetzt eine Option, um die Aufsummierung nahe beieinander liegender Werte umzuschalten." : MessageLookupByLibrary.simpleMessage("Hay una opción para cambiar a la adición de valores similares."),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("Fecha nacimiento"),
    "Ges." : MessageLookupByLibrary.simpleMessage("Sum."),
    "Gesamt" : MessageLookupByLibrary.simpleMessage("Total"),
    "Geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("HbA1c estimado"),
    "Glukose Pentagon erzeugen" : MessageLookupByLibrary.simpleMessage("Crear pentágono de glucosa"),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Tabla de percentil de glucosa"),
    "Glukose im Zielbereich" : MessageLookupByLibrary.simpleMessage("Glucosa detro del objectivo"),
    "Glukose zu hoch" : MessageLookupByLibrary.simpleMessage("Golucosa muy alta"),
    "Glukose zu niedrig" : MessageLookupByLibrary.simpleMessage("Glucosa demasiada baja"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("Curva glucosa"),
    "Glukosewert" : MessageLookupByLibrary.simpleMessage("Valor de glucosa"),
    "Glykämischer Variabilitäts Index (GVI)" : MessageLookupByLibrary.simpleMessage("Índice de variabilidad glucémica (GVI)"),
    "Grafik" : MessageLookupByLibrary.simpleMessage("Gráfica"),
    "Grafiken pro Seite" : MessageLookupByLibrary.simpleMessage("Gráficos por página"),
    "Gross" : MessageLookupByLibrary.simpleMessage("Grande"),
    "Gruppierung der Zeiten" : MessageLookupByLibrary.simpleMessage("Agrupación de tiempos"),
    "HTML-Notizen anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar notas HTML"),
    "Heute" : MessageLookupByLibrary.simpleMessage("Hoy"),
    "Hinweise auf Nightscout in der Kopf- und Fusszeile des PDFs ausblenden" : MessageLookupByLibrary.simpleMessage("Esconder notas sobre Nightscout en el encabezado y el pie del PDF"),
    "Hochformat" : MessageLookupByLibrary.simpleMessage("Vertical"),
    "Hohe Basalraten werden jetzt besser dargestellt." : MessageLookupByLibrary.simpleMessage("Altas tasas basales están mejor representadas."),
    "Höchster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Valor más alto en periodo"),
    "IE" : MessageLookupByLibrary.simpleMessage("UI"),
    "IE/std" : MessageLookupByLibrary.simpleMessage("UI /h"),
    "Im Einstellungsdialog wurden die Zeilen mit den Benutzerangaben und der URL gegeneinander ausgetauscht, um eine sinnvollere Verwaltung zu ermöglichen." : MessageLookupByLibrary.simpleMessage("Se han cambiado los espacios para nombre de usuario y URL por razones de eficacia."),
    "Im Kalender-Control kann kein Datum nach dem aktuellen Tag mehr ausgewählt werden." : MessageLookupByLibrary.simpleMessage("En el control del calendario ya no se puede elegir una fecha en el futuro."),
    "Im Kalender-Control wird ein eingestellter Bereich (Heute, Letzte Woche, etc.) jetzt korrekt auf den aktuellen Tag bezogen." : MessageLookupByLibrary.simpleMessage("En el control del calendario se refiere el periodo elegido (hoy, la semana pasada, etc.) correctamente a la fecha actual."),
    "Im Kalender-Control wird jetzt der Monat des entsprechenden Datums angezeigt, wenn eines der Felder Von oder bis den Fokus erhält." : MessageLookupByLibrary.simpleMessage("En el control de calendario, se muestra el mes correspondiente a la fecha, si uno de los campos contiene De o hasta."),
    "Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert" : MessageLookupByLibrary.simpleMessage("En el PDF los numeros y las fechas tienen el formato del idioma seleccionado"),
    "Im Profil werden jetzt die richtigen Einheiten verwendet (mg/dL oder mmol/l)." : MessageLookupByLibrary.simpleMessage("El perfil ahora muestra las unidades correctas (mg/dL o mmol/l)."),
    "Im Profil werden nun die Gesamtsumme der Basalrate und die durchschnittlichen Werte für ICR und ISF pro Stunde angezeigt." : MessageLookupByLibrary.simpleMessage("En el perfil ahora se muestran el total del perfil basal y los promedios para ICR y ISF por hora."),
    "Im Protokoll können jetzt auch Batteriewechsel der Pumpe angezeigt werden." : MessageLookupByLibrary.simpleMessage("En el protokolo ahora se pueden mostrar el cambio de pila en la bomba."),
    "Impressum" : MessageLookupByLibrary.simpleMessage("Aviso legal"),
    "In Firefox ist es jetzt auch möglich, die Hauptseite zu scrollen, wenn sie länger ist, als das Browserfenster." : MessageLookupByLibrary.simpleMessage("Ahora también es posible deslizar la página inicial si es más larga que la ventanilla del navegador Firefox."),
    "In den Einstellungen gibt es einen Regler, der festlegt, wie gross die erzeugten PDF-Dateien maximal sein dürfen. Wenn nur ein leeres PDF erzeugt wird, dann sollte dieser Regler weiter nach links geschoben werden, um die Dateigrösse zu verringern." : MessageLookupByLibrary.simpleMessage("En la configuración hay un controlador que determina el tamaño máximo los archivos PDF. Cuando se crea un PDF sólo en blanco, este controlador se debe mover hacia la izquierda para reducir el tamaño del archivo."),
    "In der Analyse können die Prozentzahlen für die Zielbereiche mit Nachkommazahl angezeigt werden. Das verringert die Differenz zu 100%, wenn man sie zusammenzählt. Der verbleibende Rest sind Rundungsdifferenzen." : MessageLookupByLibrary.simpleMessage("En la analisis ahora se muestran los procentajes para los objectivos con decimales. Esto reduce la diferencia al sumar hasta 100%. El resto es debido al diferencias de redondeo."),
    "In der Auswertung gibt es eine neue Option, um den Standardbereich feiner abzustufen. Dort werden dann zusätzlich sehr hohe Werte und sehr niedrige Werte angezeigt." : MessageLookupByLibrary.simpleMessage("Hay una opción para mostrar el rango estándar con una graduación más fina. Ahí se pueden mostrar valores muy altos o muy bajos."),
    "In der Auswertung können die Angaben für Material (Katheter, Sensor, Ampulle) mit Nachkommastellen angezeigt werden." : MessageLookupByLibrary.simpleMessage("En la evaluación se pueden mostrar los datos de material (catéter, sensor, ampolla) con decimales."),
    "In der Kachelansicht können die Parameter aller ausgewählten Seiten zusammen in einer Liste eingestellt werden. Dazu gibt es im Titelbereich der Parameterliste neben dem Schliessen-Button einen zusätzlichen Button, mit dem man zwischen den beiden Möglichkeiten umschalten kann." : MessageLookupByLibrary.simpleMessage("En la vista mosaico todos los parámetros de las páginas seleccionadas pueden ser juntados en una lista. Para esto existe un botón adicional en la parte del título de la lista de parámetros junto al botón para cerrar. Aquí puedes seleccionar una de las dos opciones."),
    "In der Legende unter der Tagesgrafik wird die Summe der Kohlenhydrate für den Tag angezeigt." : MessageLookupByLibrary.simpleMessage("La cantidad de carbohidratos diarios se mostrará en la leyenda debajo del gráfico del día."),
    "In der Sprachauswahl ist jetzt auch Slowakisch verfügbar." : MessageLookupByLibrary.simpleMessage("Existe eslovaco en la selección de lenguajes."),
    "In der Tagesgrafik gibt es die Option, HTML-Notizen zu unterdrücken. Manche Uploader schreiben in die Notizen komplette HTML-Seiten rein, was im PDF extrem schlecht darstellbar ist. Deswegen kann man diese mit Setzen der Option ausblenden." : MessageLookupByLibrary.simpleMessage("En la estadística diaria existe la opción de suprimir las notas HTML. Algunos navegadores implementan páginas completas en las notas, esto se muestra malamente en el PDF. Por eso se puede deshabilitar está opción."),
    "In der Tagesgrafik gibt es eine Option, die berechneten IE für aufgenommene Kohlenhydrate anzeigen zu lassen. Der Wert, der unmittelbar unter den Kohlenhydraten angezeigt wird, entspricht dem Bolus, der zu diesem Zeitpunkt für diese Kohlenhydratmenge abgegeben werden sollte. Dieser Wert kann niedriger als der tatsächlich abgegebene Wert ausfallen, weil für die Insulinabgabe noch IOB und andere Faktoren berücksichtigt werden." : MessageLookupByLibrary.simpleMessage("Hay una opción en el gráfico diario para mostrar las UI calculadas para los HC absorbados. El valor mostrado justamente debajo de los HC corresponde al bolo administrado en ese momento. Este valor puede ser menor al valor realmente administrado, por que se suman varios factores (iob etc) para la administración de la insulina."),
    "In der Tagesgrafik gibt es eine Option, mit dem man die verschiedenen Arten der Boli kenntlich machen lassen kann. Wenn diese Option gesetzt ist, wird ein Bolus, der zu einer Mahlzeit abgegeben wurde mit einer anderen Farbe markiert, als ein Bolus zur Korrektur. In der Legende werden dann Korrektur-, Mahlzeiten-Boli und SMB getrennt angezeigt." : MessageLookupByLibrary.simpleMessage("En el gráfico díario, hay una opción, con la cual pueden ser indicados los diferentes tipos de bolos. Si se usa esta opción, un bolo que fue dado para una comida será marcado con un color diferente que un bolo de corrección. En la leyenda, los bolos de comida, de corrección y SMB aparecerán por separado."),
    "In der Tagesgrafik gibt es eine Option, mit der man sich die erfassten Trainingsdaten anzeigen lassen kann. Diese werden dann am unteren Rand über der Tabelle der Glukosewerte eingefügt." : MessageLookupByLibrary.simpleMessage("En el gráfico diario, hay una opción que muestra los datos de entrenamiento. Se ven en la parte inferior de la tabla de los valores de glucosa."),
    "In der Tagesgrafik kann die Anzeige der SMB nun ausgeblendet werden." : MessageLookupByLibrary.simpleMessage("En el gráfico diario ahora se puede ocultar SMB."),
    "In der Tagesgrafik kann jetzt bei Auswahl der Tages Basalrate angegeben werden, dass der Name des Profils angezeigt wird, das am Beginn des Tages aktiv war. Dieser wird dann so angezeigt, wie ein Profilwechsel um 0 Uhr." : MessageLookupByLibrary.simpleMessage("En el gráfico diario al elegir el perfil diario ahora se puede mostrar el nombre del perfil que se ha utilizado al principio del día. Este se muestra como un cambio de perfil a media noche."),
    "In der Tagesgrafik kann nun angezeigt werden, wie lange die Basalrate auf 0% lief." : MessageLookupByLibrary.simpleMessage("El gráfico diario ahora también se puede mostrar la duración de la tasa basal en 0%."),
    "In der Tagesgrafik werden die Insulinangaben jetzt kleiner dargestellt, wenn die Basalrate eine Genauigkeit von mehr als 2 Nachkommastellen hat." : MessageLookupByLibrary.simpleMessage("En el gráfico diario los datos de insulina se muestran más pequeños si el perfil basal contiene más de dos decimales."),
    "In der Tagesgrafik werden jetzt auch Blutzuckermessungen angezeigt. Sie werden als rote Quadrate dargestellt und die zugehörigen Werte in der Tabelle unterhalb der Grafik werden ebenfalls mit roter Schrift angezeigt." : MessageLookupByLibrary.simpleMessage("En el grafico diario ahora se muestran mediciones de glucosa de sangre. Se muestran como cuadrados rojos y sus valores correspondientes en la tabla debajo el gráfico también se muestran con el texto en rojo."),
    "In der Tagesgrafik werden nun SMBs auch angezeigt, wenn die Option für die Darstellung von Insulin akitivert wurde. Man kann festlegen, ob die SMBs an der Glukosekurve oder am Zielwert angezeigt werden." : MessageLookupByLibrary.simpleMessage("En el gráfico diario se muestran los SMB, si la opción para mostrar la insulina es activada. Se puede elegir si se muestran los SMB junto a la curva de la glucosa o al valor objetivo."),
    "In der Tagesgrafik werden nun auch Kohlenhydratkorrekturen angezeigt." : MessageLookupByLibrary.simpleMessage("El gráfico diario ahora también se muestran correcciónes de carbohidratos."),
    "In der Tagesgrafik werden nun auch Reservoirwechsel angezeigt." : MessageLookupByLibrary.simpleMessage("El gráfico diario ahora también se muestra el cambio de depósito."),
    "In der Tagesgrafik werden nun auch bei Anzeige des Zielwertes die temporären Ziele berücksichtigt." : MessageLookupByLibrary.simpleMessage("En el gráfico diario ahora también se muestran los objetivos temporales."),
    "In der Tagesgrafik werden nun auch verzögerte Boli angezeigt." : MessageLookupByLibrary.simpleMessage("El gráfico diario ahora también se muestra el bolo retardado."),
    "In der Tagesgrafik werden nun der geschätzte HbA1C und die prozentuale Menge an Bolusinsulin und Basalinsulin für den Tag angezeigt. Diese Anzeige erfolgt innerhalb der Legende, weshalb diese aktiviert sein muss, damit die Werte angezeigt werden." : MessageLookupByLibrary.simpleMessage("En el gráfico diario se muetra la HbA1C estimada y la cantidad porcentual de insulina de bolo e insulina basal para el día. Esto se muestra en la leyenda, por lo cual se debe activar para poder ver los valores."),
    "In der Tagesgrafik wird jetzt eine Tabelle mit halbstündigen Glukosewerten eingeblendet angezeigt. Diese kann über einen Parameter ausgeschaltet werden." : MessageLookupByLibrary.simpleMessage("En el gráfico diario se muestra una tabla con valores de glucosa a la media hora. Esto puede desactivarse mediante un parámetro."),
    "In der Tagesgraphic werden jetzt Insulinwerte und Kohlenhydratwerte zusammengefasst, wenn es mehrere innerhalb einer Stunde gibt. Die Balken werden nach wie vor für jeden Wert einzeln ausgegeben. Auf diese Art sollte es keine überlappende Ausgabe der Werte mehr geben. Die zusammengefassten Werte werden in eckigen Klammern ausgegeben, um anzuzeigen, dass hier Werte aufsummiert wurden." : MessageLookupByLibrary.simpleMessage("Valores de insulina y carbohidratos se juntan en el grafico diario en caso de que haya varios datos durante una hora. Las barras siguen muestradas individualmente para cada valor. De esta manera, no se deben solapar valores. Para indicar que se resumen valores, serán mostrados en corchetes."),
    "In der Tagesstatistik und in den täglichen Grafiken werden jetzt zum Datum die Wochentage mit angezeigt." : MessageLookupByLibrary.simpleMessage("En el diario y los gráficos diarios se muestran la fecha y el dia de la semana."),
    "In der Tagesstatistik wurde die Spalte Varianzkoeffizient hinzugefügt (VarK)." : MessageLookupByLibrary.simpleMessage("En el grafico diario se agregó una columna con el coeficiente de variación (VarK)."),
    "In der Tagesstatistik wurden bei unvollständigen Daten teilweise fehlerhafte Werte ausgegeben. Das wurde korrigiert." : MessageLookupByLibrary.simpleMessage("En la estadística diaria tal vez se han mostrado valores erróneos al no insertar datos completos. Esto ha sido corregido."),
    "In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen." : MessageLookupByLibrary.simpleMessage("La variable ENABLE tiene que contener la palabra \"cors\" para que herramientas externas como esta puedan acceder a los datos."),
    "Initiale Version, alles ist neu!" : MessageLookupByLibrary.simpleMessage("Versión inicial, todo es nuevo!"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("Insulina"),
    "Insulin Kohlenhydrate Verhältnis (ICR)" : MessageLookupByLibrary.simpleMessage("Proporción de hidratos de carbono insulina (ICR)"),
    "Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE" : MessageLookupByLibrary.simpleMessage("Relación insulina carbohidratos (ICR)\nX gr carbohidratos para 1 UI"),
    "Insulin Sensitivitäts Faktoren (ISF)" : MessageLookupByLibrary.simpleMessage("Factores de sensibilidad de insulina (ISF)"),
    "Insulin-Quelle" : MessageLookupByLibrary.simpleMessage("Fuente de Insulina"),
    "Ja" : MessageLookupByLibrary.simpleMessage("Sí"),
    "Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember" : MessageLookupByLibrary.simpleMessage("Enero|Febrero|Marzo|Abril|Mayo|Junio|Julio|Agosto|Septiembre|Octubre|Noviembre|Diciembre"),
    "Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez" : MessageLookupByLibrary.simpleMessage("Ene|Feb|Mar|Abr|May|Jun|Jul|Ago|Sep|Oct|Nov|Dic"),
    "Kalibrierung und blutige Messungen" : MessageLookupByLibrary.simpleMessage("Calibración y medicmedición capilar"),
    "Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Cambio de catéter"),
    "Keine" : MessageLookupByLibrary.simpleMessage("Ninguna"),
    "Keine Änderung" : MessageLookupByLibrary.simpleMessage("Sin cambio"),
    "Klein" : MessageLookupByLibrary.simpleMessage("Pequeño"),
    "Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Carbohidratos"),
    "Kohlenhydrate und Bolusinsulin werden jetzt in den täglichen Grafiken angezeigt" : MessageLookupByLibrary.simpleMessage("Carbohidratos y insulina bolo son mostradas en los graficos diarios"),
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
    "Letzter Monat" : MessageLookupByLibrary.simpleMessage("El mes anterior"),
    "Mahlzeitenbolus_bolus to handle a meal" : MessageLookupByLibrary.simpleMessage("Bolo comida"),
    "Man kann jetzt mehrere Benutzer anlegen. Das ist nützlich, um mehrere Nightscout-Instanzen auszuwerten (z.B. für Ärzte, Betreuer oder den Entwickler dieser Software)" : MessageLookupByLibrary.simpleMessage("Se pueden inserter varios usarios. Esto es practico para usar varias paginas Nightsout (para doctores, enfermeros, productores de este software)"),
    "Material mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Materiál con décimas"),
    "Max" : MessageLookupByLibrary.simpleMessage("Max"),
    "Max Mustermann" : MessageLookupByLibrary.simpleMessage("Juan Gómez"),
    "Median" : MessageLookupByLibrary.simpleMessage("Medio"),
    "Mehr gibt es dazu eigentlich nicht zu sagen." : MessageLookupByLibrary.simpleMessage("No hay más que decir."),
    "Mess-\nwerte" : MessageLookupByLibrary.simpleMessage("Valores medidos"),
    "Min" : MessageLookupByLibrary.simpleMessage("Min"),
    "Mit Google Drive synchronisieren" : MessageLookupByLibrary.simpleMessage("Sincronizar con Google Drive"),
    "Mittel-\nwert" : MessageLookupByLibrary.simpleMessage("Valor medio"),
    "Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|Sonntag" : MessageLookupByLibrary.simpleMessage("Lunes|Martes|Miercoles|Jueves|Viernes|Sabado|Domingo"),
    "Mo|Di|Mi|Do|Fr|Sa|So" : MessageLookupByLibrary.simpleMessage("Lu|Ma|Mier|Jue|Vier|Sa|Do"),
    "Nacht (20:00 - 08:00)" : MessageLookupByLibrary.simpleMessage("Noche (20:00 - 08:00)"),
    "Nahe zusammen liegende Werte aufsummieren" : MessageLookupByLibrary.simpleMessage("Sumar valores semejantes"),
    "Name" : MessageLookupByLibrary.simpleMessage("Nombre"),
    "Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat." : MessageLookupByLibrary.simpleMessage("Día de nacimiento, nombre y la fecha de inicio de la diabetes, insulina pueden dejarse en blanco, sin tener efectos negativos en la presentación del PDF."),
    "Nein" : MessageLookupByLibrary.simpleMessage("No"),
    "Neue Option im Profil, um fortlaufende Zeiten mit gleichen Werten zu einem Eintrag zusammen zu fassen." : MessageLookupByLibrary.simpleMessage("Nueva opción en el perfil resumir tiempo continuo con los mismos valores a un ingreso."),
    "Neuer Parameter für die Tagesgrafik, der festlegt, ob die Linien für die Notizen unter der Grafik bis zur Glukosekurve gezeichnet werden sollen oder nicht." : MessageLookupByLibrary.simpleMessage("Nuevo parámetro para el gráfico diario que determina si las líneas de las notas deben establecerse hasta la curva de glucosa o no."),
    "Neues PDF für eine Wochengrafik hinzugefügt, auf der die Glukosekurven der Woche übereinander gelegt werden." : MessageLookupByLibrary.simpleMessage("Añadido nuevo PDF para un gráfico semanal en el que las curvas de glucosa de la semana se colocan una sobre la otra."),
    "Neueste Woche zuerst" : MessageLookupByLibrary.simpleMessage("Empezar con semana reciente"),
    "Neuester Tag zuerst" : MessageLookupByLibrary.simpleMessage("Empezando con el dia reciente"),
    "Niedrigster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Valor más bajo en periodo"),
    "Nightscout Berichte" : MessageLookupByLibrary.simpleMessage("Informes Nightscout"),
    "Nightscout Reporter ist nun auch grösstenteils in Spanisch und Polnisch verfügbar. Entsprechende Buttons wurden dem Hauptmenü hinzugefügt. Danke an die fleissigen Übersetzer :)." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter ahora también está disponible en Español y Polaco. Se han añadido los botones correspondientes al menú principal. Gracias a los traductores diligentes :)."),
    "Nightscout Reporter kann nun auch in Japanisch verwendet werden." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter ahora puede ser usado en japonés."),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("Página Nightscout"),
    "Normal" : MessageLookupByLibrary.simpleMessage("Normal"),
    "Notiz" : MessageLookupByLibrary.simpleMessage("Nota"),
    "Notiz-Linien bis zur Kurve zeichnen" : MessageLookupByLibrary.simpleMessage("Conectar lineas de información a la curva"),
    "Notizen" : MessageLookupByLibrary.simpleMessage("Notas"),
    "Nur letzte Basalrate ausgeben" : MessageLookupByLibrary.simpleMessage("Solo mostrar perfil basal reciente"),
    "Nur letztes Profil ausgeben" : MessageLookupByLibrary.simpleMessage("Solo mostrar perfil reciente"),
    "Ok" : MessageLookupByLibrary.simpleMessage("Ok"),
    "Optionen für die PDFs, die eine eindeutige Beziehung zu einem laufenden Loop haben, werden nun in Blau dargestellt. Das vereinfacht es, PDFs zu erstellen, denen man nicht ohne Weiteres entnehmen kann, dass ein Loop vorliegt. Dazu müssen nur die Haken bei den blauen Optionen entfernt werden." : MessageLookupByLibrary.simpleMessage("Opciónes del PDF relacionadas con el bucle en marcha ahora son mostradas en azul. Esto simplifica crear PDFs, en los que no se nota desde el principio que se trata de un bucle cerrado. Para esto solo hay que quitar las opciones marcadas en azul."),
    "PDF anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar PDF"),
    "PDF erneut erzeugen" : MessageLookupByLibrary.simpleMessage("Volver a crear PDF"),
    "PDF für Profildaten" : MessageLookupByLibrary.simpleMessage("PDF para los datos del perfil"),
    "PDF herunterladen (bei einigen Browsern benötigt)" : MessageLookupByLibrary.simpleMessage("Descargar PDF (necesario para algunos navegadores)"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("Abrir PDF en la misma ventana"),
    "PGR" : MessageLookupByLibrary.simpleMessage("PGR"),
    "Patient Glykämischer Status (PGS)" : MessageLookupByLibrary.simpleMessage("Estado glucémico paciente (PGS)"),
    "Pausiert" : MessageLookupByLibrary.simpleMessage("Pausado"),
    "Polski" : MessageLookupByLibrary.simpleMessage("Polski"),
    "Problem auf GitHub melden" : MessageLookupByLibrary.simpleMessage("Comunicar el problema en GitHub"),
    "Profil" : MessageLookupByLibrary.simpleMessage("Perfil"),
    "Profil-Basalrate" : MessageLookupByLibrary.simpleMessage("Perfil basal"),
    "Profileinstellungen" : MessageLookupByLibrary.simpleMessage("Configuraciónes de perfil"),
    "Profilwechsel" : MessageLookupByLibrary.simpleMessage("Cambio de perfil"),
    "Protokoll" : MessageLookupByLibrary.simpleMessage("Protocolo"),
    "Quelle: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)" : MessageLookupByLibrary.simpleMessage("Origen: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)"),
    "Querformat" : MessageLookupByLibrary.simpleMessage("Horizontal"),
    "Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse." : MessageLookupByLibrary.simpleMessage("Cambio del orden de las páginas PDF - tabla de percentil ahora viene después del análisis."),
    "Reservoirwechsel" : MessageLookupByLibrary.simpleMessage("Cambio deposito"),
    "SMB" : MessageLookupByLibrary.simpleMessage("SMB"),
    "SMB Werte anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar valores SMB"),
    "SMB an der Kurve platzieren" : MessageLookupByLibrary.simpleMessage("Mostrar SMB en la linea"),
    "Schliessen" : MessageLookupByLibrary.simpleMessage("Cerrar"),
    "Schliessen Button im Nachrichtenbereich hinzugefügt." : MessageLookupByLibrary.simpleMessage("Añadido botón cerrar en el panel de mensajes."),
    "Sechzehn" : MessageLookupByLibrary.simpleMessage("Dieciséis"),
    "Sekunden anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar segundos"),
    "Sensorwechsel" : MessageLookupByLibrary.simpleMessage("Cambio de sensor"),
    "Slovenský" : MessageLookupByLibrary.simpleMessage("Slovenský"),
    "Soll der Benutzer mit der URL" : MessageLookupByLibrary.simpleMessage("El usuario con la dirección URL debe"),
    "Spalte HbA1c" : MessageLookupByLibrary.simpleMessage("Columna HbA1c"),
    "Spalte HbA1c zu Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Añadido columna HbA1c a las estatistica diaria"),
    "Spalte Messwerte" : MessageLookupByLibrary.simpleMessage("Columna de valores de medición"),
    "Spalte Standardabweichung" : MessageLookupByLibrary.simpleMessage("Columna desviación estandar"),
    "Spalte Variationskoeffizient" : MessageLookupByLibrary.simpleMessage("Columna coeficiente de variación"),
    "Spalten Perzentile" : MessageLookupByLibrary.simpleMessage("Columna percentiles"),
    "Spalten für 10% und 90% anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar columnas para 10% y 90%"),
    "Spaltenbreite der Informationen in der Analyse erhöht" : MessageLookupByLibrary.simpleMessage("Ampliado columna de información en la pagina analisis"),
    "Speichern" : MessageLookupByLibrary.simpleMessage("Guardar"),
    "Standard_theme selection - standard" : MessageLookupByLibrary.simpleMessage("Por defecto"),
    "Standardabweichung" : MessageLookupByLibrary.simpleMessage("Desviación estándar"),
    "Standardabweichung statt Anzahl" : MessageLookupByLibrary.simpleMessage("Desviación estándar en lugar de número"),
    "Standardbereich mit feinerer Abstufung" : MessageLookupByLibrary.simpleMessage("Rango estándar con graduación más fina"),
    "Standardgrenzwerte" : MessageLookupByLibrary.simpleMessage("Límites estándar"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("h\ndesv."),
    "Stunden" : MessageLookupByLibrary.simpleMessage("Horas"),
    "Stündliche Statistik" : MessageLookupByLibrary.simpleMessage("Estadística por horas"),
    "Summe" : MessageLookupByLibrary.simpleMessage("Total"),
    "Summen für Bolus Insulin, Basalrate für den Tag und Basalrate aus dem Profil zur Tagesgrafik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Añadido sumas para insulina de bolo, el perfil básico para el día y el perfil básico a los gráficos de día"),
    "Symbole (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Símbolos (catéter etc)"),
    "Synchronisierung aufheben" : MessageLookupByLibrary.simpleMessage("Deshabilitar sincronización"),
    "TDD" : MessageLookupByLibrary.simpleMessage("TDD"),
    "Tabelle" : MessageLookupByLibrary.simpleMessage("Tabla"),
    "Tabelle mit Glukosewerten" : MessageLookupByLibrary.simpleMessage("Tabla con valores glucosa"),
    "Tag (08:00 - 18:00)" : MessageLookupByLibrary.simpleMessage("Día (08:00 - 18:00)"),
    "Tages-Basalrate" : MessageLookupByLibrary.simpleMessage("Perfil basal diario"),
    "Tagesanalyse" : MessageLookupByLibrary.simpleMessage("Analisis diaria"),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("Grafico diario"),
    "Tagesgrafikparameter zur Anzeige der Legende" : MessageLookupByLibrary.simpleMessage("Parámetros gráficos diarios para mostrar la leyenda"),
    "Tagesgrafikparameter zur Anzeige von Notizen" : MessageLookupByLibrary.simpleMessage("Parámetros gráficos diarios para la visualización de notas"),
    "Tagesgrafikparameter zur umgekehrten Sortierung hinzugefügt. Die Tage werden damit beginnend mit dem höchsten Datum ausgegeben." : MessageLookupByLibrary.simpleMessage("Añadido parámetros gráfico diario con clasificación inversa. Los días se muestran a partir de la fecha más reciente."),
    "Tagesnamen in Grafik anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar dias en el grafico"),
    "Tagesprofil" : MessageLookupByLibrary.simpleMessage("Perfil de día"),
    "Tagesstartprofil anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar perfil diario"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("Estatistica diaria"),
    "Temporäre Basalraten" : MessageLookupByLibrary.simpleMessage("Tasas basales temporales"),
    "Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt" : MessageLookupByLibrary.simpleMessage("Perfiles temporales con valores absolutes son mostrados correctamente"),
    "Temporäre Profilwechsel werden jetzt erkannt und in der Tagesgrafik korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Ahora se detectan los cambios de perfil y son mostrados correctamente en el gráfico diario."),
    "Temporäre Ziele" : MessageLookupByLibrary.simpleMessage("Objetivos temporales"),
    "Titelangaben für Datumsbereiche auf den PDFs vereinheitlicht" : MessageLookupByLibrary.simpleMessage("Información título estandardizado para intervalos de fechas en los archivos PDF"),
    "Training anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar entrenamiento"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("Hora"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("Hora"),
    "Unbegrenzt" : MessageLookupByLibrary.simpleMessage("Sin límite"),
    "Unterzuckerungen anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar hipoglycemias"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("URL Nightscout API (https://xxx.herokuapp.com)"),
    "User-Token" : MessageLookupByLibrary.simpleMessage("Token de usuario"),
    "VarK\nin %" : MessageLookupByLibrary.simpleMessage("VarK\nin %"),
    "Verbinde zu Google Drive..." : MessageLookupByLibrary.simpleMessage("Conectando a Google Drive..."),
    "Verbinde zu Google..." : MessageLookupByLibrary.simpleMessage("Conectar con Google..."),
    "Verbindung zu Google Drive herstellen" : MessageLookupByLibrary.simpleMessage("Establecer conección con Google Drive"),
    "Verbindung zu Google Drive trennen" : MessageLookupByLibrary.simpleMessage("Desconectar de Google Drive"),
    "Vergleich" : MessageLookupByLibrary.simpleMessage("Comparación"),
    "Version" : MessageLookupByLibrary.simpleMessage("Versión"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("Distribuición"),
    "Verzögerter Bolus" : MessageLookupByLibrary.simpleMessage("Bolo retardado"),
    "Vier" : MessageLookupByLibrary.simpleMessage("Cuatro"),
    "Von" : MessageLookupByLibrary.simpleMessage("De"),
    "Vorherige Periode" : MessageLookupByLibrary.simpleMessage("Período anterior"),
    "Vorletzte Periode" : MessageLookupByLibrary.simpleMessage("Penúltimo período"),
    "Warum werde ich mit mehreren Buttons genervt, statt eine einzelne PDF angezeigt zu kriegen?" : MessageLookupByLibrary.simpleMessage("¿Por qué me molestan varios botones en lugar de obtener un PDF único?"),
    "Was bisher geschah..." : MessageLookupByLibrary.simpleMessage("Lo que sucedió hasta ahora..."),
    "Wechsel" : MessageLookupByLibrary.simpleMessage("Cambio"),
    "Wechsel (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Cambio (catéter etc.)"),
    "Weihnachten_theme selection - christmas" : MessageLookupByLibrary.simpleMessage("Navidad"),
    "Wenn Sonderzeichen in den Daten vorhanden sind (z.B. Smileys in den Notizen), führte das zu einem Absturz während der PDF-Erstellung. Das wurde behoben, indem diese Sonderzeichen aus der Ausgabe entfernt werden." : MessageLookupByLibrary.simpleMessage("Caracteres especiales en los datos (como emoticonos en las notas) llevaron a fallar la creación del PDF. Esto se ha solucionado eliminando estos caracteres especiales."),
    "Wenn das erzeugte PDF zu gross wird, wird es nun auf mehrere PDF-Dateien aufgeteilt. In diesem Fall wird es nicht direkt geöffnet, sondern es wird eine Liste mit durchnummerierten Buttons angezeigt. Diese Buttons öffnen bei Betätigung das entsprechende PDF und erhalten einen Haken, um anzuzeigen, dass es geöffnet wurde. Das sollte es erleichtern, die PDFs nacheinander zu öffnen, weil normalerweise der Browser im Hintergrund verschwindet, wenn ein neues Fenster aufgemacht wird." : MessageLookupByLibrary.simpleMessage("Si el PDF generado es demasiado grande, ahora se divide en varios archivos PDF. En este caso no se abrirá directamente, pero aparecerá una lista de botones numerados. Estos botones abren el PDF correspondiente y se indicará que se ha abierto. Debería ser más fácil abrir los archivos PDF uno tras otro, por que generalmente el navegador en segundo plano desaparece cuando se abre una ventana nueva."),
    "Wenn der Zeitraum leer ist, wird der Button für die Auswahl deutlich markiert und in dem Dialog zur Auswahl wird in der Titelzeile ein Hinweis darauf angezeigt." : MessageLookupByLibrary.simpleMessage("Si el período está vacío, el botón de selección estára marcado claramente y en el cuadro de diálogo aparece una información."),
    "Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet" : MessageLookupByLibrary.simpleMessage("Si los limites de los valores en Nightscout (BG_TARGET_BOTTOM y BG_TARGET_TOP) corresponden a los valores 70 y 180 no se muestran los objectivos estandar en la pagina analisis"),
    "Wenn in den Einstellungen eine Verbindung zum Google-Konto hergestellt wird, werden die Cookies von Google verwendet und die Daten nicht mehr im localStorage des Browsers gespeichert, sondern im AppStorage auf Google Drive. Auf diese Art kann man die Daten zentralisiert verwalten und hat diese in jedem Browser zur Verfügung, der mit dem angegebenen Google Konto verbunden ist." : MessageLookupByLibrary.simpleMessage("En caso de que en los ajustes conectes con una cuenta de Google, seran utilizados los cookies por Google y los datos no se almacenan en el localStorage del navegador, pero en la AppStorage de Google drive. De esta manera, usted puede gestionar los datos centralizados y los tiene disponible en cualquier navegador, asociado a la cuenta de Google especificada."),
    "Wenn in den Einträgen Lücken von 15 Minuten oder mehr sind, führen diese zu einer Unterbrechung der Linie in der Tagesgrafik." : MessageLookupByLibrary.simpleMessage("Si faltan datos para 15 minutos o más, la linéa en el grafico diario será interrumpida."),
    "Wenn in einem Profil mehr Zeiten erfasst wurden, als auf eine Seite passen, wurden diese fortlaufend in die nächste Seite hineingeschrieben. Jetzt wird an geeigneter Stelle eine neue Seite ausgegeben." : MessageLookupByLibrary.simpleMessage("Si en un perfil han sido acumulados más tiempos que cabian en una página, estos fueron escritos en forma continua en la página siguiente. Ahora se crea una nueva página en un lugar adecuado."),
    "Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt." : MessageLookupByLibrary.simpleMessage("Si no hay datos disponibles, se crean páginas en blanco con una nota correspondiente."),
    "Willkommen" : MessageLookupByLibrary.simpleMessage("Bienvenido"),
    "Willkommen bei Nightscout Reporter!" : MessageLookupByLibrary.simpleMessage("Bienvenido a Nightscout Reporter!"),
    "Wochengrafik" : MessageLookupByLibrary.simpleMessage("Grafico semanal"),
    "Zeilen mit gleichen Werten zusammenfassen" : MessageLookupByLibrary.simpleMessage("Sumar lineas con valores identicos"),
    "Zeitraum" : MessageLookupByLibrary.simpleMessage("Periodo"),
    "Zeitraum festlegen" : MessageLookupByLibrary.simpleMessage("Determinar periodo"),
    "Zeitzone" : MessageLookupByLibrary.simpleMessage("Zona horaria"),
    "Zielbereich" : MessageLookupByLibrary.simpleMessage("Rango Objetivo"),
    "Zielbereich mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Objectivo con décimas"),
    "Zur Berechnung der Analyse, Tagesstatistik und Tagesgrafik wird nun die gleiche Datenbasis verwendet, so dass die Werte auf allen PDFs gleich sind." : MessageLookupByLibrary.simpleMessage("Para el cálculo de la análisis, la estadística diaria y el gráfico diario ahora se utilizan los mismos datos, así todos los datos en todos PDF son iguales."),
    "Zur Kachelansicht" : MessageLookupByLibrary.simpleMessage("Ir a la vista de mosaico"),
    "Zur Listenansicht" : MessageLookupByLibrary.simpleMessage("Ir a vista de lista"),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("Funciones adicionales"),
    "Zusätzliche Informationen zu den PDFs und im UI hinzugefügt" : MessageLookupByLibrary.simpleMessage("Añadido información adicional sobre los documentos PDF y en Ui"),
    "Zusätzliche Spalte anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar columna additional"),
    "Zwei" : MessageLookupByLibrary.simpleMessage("Dos"),
    "_msgPageCount" : m0,
    "_msgPageCountEst" : m1,
    "ab 4,6" : MessageLookupByLibrary.simpleMessage("a partir de 4,6"),
    "bis" : MessageLookupByLibrary.simpleMessage("hasta"),
    "dd.MM.yyyy" : MessageLookupByLibrary.simpleMessage("dd/MM/yyyy"),
    "extrem hohes Risiko" : MessageLookupByLibrary.simpleMessage("riesgo muy alro"),
    "g / Stunde" : MessageLookupByLibrary.simpleMessage("gr / hora"),
    "geringes Risiko" : MessageLookupByLibrary.simpleMessage("riesgo bajo"),
    "gesch. HbA1c" : MessageLookupByLibrary.simpleMessage("hbA1c estim."),
    "hohes Risiko" : MessageLookupByLibrary.simpleMessage("riesgo alto"),
    "https://nightscout-reporter.zreptil.de/beta" : MessageLookupByLibrary.simpleMessage("https://nightscout-reporter.zreptil.de/beta"),
    "mg/dL" : MessageLookupByLibrary.simpleMessage("mg/dL"),
    "mmol/L" : MessageLookupByLibrary.simpleMessage("mmol/L"),
    "moderates Risiko" : MessageLookupByLibrary.simpleMessage("riesgo moderado"),
    "msgBasalrateDay" : m2,
    "msgBasalrateProfile" : m3,
    "msgBolusInsulin" : m4,
    "msgCV" : m5,
    "msgCalibration" : m6,
    "msgCarbBolusInsulin" : m7,
    "msgCarbs" : m8,
    "msgCatheterDays" : m9,
    "msgChangedEntry" : m10,
    "msgCheckUser" : m11,
    "msgCorrectBolusInsulin" : m12,
    "msgCount" : m13,
    "msgDaySum" : m14,
    "msgDuration" : m15,
    "msgFactorEntry" : m16,
    "msgGVIBad" : m17,
    "msgGVIGood" : m18,
    "msgGVINone" : m19,
    "msgGVIVeryGood" : m20,
    "msgHYPER" : m21,
    "msgHYPERInfo" : m22,
    "msgHYPO" : m23,
    "msgHYPOInfo" : m24,
    "msgHigh" : m25,
    "msgHistorical" : m26,
    "msgHypoTitle" : m27,
    "msgISF" : m28,
    "msgKH" : m29,
    "msgKHBE" : m30,
    "msgLegendTDD" : m31,
    "msgLoadingData" : m32,
    "msgLoadingDataFor" : m33,
    "msgLogSMB" : m34,
    "msgLogTempBasal" : m35,
    "msgLogTempTarget" : m36,
    "msgLow" : m37,
    "msgMBG" : m38,
    "msgMEAN" : m39,
    "msgMEANInfo" : m40,
    "msgPGSBad" : m41,
    "msgPGSGood" : m42,
    "msgPGSVeryBad" : m43,
    "msgPGSVeryGood" : m44,
    "msgProfileSwitch" : m45,
    "msgProfileSwitchDuration" : m46,
    "msgReadingsInMinutes" : m47,
    "msgReadingsPerDay" : m48,
    "msgReadingsPerHour" : m49,
    "msgReservoirDays" : m50,
    "msgSMBInsulin" : m51,
    "msgSensorDays" : m52,
    "msgStdAbw" : m53,
    "msgTOR" : m54,
    "msgTORInfo" : m55,
    "msgTarget" : m56,
    "msgTargetArea" : m57,
    "msgTargetValue" : m58,
    "msgTimeOfDay24" : m59,
    "msgTimeOfDayAM" : m60,
    "msgTimeOfDayPM" : m61,
    "msgValidFrom" : m62,
    "msgValidRange" : m63,
    "msgValidTo" : m64,
    "msgValuesAbove" : m65,
    "msgValuesBelow" : m66,
    "msgValuesIn" : m67,
    "msgValuesNorm" : m68,
    "msgValuesNormHigh" : m69,
    "msgValuesNormLow" : m70,
    "msgValuesVeryHigh" : m71,
    "msgValuesVeryLow" : m72,
    "ok" : MessageLookupByLibrary.simpleMessage("ok"),
    "sehr geringes Risiko" : MessageLookupByLibrary.simpleMessage("riesgo muy bajo"),
    "tl;dr" : MessageLookupByLibrary.simpleMessage("tl;dr"),
    "verwerfen" : MessageLookupByLibrary.simpleMessage("descartar"),
    "wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("verdaderamente ser eliminado?"),
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Basal por día"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Bolo por día"),
    "Ø ICR/Stunde" : MessageLookupByLibrary.simpleMessage("Ø ICR/hora"),
    "Ø ISF/Stunde" : MessageLookupByLibrary.simpleMessage("Ø ISF/hora"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("Insulina Ø por día"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("Proporción de insulina Ø"),
    "Ø KH pro Tag" : MessageLookupByLibrary.simpleMessage("Ø HC por día"),
    "Ø Microbolus pro Tag" : MessageLookupByLibrary.simpleMessage("Ø micro bolo por día"),
    "Ø Zuckerwert" : MessageLookupByLibrary.simpleMessage("Valor glucosa Ø"),
    "Überprüfe Zugriff auf Nightscout ..." : MessageLookupByLibrary.simpleMessage("Verifico acceso a Nightscout..."),
    "Übersetzungen korrigiert" : MessageLookupByLibrary.simpleMessage("Traducción corregida"),
    "日本の" : MessageLookupByLibrary.simpleMessage("日本の")
  };
}
