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

  static m0(startTag0, endTag0) => "Die Möglichkeit für Beta-Funktionen wurde entfernt; die Betaversion ist nun unter ${startTag0}https://nightscout-reporter.zreptil.de/beta${endTag0} zu finden";

  static m1(value) => "Perfil basal diario (${value})";

  static m2(value) => "Tasas basales del perfil (${value})";

  static m3(value) => "Insulina bolo (${value})";

  static m4(value) => "Mahlzeiten Bolus (${value})";

  static m5(value) => "Carbohidratos (${value}g)";

  static m6(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt}dias por catéter)', other: '(${txt} dias por catéter)')}";

  static m7(name, from, to) => "${name} cambiado de ${from} a ${to}";

  static m8(url) => "Compruebe el acceso a ${url}...";

  static m9(value) => "Korrektur Bolus (${value})";

  static m10(value) => "(${value} valores)";

  static m11(value) => "${value} dias";

  static m12(beg, end) => "${beg} - ${end}";

  static m13(max) => "malo (mayor a ${max})";

  static m14(min, max) => "bueno (${min} a ${max})";

  static m15(min) => "no disponible (menor a ${min})";

  static m16(min, max) => "muy bueno (${min} a ${max})";

  static m17(value) => "Alto${value}";

  static m18(unit) => "Factores sensibilidad insulina (ISF)\n1 Ui baja la glucosa por X ${unit}";

  static m19(value) => "${value} g";

  static m20(value) => "g HC (${value} unidades HC)";

  static m21(value) => "Insulina en total (${value})";

  static m22(error, stacktrace) => "Error al cargar los datos: \n${error}\n${stacktrace}";

  static m23(date) => "Cargando datos para ${date}...";

  static m24(value) => "Bajo${value}";

  static m25(min, max) => "malo (${min} a ${max})";

  static m26(min, max) => "bueno (${min} a ${max})";

  static m27(max) => "muy malo (mayor a ${max})";

  static m28(min) => "excelente (menos de ${min})";

  static m29(oldName, newName) => "Cambio de perfil - ${oldName} => ${newName}";

  static m30(howMany, fmt) => "${Intl.plural(howMany, zero: 'no hay datos', one: '1 medicion por minuto', other: 'medición cada ${fmt}minutos')}";

  static m31(howMany, fmt) => "${Intl.plural(howMany, zero: 'no hay datos', one: '1 medicion diaria', other: '${fmt} mediciones diarias')}";

  static m32(howMany, fmt) => "${Intl.plural(howMany, zero: 'no hay datos', one: '1 medicion por hora', other: '${fmt} mediciones por hora')}";

  static m33(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt}dias por ampolla)', other: '(${txt} dias por ampolla)')}";

  static m34(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt}dias por sensor)', other: '(${txt} dias por sensor)')}";

  static m35(value) => "(dev estándar ${value})";

  static m36(unit) => "Objectvo de glucosa\n${unit}";

  static m37(min, max, units) => "Rango objetivo (${min} - ${max} ${units})";

  static m38(value) => "Objectivo";

  static m39(time) => "${time} hora";

  static m40(time) => "${time} am";

  static m41(time) => "${time} pm";

  static m42(begDate) => "valido a partir de ${begDate}";

  static m43(begDate, endDate) => "valido de ${begDate} a ${endDate}";

  static m44(endDate) => "valido hasta ${endDate}";

  static m45(high) => "Valores superior a ${high}";

  static m46(low) => "Valores bajo ${low}";

  static m47(low, high) => "Valores entre ${low} y ${high}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
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
    "1.2.2 - 24.01.2019" : MessageLookupByLibrary.simpleMessage("1.2.2 24.01.2019"),
    "1.2.3 - 04.02.2019" : MessageLookupByLibrary.simpleMessage("1.2.3-04.02.2019"),
    "1.2.4 - 12.02.2019" : MessageLookupByLibrary.simpleMessage("1.2.4 - 12.02.2019"),
    "1.2.5 - xx.03.2019" : MessageLookupByLibrary.simpleMessage("1.2.5 - xx.03.2019"),
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("10% - 90% de los valores"),
    "25%" : MessageLookupByLibrary.simpleMessage("25%"),
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("25% -75% de los valores"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "Absturz behoben, der auftrat, wenn kein passendes Profil für einen Zeitpunkt gefunden werden konnte" : MessageLookupByLibrary.simpleMessage("Arreglada falta que se produjo, cuando no se encontraban perfiles coincidente para un tiempo"),
    "Anmelden" : MessageLookupByLibrary.simpleMessage("Registrar"),
    "Anmeldung erfolgreich" : MessageLookupByLibrary.simpleMessage("Registro necesario"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("Adapta-\nción"),
    "Anzahl Ampullen" : MessageLookupByLibrary.simpleMessage("Número ampollas"),
    "Anzahl Katheter" : MessageLookupByLibrary.simpleMessage("Número de catéteres"),
    "Anzahl Messungen" : MessageLookupByLibrary.simpleMessage("Número de mediciones"),
    "Anzahl Sensoren" : MessageLookupByLibrary.simpleMessage("Número de sensores"),
    "Anzahl der Sensoren zur Analyse hinzugefügt" : MessageLookupByLibrary.simpleMessage("Añadido numero de sensores al analisis"),
    "Auf der Analyseseite kann statt der Anzahl der Werte bei den Zielbereichen jetzt die Standardabweichung der Werte im Zielbereich angezeigt werden." : MessageLookupByLibrary.simpleMessage("En la página del análisis se puede mostrar la desviación estándar de los valores en rango en lugar del número de valores."),
    "Auf der Analyseseite werden nun auch GVI und PGS ausgegeben." : MessageLookupByLibrary.simpleMessage("En la página de análisis, ahora también se muestran GVI y PGS."),
    "Auf der Analyseseite wird jetzt auch die Standardabweichung aller Werte der Periode angezeigt." : MessageLookupByLibrary.simpleMessage("Auf der Analyseseite wird jetzt auch die Standardabweichung aller Werte der Periode angezeigt."),
    "Aufsummierte Werte" : MessageLookupByLibrary.simpleMessage("Datos acumulados"),
    "Ausgewertete Tage" : MessageLookupByLibrary.simpleMessage("Días evaluados"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("Análisis"),
    "Basal" : MessageLookupByLibrary.simpleMessage("Basal"),
    "Basal mit zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Basal con dos décimas"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("Perfil basal"),
    "Basalrate\nIE / Stunde" : MessageLookupByLibrary.simpleMessage("Programa basal\nUI / Hora"),
    "Behandlungen" : MessageLookupByLibrary.simpleMessage("Tratamientos"),
    "Bei der Berechnung der Kohlenhydrate werden weitere Datensätze berücksichtigt" : MessageLookupByLibrary.simpleMessage("Al calcular los carbohidratos se utilizan varios datos"),
    "Beim Auslesen des Profils ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("Al leer el perfil ha ocurrido un error."),
    "Beim Erzeugen des PDF ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("Al crear el PDF ha ocurrido und error."),
    "Beim Laden der Daten wird das entsprechende Datumsformat zur Anzeige verwendet" : MessageLookupByLibrary.simpleMessage("Se utiliza el formato de fecha apropiado al cargar los datos"),
    "Benutzer können ein User-Token angeben, um sich mit geschützten Nightscout-Instanzen zu verbinden" : MessageLookupByLibrary.simpleMessage("Usarios pueden insertar un User-Token para conectar con paginas Nightscout protegidas"),
    "Benutzer können nun gelöscht werden" : MessageLookupByLibrary.simpleMessage("El usuario ya puede ser borrado"),
    "Benutzerdaten" : MessageLookupByLibrary.simpleMessage("Datos del usuario"),
    "Benutzerdaten werden nun verschlüsselt im Browser gespeichert" : MessageLookupByLibrary.simpleMessage("Datos del usario son guardados y protegidos"),
    "Bereite Daten vor..." : MessageLookupByLibrary.simpleMessage("Preparando datos..."),
    "Bestätigung" : MessageLookupByLibrary.simpleMessage("Confirmación"),
    "Bisher fehlende Summenwerte in der Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Añadido sumas en la estatistica diaria"),
    "Bitte einen Zeitraum wählen." : MessageLookupByLibrary.simpleMessage("Por favor elige periodo."),
    "Blutwerte werden jetzt auch bei mmol/L in den Grafiken korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Valores sanguíneos se muestran ahora correctamente en mmol/L en los gráficos."),
    "Bolus" : MessageLookupByLibrary.simpleMessage("Bolus"),
    "Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr." : MessageLookupByLibrary.simpleMessage("Pinchando area de mensajes ya no lo cierra."),
    "Das Control für die Eingabe des Zeitraums wurde angepasst, damit es auf schmalen Display auch korrekt dargestellt wird." : MessageLookupByLibrary.simpleMessage("El control para insertar el periodo se ha ajustado para que se muestre correctamente en pantalla estrecha."),
    "Das Enddatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("La fecha final no es correcta"),
    "Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag." : MessageLookupByLibrary.simpleMessage("El PDF para el perfil básico no fue correcto, si no existia un valor para cada hora."),
    "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren." : MessageLookupByLibrary.simpleMessage("PDF ha sido generado. Si no se visualiza, probablemente es debido a un bloqueador popup. Por favor desactivar bloqueador."),
    "Das Profil-PDF wird nun im Querformat erzeugt, um auch Profile mit vielen Einträgen für die Parameter brauchbar darstellen zu können." : MessageLookupByLibrary.simpleMessage("El PDF con el perfil se produce ahora en modo paisaje para reprensentar perfiles con muchas entradas adecuadamente."),
    "Das Startdatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("La fecha inicial no es correcta"),
    "Das User-Token wird nur benötigt, wenn der Zugriff in Nightscout über AUTH_DEFAULT_ROLES eingeschränkt wurde" : MessageLookupByLibrary.simpleMessage("El token de usuario sólo es necesario si restringió el acceso en Nightscout sobre AUTH_DEFAULT_ROLES"),
    "Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen." : MessageLookupByLibrary.simpleMessage("Datos para los valores de glucosa con formato de fecha incorrecto se leen correctamente."),
    "Daten verschiedener Uploader werden nun besser interpretiert." : MessageLookupByLibrary.simpleMessage("Informaciones de diferentes cargadores de datos ahora se interpretan mejor."),
    "Daten, die von xDrip als sync markiert wurden, werden bei der Auswertung ignoriert." : MessageLookupByLibrary.simpleMessage("Datos que se han marcado por xDrip como sync, se ignoran en la evaluación."),
    "Datenschutzerklärung" : MessageLookupByLibrary.simpleMessage("Declaración de privacidad"),
    "Datum" : MessageLookupByLibrary.simpleMessage("Fecha"),
    "Dauer der Insulinaktivität (DIA)" : MessageLookupByLibrary.simpleMessage("Duración de acción de insulina (DIA)"),
    "Dauer der Kohlenhydrataktivität" : MessageLookupByLibrary.simpleMessage("Duración de accion de carbohidratos"),
    "Der Fehler im Profil, der dazu führte, dass die Werte für ISF und Zielbereich falsch umgerechnet werden, wurde behoben." : MessageLookupByLibrary.simpleMessage("El error que produjo sumar los valores para ISF y el objectivo incorrectamente ha sido corregido."),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("Deutsch"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("Diabetes desde"),
    "Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an" : MessageLookupByLibrary.simpleMessage("La pagina de la analisis ha sido corregida y muestra títulos"),
    "Die Angabe DIA auf der Profilseite wird nun mit zwei Nachkommastellen angezeigt." : MessageLookupByLibrary.simpleMessage("El valor DIA se muestra en la pagina del perfil con dos decimales."),
    "Die Auswahl des Zeitraums ist nun flexibler. Die Auswahl erfolgt in einem Dialog, der die eingestellte Sprache berücksichtigt. Mit der Auswahl der vorbelegten Bereiche (Heute, Letzte Woche, usw.) wird festgelegt, dass beim nächsten Aufruf das aktuelle Datum als Grundlage für den Bereich verwendet wird. Wenn der Bereich direkt im Kalender festgelegt wird, dann gilt dieser beim nächsten Aufruf so wie er festgelegt wurde. Standardmässig ist der erste Tag der Woche jetzt ein Montag. Dieser kann aber durch Anklicken des Wochentags in der Titelzeile des Monats auf die eigene Präferenz festgelegt werden. Die Eingabe der Datumsfelder erfolgt in der Form, die der Sprache entspricht (Tag.Monat.Jahr für deutsch, Monat/Tag/Jahr für englisch)." : MessageLookupByLibrary.simpleMessage("La selección del período ahora es más flexible. La selección se realiza en un diálogo que tiene en cuenta el lenguaje seleccionado. La selección de rangos preestablecidos (hoy en día, la semana pasada, etc.) determina que la fecha actual se utiliza la próxima vez como base para el periodo. Si el rango se establece directamente en el calendario, este sera utilizado próxima vez. De forma predeterminada, el primer día de la semana es lunes. Esto puede ser ajustado haciendo clic en el día de la semana en la barra de título del mes. Los campos de fecha se escriben en el formato que corresponde al lenguaje seleccionado (dia.mes.año para el alemán, mes/día/año para el inglés)."),
    "Die Balken für das Bolusinsulin in der Tagesgrafik werden nun entsprechend dem Maximalwert an Bolusinsulin an dem Tag skaliert." : MessageLookupByLibrary.simpleMessage("La barra de la insulina de bolo en el gráfico díario ahora se escala según el valor máximo de la insulina de bolo en el día."),
    "Die Berechnung der Summenzeile auf der Seite Tagesstatistik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Se ha corregido el cálculo de la fila de totales en la página de estadísticas diarias."),
    "Die Berechnung der tatsächlichen Basalrate wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Se corrigió el cálculo de la tasa basal real."),
    "Die Berechnung des täglichen Insulins berücksichtigt nun auch die SMB." : MessageLookupByLibrary.simpleMessage("El cálculo de insulina diario toma en cuenta también el SMB."),
    "Die Daten, die Du hier eingibst, werden normalerweise im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. In diesem Fall werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("Los datos que introduces aquí, se almacenan normalmente en el navegador localStorage. Esto incluye datos relacionados con la página web que se pueden leer solamente en este sitio web. En este caso, no se utilizan cookies y no se guardan datos en los servidores. Se establece sólo una conexión a la instancia especificada de Nightscout y se leen los datos existentes para crear un documento PDF. Esto puede presentarse al endocrinologo a otras partes interesadas."),
    "Die Farben für Dialoge und Scrollbars wurden angepasst." : MessageLookupByLibrary.simpleMessage("Se han ajustado los colores para diálogos y barras de desplazamiento."),
    "Die Genauigkeit der Insulindosierung wird aus dem Profil ermittelt. Der Wert mit der höchsten Genauigkeit legt fest, mit wieviel Nachkommastellen Basalratenwerte angezeigt werden." : MessageLookupByLibrary.simpleMessage("La exactitud de la dosis de insulina se calcula a base del perfil. El valor con la mayor exactitud determina, cuantos decimales serán mostrados."),
    "Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit." : MessageLookupByLibrary.simpleMessage("La curva de glucosa de gráficos diarios fue liberada de datos ausentes."),
    "Die Icons auf einigen Buttons waren zu nahe am Text" : MessageLookupByLibrary.simpleMessage("Iconos en algunos botones estaban muy cerca del texto"),
    "Die Kohlenhydratangaben auf der Tagesgrafik werden jetzt ohne den Zusatz KH ausgegeben." : MessageLookupByLibrary.simpleMessage("La información sobre los carbohidratos en el gráfico diario se muestran ahora sin la unidad HC."),
    "Die Links zu Nightscout und den Reports von Nightscout im Menü funktionieren jetzt auch richtig, wenn ein Usertoken angegeben wurde." : MessageLookupByLibrary.simpleMessage("Los enlaces a Nightscout y sus evaluaciónes ahora funcionan correctamente si se ha especificado un token de usario."),
    "Die Microboli des Minimed 600 Uploaders werden jetzt auch ermittelt und in der Analyse ausgegeben, wenn sie vorhanden sind." : MessageLookupByLibrary.simpleMessage("Los microbolus del MiniMed Uploader 600 serán también calculado y publicado en el análisis si es que existen."),
    "Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird" : MessageLookupByLibrary.simpleMessage("Borrada la posibilidad den mostrar la URL en el título; aqui ahora se ve el usario actual o su URL"),
    "Die Positionierung der Notizen in der Tagesgrafik wurde korrigiert, so dass sie näher an der Uhrzeit stehen. Die Striche wurden so verkürzt, dass sie nur noch bis zum unteren Rand der Grafik gehen und nicht mehr durch die Wertetabelle." : MessageLookupByLibrary.simpleMessage("La colocación de las notas en el gráfico diario se ha corregido para que estén más cerca de la hora. Las lineas han sido reducidas para que solamente lleguen hasta la parte inferior del gráfico y no la tabla de valor."),
    "Die Profilseite wurde angepasst, damit Einträge für 24 Stunden auf eine Seite passen." : MessageLookupByLibrary.simpleMessage("La página de perfil se ha adaptado para que se muestren los datos de 24 horas en una sola página."),
    "Die Reihenfolge der Formulare kann nun verändert werden. Dazu einfach das Handle auf der linken Seite des Buttons für das Formular anklicken, festhalten und an die Stelle ziehen, vor der es ausgedruckt werden soll." : MessageLookupByLibrary.simpleMessage("Ahora se puede cambiar el orden en que se muestran los informes. Para esto, mantener pulsado el botón del informe, y tirar hacia el lugar deseado antes de ser imprimido."),
    "Die Standardabweichung wird jetzt auch bei mmol/L korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("La desviación estándar se mostrará correctamente ahora también en mmol/L."),
    "Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an" : MessageLookupByLibrary.simpleMessage("La estatistica diaria ahora muestra valores mmol/l correctamente"),
    "Die URL wurde noch nicht festgelegt" : MessageLookupByLibrary.simpleMessage("La URL aún no ha sido determinada"),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("La URL aún no ha sido determinada."),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("La pagina web utiliza generalmente Javascript para resolver las tareas. Para crear el documento PDF se utilizan Javascript y PHP."),
    "Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt" : MessageLookupByLibrary.simpleMessage("Los valores del objectivo estandar se calculan corrctamente en la pagina analisis"),
    "Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools, wie dieses hier, auf die Daten zugreifen dürfen.<br><br>Wenn diese URL geschützt ist, muss ausserdem das UserToken korrekt definiert sein." : MessageLookupByLibrary.simpleMessage("La URL insertada no es accesible. Si la URL es correcta puede ser debido a criterios en Nightscout. La Variable ENABLE debe contener la palabra \"cors\" para que heramientas externas, como esta, puedan acceder a los datos.<br><br>Si la URL esta protegida, ademas tienes que definir correctamente el UserToken."),
    "Die eigenen Grenzwerte auf der Analyseseite in mmol/L werden nun korrekt berechnet." : MessageLookupByLibrary.simpleMessage("Los propios límites en la página de análisis en mmol/L se calculan correctamente."),
    "Die fehlerhafte Platzierug der blutigen Werte bei mmol/L in der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Se ha corregido la falta en mostrar valores de glucosa medidos en sangre en mmol/l en el gráfico diario."),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("Esta pagina genera documentos PDF con los datos almacenados en Nightscout. Para esto es necesario tener acceso a los datos, por lo cual algunos ajustes se almacenarán. Siempre y cuando éstos no estén presentes y válidos, la página no puede hacer nada para usted."),
    "Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden." : MessageLookupByLibrary.simpleMessage("Añadido a esta página. Aparecerá cada al cargar Nightscout Reporter, si no se mostraba en la versión actual. También puede recuperar en el menú."),
    "Dieser Regler legt fest, wie gross eine Ausgabe maximal werden darf, bevor sie auf mehrere PDF-Dateien aufgeteilt wird. Wenn bei Erstellung eines PDFs ein leeres Fenster angezeigt wird, dann hilft es normalerweise, diesen Regler weiter nach links zu bewegen." : MessageLookupByLibrary.simpleMessage("Este mando ajusta el tamaño máximo, antes de ser dividido en varios documentos PDF. Si se muestra una pagina en blanco al crear un PDF, ayuda mover la barra hacia la izquierda."),
    "Diverse Abstürze beim Auslesen der Daten bereinigt" : MessageLookupByLibrary.simpleMessage("Arreglado varias faltas al leer datos"),
    "Eigene Grenzwerte" : MessageLookupByLibrary.simpleMessage("Límites propios"),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die letzten Tage bestimmter Monate nicht im Kalender-Control angezeigt wurden." : MessageLookupByLibrary.simpleMessage("Se ha corregido un error que provocó, que los últimos días de algunos meses no aparecieron en el control de calendario."),
    "Ein Fehler wurde wahrscheinlich behoben, der dazu führt, dass bei manchen Profilen der Wert für DIA nicht korrekt ausgelesen wurde." : MessageLookupByLibrary.simpleMessage("Solucionado un problema, que provocó que en algunos perfiles los valores para el DIA no se han leido correctamente."),
    "Einige Browser sind nicht in der Lage PDF Dateien anzuzeigen, die eine bestimmte Grösse überschreiten. Da das von verschiedenen Faktoren abhängt, die sich nicht ohne Weiteres automatisch ermitteln lassen, gibt es die Möglichkeit, statt einer grossen PDF Datei, die nicht angezeigt werden kann, mehrere kleinere PDF Dateien zu erzeugen, die der Browser anzeigen kann. In den Einstellungen und hier kann diese Grösse festgelegt werden. Diese Seite hier wird nur angezeigt, wenn das PDF aufgeteilt werden musste. Wenn nur ein PDF erzeugt wurde, dann wird es direkt angezeigt." : MessageLookupByLibrary.simpleMessage("Algunos navegadores no son capaz de mostrar PDF de cierto tamaño. Esto depende de varios factores. Existe la posibilidad de crear varios documentos PDF pequeños en vez de uno grande para poder ser mostrado correctamente en el navegador. Se puede elegir el tamaño aqui y en configuraciónes. Aqui solo se muestra si el PDF ha tenido que ser dividido. Si solo se ha creado un PDF se mostrará directamente."),
    "Einige Formulare können nun mit Parametern konfiguriert werden; hierzu den Pfeil am rechten Rand des Formularbuttons anklicken und im aufgeklappten Bereich die entsprechenden Einstellungen vornehmen; der Pfeil erscheint erst, wenn das Formular zum Ausdruck markiert wurde" : MessageLookupByLibrary.simpleMessage("Algunas formas pueden ser configuradas con parámetros; para ello, haga clic en la flecha en el borde derecho de los botones del formulario y insertarlos ajustes apropiados en el área ampliada; la flecha aparecerá sólo si marcó la forma de imprimir"),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("Ajustes"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("Ajustes para la utilisación de la pagina"),
    "Einstellungen von Release-Version übernehmen" : MessageLookupByLibrary.simpleMessage("Aplicar la configuración de la versión del lanzamiento"),
    "English (GB)" : MessageLookupByLibrary.simpleMessage("English (GB)"),
    "English (USA)" : MessageLookupByLibrary.simpleMessage("English (USA)"),
    "Erzeuge PDF..." : MessageLookupByLibrary.simpleMessage("Creando PDF..."),
    "Es gibt in den Einstellungen eine Option, das PDF herunterladen zu lassen, statt es im Browser direkt anzeigen zu lassen. Das wird für Browser wie Edge benötigt." : MessageLookupByLibrary.simpleMessage("Hay una opción para descargar el PDF, en lugar de verlo directamente en la configuración del explorador. Esto es necesario para navegadores como el Edge."),
    "Es gibt jetzt auch die Möglichkeit, Nightscout Reporter in europäischem Englisch darzustellen. Der Unterschied zum amerikanischen Englisch besteht derzeit lediglich im Datumsformat (gb: dd/MM/yyyy, us: MM/dd/yyyy)." : MessageLookupByLibrary.simpleMessage("Ahora también existe la posibilidad de representar Nightscout Repoerter en inglés europeo. La única diferencia esta en el formato de la fecha para el inglés americano (gb: dd/MM/AAAA, U. S.: dd/MM/AAAA)."),
    "Es sind keine Daten für den Ausdruck vorhanden" : MessageLookupByLibrary.simpleMessage("No hay datos para imprimir"),
    "Español" : MessageLookupByLibrary.simpleMessage("Español"),
    "Fehler beim Laden der Daten" : MessageLookupByLibrary.simpleMessage("Error al cargar los datos"),
    "Fehler werden besser abgefangen und mit sinnvollem Text ersetzt." : MessageLookupByLibrary.simpleMessage("Errores son mejor atrapados y sustituidos por texto significativo."),
    "Fehlerhafte Ausgabe der Blutzuckerwerte in der täglichen Grafik korrigiert." : MessageLookupByLibrary.simpleMessage("Corregido la indicación falsa de los valores de glucosa medida en sangre en el grafico diario."),
    "Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt" : MessageLookupByLibrary.simpleMessage("Mediciones erróneas en la evaluación de los gráficos ya no son calculadas; se reconocen por el valor \"NONE\" en los datos del campo \"dirección\""),
    "Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt." : MessageLookupByLibrary.simpleMessage("Mensaje erronep eliminado al cargar perfiles sin fecha de inicio."),
    "Für die Tagesgrafik gibt es jetzt eine Option, um die Aufsummierung nahe beieinander liegender Werte umzuschalten." : MessageLookupByLibrary.simpleMessage("Hay una opción para cambiar a la adición de valores similares."),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("Fecha nacimiento"),
    "Ges." : MessageLookupByLibrary.simpleMessage("Sum."),
    "Geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("HbA1c estimado"),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Tabla de percentil de glucosa"),
    "Glukose im Zielbereich" : MessageLookupByLibrary.simpleMessage("Glucosa detro del objectivo"),
    "Glukose zu hoch" : MessageLookupByLibrary.simpleMessage("Golucosa muy alta"),
    "Glukose zu niedrig" : MessageLookupByLibrary.simpleMessage("Glucosa demasiada baja"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("Curva glucosa"),
    "Glykämischer Variabilitäts Index (GVI)" : MessageLookupByLibrary.simpleMessage("Índice de variabilidad glucémica (GVI)"),
    "Gross" : MessageLookupByLibrary.simpleMessage("Grande"),
    "Heute" : MessageLookupByLibrary.simpleMessage("Hoy"),
    "Hinweise auf Nightscout in der Kopf- und Fusszeile des PDFs ausblenden" : MessageLookupByLibrary.simpleMessage("Esconder notas sobre Nightscout en el encabezado y el pie del PDF"),
    "Hohe Basalraten werden jetzt besser dargestellt." : MessageLookupByLibrary.simpleMessage("Altas tasas basales están mejor representadas."),
    "Höchster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Valor más alto en periodo"),
    "IE" : MessageLookupByLibrary.simpleMessage("UI"),
    "Im Kalender-Control kann kein Datum nach dem aktuellen Tag mehr ausgewählt werden." : MessageLookupByLibrary.simpleMessage("En el control del calendario ya no se puede elegir una fecha en el futuro."),
    "Im Kalender-Control wird ein eingestellter Bereich (Heute, Letzte Woche, etc.) jetzt korrekt auf den aktuellen Tag bezogen." : MessageLookupByLibrary.simpleMessage("En el control del calendario se refiere el periodo elegido (hoy, la semana pasada, etc.) correctamente a la fecha actual."),
    "Im Kalender-Control wird jetzt der Monat des entsprechenden Datums angezeigt, wenn eines der Felder Von oder bis den Fokus erhält." : MessageLookupByLibrary.simpleMessage("En el control de calendario, se muestra el mes correspondiente a la fecha, si uno de los campos contiene De o hasta."),
    "Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert" : MessageLookupByLibrary.simpleMessage("En el PDF los numeros y las fechas tienen el formato del idioma seleccionado"),
    "Im Profil werden jetzt die richtigen Einheiten verwendet (mg/dL oder mmol/l)." : MessageLookupByLibrary.simpleMessage("El perfil ahora muestra las unidades correctas (mg/dL o mmol/l)."),
    "Impressum" : MessageLookupByLibrary.simpleMessage("Aviso legal"),
    "In Firefox ist es jetzt auch möglich, die Hauptseite zu scrollen, wenn sie länger ist, als das Browserfenster." : MessageLookupByLibrary.simpleMessage("Ahora también es posible deslizar la página inicial si es más larga que la ventanilla del navegador Firefox."),
    "In den Einstellungen gibt es einen Regler, der festlegt, wie gross die erzeugten PDF-Dateien maximal sein dürfen. Wenn nur ein leeres PDF erzeugt wird, dann sollte dieser Regler weiter nach links geschoben werden, um die Dateigrösse zu verringern." : MessageLookupByLibrary.simpleMessage("En la configuración hay un controlador que determina el tamaño máximo los archivos PDF. Cuando se crea un PDF sólo en blanco, este controlador se debe mover hacia la izquierda para reducir el tamaño del archivo."),
    "In der Analyse können die Prozentzahlen für die Zielbereiche mit Nachkommazahl angezeigt werden. Das verringert die Differenz zu 100%, wenn man sie zusammenzählt. Der verbleibende Rest sind Rundungsdifferenzen." : MessageLookupByLibrary.simpleMessage("En la analisis ahora se muestran los procentajes para los objectivos con decimales. Esto reduce la diferencia al sumar hasta 100%. El resto es debido al diferencias de redondeo."),
    "In der Auswertung können die Angaben für Material (Katheter, Sensor, Ampulle) mit Nachkommastellen angezeigt werden." : MessageLookupByLibrary.simpleMessage("En la evaluación se pueden mostrar los datos de material (catéter, sensor, ampolla) con decimales."),
    "In der Legende unter der Tagesgrafik wird die Summe der Kohlenhydrate für den Tag angezeigt." : MessageLookupByLibrary.simpleMessage("La cantidad de carbohidratos diarios se mostrará en la leyenda debajo del gráfico del día."),
    "In der Tagesgrafik gibt es eine Option, mit dem man Mahlzeiten- und Korrektur-Boli kenntlich machen lassen kann. Wenn diese Option gesetzt ist, wird ein Bolus, der zu einer Mahlzeit abgegeben wurde mit einer anderen Farbe markiert, als ein Blous zur Korrektur und in der Legende werden diese auch einzeln ausgewiesen." : MessageLookupByLibrary.simpleMessage("In der Tagesgrafik gibt es eine Option, mit dem man Mahlzeiten- und Korrektur-Boli kenntlich machen lassen kann. Wenn diese Option gesetzt ist, wird ein Bolus, der zu einer Mahlzeit abgegeben wurde mit einer anderen Farbe markiert, als ein Blous zur Korrektur und in der Legende werden diese auch einzeln ausgewiesen."),
    "In der Tagesgrafik kann die Anzeige der SMB nun ausgeblendet werden." : MessageLookupByLibrary.simpleMessage("En el gráfico diario ahora se puede ocultar SMB."),
    "In der Tagesgrafik werden jetzt auch Blutzuckermessungen angezeigt. Sie werden als rote Quadrate dargestellt und die zugehörigen Werte in der Tabelle unterhalb der Grafik werden ebenfalls mit roter Schrift angezeigt." : MessageLookupByLibrary.simpleMessage("En el grafico diario ahora se muestran mediciones de glucosa de sangre. Se muestran como cuadrados rojos y sus valores correspondientes en la tabla debajo el gráfico también se muestran con el texto en rojo."),
    "In der Tagesgrafik werden nun SMBs auch angezeigt, wenn die Option für die Darstellung von Insulin akitivert wurde. Man kann festlegen, ob die SMBs an der Glukosekurve oder am Zielwert angezeigt werden." : MessageLookupByLibrary.simpleMessage("En el gráfico diario se muestran los SMB, si la opción para mostrar la insulina es activada. Se puede elegir si se muestran los SMB junto a la curva de la glucosa o al valor objetivo."),
    "In der Tagesgrafik werden nun auch Kohlenhydratkorrekturen angezeigt." : MessageLookupByLibrary.simpleMessage("El gráfico diario ahora también se muestran correcciónes de carbohidratos."),
    "In der Tagesgrafik werden nun auch Reservoirwechsel angezeigt." : MessageLookupByLibrary.simpleMessage("El gráfico diario ahora también se muestra el cambio de depósito."),
    "In der Tagesgrafik werden nun der geschätzte HbA1C und die prozentuale Menge an Bolusinsulin und Basalinsulin für den Tag angezeigt. Diese Anzeige erfolgt innerhalb der Legende, weshalb diese aktiviert sein muss, damit die Werte angezeigt werden." : MessageLookupByLibrary.simpleMessage("En el gráfico diario se muetra la HbA1C estimada y la cantidad porcentual de insulina de bolo e insulina basal para el día. Esto se muestra en la leyenda, por lo cual se debe activar para poder ver los valores."),
    "In der Tagesgrafik wird jetzt eine Tabelle mit halbstündigen Glukosewerten eingeblendet angezeigt. Diese kann über einen Parameter ausgeschaltet werden." : MessageLookupByLibrary.simpleMessage("En el gráfico diario se muestra una tabla con valores de glucosa a la media hora. Esto puede desactivarse mediante un parámetro."),
    "In der Tagesgraphic werden jetzt Insulinwerte und Kohlenhydratwerte zusammengefasst, wenn es mehrere innerhalb einer Stunde gibt. Die Balken werden nach wie vor für jeden Wert einzeln ausgegeben. Auf diese Art sollte es keine überlappende Ausgabe der Werte mehr geben. Die zusammengefassten Werte werden in eckigen Klammern ausgegeben, um anzuzeigen, dass hier Werte aufsummiert wurden." : MessageLookupByLibrary.simpleMessage("Valores de insulina y carbohidratos se juntan en el grafico diario en caso de que haya varios datos durante una hora. Las barras siguen muestradas individualmente para cada valor. De esta manera, no se deben solapar valores. Para indicar que se resumen valores, serán mostrados en corchetes."),
    "In der Tagesstatistik und in den täglichen Grafiken werden jetzt zum Datum die Wochentage mit angezeigt." : MessageLookupByLibrary.simpleMessage("En el diario y los gráficos diarios se muestran la fecha y el dia de la semana."),
    "In der Tagesstatistik wurde die Spalte Varianzkoeffizient hinzugefügt (VarK)." : MessageLookupByLibrary.simpleMessage("En el grafico diario se agregó una columna con el coeficiente de variación (VarK)."),
    "Info-Linien bis zur Kurve zeichnen" : MessageLookupByLibrary.simpleMessage("Conectar lineas de información a la curva"),
    "Initiale Version, alles ist neu!" : MessageLookupByLibrary.simpleMessage("Versión inicial, todo es nuevo!"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("Insulina"),
    "Insulin Kohlenhydrate Verhältnis (ICR)" : MessageLookupByLibrary.simpleMessage("Proporción de hidratos de carbono insulina (ICR)"),
    "Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE" : MessageLookupByLibrary.simpleMessage("Relación insulina carbohidratos (ICR)\nX gr carbohidratos para 1 UI"),
    "Insulin Sensitivitäts Faktoren (ISF)" : MessageLookupByLibrary.simpleMessage("Factores de sensibilidad de insulina (ISF)"),
    "Ja" : MessageLookupByLibrary.simpleMessage("Sí"),
    "Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember" : MessageLookupByLibrary.simpleMessage("Enero|Febrero|Marzo|Abril|Mayo|Junio|Julio|Agosto|Septiembre|Octubre|Noviembre|Diciembre"),
    "Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez" : MessageLookupByLibrary.simpleMessage("Ene|Feb|Mar|Abr|May|Jun|Jul|Ago|Sep|Oct|Nov|Dic"),
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
    "Letzte Woche" : MessageLookupByLibrary.simpleMessage("Semana anterior"),
    "Letzter Monat" : MessageLookupByLibrary.simpleMessage("El mes anterior"),
    "Mahlzeiten- und Korrektur-Bolus trennen" : MessageLookupByLibrary.simpleMessage("Mahlzeiten- und Korrektur-Bolus trennen"),
    "Man kann jetzt mehrere Benutzer anlegen. Das ist nützlich, um mehrere Nightscout-Instanzen auszuwerten (z.B. für Ärzte, Betreuer oder den Entwickler dieser Software)" : MessageLookupByLibrary.simpleMessage("Se pueden inserter varios usarios. Esto es practico para usar varias paginas Nightsout (para doctores, enfermeros, productores de este software)"),
    "Material mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Materiál con décimas"),
    "Max" : MessageLookupByLibrary.simpleMessage("Max"),
    "Median" : MessageLookupByLibrary.simpleMessage("Medio"),
    "Mess-\nwerte" : MessageLookupByLibrary.simpleMessage("Valores medidos"),
    "Min" : MessageLookupByLibrary.simpleMessage("Min"),
    "Mittel-\nwert" : MessageLookupByLibrary.simpleMessage("Valor medio"),
    "Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|Sonntag" : MessageLookupByLibrary.simpleMessage("Lunes|Martes|Miercoles|Jueves|Viernes|Sabado|Domingo"),
    "Mo|Di|Mi|Do|Fr|Sa|So" : MessageLookupByLibrary.simpleMessage("Lu|Ma|Mier|Jue|Vier|Sa|Do"),
    "Nahe zusammen liegende Werte aufsummieren" : MessageLookupByLibrary.simpleMessage("Sumar valores semejantes"),
    "Name" : MessageLookupByLibrary.simpleMessage("Nombre"),
    "Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat." : MessageLookupByLibrary.simpleMessage("Día de nacimiento, nombre y la fecha de inicio de la diabetes, insulina pueden dejarse en blanco, sin tener efectos negativos en la presentación del PDF."),
    "Nein" : MessageLookupByLibrary.simpleMessage("No"),
    "Neue Option im Profil, um fortlaufende Zeiten mit gleichen Werten zu einem Eintrag zusammen zu fassen." : MessageLookupByLibrary.simpleMessage("Nueva opción en el perfil resumir tiempo continuo con los mismos valores a un ingreso."),
    "Neuer Parameter für die Tagesgrafik, der festlegt, ob die Linien für die Notizen unter der Grafik bis zur Glukosekurve gezeichnet werden sollen oder nicht." : MessageLookupByLibrary.simpleMessage("Nuevo parámetro para el gráfico diario que determina si las líneas de las notas deben establecerse hasta la curva de glucosa o no."),
    "Neues PDF für eine Wochengrafik hinzugefügt, auf der die Glukosekurven der Woche übereinander gelegt werden." : MessageLookupByLibrary.simpleMessage("Añadido nuevo PDF para un gráfico semanal en el que las curvas de glucosa de la semana se colocan una sobre la otra."),
    "Neuester Tag zuerst" : MessageLookupByLibrary.simpleMessage("Empezando con el dia reciente"),
    "Niedrigster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Valor más bajo en periodo"),
    "Nightscout Berichte" : MessageLookupByLibrary.simpleMessage("Informes Nightscout"),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("Página Nightscout"),
    "Normal" : MessageLookupByLibrary.simpleMessage("Normal"),
    "Notiz" : MessageLookupByLibrary.simpleMessage("Nota"),
    "Notizen" : MessageLookupByLibrary.simpleMessage("Notas"),
    "Ok" : MessageLookupByLibrary.simpleMessage("Ok"),
    "PDF anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar PDF"),
    "PDF erneut erzeugen" : MessageLookupByLibrary.simpleMessage("Volver a crear PDF"),
    "PDF für Profildaten" : MessageLookupByLibrary.simpleMessage("PDF para los datos del perfil"),
    "PDF herunterladen (bei einigen Browsern benötigt)" : MessageLookupByLibrary.simpleMessage("Descargar PDF (necesario para algunos navegadores)"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("Abrir PDF en la misma ventana"),
    "Patient Glykämischer Status (PGS)" : MessageLookupByLibrary.simpleMessage("Estado glucémico paciente (PGS)"),
    "Polski" : MessageLookupByLibrary.simpleMessage("Polski"),
    "Problem auf GitHub melden" : MessageLookupByLibrary.simpleMessage("Comunicar el problema en GitHub"),
    "Profil" : MessageLookupByLibrary.simpleMessage("Perfil"),
    "Profil-Basalrate" : MessageLookupByLibrary.simpleMessage("Perfil basal"),
    "Profileinstellungen" : MessageLookupByLibrary.simpleMessage("Configuraciónes de perfil"),
    "Profilwechsel" : MessageLookupByLibrary.simpleMessage("Cambio de perfil"),
    "Protokoll" : MessageLookupByLibrary.simpleMessage("Protocolo"),
    "Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse." : MessageLookupByLibrary.simpleMessage("Cambio del orden de las páginas PDF - tabla de percentil ahora viene después del análisis."),
    "Reservoirwechsel" : MessageLookupByLibrary.simpleMessage("Cambio deposito"),
    "SMB" : MessageLookupByLibrary.simpleMessage("SMB"),
    "SMB Werte anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar valores SMB"),
    "SMB an der Kurve platzieren" : MessageLookupByLibrary.simpleMessage("Mostrar SMB en la linea"),
    "Schliessen" : MessageLookupByLibrary.simpleMessage("Cerrar"),
    "Schliessen Button im Nachrichtenbereich hinzugefügt." : MessageLookupByLibrary.simpleMessage("Añadido botón cerrar en el panel de mensajes."),
    "Sensorwechsel" : MessageLookupByLibrary.simpleMessage("Cambio de sensor"),
    "Soll der Benutzer mit der URL" : MessageLookupByLibrary.simpleMessage("El usuario con la dirección URL debe"),
    "Spalte HbA1c" : MessageLookupByLibrary.simpleMessage("Columna HbA1c"),
    "Spalte HbA1c zu Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Añadido columna HbA1c a las estatistica diaria"),
    "Spalte Messwerte" : MessageLookupByLibrary.simpleMessage("Columna de valores de medición"),
    "Spalte Standardabweichung" : MessageLookupByLibrary.simpleMessage("Columna desviación estandar"),
    "Spalte Variationskoeffizient" : MessageLookupByLibrary.simpleMessage("Columna coeficiente de variación"),
    "Spalten Perzentile" : MessageLookupByLibrary.simpleMessage("Columna percentiles"),
    "Spaltenbreite der Informationen in der Analyse erhöht" : MessageLookupByLibrary.simpleMessage("Ampliado columna de información en la pagina analisis"),
    "Speichern" : MessageLookupByLibrary.simpleMessage("Guardar"),
    "Standardabweichung" : MessageLookupByLibrary.simpleMessage("Standardabweichung"),
    "Standardabweichung statt Anzahl" : MessageLookupByLibrary.simpleMessage("Desviación estándar en lugar de número"),
    "Standardgrenzwerte" : MessageLookupByLibrary.simpleMessage("Límites estándar"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("h\ndesv."),
    "Stunden" : MessageLookupByLibrary.simpleMessage("Horas"),
    "Summen für Bolus Insulin, Basalrate für den Tag und Basalrate aus dem Profil zur Tagesgrafik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Añadido sumas para insulina de bolo, el perfil básico para el día y el perfil básico a los gráficos de día"),
    "Symbole (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Símbolos (catéter etc)"),
    "TDD" : MessageLookupByLibrary.simpleMessage("TDD"),
    "Tabelle mit Glukosewerten" : MessageLookupByLibrary.simpleMessage("Tabla con valores glucosa"),
    "Tages-Basalrate" : MessageLookupByLibrary.simpleMessage("Perfil basal diario"),
    "Tagesanalyse" : MessageLookupByLibrary.simpleMessage("Analisis diaria"),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("Grafico diario"),
    "Tagesgrafikparameter zur Anzeige der Legende" : MessageLookupByLibrary.simpleMessage("Parámetros gráficos diarios para mostrar la leyenda"),
    "Tagesgrafikparameter zur Anzeige von Notizen" : MessageLookupByLibrary.simpleMessage("Parámetros gráficos diarios para la visualización de notas"),
    "Tagesgrafikparameter zur umgekehrten Sortierung hinzugefügt. Die Tage werden damit beginnend mit dem höchsten Datum ausgegeben." : MessageLookupByLibrary.simpleMessage("Añadido parámetros gráfico diario con clasificación inversa. Los días se muestran a partir de la fecha más reciente."),
    "Tagesnamen in Grafik anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar dias en el grafico"),
    "Tagesnotizen" : MessageLookupByLibrary.simpleMessage("Notas diarias"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("Estatistica diaria"),
    "Temporäre Basalraten" : MessageLookupByLibrary.simpleMessage("Tasas basales temporales"),
    "Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt" : MessageLookupByLibrary.simpleMessage("Perfiles temporales con valores absolutes son mostrados correctamente"),
    "Titelangaben für Datumsbereiche auf den PDFs vereinheitlicht" : MessageLookupByLibrary.simpleMessage("Información título estandardizado para intervalos de fechas en los archivos PDF"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("Hora"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("Hora"),
    "Unbegrenzt" : MessageLookupByLibrary.simpleMessage("Sin límite"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("URL Nightscout API (https://xxx.herokuapp.com)"),
    "User-Token" : MessageLookupByLibrary.simpleMessage("Token de usuario"),
    "VarK\nin %" : MessageLookupByLibrary.simpleMessage("VarK\nin %"),
    "Verbinde zu Google Drive..." : MessageLookupByLibrary.simpleMessage("Conectando a Google Drive..."),
    "Verbinde zu Google..." : MessageLookupByLibrary.simpleMessage("Conectar con Google..."),
    "Verbindung zu Google Drive herstellen" : MessageLookupByLibrary.simpleMessage("Establecer conección con Google Drive"),
    "Verbindung zu Google Drive trennen" : MessageLookupByLibrary.simpleMessage("Desconectar de Google Drive"),
    "Version" : MessageLookupByLibrary.simpleMessage("Versión"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("Distribuición"),
    "Vier Grafiken pro Seite" : MessageLookupByLibrary.simpleMessage("Cuatro graficos por página"),
    "ViewWhatsnewComponent0__message_79" : m0,
    "Von" : MessageLookupByLibrary.simpleMessage("De"),
    "Warum werde ich mit mehreren Buttons genervt, statt eine einzelne PDF angezeigt zu kriegen?" : MessageLookupByLibrary.simpleMessage("¿Por qué me molestan varios botones en lugar de obtener un PDF único?"),
    "Was bisher geschah..." : MessageLookupByLibrary.simpleMessage("Lo que sucedió hasta ahora..."),
    "Wenn Sonderzeichen in den Daten vorhanden sind (z.B. Smileys in den Notizen), führte das zu einem Absturz während der PDF-Erstellung. Das wurde behoben, indem diese Sonderzeichen aus der Ausgabe entfernt werden." : MessageLookupByLibrary.simpleMessage("Caracteres especiales en los datos (como emoticonos en las notas) llevaron a fallar la creación del PDF. Esto se ha solucionado eliminando estos caracteres especiales."),
    "Wenn das erzeugte PDF zu gross wird, wird es nun auf mehrere PDF-Dateien aufgeteilt. In diesem Fall wird es nicht direkt geöffnet, sondern es wird eine Liste mit durchnummerierten Buttons angezeigt. Diese Buttons öffnen bei Betätigung das entsprechende PDF und erhalten einen Haken, um anzuzeigen, dass es geöffnet wurde. Das sollte es erleichtern, die PDFs nacheinander zu öffnen, weil normalerweise der Browser im Hintergrund verschwindet, wenn ein neues Fenster aufgemacht wird." : MessageLookupByLibrary.simpleMessage("Si el PDF generado es demasiado grande, ahora se divide en varios archivos PDF. En este caso no se abrirá directamente, pero aparecerá una lista de botones numerados. Estos botones abren el PDF correspondiente y se indicará que se ha abierto. Debería ser más fácil abrir los archivos PDF uno tras otro, por que generalmente el navegador en segundo plano desaparece cuando se abre una ventana nueva."),
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
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("Funciones adicionales"),
    "Zusätzliche Informationen zu den PDFs und im UI hinzugefügt" : MessageLookupByLibrary.simpleMessage("Añadido información adicional sobre los documentos PDF y en Ui"),
    "Zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Dos décimas"),
    "bis" : MessageLookupByLibrary.simpleMessage("hasta"),
    "dd.MM.yyyy" : MessageLookupByLibrary.simpleMessage("dd/MM/yyyy"),
    "g / Stunde" : MessageLookupByLibrary.simpleMessage("gr / hora"),
    "gesch. HbA1c" : MessageLookupByLibrary.simpleMessage("hbA1c estim."),
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
    "msgISF" : m18,
    "msgKH" : m19,
    "msgKHBE" : m20,
    "msgLegendTDD" : m21,
    "msgLoadingData" : m22,
    "msgLoadingDataFor" : m23,
    "msgLow" : m24,
    "msgPGSBad" : m25,
    "msgPGSGood" : m26,
    "msgPGSVeryBad" : m27,
    "msgPGSVeryGood" : m28,
    "msgProfileSwitch" : m29,
    "msgReadingsInMinutes" : m30,
    "msgReadingsPerDay" : m31,
    "msgReadingsPerHour" : m32,
    "msgReservoirDays" : m33,
    "msgSensorDays" : m34,
    "msgStdAbw" : m35,
    "msgTarget" : m36,
    "msgTargetArea" : m37,
    "msgTargetValue" : m38,
    "msgTimeOfDay24" : m39,
    "msgTimeOfDayAM" : m40,
    "msgTimeOfDayPM" : m41,
    "msgValidFrom" : m42,
    "msgValidRange" : m43,
    "msgValidTo" : m44,
    "msgValuesAbove" : m45,
    "msgValuesBelow" : m46,
    "msgValuesIn" : m47,
    "ok" : MessageLookupByLibrary.simpleMessage("ok"),
    "umgekehrte Sortierung" : MessageLookupByLibrary.simpleMessage("orden inverso"),
    "verwerfen" : MessageLookupByLibrary.simpleMessage("descartar"),
    "wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("verdaderamente ser eliminado?"),
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Basal por día"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("Ø Bolo por día"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("Insulina Ø por día"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("Proporción de insulina Ø"),
    "Ø KH pro Tag" : MessageLookupByLibrary.simpleMessage("Ø HC por día"),
    "Ø Microbolus pro Tag" : MessageLookupByLibrary.simpleMessage("Ø micro bolo por día"),
    "Ø Zuckerwert" : MessageLookupByLibrary.simpleMessage("Valor glucosa Ø"),
    "Überprüfe Zugriff auf Nightscout ..." : MessageLookupByLibrary.simpleMessage("Verifico acceso a Nightscout..."),
    "Übersetzungen korrigiert" : MessageLookupByLibrary.simpleMessage("Traducción corregida")
  };
}
