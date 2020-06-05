// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr_FR locale. All the
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
  get localeName => 'fr_FR';

  static m0(count) => "${Intl.plural(count, zero: '', one: '1 page', other: '${count} pages')}";

  static m1(count) => "${Intl.plural(count, zero: '', one: '1 page ou plus', other: '${count} pages ou plus')}";

  static m2(time) => "Le débit basal est valide depuis ${time} et n\'inclut aucune modification temporaire.";

  static m3(unit) => "Ce débit de basal a été actif le ${unit}.";

  static m4(value) => "Débit basal pour la journée (${value})";

  static m5(value) => "Débit basal du profil (${value})";

  static m6(value) => "Bolus d\'insuline (${value})";

  static m7(value) => "CV [${value}%]";

  static m8(scale, intercept, slope) => "Calibration (échelle ${scale} / intercepter ${intercept} / pente ${slope})";

  static m9(value) => "Bolus repas (${value})";

  static m10(value) => "Glucides (${value} g)";

  static m11(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} jour par cathéter)', other: '(${txt} jours par cathéter)')}";

  static m12(name, from, to) => "${name} ${from} => ${to}";

  static m13(url) => "Vérification de l\'accès à ${url}...";

  static m14(value) => "Bolus de correction (${value})";

  static m15(value) => "${Intl.plural(value, zero: '', one: 'No value', other: '${value} mesures')}";

  static m16(value) => "${value} Jours";

  static m17(hours, minutes) => "${hours} h ${minutes} m";

  static m18(beg, end) => "${beg} - ${end}";

  static m19(max) => "mauvais (supérieur à ${max})";

  static m20(min, max) => "bon (${min} à ${max})";

  static m21(min) => "non disponible (moins de ${min})";

  static m22(min, max) => "très bon (${min} à ${max})";

  static m23(unit, value) => "Intensité Hyper\n[${unit} x min²]";

  static m24(unit) => "L\'intensité de l\'hyperglycémie par jour (valeurs supérieures ou égales à ${unit}).";

  static m25(unit, value) => "Intensité Hypo\n[${unit} x min²]";

  static m26(unit) => "L\'intensité de l\'hypoglycémie par jour (valeurs inférieures ou égales à ${unit}).";

  static m27(value) => "Valeur Haute${value}";

  static m28(value) => "Historique ${value}";

  static m29(value) => "Hypoglycémies (< ${value})";

  static m30(unit) => "Sensibilité à l\'insuline (ISF) 1 Unité d\'insuline réduit la glycémie de X ${unit}";

  static m31(value) => "${value}g";

  static m32(value) => "g CH (${value} BU)";

  static m33(value) => "Dose journalière totale (${value})";

  static m34(error, stacktrace) => "Erreur lors du chargement des données : ${error} ${stacktrace}";

  static m35(date) => "Chargement des données pour ${date}...";

  static m36(insulin, unit) => "Microbolus ${insulin} ${unit}";

  static m37(insulin, unit) => "SMB ${insulin} ${unit}";

  static m38(percent, duration) => "débit de base temporaire ${percent}% / ${duration} min";

  static m39(value, duration) => "Basale temporaire ${value} / ${duration} min";

  static m40(target, duration, reason) => "cible temporaire ${target} pour ${duration} min, raison: ${reason}";

  static m41(value) => "Valeur Basse${value}";

  static m42(gluc, unit) => "Valeur de glycémie ${gluc} ${unit}";

  static m43(unit, value) => "Glycémie moyenne\n[${unit}]";

  static m44(hba1c) => "La valeur glycémique moyenne de la période spécifiée.";

  static m45(min, max) => "mauvais (${min} à ${max})";

  static m46(min, max) => "bon (${min} à ${max})";

  static m47(max) => "très mauvais (supérieur à ${max})";

  static m48(min) => "excellent (moins de ${min})";

  static m49(oldName, newName) => "Changement de profil - ${oldName} => ${newName}";

  static m50(oldName, newName, duration) => "Changement de profil - ${oldName} => ${newName} pour ${duration} minutes";

  static m51(howMany, fmt) => "${Intl.plural(howMany, zero: 'Aucune valeur disponible', one: '1 valeur par minute', other: 'valeur chaque ${fmt} minutes')}";

  static m52(howMany, fmt) => "${Intl.plural(howMany, zero: 'Aucune valeur disponible', one: '1 valeur par jour', other: '${fmt} valeurs par jour')}";

  static m53(howMany, fmt) => "${Intl.plural(howMany, zero: 'Aucune valeur disponible', one: '1 valeur par heure', other: '${fmt} valeurs par heure')}";

  static m54(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} jour par réservoir)', other: '(${txt} jours par réservoir)')}";

  static m55(value) => "SMB (${value})";

  static m56(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} jour par capteur)', other: '(${txt} jours par capteur)')}";

  static m57(low, high, unit) => "Utiliser la zone cible standard (${low} ${unit} - ${high} ${unit})";

  static m58(value) => "(Éc.type ${value})";

  static m59(value) => "ToR [${value}min/d]";

  static m60(min, max) => "La durée quotidienne en minutes dans laquelle les valeurs sont en dehors de l\'intervalle ${min} à ${max}.";

  static m61(unit) => "Zone cible de glycémies ${unit}";

  static m62(min, max, units) => "Plage cible (${min} - ${max} ${units})";

  static m63(value) => "Valeur cible";

  static m64(time) => "${time}";

  static m65(time) => "${time} am";

  static m66(time) => "${time} pm";

  static m67(begDate) => "valide depuis ${begDate}";

  static m68(begDate, endDate) => "valide de ${begDate} à ${endDate}";

  static m69(endDate) => "valide jusqu\'à ${endDate}";

  static m70(high) => "Valeurs supérieures à ${high}";

  static m71(low) => "Valeurs inférieures à ${low}";

  static m72(low, high) => "Valeurs entre ${low} et ${high}";

  static m73(low, high) => "Plage cible (${low} - ${high})";

  static m74(value) => "Valeurs élevées (${value})";

  static m75(value) => "Valeurs basses (${value})";

  static m76(value) => "Valeurs très élevées ( > ${value})";

  static m77(value) => "Valeurs très basses (< ${value})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "0,0 bis 2,0" : MessageLookupByLibrary.simpleMessage("0,0 à 2,0"),
    "1 Minute" : MessageLookupByLibrary.simpleMessage("1 minute"),
    "1 Stunde" : MessageLookupByLibrary.simpleMessage("1 heure"),
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
    "1.2.9 - 15.04.2019" : MessageLookupByLibrary.simpleMessage("1.2.8 - 11/04/2019"),
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
    "10%" : MessageLookupByLibrary.simpleMessage("10%"),
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("10% - 90% des valeurs"),
    "15 Minuten" : MessageLookupByLibrary.simpleMessage("15 minutes"),
    "2,1 bis 3,0" : MessageLookupByLibrary.simpleMessage("2,1 à 3,0"),
    "25%" : MessageLookupByLibrary.simpleMessage("25%"),
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("25% - 75% des valeurs"),
    "3,1 bis 4,0" : MessageLookupByLibrary.simpleMessage("3,1 à 4,0"),
    "30 Minuten" : MessageLookupByLibrary.simpleMessage("30 minutes"),
    "4,1 bis 4,5" : MessageLookupByLibrary.simpleMessage("4,1 à 4,5"),
    "5 Minuten" : MessageLookupByLibrary.simpleMessage("5 minutes"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "90%" : MessageLookupByLibrary.simpleMessage("90%"),
    "<br><br>Wenn diese URL geschützt ist, muss ausserdem der Zugriffsschlüssel korrekt definiert sein. Diesen erreicht man über \"Administrator-Werkzeuge\" auf der persönlichen Nightscout Seite." : MessageLookupByLibrary.simpleMessage("<br> <br> Si cette URL est protégée, le jeton d\'accès doit également être correctement défini. Ceci peut être fait via \"Outils d\'administration\" sur la page personnelle de Nightscout ."),
    "Absturz behoben, der auftrat, wenn kein passendes Profil für einen Zeitpunkt gefunden werden konnte" : MessageLookupByLibrary.simpleMessage("Correction d\'un plantage qui s\'est produit quand aucun profil correspondant n\'a pu être trouvé pendant un certain temps"),
    "Acht" : MessageLookupByLibrary.simpleMessage("Huit"),
    "Alle Werte für den Tag anzeigen" : MessageLookupByLibrary.simpleMessage("Afficher toutes les valeurs pour la journée"),
    "Alles" : MessageLookupByLibrary.simpleMessage("Tous"),
    "Allgemeines" : MessageLookupByLibrary.simpleMessage("Général"),
    "Als ersten Tag der Woche festlegen" : MessageLookupByLibrary.simpleMessage("Définir comme premier jour de la semaine"),
    "Ampullenwechsel" : MessageLookupByLibrary.simpleMessage("Changement de réservoir"),
    "Anmelden" : MessageLookupByLibrary.simpleMessage("Se connecter"),
    "Anmeldung bei Google..." : MessageLookupByLibrary.simpleMessage("Connexion à Google…"),
    "Anmeldung erfolgreich" : MessageLookupByLibrary.simpleMessage("Connexion réussie"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("Réglage"),
    "Anzahl Ampullenwechsel" : MessageLookupByLibrary.simpleMessage("Nombre de changement de réservoir"),
    "Anzahl Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Nombre de changements de cathéters"),
    "Anzahl Messungen" : MessageLookupByLibrary.simpleMessage("Nombre de mesures"),
    "Anzahl Sensorenwechsel" : MessageLookupByLibrary.simpleMessage("Nombre de changements de capteurs"),
    "Anzahl Unterzuckerungen" : MessageLookupByLibrary.simpleMessage("Nombre d\'hypoglycémies"),
    "Anzahl der Sensoren zur Analyse hinzugefügt" : MessageLookupByLibrary.simpleMessage("Nombre de capteurs ajouté à l\"analyse"),
    "Anzeigeeinstellungen" : MessageLookupByLibrary.simpleMessage("Paramètres d\'affichage"),
    "Auf 10be muss beim Server in den Standardeinstellungen der Haken bei \"cors\" aktiviert werden, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen. Wenn \"cors\" aktiviert wurde, muss auf dem Server eventuell noch ReDeploy gemacht werden, bevor es wirklich verfügbar ist." : MessageLookupByLibrary.simpleMessage("Sur 10be, les paramètres par défaut du serveur doivent activer la case à cocher \"cors\" pour que les outils externes comme celui-ci puissent accéder aux données. Si \"cors\" a été activé, le redéploiement devra être fait sur le serveur avant d\'être réellement disponible."),
    "Auf Kacheln Bilder statt Namen anzeigen" : MessageLookupByLibrary.simpleMessage("Afficher les images au lieu des noms sur les tuiles"),
    "Auf den Kacheln können nun Bilder statt der Namen angezeigt werden. Die Bilder zeigen dann das ungefähre Aussehen der entsprechenden Seite an. Sie entsprechen nicht den tatsächlichen Daten, sondern sind nur eine visuelle Darstellung, die es manchem Benutzer vielleicht einfacher machen, die gewünschten Seiten schneller auszuwählen. Die Aktivierung der Bilder erfolgt im Einstellungsdialog." : MessageLookupByLibrary.simpleMessage("Les images peuvent maintenant être affichées sur les tuiles au lieu des noms. Les images affichent ensuite l\'apparence approximative de la page correspondante. Elles ne correspondent pas aux données réelles, mais ce ne sont que des représentations visuelles qui peuvent faciliter la sélection rapide des pages désirées. L\'activation des images peut se faire en utilisant la boîte de dialogue des paramètres."),
    "Auf den Seiten Profil und Basalrate wird in der Titelzeile jetzt wieder das Datum angezeigt, ab dem das Profil gilt." : MessageLookupByLibrary.simpleMessage("Sur les pages de profil et de débit de base, la barre de titre montre à nouveau la date de début de ce profil."),
    "Auf der Analyseseite kann statt der Anzahl der Werte bei den Zielbereichen jetzt die Standardabweichung der Werte im Zielbereich angezeigt werden." : MessageLookupByLibrary.simpleMessage("L\'écart type des valeurs dans la zone cible peut maintenant être affiché sur la page d\'analyse au lieu du nombre de mesures."),
    "Auf der Analyseseite werden nun auch GVI und PGS ausgegeben." : MessageLookupByLibrary.simpleMessage("La page d\'analyse montre maintenant les GVI et PGS."),
    "Auf der Analyseseite wird jetzt auch die Standardabweichung aller Werte der Periode angezeigt." : MessageLookupByLibrary.simpleMessage("Maintenant, l\'écart type de toutes les valeurs de la période sera affiché sur la page d\'analyse."),
    "Auf der Profilseite wurde die Spalte für die Werte von ICR verbreitert." : MessageLookupByLibrary.simpleMessage("Augmentation de la largeur de la colonne ICR sur la page de profil."),
    "Auf der Seite \"Profil\" wird die Gültigkeit jetzt mit Uhrzeit angezeigt." : MessageLookupByLibrary.simpleMessage("La validité est maintenant affichée avec l\'heure sur la page \"Profil\"."),
    "Auf der Seite \"Stündliche Statistik\" gibt es eine neue Option, um auch Spalten mit 10% und 90% anzeigen zu lassen." : MessageLookupByLibrary.simpleMessage("Il y a une nouvelle option sur la page \"Statistiques horaires\" pour afficher également les colonnes avec 10% et 90%."),
    "Aufhebung von temp. Ziel" : MessageLookupByLibrary.simpleMessage("Annuler le basal temporaire"),
    "Aufsummierte Werte" : MessageLookupByLibrary.simpleMessage("Valeurs totalisées"),
    "Aus den Profilen ermitteln" : MessageLookupByLibrary.simpleMessage("Extraire depuis les sources"),
    "Ausgabe" : MessageLookupByLibrary.simpleMessage("Sortie"),
    "Ausgabe Parameter" : MessageLookupByLibrary.simpleMessage("Paramètres de sortie"),
    "Ausgewertete Tage" : MessageLookupByLibrary.simpleMessage("Jours évalués"),
    "Ausgewählter Zeitraum" : MessageLookupByLibrary.simpleMessage("Période sélectionnée"),
    "Ausrichtung" : MessageLookupByLibrary.simpleMessage("Orientation"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("Analyse"),
    "Automatisch" : MessageLookupByLibrary.simpleMessage("Automatique"),
    "Automatisch_theme selection - automatic" : MessageLookupByLibrary.simpleMessage("Automatique"),
    "Basal" : MessageLookupByLibrary.simpleMessage("Débit de base"),
    "Basal 0%" : MessageLookupByLibrary.simpleMessage("Débit de base 0%"),
    "Basal ges." : MessageLookupByLibrary.simpleMessage("Débit de base total"),
    "Basal mit zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Débit de base avec deux décimales"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("Débit basal"),
    "Basalrate\nIE / Stunde" : MessageLookupByLibrary.simpleMessage("Débit de base en Unité/heure"),
    "Basalrate anzeigen" : MessageLookupByLibrary.simpleMessage("Afficher le débit basal"),
    "Batteriewechsel" : MessageLookupByLibrary.simpleMessage("Changement de batterie"),
    "Behandlungen" : MessageLookupByLibrary.simpleMessage("Traitements"),
    "Bei Tagesgrafiken und Wochengrafiken gibt es jetzt die Möglichkeit 1, 2, 4, 8 oder 16 Grafiken auf einer Seite zu platzieren." : MessageLookupByLibrary.simpleMessage("Dans les graphiques quotidiens et hebdomadaires, il est maintenant possible de placer 1, 2, 4, 8 ou 16 images sur une page."),
    "Bei der Auswertung kann nun ein Bereich angezeigt werden, in dem die Anzahl an Unterzuckerungen während des ausgewählten Zeitraums und der Zeitpunkt der letzten Unterzuckerung angezeigt werden." : MessageLookupByLibrary.simpleMessage("Dans l\'analyse, une zone peut maintenant être affichée, montrant le nombre d\'hypoglycémies dans la période sélectionnée et l\"heure de la dernière hypoglycémie."),
    "Bei der Basalrate und dem Profil gibt es nun eine Option jeweils nur das letzte im entsprechenden Zeitraum ausgeben zu lassen. Das verringert die Blätterflut bei häufigem Profilwechsel." : MessageLookupByLibrary.simpleMessage("Avec le débit de base et le profil, il est maintenant possible de ne faire imprimer que le dernier au cours de la période correspondante. Cela réduit le nombre de pages avec des changements fréquents de profils / débits de base."),
    "Bei der Berechnung der Kohlenhydrate werden weitere Datensätze berücksichtigt" : MessageLookupByLibrary.simpleMessage("Des données supplémentaires sont utilisées pour le calcul des glucides"),
    "Beim Auslesen des Profils ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("Une erreur est survenue lors de la lecture du profil."),
    "Beim CGP werden die aktuellen Werte jetzt in der Legende angezeigt." : MessageLookupByLibrary.simpleMessage("Le CGP affiche maintenant les valeurs actuelles dans la légende."),
    "Beim Erzeugen des PDF ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("Une erreur s’est produite lors de la création du PDF."),
    "Beim Glukose Perzentil Diagramm kann man nun ein Maximum für die Skalierung festlegen. Wenn es auf \"Automatisch\" gesetzt wird, wird das Maximum wie bisher auch ermittelt. Bei einem anderen Wert wird die Obergrenze für das Diagramm auf diesen Wert festgesetzt. Damit ist es leichter möglich zwei Diagramme miteinander zu vergleichen, deren Obergrenze unterschiedlich ist." : MessageLookupByLibrary.simpleMessage("Dans le diagramme Percentile de glucose, vous pouvez maintenant définir un maximum pour la mise à l\'échelle. S\'il est réglé sur \"Automatique\", le maximum est déterminé comme avant. Pour toute autre valeur, la limite supérieure du diagramme est définie à cette valeur. Cela facilite la comparaison de deux diagrammes avec des limites supérieures différentes."),
    "Beim Laden der Behandlungsdaten werden doppelte Datensätze herausgefiltert." : MessageLookupByLibrary.simpleMessage("Lorsque les données de traitement sont chargées, les enregistrements de données en double sont filtrés."),
    "Beim Laden der Daten wird das entsprechende Datumsformat zur Anzeige verwendet" : MessageLookupByLibrary.simpleMessage("Lors du chargement des données, le format de date correspondant est utilisé pour l\'affichage de la progression"),
    "Beim Perzentil Diagramm gibt es eine neue Option, mit der man die Basalrate unter dem Diagramm anzeigen lassen kann. Da das Diagramm normalerweise einen grösseren Zeitraum umspannt, wird dort die Basalrate angezeigt, die zu Beginn des Zeitraums aktiv war." : MessageLookupByLibrary.simpleMessage("Dans le diagramme percentile, il y a une nouvelle option avec laquelle le débit de basal peut être affiché sous le diagramme. Comme le diagramme s\'étend normalement sur une période plus longue, le débit de basal qui était actif au début de la période s\'affiche."),
    "Benutzer können ein User-Token angeben, um sich mit geschützten Nightscout-Instanzen zu verbinden" : MessageLookupByLibrary.simpleMessage("Les utilisateurs peuvent spécifier un jeton utilisateur pour se connecter aux instances protégées de Nightscout"),
    "Benutzer können nun gelöscht werden" : MessageLookupByLibrary.simpleMessage("Les utilisateurs peuvent maintenant être supprimés"),
    "Benutzerdaten" : MessageLookupByLibrary.simpleMessage("Données d\'utilisateur"),
    "Benutzerdaten werden nun verschlüsselt im Browser gespeichert" : MessageLookupByLibrary.simpleMessage("Les données de l\'utilisateur sont maintenant stockées chiffrées dans le navigateur"),
    "Berechnete IE für Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("U calculées pour les glucides"),
    "Berechnete IE für Kohlenhydrate anzeigen" : MessageLookupByLibrary.simpleMessage("Montrer les unités calculées pour les glucides"),
    "Bereite Daten vor..." : MessageLookupByLibrary.simpleMessage("Préparation des données..."),
    "Bestätigung" : MessageLookupByLibrary.simpleMessage("Confirmation"),
    "Bewegung" : MessageLookupByLibrary.simpleMessage("Activités"),
    "Bewegung anzeigen" : MessageLookupByLibrary.simpleMessage("Montrer les activités"),
    "Bis" : MessageLookupByLibrary.simpleMessage("À"),
    "Bisher fehlende Summenwerte in der Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Ajout des totaux manquants dans les statistiques quotidiennes"),
    "Bitte einen Zeitraum wählen." : MessageLookupByLibrary.simpleMessage("Choisissez une période."),
    "Bitte überprüfe die Aktivierung der Wochentage unter dem Monat" : MessageLookupByLibrary.simpleMessage("Veuillez vérifier l\'activation des jours de la semaine en dessous du mois"),
    "Blutige Messung" : MessageLookupByLibrary.simpleMessage("Valeur de glycémie"),
    "Blutige Werte sollten jetzt auch bei mmol-Daten korrekt in der Tagesgrafik angezeigt werden." : MessageLookupByLibrary.simpleMessage("Les glycémies capillaires devraient maintenant également être affichées correctement dans le graphique quotidien pour les données en mmol."),
    "Blutwerte werden jetzt auch bei mmol/L in den Grafiken korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Les glycémies capillaires sont maintenant affichées correctement dans les graphiques."),
    "Bolus" : MessageLookupByLibrary.simpleMessage("Bolus"),
    "Bolus Rechner_bolus calculated by the bolus wizard" : MessageLookupByLibrary.simpleMessage("Assistant bolus"),
    "Bolus ges." : MessageLookupByLibrary.simpleMessage("Bolus total"),
    "Bolusarten anzeigen" : MessageLookupByLibrary.simpleMessage("Montrer les types de bolus"),
    "Bolusspalte anzeigen" : MessageLookupByLibrary.simpleMessage("Afficher la colonne de bolus"),
    "CGP" : MessageLookupByLibrary.simpleMessage("CGP"),
    "COB (Carbs On Board) anzeigen" : MessageLookupByLibrary.simpleMessage("Afficher les glucides (glucides à bord)"),
    "Comprehensive Glucose Pentagon" : MessageLookupByLibrary.simpleMessage("Pentagone de glycémies complet"),
    "Da wir seit einiger Zeit in Europa eine DSGVO haben, werden im Folgenden noch die Vorschriften dafür erfüllt. Der folgende Text ist nur auf Deutsch verfügbar:" : MessageLookupByLibrary.simpleMessage("Étant donné que nous avons un DSGVO en Europe, le texte suivant répond aux règles. Le texte suivant n\'est disponible qu\'en allemand:"),
    "Das \"Comprehensive Glucose Pentagon\" (Umfassendes Glukose Fünfeck) wurde als eigenes PDF und als Zusatzseite zur Tagesgrafik und Wochengrafik hinzugefügt. Es handelt sich hierbei um eine Darstellung von fünf Messgrössen, mit deren Hilfe sich die Qualität der Therapie ermitteln und mit anderen vergleichen lässt. Auf den Ausdrucken wird ein Verweis auf die zugrunde liegende Abhandlung ausgegeben." : MessageLookupByLibrary.simpleMessage("Le \"Pentagone de Comprehension des Glycémies\" a été ajouté en format PDF séparé et en page supplémentaire aux tableaux quotidien et hebdomadaire. Il s\'agit d\'une représentation de cinq mesures, à l\'aide desquelles la qualité de la thérapie peut être déterminée et comparée à d\'autres. Sur les impressions, une référence est donnée au papier sous-jacent."),
    "Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr." : MessageLookupByLibrary.simpleMessage("Cliquer sur la zone de message ne la ferme plus."),
    "Das Control für die Eingabe des Zeitraums wurde angepasst, damit es auf schmalen Display auch korrekt dargestellt wird." : MessageLookupByLibrary.simpleMessage("Le contrôle de la définition de la période a été ajusté de manière à ce qu\'elle s\'affiche correctement sur un affichage étroit."),
    "Das Enddatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("La date de fin n\'est pas correcte"),
    "Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag." : MessageLookupByLibrary.simpleMessage("Le PDF du débit de base était incorrect s\'il n\'y avait pas de valeur pour chaque heure."),
    "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren." : MessageLookupByLibrary.simpleMessage("Le PDF a été créé. Si il n\'est pas affiché, alors un bloqueur de popup est probablement actif, ce qui empêche l\'affichage. Veuillez le désactiver."),
    "Das Problem, dass bestimmte Tage nicht erzeugt werden konnten, wurde behoben." : MessageLookupByLibrary.simpleMessage("Le problème que certains jours ne pouvaient pas être créés à été résolu."),
    "Das Profil-PDF wird nun im Querformat erzeugt, um auch Profile mit vielen Einträgen für die Parameter brauchbar darstellen zu können." : MessageLookupByLibrary.simpleMessage("Le profil PDF est maintenant créé en format paysage, de sorte que les profils avec de nombreuses entrées pour les paramètres puissent également être affichés."),
    "Das Startdatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("La date de début n\'est pas correcte"),
    "Das gelbe Fünfeck stellt den Wertebereich des angegebenen Zeitraums dar." : MessageLookupByLibrary.simpleMessage("Le pentagone jaune représente la plage de valeurs de la période spécifiée."),
    "Das grüne Fünfeck stellt den Wertebereich eines gesunden Menschen ohne Diabetes dar." : MessageLookupByLibrary.simpleMessage("Le pentagone vert représente la plage de valeurs d\'une personne en bonne santé sans diabète."),
    "Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen." : MessageLookupByLibrary.simpleMessage("Les données de mesures de glycémies avec un format de date incorrect sont lues correctement."),
    "Daten verschiedener Uploader werden nun besser interpretiert." : MessageLookupByLibrary.simpleMessage("Les données des différents uploaders sont maintenant mieux interprétées."),
    "Daten, die von xDrip als sync markiert wurden, werden bei der Auswertung ignoriert." : MessageLookupByLibrary.simpleMessage("Les données marquées comme synchronisées par xDrip seront ignorées dans les calculs."),
    "Datenschutzerklärung" : MessageLookupByLibrary.simpleMessage("Protection des données"),
    "Datum" : MessageLookupByLibrary.simpleMessage("Date"),
    "Dauer der Insulinaktivität (DIA)" : MessageLookupByLibrary.simpleMessage("Durée d\'action de l\'Insuline (DIA)"),
    "Dauer der Kohlenhydrataktivität" : MessageLookupByLibrary.simpleMessage("Durée de l\'action des glucides"),
    "Dauer der abgeschalteten Basalrate anzeigen" : MessageLookupByLibrary.simpleMessage("Afficher la durée du débit de base désactivé"),
    "Dauer mit Minutenbruchteil" : MessageLookupByLibrary.simpleMessage("Durée précise"),
    "Der Fehler im Profil, der dazu führte, dass die Werte für ISF und Zielbereich falsch umgerechnet werden, wurde behoben." : MessageLookupByLibrary.simpleMessage("Correction du bogue dans le profil qui a entraîné la conversion incorrecte des valeurs ISF et de la plage cible."),
    "Der Fehler mit der Vervielfachung der Kohlenhydrate bei wiederholter Ausgabe der PDFs wurde korrigiert." : MessageLookupByLibrary.simpleMessage("L\'erreur avec la multiplication des glucides avec la sortie répétée des PDF a été corrigée."),
    "Der Zeitraum enthält keine auswertbaren Tage" : MessageLookupByLibrary.simpleMessage("La période ne contient pas de jours évaluables"),
    "Der Zugriffsschlüssel wird nur benötigt, wenn der Zugriff in Nightscout über AUTH_DEFAULT_ROLES eingeschränkt wurde" : MessageLookupByLibrary.simpleMessage("Le jeton d\'accès est seulement nécessaire si l\'accès à Nightscout a été restreint via AUTH_DEFAULT_ROLES"),
    "Der prognostische glykämische Risikoparameter stellt das Risiko von Langzeitkomplikationen dar (bisher nicht durch Studien belegt)." : MessageLookupByLibrary.simpleMessage("Le paramètre de risque glycémique progressif représente le risque de complications à long terme (non prouvé par les études)."),
    "Details des Profilwechsels" : MessageLookupByLibrary.simpleMessage("Détails du changement de profil"),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("Allemand"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("Diabétique depuis"),
    "Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an" : MessageLookupByLibrary.simpleMessage("La page d\'analyse a été redessinée et affiche maintenant les en-têtes au-dessus des zones"),
    "Die Analysewerte wurden nicht ganz korrekt ermittelt. Das wurde korrigiert und nun sollten die statistischen Daten über den Zeitraum richtig ausgewertet werden." : MessageLookupByLibrary.simpleMessage("Les valeurs d\'analyse n\'étaient pas correctement déterminées, ce qui a été corrigé et les données statistiques évaluées au cours de la période devraient maintenant être correctes."),
    "Die Angabe DIA auf der Profilseite wird nun mit zwei Nachkommastellen angezeigt." : MessageLookupByLibrary.simpleMessage("DIA sur la page de profil est maintenant affiché avec deux décimales."),
    "Die Aufsummierung der Werte in der Analyse wurde korrigiert." : MessageLookupByLibrary.simpleMessage("L\'accumulation des mesures dans l\'analyse a été corrigée."),
    "Die Aufteilung auf mehrere PDF-Dateien funktioniert jetzt besser." : MessageLookupByLibrary.simpleMessage("La division en plusieurs fichiers PDF fonctionne mieux maintenant."),
    "Die Auswahl des Zeitraums ist nun flexibler. Die Auswahl erfolgt in einem Dialog, der die eingestellte Sprache berücksichtigt. Mit der Auswahl der vorbelegten Bereiche (Heute, Letzte Woche, usw.) wird festgelegt, dass beim nächsten Aufruf das aktuelle Datum als Grundlage für den Bereich verwendet wird. Wenn der Bereich direkt im Kalender festgelegt wird, dann gilt dieser beim nächsten Aufruf so wie er festgelegt wurde. Standardmässig ist der erste Tag der Woche jetzt ein Montag. Dieser kann aber durch Anklicken des Wochentags in der Titelzeile des Monats auf die eigene Präferenz festgelegt werden. Die Eingabe der Datumsfelder erfolgt in der Form, die der Sprache entspricht (Tag.Monat.Jahr für deutsch, Monat/Tag/Jahr für englisch)." : MessageLookupByLibrary.simpleMessage("La sélection de la période est maintenant plus flexible. La sélection se fait dans une boîte de dialogue en tenant compte de la langue. La sélection des plages par défaut (aujourd\'hui, la semaine dernière, etc.). fixe la date courante comme base de l\'intervalle lors de l\'appel suivant. Si l\'intervalle est défini directement dans le calendrier, alors il sera appliqué la prochaine fois comme défini. Par défaut, le premier jour de la semaine est maintenant un lundi. Cependant, cela peut être réglé selon vos préférences en cliquant sur le jour de la semaine dans la barre de titre du mois. Les champs date sont saisis dans le formulaire qui correspond à la langue (jour.mois.année pour l\'allemand, mois/jour / année pour l\'anglais)."),
    "Die Auswahl des Zeitraums und der Benutzer wurde in die Titelzeile verschoben." : MessageLookupByLibrary.simpleMessage("La sélection de la période et de l\'utilisateur a été déplacée dans la barre de titre."),
    "Die Balken für das Bolusinsulin in der Tagesgrafik werden nun entsprechend dem Maximalwert an Bolusinsulin an dem Tag skaliert." : MessageLookupByLibrary.simpleMessage("Les barres de bolus dans le graphe journalier sont maintenant redimensionnées en fonction du bolus maximal à ce jour."),
    "Die Balken in der Analyse werden jetzt korrekt skaliert." : MessageLookupByLibrary.simpleMessage("Les barres de l\'analyse sont maintenant redimensionnées correctement."),
    "Die Basalratenprofile für den Tag werden nun auch anhand der Behandlungsdaten ermittelt. Profilwechsel werden in der Tagesgrafik angezeigt und sollten ab dem Zeitpunkt des Wechsels auch eine korrekte Basalratenanpassung anzeigen." : MessageLookupByLibrary.simpleMessage("Les profils de débits de base pour la journée sont maintenant également déterminés en fonction des données de traitement. Les changements de profil sont affichés dans le graphique quotidien et devraient également afficher un ajustement du débit de base correct à partir du moment du changement."),
    "Die Berechnung der PDF-Grössen wurde korrigiert, so dass nun weniger PDFs erstellt werden, wenn sie aufgrund der Grösse aufgeteilt werden." : MessageLookupByLibrary.simpleMessage("Le calcul des tailles de PDF a été corrigé, de sorte que moins de PDF soient créés quand ils sont divisés en raison de leur taille."),
    "Die Berechnung der Summenzeile auf der Seite Tagesstatistik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Le calcul de la ligne des totaux sur la page Statistiques Quotidiennes a été corrigé."),
    "Die Berechnung der tatsächlichen Basalrate wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Le calcul du débit de base réel a été corrigé."),
    "Die Berechnung des täglichen Insulins berücksichtigt nun auch die SMB." : MessageLookupByLibrary.simpleMessage("Le calcul de l\'insuline quotidienne tient désormais également compte des SMB."),
    "Die Bilder auf den Kacheln sind nun in der jeweiligen Sprache beschriftet." : MessageLookupByLibrary.simpleMessage("Les images sur les tuiles sont maintenant étiquetées dans la langue respective."),
    "Die Buttons für die Erzeugung vergangener Zeiträume wurden entfernt. Das kann jetzt im neuen PDF-Dialog eingestellt werden." : MessageLookupByLibrary.simpleMessage("Les boutons de création des périodes précédentes ont été supprimés. Cela peut maintenant être réglé dans la nouvelle boîte de dialogue PDF."),
    "Die Buttons für die vergangenen Perioden werden nicht angezeigt, wenn kein Zeitraum oder kein PDF ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("Les boutons pour les périodes passées ne seront pas affichés si aucune période ou PDF n\'est sélectionnée."),
    "Die Daten, die Du hier eingibst, werden normalerweise im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. In diesem Fall werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("Les données que vous entrez ici seront stockées dans le stockage local du navigateur. Il contient des données relatives au site Web qui ne peuvent être lues qu\'à partir de ce site Web. Aucun cookie n\'est utilisé et aucune donnée n\'est stockée sur les serveurs. Seule une connexion à l\'instance Nightscout spécifiée est configurée et les données disponibles sont lues en sortie pour créer un document PDF. Cela peut ensuite être soumis au diabétologue / endocrinologue ou à toute autre partie intéressée."),
    "Die Einstellung für das Öffnen des PDF im gleichen Fenster, das Herunterladen des PDFs und den Hinweis auf Nightscout im PDF wurde aus den Einstellungen in die Ausgabe Parameter verschoben. Dadurch kann man das bei jedem Ausdruck schnell festlegen und ändern." : MessageLookupByLibrary.simpleMessage("Le paramètre d\'ouverture du PDF dans la même fenêtre, Le téléchargement du PDF et le masquage du texte sur Nightscout dans le PDF ont été déplacés des paramètres vers les paramètres de sortie. Cela vous permet de définir et de modifier rapidement cela pour chaque sortie."),
    "Die Einstellungen für das Herunterladen des PDFs, das Öffnen im gleichen Fenster und die Maximalgrösse der PDFs wurden von der Synchronisierung mit Google Drive ausgenommen, weil sie speziell für den verwendeten Browser oder das verwendete Gerät benötigt werden. Sie werden nach wie vor gespeichert, aber sie werden nicht zwischen verschiedenen Browsern synchronisiert." : MessageLookupByLibrary.simpleMessage("Les paramètres pour télécharger le PDF, ouvrir le PDF dans la même fenêtre, et la taille maximale des fichiers PDF ont été exclus de la synchronisation avec Google Drive car ils sont spécifiques au navigateur ou au périphérique que vous utilisez. Ils sont toujours sauvegardés, mais ils ne sont pas synchronisés entre les différents navigateurs."),
    "Die Einträge im Protokoll für temporäre Ziele werden jetzt auch bei mmol-Angaben richtig angezeigt." : MessageLookupByLibrary.simpleMessage("Les entrées dans le journal des cibles temporaires sont maintenant affichées correctement, même avec les données en mmol."),
    "Die Ermittlung der Einheit (mg/dl oder mmol/l) wird nun flexibler gehandhabt, so dass auch Leerzeichen in der entsprechenden Einstellung nicht mehr zu einer Fehlinterpretation führen." : MessageLookupByLibrary.simpleMessage("La détermination de l\'unité (mg/dl ou mmol/l) est maintenant gérée de manière plus souple, afin que même les espaces dans le paramètre correspondant ne conduisent plus à une mauvaise interprétation."),
    "Die Ermittlung der effektiven täglichen Basalrate wurde umstrukturiert und sollte nun genauere Werte ergeben." : MessageLookupByLibrary.simpleMessage("La détermination du débit basal quotidien a été redéterminée et devrait maintenant donner des valeurs plus précises."),
    "Die Farbe für Bewegung in der Tagesgrafik wurde geändert." : MessageLookupByLibrary.simpleMessage("La couleur pour les exercices dans le graphique quotidien a changé."),
    "Die Farben für Dialoge und Scrollbars wurden angepasst." : MessageLookupByLibrary.simpleMessage("Les couleurs des boîtes de dialogues et des barres de défilement ont été ajustées."),
    "Die Genauigkeit der ISF Angaben im Profil wurde korrigiert." : MessageLookupByLibrary.simpleMessage("La précision de l\'ISF (Facteur de sensibilité à l\'insuline) dans le profil a été corrigée."),
    "Die Genauigkeit der Insulindosierung wird aus dem Profil ermittelt. Der Wert mit der höchsten Genauigkeit legt fest, mit wieviel Nachkommastellen Basalratenwerte angezeigt werden." : MessageLookupByLibrary.simpleMessage("La précision de la posologie de l\'insuline est déterminée à partir du profil. La valeur avec la plus grande précision définit le nombre de décimales utilisées pour l\'affichage des valeurs de base."),
    "Die Glucose Perzentil Grafik wurde um die Tabelle \"Stündliche Statistik\" erweitert. Diese listet tabellarisch die Werte des Zeitraums für jede Stunde des Tages auf. Man kann entweder nur die Grafik, nur die Tabelle oder beides zusammen erzeugen lassen." : MessageLookupByLibrary.simpleMessage("Le graphe du pourcentage de glycémies a été élargi pour inclure le tableau des statistiques horaires. Ceci détermine les valeurs de la période pour chaque heure de la journée. Vous pouvez soit créer simplement le graphe, juste la table ou les deux ensemble."),
    "Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit." : MessageLookupByLibrary.simpleMessage("Le graphe de glycémies des graphes journaliers a été libéré des données manquantes."),
    "Die Icons auf einigen Buttons waren zu nahe am Text" : MessageLookupByLibrary.simpleMessage("Les icônes de certains boutons étaient trop proches du texte"),
    "Die Kohlenhydratangaben auf der Tagesgrafik werden jetzt ohne den Zusatz KH ausgegeben." : MessageLookupByLibrary.simpleMessage("L\'information sur les glucides figurant sur le graphe quotidien sont maintenant affcihées sans le suffixe KH."),
    "Die Legende der Tagesgrafik wurde um den Eintrag für Bewegung erweitert." : MessageLookupByLibrary.simpleMessage("La légende du graphique quotidien a été élargie pour inclure l\'entrée pour les exercices."),
    "Die Legende der Tagesgrafik wurde um den Eintrag für blutige Messungen erweitert." : MessageLookupByLibrary.simpleMessage("La légende du graphique quotidien comprend maintenant la valeur de glycémies."),
    "Die Links zu Nightscout und den Reports von Nightscout im Menü funktionieren jetzt auch richtig, wenn ein Usertoken angegeben wurde." : MessageLookupByLibrary.simpleMessage("Les liens du menu vers Nightscout et les rapports de Nightscout fonctionnent maintenant correctement lorsqu\'un jeton d\'utilisateur a été fourni."),
    "Die Listenansicht ist jetzt wieder scrollbar." : MessageLookupByLibrary.simpleMessage("La vue liste est encore défilable."),
    "Die Microboli des Minimed 600 Uploaders werden jetzt auch ermittelt und in der Analyse ausgegeben, wenn sie vorhanden sind." : MessageLookupByLibrary.simpleMessage("Les microbolus de l\'uploader Minimed 600 sont désormais également identifiés et sortis dans l\'analyse, s\'ils existent."),
    "Die Microboli vom Minimed 600 Uploader wurden aus der Ausgabe entfernt, da es sich dabei nur um Temporäre Basalraten handelt." : MessageLookupByLibrary.simpleMessage("Le microbolus du Minimed 600 Uploader a été retiré du rapport, car il s\'agit juste des débits de base temporaires."),
    "Die Mischung von zwei Seiten auf einer PDF-Seite, die manchmal vorkam, wurde behoben." : MessageLookupByLibrary.simpleMessage("La fusion de deux pages sur une seule page PDF, qui se produisait parfois a été corrigé."),
    "Die Möglichkeit für Beta-Funktionen wurde entfernt; die Betaversion ist nun hier zu finden:" : MessageLookupByLibrary.simpleMessage("La disponibilité des foncitons bêta a été supprimée; la version bêta est maintenant disponible sur:"),
    "Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird" : MessageLookupByLibrary.simpleMessage("La possibilité d\'afficher l\'URL dans la barre de titre a été supprimée depuis que l\'utilisateur actuel ou son URL est maintenant affiché directement"),
    "Die Oberfläche kann jetzt verschiedene Darstellungen annehmen. Diese zeigen sich zur Zeit durch geänderte Farben und ein angepasstes Icon im Browsertab und beim Laden der Seite. Das hat keine Auswirkungen auf die erzeugten PDF-Dateien. Es ist die Vorbereitung für eine teilweise anpassbare Oberfläche. Das Thema der Darstellung wird standardmässig vom System festgelegt, was zur Zeit heisst, dass im Dezember ein weihnachtliches Thema angezeigt wird. Das kann aber durch Anklicken des Icons, das ab jetzt links unten zu sehen ist, geändert werden. Beim Anklicken wird rechts neben dem Icon ein Bereich mit den verfügbaren Darstellungen eingeblendet. Das erste Icon (der kleine Zauberer) bedeutet dabei, dass die Darstellung vom System ermittelt wird. Zur Zeit bedeutet das die weihnachtliche Darstellung im Dezember. Es kann in Zukunft aber auch weitere Kriterien geben, anhand derer das Thema angepasst wird. Die direkte Festlegung eines Themas mit einem der anderen icons hat aber immer Vorrang vor der systemeigenen Logik." : MessageLookupByLibrary.simpleMessage("L\'interface utilisateur peut maintenant être affichée de différentes manières. Celles-ci modifient pour le moment différentes couleurs et une icône modifiée dans l\'onglet du navigateur et lors du chargement du site. Cela n\'affecte pas les fichiers PDF générés. Il s\'agit de la préparation pour un site partiellement personnalisable. Le thème de la présentation est défini par défaut par le système, ce qui signifie qu\'un thème de Noël sera affiché en décembre. Cependant, cela peut aussi être modifié dans les paramètres d\'affichage du système. La représentation par défaut correspond à la combinaison précédente de couleurs. La première icone signifie que le thème est choisi par le système. Pour le moment, cela signifie la présentation de Noël en décembre. Cependant, il pourra y avoir d\'autres critères dans le futur qui seront utilisés pour ajuster le thème. La définition directe d\'un thème dans les paramètres aura toujours priorité sur la logique système."),
    "Die Positionierung der Notizen in der Tagesgrafik wurde korrigiert, so dass sie näher an der Uhrzeit stehen. Die Striche wurden so verkürzt, dass sie nur noch bis zum unteren Rand der Grafik gehen und nicht mehr durch die Wertetabelle." : MessageLookupByLibrary.simpleMessage("Le positionnement des notes dans le graphe quotidien a été corrigé de manière à ce qu\'elles soient plus proches du temps. Les traits ont été raccourcis, de sorte qu\'ils ne vont qu\'au bas du graphique et non à travers le tableau des mesures."),
    "Die Profile für den Zeitraum wurden teilweise nicht korrekt identifiziert. Das sollte behoben sein." : MessageLookupByLibrary.simpleMessage("Les profils pour la période ont été partiellement mal identifiés. Cela doit être corrigé."),
    "Die Profilseite wurde angepasst, damit Einträge für 24 Stunden auf eine Seite passen." : MessageLookupByLibrary.simpleMessage("La page de profil a été adaptée de manière à ce que les entrées sur 24 heures puissent s\'inscrire sur une seule page."),
    "Die Reihenfolge der Formulare kann nun verändert werden. Dazu einfach das Handle auf der linken Seite des Buttons für das Formular anklicken, festhalten und an die Stelle ziehen, vor der es ausgedruckt werden soll." : MessageLookupByLibrary.simpleMessage("L\'ordre des formulaires peut maintenant être modifié. Il suffit de cliquer sur la poignée sur le côté gauche du bouton pour le formulaire, maintenez-le et faites-le glisser vers l\'endroit où il doit être imprimé."),
    "Die Seiten Profil und Basalrate zeigen nun bei einem Profil, das nur temporär während eines Tages aktiv war den Zeitraum an, in dem es aktiv war." : MessageLookupByLibrary.simpleMessage("Le profil des pages et le débit de base d\'un profil qui étaient temporairement actifs pendant une journée ne montrent maintenant que cette période."),
    "Die Seitenzahlen auf den Kacheln wurden weiter an den unteren Rand verschoben, damit sie immer gut lesbar sind." : MessageLookupByLibrary.simpleMessage("Les numéros de page sur les tuiles ont été déplacés vers le bas pour être toujours faciles à lire."),
    "Die Skalen an den Grafiken wurden überarbeitet. Sie zeigen jetzt für mmol/L ganzzahlige Werte an und die Einheiten wurden entfernt. Diese stehen nur noch unten an der Grafik. Das betrifft die täglichen Grafiken, wöchentlichen Grafiken und das Glukose Percentil Diagramm." : MessageLookupByLibrary.simpleMessage("Les échelles des graphes ont été mises à jour. Maintenant, elles montrent des nombres entiers pour mmol/L et les unités ont été supprimées. Ils sont affichés au bas des graphiques, y compris les graphes quotidiens, les graphes hebdomadaires et le tableau percentile des glycémies."),
    "Die Spalten auf der Profilseite wurden korrigiert, damit auch längere Zeitnamen (z.B. in spanisch) Platz finden." : MessageLookupByLibrary.simpleMessage("Les colonnes de la page ont été corrigées pour tenir compte des noms de durée plus longs (par exemple en espagnol)."),
    "Die Standardabweichung wird jetzt auch bei mmol/L korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("L\'écart type est également affiché correctement lors de l\'utilisation de mmol/L."),
    "Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an" : MessageLookupByLibrary.simpleMessage("Les statistiques journalières affichent maintenant correctement les valeurs en mmol/l"),
    "Die URL wurde noch nicht festgelegt" : MessageLookupByLibrary.simpleMessage("L\'URL n\'a pas encore été configurée"),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("L\'URL n\'a pas encore été configurée."),
    "Die Url zur Nightscout-API muss mit https beginnen, da Nightscout Reporter auch auf https läuft. Ein Zugriff auf unsichere http-Resourcen ist nicht möglich." : MessageLookupByLibrary.simpleMessage("L\'Url pour l\'API Nightscout doit commencer par https, car Nightscout Reporter fonctionne également sur https. L\'accès à des ressources http non sécurisées n\'est pas possible."),
    "Die Vorschaubilder auf den Kacheln passen sich abhängig von den ausgewählten Optionen teilweise an (z.B. die Auswahl von CGP bei Tagesgrafiken)." : MessageLookupByLibrary.simpleMessage("Les images de prévisualisation sur les tuiles s\'ajusteront partiellement en fonction des options sélectionnées (par exemple, choisir CGP pour les graphes quotidiens)."),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("Le site utilise principalement Javascript pour faire son travail. Lors de la création de documents PDF, Javascript et PHP sont utilisés."),
    "Die Werte VarK und ToR im CGP werden bei Tages- und Wochengrafiken in der Legende und in der Grafik korrekt ausgegeben." : MessageLookupByLibrary.simpleMessage("Les valeurs VarK et ToR dans la CGP sont correctement affichées pour les graphiques de jour et de semaine dans la légende et dans le graphique."),
    "Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt" : MessageLookupByLibrary.simpleMessage("Les valeurs de la plage de cible par défaut sont maintenant calculées correctement sur la page d\'analyse"),
    "Die Werte im CGP werden jetzt bei mmol-Angaben auch korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("The values in the CGP are now also correctly displayed for mmol data."),
    "Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. " : MessageLookupByLibrary.simpleMessage("L\'URL spécifiée n\'est pas accessible. Si l\'URL est correcte, cela peut être dû aux paramètres de Nightscout. "),
    "Die berechneten IE für Kohlenhydrate in der Tagesgrafik wurden teilweise mit falschen Faktoren ermittelt. Der Fehler wurde behoben." : MessageLookupByLibrary.simpleMessage("L\'IE calculée pour les glucides dans le graphique quotidien a été partiellement déterminée par des facteurs erronés. Le bug a été corrigé."),
    "Die eigenen Grenzwerte auf der Analyseseite in mmol/L werden nun korrekt berechnet." : MessageLookupByLibrary.simpleMessage("Les propres limites de la page d\'analyse en mmol/L sont maintenant calculées correctement."),
    "Die einzelne Seite CGP kann jetzt auch im Querformat ausgegeben werden." : MessageLookupByLibrary.simpleMessage("La page unique CGP peut maintenant aussi être sortie en format paysage."),
    "Die fehlerhafte Platzierug der blutigen Werte bei mmol/L in der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Correction du placement erroné des glycémies capillaires dans le graphe quotidien lors de l\'utilisation de mmol/L."),
    "Die fehlerhafte Zentrierung der Auswahlbuttons wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Le mauvais alignement des boutons sur la page principale a été corrigé."),
    "Die glykämische Variabilität stellt die Streuung der Werte um den glykämischen Mittelwert herum in Prozent dar." : MessageLookupByLibrary.simpleMessage("La variabilité glycémique représente la variation des valeurs autour de la moyenne glycémique en pourcentage."),
    "Die glykämische Variabilität wird jetzt im CGP auch bei Tages- und Wochengrafiken korrekt ausgegeben." : MessageLookupByLibrary.simpleMessage("The glycemic variability is now correctly displayed in the CGP even with daily and weekly graphics."),
    "Die meisten Spalten auf der Seite \"Stündliche Statistik\" werden bei nicht vorhandenen Daten leer gelassen." : MessageLookupByLibrary.simpleMessage("La plupart des colonnes de la page \"Statistiques horaires\" sont laissées vides s\'il n\'y a pas de données."),
    "Die mittlerweile überflüssige Option zur Darstellung der Basalrate mit zwei Nachkommastellen wurde aus der Tagesgrafik entfernt." : MessageLookupByLibrary.simpleMessage("Suppression de l\'option obsolète pour les décimales du débit de base des graphes quotidiens."),
    "Die teilweise falsch zugewiesenen Grenzwerte für die Bereiche (niedrig, normal, hoch) wurden korrigiert." : MessageLookupByLibrary.simpleMessage("Les limites partiellement mal attribuées pour les zones (basse, normale, élevée) ont été corrigées."),
    "Die temporäre Basalrate am Anfang des Tages wurde bisher falsch gesetzt, wenn sie im vorherigen Tag gesetzt wurde. Das wurde behoben." : MessageLookupByLibrary.simpleMessage("Le débit de base temporaire au début de la journée a été fixé de manière incorrecte s\'il était fixé au jour précédent. Ceci a été corrigé."),
    "Die Überschrift über der Tabelle vom Glucode Perzentil Diagramm wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Le titre au-dessus de la table du diagramme de glucose percentile a été corrigé."),
    "Die Überschrift über der mittleren Spalte im Tagesprofil wurde korrigiert." : MessageLookupByLibrary.simpleMessage("L\'en-tête au-dessus de la colonne du milieu dans le profil quotidien a été corrigé."),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("Cette page est utilisée pour générer des documents PDF avec les données stockées sur Nightscout. Il est donc nécessaire de pouvoir accéder à ces données, c\'est pourquoi quelques réglages doivent d\'abord être enregistrés. Tant que ceux-ci ne sont pas disponibles et valides, le site ne peut rien faire pour vous."),
    "Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden." : MessageLookupByLibrary.simpleMessage("Ajout de cette page. Il s\'affiche à chaque fois que le Reporter Nightscout démarre, s\'il n\'a pas été affiché dans la version actuelle. En outre, il peut être appelé à nouveau dans le menu hamburger."),
    "Diese Webseite speichert keine Daten auf Servern. Die benötigten Daten werden von der eingegebenen URL zur Nightscout-Instanz geholt und als PDF aufbereitet. Die Daten, die zur Funktion der Webseite benötigt werden, werden im localStorage des Browsers gespeichert und nicht an den Server übermittelt. Wenn die Synchronisierung mit Google Drive aktiviert wird, dann werden diese Daten zusätzlich in den Anwendungsdaten auf dem Google Drive des verbundenen Kontos gespeichert." : MessageLookupByLibrary.simpleMessage("Ce site web ne stocke pas de données sur les serveurs. Les données requises sont récupérées depuis l\'URL entrée dans l\'instance Nightscout et formatées en format PDF. Les données nécessaires au fonctionnement du site web sont stockées dans le stockage local du navigateur et ne sont pas transmises au serveur. Si la synchronisation avec Google Drive est activée, alors ces données seront également stockées dans les données de l\'application sur le compte associé à Google Drive."),
    "Dieser Regler legt fest, wie gross eine Ausgabe maximal werden darf, bevor sie auf mehrere PDF-Dateien aufgeteilt wird. Wenn bei Erstellung eines PDFs ein leeres Fenster angezeigt wird, dann hilft es normalerweise, diesen Regler weiter nach links zu bewegen." : MessageLookupByLibrary.simpleMessage("Ce curseur définit la taille maximale autorisée avant que le PDF ne soit divisé en plusieurs fichiers. Si une fenêtre vide est affichée lors de la création d\'un PDF, cela aide généralement à déplacer ce curseur plus loin vers la gauche."),
    "Diverse Abstürze beim Auslesen der Daten bereinigt" : MessageLookupByLibrary.simpleMessage("Correction de divers plantages lors de la lecture des données"),
    "Drei Monate vorher" : MessageLookupByLibrary.simpleMessage("Trois mois avant"),
    "Dämmerung (06:00 - 07:59, 18:00 - 20:59)" : MessageLookupByLibrary.simpleMessage("Crépuscule (06:00 - 07:59, 18:00 - 20:59)"),
    "Eigene Grenzwerte" : MessageLookupByLibrary.simpleMessage("Zone cible propre"),
    "Ein Fehler in der Zahlenformatierung wurde behoben." : MessageLookupByLibrary.simpleMessage("Une erreur dans le formatage des nombres a été corrigée."),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die letzten Tage bestimmter Monate nicht im Kalender-Control angezeigt wurden." : MessageLookupByLibrary.simpleMessage("Correction d\'un bug qui faisait que les derniers jours de certains mois ne s\'affichaient pas dans le calendrier."),
    "Ein Fehler wurde behoben, der in der Tagesgrafik dazu führte, dass Texte in der Legende andere Texte überschrieben haben." : MessageLookupByLibrary.simpleMessage("Le bogue qui a amené les graphiques quotidiens à écraser les textes de la légende a été corrigé."),
    "Ein Fehler wurde wahrscheinlich behoben, der dazu führt, dass bei manchen Profilen der Wert für DIA nicht korrekt ausgelesen wurde." : MessageLookupByLibrary.simpleMessage("Une erreur a probablement été corrigée qui fait que certains profils ratent la valeur de DIA de manière incorrecte."),
    "Ein Jahr vorher" : MessageLookupByLibrary.simpleMessage("Un an avant"),
    "Ein Link zur Facebookseite von Nightscout Reporter wurde im Menü hinzugefügt." : MessageLookupByLibrary.simpleMessage("Un lien vers la page Facebook de Nightscout Reporter a été ajouté au menu."),
    "Ein möglicher Absturz bei der Ausgabe des CGP bei der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Un plantage possible de l\'affichage du CGP dans le graphique quotidien a été corrigé."),
    "Eine" : MessageLookupByLibrary.simpleMessage("Un"),
    "Einen Monat vorher" : MessageLookupByLibrary.simpleMessage("Un mois avant"),
    "Einige Browser sind nicht in der Lage PDF Dateien anzuzeigen, die eine bestimmte Grösse überschreiten. Da das von verschiedenen Faktoren abhängt, die sich nicht ohne Weiteres automatisch ermitteln lassen, gibt es die Möglichkeit, statt einer grossen PDF Datei, die nicht angezeigt werden kann, mehrere kleinere PDF Dateien zu erzeugen, die der Browser anzeigen kann. In den Einstellungen und hier kann diese Grösse festgelegt werden. Diese Seite hier wird nur angezeigt, wenn das PDF aufgeteilt werden musste. Wenn nur ein PDF erzeugt wurde, dann wird es direkt angezeigt." : MessageLookupByLibrary.simpleMessage("Certains navigateurs ne peuvent pas afficher des fichiers PDF qui dépassent une certaine taille. Puisque cela dépend de divers facteurs qui ne peuvent pas être facilement déterminés, il est possible de générer plusieurs fichiers PDF plus petits afin que le navigateur puisse les afficher au lieu d\'un grand fichier PDF qui pourrait ne pas être affiché. Cette taille peut être spécifiée dans les paramètres et ici. Cette page n\'est affichée que si le PDF devait être divisé. Si un seul PDF a été créé, alors il sera affiché directement."),
    "Einige Formulare können nun mit Parametern konfiguriert werden; hierzu den Pfeil am rechten Rand des Formularbuttons anklicken und im aufgeklappten Bereich die entsprechenden Einstellungen vornehmen; der Pfeil erscheint erst, wenn das Formular zum Ausdruck markiert wurde" : MessageLookupByLibrary.simpleMessage("Certains formulaires peuvent maintenant être configurés avec des paramètres; cliquez sur la flèche sur le côté droit du formulaire et effectuez les réglages appropriés dans la fenêtre ouverte; la flèche n\'apparaîtra pas tant que le formulaire n\'a pas été marqué pour l\'impression"),
    "Einige der Optionen für die PDFs wurden hierarchisch angeordnet. Es macht z.B. keinen Sinn, die SMB Werte in der Tagesgrafik an der Kurve platzieren zu lassen, wenn die SMB Werte gar nicht angezeigt werden. Deswegen werden Optionen, die von einer anderen Option abhängen nur dann angezeigt, wenn die entsprechende Option markiert ist. Dadurch ändert sich leider auch die Speicherung der Optionen, weshalb sich die aktuelle Auswahl der Optionen bei manchen PDFs verändert. Da müssen die Optionen dann neu gesetzt werden." : MessageLookupByLibrary.simpleMessage("Certaines options pour les PDFs ont été classées de manière hiérarchique. Il ne sert à rien de placer les valeurs des SMB dans le graphique quotidien à la courbe si les valeurs des SMB ne sont pas affichées du tout. Par conséquent, les options qui dépendent d\'une autre option ne sont affichées que si l\'option correspondante est sélectionnée. Cela change malheureusement aussi le stockage des options, raison pour laquelle la sélection actuelle des options pour certains PDFs a changé. Ces options doivent à nouveau être définies."),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("Paramètres"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("Paramètres d\'utilisation de la page"),
    "Einstellungen von Release-Version übernehmen" : MessageLookupByLibrary.simpleMessage("Appliquer les paramètres de la release version"),
    "English (GB)" : MessageLookupByLibrary.simpleMessage("Anglais (GB)"),
    "English (USA)" : MessageLookupByLibrary.simpleMessage("Anglais (USA)"),
    "Erzeuge PDF..." : MessageLookupByLibrary.simpleMessage("Création du PDF ..."),
    "Es gibt ein neues PDF namens Tagesstunden. Dieses zeigt die Durchschnittswerte eines Tages in jedem Stundenintervall an und färbt die Zellen entsprechend des Glukosewertes ein. So hat man eine gut Übersicht über die Werteverteilung im ausgewählten Zeitraum." : MessageLookupByLibrary.simpleMessage("Il y a un nouveau PDF appelé Dayhours. Cela montre les valeurs moyennes d\'une journée à chaque intervalle horaire et remplit la couleur de fond des cellules en fonction des valeurs de glycémies. Cela vous donne un bon aperçu de la distribution des valeurs dans la période sélectionnée."),
    "Es gibt ein neues PDF namens Tagestrend. Dieses zeigt die Werte eines Tages zusammen mit dem Trend zu jeder vollen Stunde, sowie der eingestellten Basalrate aus dem Profil. Das ist eine gute Übersicht für Basalratentests, um zu erkennen, wo etwas anzupassen ist." : MessageLookupByLibrary.simpleMessage("Il y a un nouveau PDF appelé Tendance Quotidienne. Cela montre les valeurs d\'une journée ainsi que la tendance sur l\'heure et le taux de basal défini dans le profil. Ceci est un bon aperçu pour les tests de débit basal pour voir où quelque chose doit être ajusté."),
    "Es gibt eine neue PDF-Seite für die Tagesprofile. Darauf ist eine Tabelle zu sehen, die die tatsächliche Basalrate für den Tag zeigt, inklusive aller temporären Anpassungen. Ich brauchte das für Debugzwecke, aber vielleicht findet das der eine oder andere Benutzer auch interessant. Das Profil, das dort angezeigt wird entspricht dem Tagesprofil auf der Seite Tagesgrafik. Beim Loopen können das sehr viele Seiten werden, da dort normalerweise alle paar Minuten Anpassungen an der Basalrate vorgenommen werden. Deswegen wird die Tabelle auch abhängig von der Datenmenge in maximal drei Spalten dargestellt, um die Anzahl an Seiten zu reduzieren." : MessageLookupByLibrary.simpleMessage("Il y a une nouvelle page PDF pour les profils quotidiens. Il contient un tableau montrant le débit basal réel pour la journée, y compris tous les ajustements temporaires. J\'ai eu besoin de ça pour le débogage, mais peut-être que certains utilisateurs le trouveront aussi intéressant. Le profil affiché correspond au profil journalier sur la page Graphiques journaliers. Les boucles peuvent produire de nombreuses pages, car le taux de base est généralement ajusté toutes les quelques minutes. Par conséquent, en fonction de la quantité de données, le tableau est affiché dans un maximum de trois colonnes pour réduire le nombre de pages."),
    "Es gibt in den Einstellungen eine Option, das PDF herunterladen zu lassen, statt es im Browser direkt anzeigen zu lassen. Das wird für Browser wie Edge benötigt." : MessageLookupByLibrary.simpleMessage("Il y a une option dans les paramètres pour télécharger le PDF au lieu de l\'afficher directement dans le navigateur. Ceci est nécessaire pour les navigateurs comme Edge."),
    "Es gibt in den Einstellungen eine neue Option, um den letzten in Nightscout gespeicherten Glukosewert in der Titelzeile anzeigen zu lassen. Wenn diese Option aktiviert ist, wird der aktuelle Wert, das Alter des Wertes, der Trendpfeil und die Differenz zum vorherigen Wert rechts in der Titelzeile angezeigt. Diese Anzeige wird jede Minute aktualisiert, solange das Browserfenster den Eingabefokus besitzt. Wenn es diesen nicht hat, wird die Aktualisierung angehalten und der Wert ausgeblendet, um nicht unnötig Systemresourcen zu belasten." : MessageLookupByLibrary.simpleMessage("Il y a une nouvelle option dans les paramètres pour afficher la dernière valeur de glucose stockée dans Nightscout dans la barre de titre. Si cette option est activée, la valeur actuelle, l\'âge de la valeur, la flèche de tendance et la différence par rapport à la valeur précédente sont affichées à droite de la barre de titre. Cet affichage est mis à jour toutes les minutes tant que la fenêtre de votre navigateur a le focus d\'entrée. Si ce n\'est pas le cas, la mise à jour est arrêtée et la valeur est cachée pour éviter une charge inutile sur les ressources système."),
    "Es gibt jetzt auch die Möglichkeit, Nightscout Reporter in europäischem Englisch darzustellen. Der Unterschied zum amerikanischen Englisch besteht derzeit lediglich im Datumsformat (gb: dd/MM/yyyy, us: MM/dd/yyyy)." : MessageLookupByLibrary.simpleMessage("Il est maintenant possible d\'utiliser Nightscout Reporter en anglais européen. La différence avec l\'anglais américain n\'existe actuellement que dans le format de date (gb: yyyy/MM/dd, us: MM/yyyy/dd)."),
    "Es gibt jetzt die Möglichkeit, PDFs vergangener Zeiträume zu erzeugen, ohne den Zeitraum anpassen zu müssen. Oberhalb des Buttons zur PDF-Erzeugung gibt es zwei Buttons, welche die PDFs für eine frühere Periode erzeugen. Der untere der beiden Buttons erzeugt die Vorperiode, der obere die vorletzte Periode. Auf den Buttons wird das Startdatum und das Enddatum angezeigt. Wenn z.B. als Zeitraum \"Letzte 2 Wochen\" gewählt wurde, dann wird mit dem unteren Button der Zeitraum von zwei Wochen beginnend vor vier Wochen erzeugt und mit dem oberen Button der Zeitraum von zwei Wochen beginnend vor sechs Wochen. Auf diese Art kann man recht einfach Vergleichsberichte erzeugen, um die Entwicklung der Werte zu erkennen. Auf den Seiten wird für diese Ausdrucke in der Kopfzeile das Wort \"Historisch 1\", bzw. \"Historisch 2\" oberhalb des Zeitraums ausgegeben. So kann man beim Vergleich der Werte die Daten voneinander unterscheiden." : MessageLookupByLibrary.simpleMessage("Il y a maintenant la possibilité de générer des PDF des périodes passées sans avoir à ajuster la période. Il y a deux boutons pour les périodes antérieures au-dessus du bouton de création de PDF qui génèrent les PDF. Le plus bas des deux boutons génère la période précédente, le plus haut génère de l\'avant-dernière période. Les boutons affichent la date de début et la date de fin. Si la période \"2 dernières semaines\" est sélectionnée, le bouton inférieur crée la période à partir de deux semaines commençant il y a quatre semaines et le bouton supérieur la période de deux semaines commençant il y a six semaines. De cette façon, il est facile de générer des rapports de comparaison pour détecter la variabilité des mesures. Les mots \"Historique 1\" ou \"Historique 2\" sont placés au-dessus de la période dans l\'en-tête des rapports imprimés. Ainsi, vous pouvez distinguer les données les unes des autres lors de la comparaison des résultats."),
    "Es ist jetzt möglich, die Buttons zur PDF-Auswahl als Kacheln darstellen zu lassen. Die Option dazu ist im Menü auf der linken Seite zu finden. In der Kachelansicht werden die Buttons über die verfügbare Fläche verteilt und sind so auf kleinen Geräten leichter zu treffen. Ausserdem sieht man dann normalerweise alle verfügbaren PDFs auf einen Blick und muss nicht scrollen. Auf den aktivierten Kacheln wird angezeigt, an welcher Stelle im PDF die entsprechenden Seiten ausgegeben werden und wieviele Seiten die entsprechende Kachel ausgibt. Diese Zahl kann für die meisten Kacheln korrekt ermittelt werden, bei einigen ist das aber ohne Auswertung der Daten nicht möglich (z.B. Profile und Protokoll). In diesem Fall wird entweder keine Seitenzahl oder eine Mindestzahl an Seiten angegeben. Sobald die Erstellung des PDFs erfolgt ist, werden die korrekten Zahlen angezeigt. Die Reihenfolge der Kacheln kann verändert werden, indem man sie festhält und an die Stelle verschiebt, an der man sie gerne hätte. Nach Anklicken des Icons in der oberen rechten Ecke können die Parameter für das entsprechende PDF erfasst werden." : MessageLookupByLibrary.simpleMessage("Il est maintenant possible d\'afficher les boutons de sélection PDF sous forme de tuiles, l\'option se trouve dans le menu de gauche. Dans la vue des tuiles, les boutons sont répartis sur la zone disponible et sont donc plus faciles à appuyer sur les petits appareils. En outre, vous voyez normalement tous les PDF disponibles en un coup d\'œil et n\'avez pas à défiler. Les tuiles activées indiquent à quel moment dans le PDF les pages correspondantes sont créées et à combien de pages la tuile correspond. Le nombre de pages peut être déterminé correctement pour la plupart des tuiles, mais pour certaines ce n\'est pas possible sans un aperçu des données (par exemple, les profils et protocole). Dans ce cas, aucun numéro de page ou un nombre minimum de pages n\'est affiché. Une fois le PDF créé, les bons numéros seront affichés. L\'ordre de tri des tuiles peut être modifié en le faisant glisser vers l\'endroit où vous le souhaitez. Après avoir cliqué sur l\'icône en haut à droite, les paramètres du PDF correspondant peuvent être définis."),
    "Es ist jetzt möglich, die Einstellungen auf Google Drive zu speichern. Das hat den Vorteil, dass man die Einstellungen nicht nur im aktuellen Browser hat, sondern bei jedem Browser, mit dem man sich bei Google anmeldet. Die Einstellungen werden nach wie vor im Browser gespeichert. Bei einer Verbindung zu Google Drive werden sie aber zusätzlich auf Google Drive gespeichert. Beim Laden der Seite wird überprüft, ob eine Synchronisierung gewünscht ist. Wenn das der Fall ist, dann werden die Daten von Google Drive heruntergeladen. Wenn die Daten darin neuer sind als die Daten im Browser, werden sie verwendet. Nach dem Speichern der Daten werden bei aktivierter Synchronisierung diese Daten mit dem aktuellen Zeitstempel auf Google Drive gespeichert. Die Synchronisierung wird im Menü auf der linken Seite aktiviert und deaktiviert. Sie kann auch beim erstmaligen Aufruf der Seite in einem neuen Browser direkt im Willkommensbildschirm aktiviert werden. Nightscout Reporter verlangt nur die Berechtigung die eigenen App-Daten zu speichern und zu laden und benötigt keinen Zugriff auf andere Daten auf Google Drive." : MessageLookupByLibrary.simpleMessage("Il est maintenant possible de sauvegarder les paramètres dans Google Drive. Ceci a l\'avantage que vous avez les paramètres, pas seulement dans le navigateur actuel, mais dans n\'importe quel navigateur qui est connecté à votre compte Google. Les paramètres sont toujours stockés dans le navigateur. Lorsque vous êtes connecté à Google Drive, ils seront également stockés sur Google Drive. Lors du chargement de la page, il vérifie si la synchronisation est souhaitée. Si c\'est le cas, alors les données seront téléchargées depuis Google Drive. Si les données téléchargées sont plus récentes que celles du navigateur, elles seront utilisées. Une fois les données enregistrées, la synchronisation enregistrera ces données avec l\'horodatage courant sur Google Drive. La synchronisation est activée et désactivée dans le menu de gauche. Il peut également être activé lorsque vous appelez la page pour la première fois dans un nouveau navigateur directement dans l\'écran de bienvenue. Nightscout Reporter nécessite seulement la permission de sauvegarder et de charger vos propres données d\'application et ne nécessite pas l\'accès à d\'autres données sur Google Drive."),
    "Es ist jetzt möglich, die Wochentage festzulegen, die im Zeitraum berücksichtigt werden sollen. Die entsprechenden Tage werden bei der Auswahl des Zeitraums mit den Buttons unterhalb des Monats festgelegt. Auf den PDFs werden Zeiträume dann zusätzlich mit der Information versehen, welche Wochentage berücksichtigt werden, wenn es nicht alle sind." : MessageLookupByLibrary.simpleMessage("Il est maintenant possible de définir les jours de la semaine qui devraient être utilisés dans cette période. Lors de la sélection, les jours correspondants sont réglés avec les boutons en dessous du mois. Sur les PDF, les périodes sont affichées avec les jours de la semaine qui sont utilisés, si au moins un est manquant."),
    "Es sind keine Daten für den Ausdruck vorhanden" : MessageLookupByLibrary.simpleMessage("Il n’y a pas de données pour l\'impression"),
    "Es werden jetzt auch blutige Werte erkannt, die von Loop auf dem IPhone eingetragen werden." : MessageLookupByLibrary.simpleMessage("Les glycémies capillaires qui sont entrées par Boucle sur l\'iPhone sont maintenant également reconnues."),
    "Español" : MessageLookupByLibrary.simpleMessage("Espagnol"),
    "Facebook Seite" : MessageLookupByLibrary.simpleMessage("Page Facebook"),
    "Fehler behoben, der bei der Kachelansicht teilweise verhindert hat, dass die Parameter für die Kacheln aufgerufen werden konnten." : MessageLookupByLibrary.simpleMessage("Correction d\'un bug qui empêchait parfois les paramètres des tuiles d\'être appelés dans la vue des tuiles."),
    "Fehler beim Laden der Daten" : MessageLookupByLibrary.simpleMessage("Erreur de chargement des données"),
    "Fehler werden besser abgefangen und mit sinnvollem Text ersetzt." : MessageLookupByLibrary.simpleMessage("Les erreurs sont mieux interceptées et remplacées par un texte plus significatif."),
    "Fehlerhafte Ausgabe der Blutzuckerwerte in der täglichen Grafik korrigiert." : MessageLookupByLibrary.simpleMessage("Réparation incorrecte des niveaux de glycémie dans le graphe quotidien."),
    "Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt" : MessageLookupByLibrary.simpleMessage("Les valeurs défaillantes ne sont plus prises en compte dans l\'évaluation des graphiques; elles sont reconnues par la valeur \"NONE\" dans le champ de données \"direction\""),
    "Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt." : MessageLookupByLibrary.simpleMessage("Message d\'erreur lors du chargement des profils sans date de début a été supprimé."),
    "Français" : MessageLookupByLibrary.simpleMessage("Français"),
    "Für die Tagesgrafik gibt es jetzt eine Option, um die Aufsummierung nahe beieinander liegender Werte umzuschalten." : MessageLookupByLibrary.simpleMessage("Il existe maintenant une option pour les graphiques quotidiens de basculer l\'accumulation de mesures proches."),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("Date de naissance"),
    "Genauigkeit der Basalangaben:" : MessageLookupByLibrary.simpleMessage("Précision des valeurs de débit basal:"),
    "Ges." : MessageLookupByLibrary.simpleMessage("Somme"),
    "Gesamt" : MessageLookupByLibrary.simpleMessage("Total"),
    "Geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("HbA1c estimée"),
    "Glukose Pentagon erzeugen" : MessageLookupByLibrary.simpleMessage("Créer le pentagone de glycémies"),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Profil de variabilité de glucose"),
    "Glukose im Zielbereich" : MessageLookupByLibrary.simpleMessage("Glyc. dans la zone cible"),
    "Glukose zu hoch" : MessageLookupByLibrary.simpleMessage("Glycémie trop haute"),
    "Glukose zu niedrig" : MessageLookupByLibrary.simpleMessage("Glycémie trop faible"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("Courbe de glycémies"),
    "Glukosewert" : MessageLookupByLibrary.simpleMessage("Glycémie"),
    "Glykämischer Variabilitäts Index (GVI)" : MessageLookupByLibrary.simpleMessage("Index de variabilité glycémique (GVI)"),
    "Grafik" : MessageLookupByLibrary.simpleMessage("Graphe"),
    "Grafiken pro Seite" : MessageLookupByLibrary.simpleMessage("Graphes par page"),
    "Gross" : MessageLookupByLibrary.simpleMessage("Grand"),
    "Gruppierung der Zeiten" : MessageLookupByLibrary.simpleMessage("Regroupements des valeurs si écart inférieur à"),
    "HTML-Notizen anzeigen" : MessageLookupByLibrary.simpleMessage("Afficher les remarques HTML"),
    "Heute" : MessageLookupByLibrary.simpleMessage("Aujourd\'hui"),
    "Hiermit wird festgelegt, um wieviel der Zeitraum des PDFs verschoben werden soll, um Vergleichswerte zu erhalten." : MessageLookupByLibrary.simpleMessage("Ceci détermine de combien la période du PDF doit être déplacée afin d\'obtenir des valeurs comparatives."),
    "Hinweise auf Nightscout in der Kopf- und Fusszeile des PDFs ausblenden" : MessageLookupByLibrary.simpleMessage("Masquer les textes à propos de Nightscout dans l\'en-tête et le pied de page du PDF"),
    "Historische Daten" : MessageLookupByLibrary.simpleMessage("Données historiques"),
    "Hochformat" : MessageLookupByLibrary.simpleMessage("Portrait"),
    "Hohe Basalraten werden jetzt besser dargestellt." : MessageLookupByLibrary.simpleMessage("Les débits de base élevés sont désormais mieux représentés."),
    "Höchster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Valeur la plus élevée de la période"),
    "IE" : MessageLookupByLibrary.simpleMessage("U"),
    "IE/std" : MessageLookupByLibrary.simpleMessage("U/hr"),
    "IOB (Insulin On Board) anzeigen" : MessageLookupByLibrary.simpleMessage("Afficher l\'insuline active (IOB)"),
    "Im CGP wurden verschiedene Berechnungen korrigiert, die sich vor allem in Differenzen bei ToR und Mittelwerten zeigten." : MessageLookupByLibrary.simpleMessage("Divers calculs ont été corrigés dans le CGP, qui étaient principalement montrés dans les différences entre les ToR (Temps dans la cible) et les valeurs moyennes."),
    "Im Einstellungsdialog wurden die Zeilen mit den Benutzerangaben und der URL gegeneinander ausgetauscht, um eine sinnvollere Verwaltung zu ermöglichen." : MessageLookupByLibrary.simpleMessage("Dans la boîte de dialogue des paramètres, les lignes avec les détails de l\'utilisateur et l\'URL ont été remplacées pour une administration plus significative."),
    "Im Kalender-Control kann kein Datum nach dem aktuellen Tag mehr ausgewählt werden." : MessageLookupByLibrary.simpleMessage("Le contrôle du calendrier ne peut plus sélectionner une date après la date courante."),
    "Im Kalender-Control wird ein eingestellter Bereich (Heute, Letzte Woche, etc.) jetzt korrekt auf den aktuellen Tag bezogen." : MessageLookupByLibrary.simpleMessage("Dans le contrôle du calendrier, une période définie (aujourd\'hui, la semaine dernière, etc.) est maintenant correctement basée sur le jour actuel."),
    "Im Kalender-Control wird jetzt der Monat des entsprechenden Datums angezeigt, wenn eines der Felder Von oder bis den Fokus erhält." : MessageLookupByLibrary.simpleMessage("Le contrôle du calendrier affiche maintenant le mois de la date correspondante quand l\'un des champs De ou À reçoit le focus."),
    "Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert" : MessageLookupByLibrary.simpleMessage("Les nombres et les dates dans le PDF sont formatés selon la langue sélectionnée"),
    "Im Profil werden jetzt die richtigen Einheiten verwendet (mg/dL oder mmol/l)." : MessageLookupByLibrary.simpleMessage("Le profil utilise maintenant les unités correctes (mg/dL ou mmol/l)."),
    "Im Profil werden nun die Gesamtsumme der Basalrate und die durchschnittlichen Werte für ICR und ISF pro Stunde angezeigt." : MessageLookupByLibrary.simpleMessage("Le profil montre maintenant le débit basal total et la moyenne ICR et ISF par heure."),
    "Im Protokoll können jetzt auch Batteriewechsel der Pumpe angezeigt werden." : MessageLookupByLibrary.simpleMessage("Le protocole peut maintenant également montrer les changements de batterie de la pompe."),
    "Im Protokoll werden die Angaben, die ein temporäres Ziel von 0 IE für 0 Minuten setzen als \"Aufhebung von temp. Ziel\" ausgegeben." : MessageLookupByLibrary.simpleMessage("Dans les logs, les informations qui définissent une cible temporaire de 0 U pour 0 minutes sont affichées comme \"Annuler la cible temporaire\"."),
    "Impressum" : MessageLookupByLibrary.simpleMessage("Imprimer"),
    "In Firefox ist es jetzt auch möglich, die Hauptseite zu scrollen, wenn sie länger ist, als das Browserfenster." : MessageLookupByLibrary.simpleMessage("Il est maintenant possible de faire défiler la page principale dans Firefox, si elle est plus longue que la fenêtre du navigateur."),
    "In dem Dialog mit den Ausgabe Parametern wurde die Option hinzugefügt, die Genauigkeit der Ausgabe von Basalangaben festzulegen. Diese wird normalerweise aus den Angaben zur Basalrate in den Profilen ermittelt. Das wird auch weiterhin getan, wenn der erste Eintrag in der Liste ausgewählt wird. Ansonsten werden alle Basalangaben mit der Genauigkeit ausgegeben, die bei dieser Option ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("Dans la boîte de dialogue avec les paramètres de sortie, une option a été ajoutée pour spécifier la précision de l\'affichage des informations de débit basal. Ceci est généralement déterminé à partir des informations sur le débit basal dans les profils. C\'est toujours le cas lorsque la première entrée de la liste est sélectionnée. Sinon, toutes les informations de débit basal sont affichées avec la précision sélectionnée pour cette option."),
    "In den Ausgabe Parametern kann nun angegeben werden, ob immer der neueste Tag zuerst angezeigt wird. Das hat Auswirkungen auf die Tagesgrafik, die Tagesstatistik und die Wochengrafik. In den Formularoptionen wurde die entsprechende Option entfernt." : MessageLookupByLibrary.simpleMessage("Vous pouvez maintenant spécifier dans les paramètres de sortie si le jour le plus récent est toujours affiché en premier. Ceci a un impact sur le graphique quotidien, les statistiques quotidiennes et le graphique hebdomadaire. L\'option correspondante a été retirée des options de formulaire."),
    "In den Einstellungen gibt es einen Regler, der festlegt, wie gross die erzeugten PDF-Dateien maximal sein dürfen. Wenn nur ein leeres PDF erzeugt wird, dann sollte dieser Regler weiter nach links geschoben werden, um die Dateigrösse zu verringern." : MessageLookupByLibrary.simpleMessage("Dans les paramètres, il y a un curseur qui définit la taille des fichiers PDF résultants. Lorsqu\'un PDF vide est créé, alors ce curseur doit être déplacé plus loin vers la gauche, pour réduire la taille du fichier."),
    "In der Analyse können die Prozentzahlen für die Zielbereiche mit Nachkommazahl angezeigt werden. Das verringert die Differenz zu 100%, wenn man sie zusammenzählt. Der verbleibende Rest sind Rundungsdifferenzen." : MessageLookupByLibrary.simpleMessage("Dans l\'analyse, les pourcentages pour les zones cibles peuvent être affichés avec des décimales. Cela réduit l\'écart à 100% si vous la totalisez. Le reste est dû à des différences d\'arrondi."),
    "In der Auswertung gibt es eine neue Option, um den Standardbereich feiner abzustufen. Dort werden dann zusätzlich sehr hohe Werte und sehr niedrige Werte angezeigt." : MessageLookupByLibrary.simpleMessage("Il y a une nouvelle option dans l\'analyse pour affiner la plage standard. Les valeurs très élevées et les valeurs très basses sont affichées avec cette option."),
    "In der Auswertung können die Angaben für Material (Katheter, Sensor, Ampulle) mit Nachkommastellen angezeigt werden." : MessageLookupByLibrary.simpleMessage("Dans l\'analyse, les informations pour les consommables (sonde, capteur, ampoule) peuvent être affichées avec des décimales."),
    "In der Kachelansicht können die Parameter aller ausgewählten Seiten zusammen in einer Liste eingestellt werden. Dazu gibt es im Titelbereich der Parameterliste neben dem Schliessen-Button einen zusätzlichen Button, mit dem man zwischen den beiden Möglichkeiten umschalten kann." : MessageLookupByLibrary.simpleMessage("Dans la vue des tuiles, les paramètres de toutes les pages sélectionnées peuvent être réglés ensemble dans une liste. À cette fin, il y a un bouton supplémentaire dans la zone de titre de la liste de paramètres à côté du bouton de fermeture, avec laquelle vous pouvez basculer entre les deux options."),
    "In der Legende unter der Tagesgrafik wird die Summe der Kohlenhydrate für den Tag angezeigt." : MessageLookupByLibrary.simpleMessage("La légende en dessous du graphe quotidien montre la somme des glucides pour la journée."),
    "In der Sprachauswahl ist jetzt auch Slowakisch verfügbar." : MessageLookupByLibrary.simpleMessage("Le slovaque est maintenant également disponible dans la sélection de la langue."),
    "In der Tagesgrafik gibt es die Option, HTML-Notizen zu unterdrücken. Manche Uploader schreiben in die Notizen komplette HTML-Seiten rein, was im PDF extrem schlecht darstellbar ist. Deswegen kann man diese mit Setzen der Option ausblenden." : MessageLookupByLibrary.simpleMessage("Dans les graphiques quotidiens, il y a l\'option de supprimer les notes HTML. Certains uploaders écrivent des pages HTML complètes dans les notes, ce qui est extrêmement difficile à rendre dans le PDF. C\'est pourquoi vous pouvez les cacher en définissant cette option."),
    "In der Tagesgrafik gibt es eine Option, die berechneten IE für aufgenommene Kohlenhydrate anzeigen zu lassen. Der Wert, der unmittelbar unter den Kohlenhydraten angezeigt wird, entspricht dem Bolus, der zu diesem Zeitpunkt für diese Kohlenhydratmenge abgegeben werden sollte. Dieser Wert kann niedriger als der tatsächlich abgegebene Wert ausfallen, weil für die Insulinabgabe noch IOB und andere Faktoren berücksichtigt werden." : MessageLookupByLibrary.simpleMessage("Dans le graphe quotidien, il y a une option pour afficher les unités calculées pour les glucides ingérés. La valeur affichée sous les glucides est le bolus qui devrait être livré pour cette quantité de glucides à ce moment-là. Cette valeur peut être inférieure à la valeur réelle livrée, car l\'insuline active et d\'autres facteurs sont pris en compte pour la livraison de l\'insuline."),
    "In der Tagesgrafik gibt es eine Option, mit dem man die verschiedenen Arten der Boli kenntlich machen lassen kann. Wenn diese Option gesetzt ist, wird ein Bolus, der zu einer Mahlzeit abgegeben wurde mit einer anderen Farbe markiert, als ein Bolus zur Korrektur. In der Legende werden dann Korrektur-, Mahlzeiten-Boli und SMB getrennt angezeigt." : MessageLookupByLibrary.simpleMessage("Il y a une option dans les graphiques quotidiens qui permet de distinguer les différents types de bolus. Si cette option est définie, un bolus donné pour un repas est marqué d\'une autre couleur que le bolus donné comme correction. Dans la légende, il y a aussi des valeurs distinctes pour le bolus, le bolus correctif et les SMB (super micro bolus)."),
    "In der Tagesgrafik gibt es eine Option, mit der man sich die erfassten Trainingsdaten anzeigen lassen kann. Diese werden dann am unteren Rand über der Tabelle der Glukosewerte eingefügt." : MessageLookupByLibrary.simpleMessage("Dans le graphe quotidien il y a une option, qui ajoute les données des activités au graphique. Il sera affiché en bas du graphique à droite au-dessus de la table des glycémies."),
    "In der Tagesgrafik gibt es eine neue Option, um die Rundung der Insulinwerte auf die maximale Genauigkeit im Profil zu unterbinden. Das macht da Sinn, wo entweder kein Profil vorhanden ist, oder wo Werte mit höherer Genauigkeit als im Profil eingegeben werden." : MessageLookupByLibrary.simpleMessage("Il y a une nouvelle option dans le graphique quotidien pour éviter l\'arrondi des valeurs d\'insuline à la précision maximale dans le profil. Cela a un sens quand il n\'y a pas de profil ou quand les valeurs sont saisies avec plus de précision que dans le profil."),
    "In der Tagesgrafik kann die Anzeige der SMB nun ausgeblendet werden." : MessageLookupByLibrary.simpleMessage("L\'affichage de SMB peut maintenant être caché dans les graphes quotidiens."),
    "In der Tagesgrafik kann jetzt bei Auswahl der Tages Basalrate angegeben werden, dass der Name des Profils angezeigt wird, das am Beginn des Tages aktiv war. Dieser wird dann so angezeigt, wie ein Profilwechsel um 0 Uhr." : MessageLookupByLibrary.simpleMessage("Lors de la sélection du débit de base quotidien, il est maintenant possible de spécifier dans les options du graphique quotidien que le nom du profil qui était actif au début de la journée est affiché. Ceci sera ensuite affiché en tant que changement de profil à 0 heures."),
    "In der Tagesgrafik kann man nun die IOB (Insulin On Board) und COB (Carbs On Board) anzeigen lassen. Die IOB werden am oberen Rand angezeigt, wo auch die Bolusabgaben dargestellt werden, die COB am unteren Rand, wo auch die Kohlenhydrate dargestellt werden." : MessageLookupByLibrary.simpleMessage("Dans le graphique quotidien, vous pouvez maintenant afficher l\'IA (Insuline Active) et les glucides actifs (Glucides à bord). L\'Insuline Active est affichée en haut, où le bolus est montré, le glucides à bord en bas, où les glucides sont affichés."),
    "In der Tagesgrafik kann nun angezeigt werden, wie lange die Basalrate auf 0% lief." : MessageLookupByLibrary.simpleMessage("Le graphe quaotidien montre maintenant la durée du débit basal à 0%."),
    "In der Tagesgrafik werden die Insulinangaben jetzt kleiner dargestellt, wenn die Basalrate eine Genauigkeit von mehr als 2 Nachkommastellen hat." : MessageLookupByLibrary.simpleMessage("Si le débit de base a plus de 2 décimales, la valeur de l\'insuline est plus faible sur les graphiques quotidiens."),
    "In der Tagesgrafik werden jetzt auch Blutzuckermessungen angezeigt. Sie werden als rote Quadrate dargestellt und die zugehörigen Werte in der Tabelle unterhalb der Grafik werden ebenfalls mit roter Schrift angezeigt." : MessageLookupByLibrary.simpleMessage("Le graphe quotidien affiche maintenant aussi les valeurs de glycémie. Ils sont affichés sous forme de carrés rouges et les valeurs associées dans le tableau sous le graphique sont également affichées en rouge."),
    "In der Tagesgrafik werden nun SMBs auch angezeigt, wenn die Option für die Darstellung von Insulin akitivert wurde. Man kann festlegen, ob die SMBs an der Glukosekurve oder am Zielwert angezeigt werden." : MessageLookupByLibrary.simpleMessage("SMBs sont maintenant également affichés dans les graphes quotidiens si l\'option d\'affichage de l\'insuline a été activée. Vous pouvez spécifier si les SMBs sont affichées sur la courbe de glycémies ou à la valeur cible."),
    "In der Tagesgrafik werden nun auch Kohlenhydratkorrekturen angezeigt." : MessageLookupByLibrary.simpleMessage("Les corrections de glucides sont maintenant affichés dans le graphe quotidien."),
    "In der Tagesgrafik werden nun auch Reservoirwechsel angezeigt." : MessageLookupByLibrary.simpleMessage("Les changements de réservoirs sont maintenant également indiqués dans le graphe quotidien."),
    "In der Tagesgrafik werden nun auch bei Anzeige des Zielwertes die temporären Ziele berücksichtigt." : MessageLookupByLibrary.simpleMessage("Dans le graphe quotidien, les cibles temporaires sont également prises en compte lors de l\'affichage de la valeur cible."),
    "In der Tagesgrafik werden nun auch verzögerte Boli angezeigt." : MessageLookupByLibrary.simpleMessage("Les bolus retardés sont maintenant affichés dans le graphique quotidien."),
    "In der Tagesgrafik werden nun der geschätzte HbA1C und die prozentuale Menge an Bolusinsulin und Basalinsulin für den Tag angezeigt. Diese Anzeige erfolgt innerhalb der Legende, weshalb diese aktiviert sein muss, damit die Werte angezeigt werden." : MessageLookupByLibrary.simpleMessage("Le tableau quotidien montre maintenant les estimations HbA1C et les pourcentages de bolus et de débit de base pour la journée. Ces valeurs sont affichées dans la légende, c\'est pourquoi elles doivent être activées pour que les valeurs apparaissent."),
    "In der Tagesgrafik wird jetzt eine Tabelle mit halbstündigen Glukosewerten eingeblendet angezeigt. Diese kann über einen Parameter ausgeschaltet werden." : MessageLookupByLibrary.simpleMessage("Les graphes quotidiens affichent maintenant un graphe avec des valeurs de glycémies toutes les demi-heures. Cette option peut être désactivée via un paramètre."),
    "In der Tagesgrafik wurde \"Training\" in \"Bewegung\" umbenannt. Das passt besser zu den Einträgen in AAPS." : MessageLookupByLibrary.simpleMessage("Dans le graphique quotidien dans la version allemande \"Formation\" a été remplacé par \"Bewegung\" car cela correspond mieux à la formulation dans AAPS."),
    "In der Tagesgraphic werden jetzt Insulinwerte und Kohlenhydratwerte zusammengefasst, wenn es mehrere innerhalb einer Stunde gibt. Die Balken werden nach wie vor für jeden Wert einzeln ausgegeben. Auf diese Art sollte es keine überlappende Ausgabe der Werte mehr geben. Die zusammengefassten Werte werden in eckigen Klammern ausgegeben, um anzuzeigen, dass hier Werte aufsummiert wurden." : MessageLookupByLibrary.simpleMessage("Le graphique quotidien totalise maintenant les valeurs d\'insuline et de glucides lorsqu\'il y a plusieurs valeurs en moins d\'une heure. Les barres sont toujours dessinées individuellement pour chaque valeur. De cette manière, les valeurs ne devraient plus se chevaucher. Les valeurs agrégées sont affichées entre crochets pour indiquer que les valeurs ont été totalisées ici."),
    "In der Tagesstatistik und in den täglichen Grafiken werden jetzt zum Datum die Wochentage mit angezeigt." : MessageLookupByLibrary.simpleMessage("Dans les statistiques et les graphes quotidiens, les jours de la semaine sont maintenant affichés avec le jour de la semaine."),
    "In der Tagesstatistik wurde die Spalte Varianzkoeffizient hinzugefügt (VarK)." : MessageLookupByLibrary.simpleMessage("Dans les statistiques quotidiennes, la colonne Coefficient de variation a été ajoutée (CV)."),
    "In der Tagesstatistik wurden bei unvollständigen Daten teilweise fehlerhafte Werte ausgegeben. Das wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Correction des mauvaises données affichées dans les statistiques quotidiennes lorsqu\'un jour a trop peu de données."),
    "In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen." : MessageLookupByLibrary.simpleMessage("La variable ENABLE doit contenir le mot \"cors\" afin que les outils externes comme celui-ci puissent accéder aux données."),
    "Initiale Version, alles ist neu!" : MessageLookupByLibrary.simpleMessage("Version initiale, tout est nouveau !"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("Insuline"),
    "Insulin Kohlenhydrate Verhältnis (ICR)" : MessageLookupByLibrary.simpleMessage("Ratio de glucides (ICR)"),
    "Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE" : MessageLookupByLibrary.simpleMessage("Ratio de glucides (ICR) X g de glucides pour 1 Unité d\'insuline"),
    "Insulin Sensitivitäts Faktoren (ISF)" : MessageLookupByLibrary.simpleMessage("Facteurs de sensibilité à l\'insuline (FSI)"),
    "Insulin auf maximale Stellen im Profil runden" : MessageLookupByLibrary.simpleMessage("Arrondir l\'insuline pour une précision maximale dans le profil"),
    "Insulin-Quelle" : MessageLookupByLibrary.simpleMessage("Insuline source"),
    "Ja" : MessageLookupByLibrary.simpleMessage("Oui"),
    "Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember" : MessageLookupByLibrary.simpleMessage("Janvier|Février|Mars|Avril|Mai|Juin|Juillet|Août|Septembre|Octobre|Novembre|Décembre"),
    "Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez" : MessageLookupByLibrary.simpleMessage("Jan|Fév|Mar|Avr|Mai|Juin|Jul|Août|Sep|Oct|Nov|Déc"),
    "KH" : MessageLookupByLibrary.simpleMessage("Glucides"),
    "Kalibrierung und blutige Messungen" : MessageLookupByLibrary.simpleMessage("Calibration et valeurs de glycémies"),
    "Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Changement de cathéter"),
    "Keine" : MessageLookupByLibrary.simpleMessage("Aucun"),
    "Keine Änderung" : MessageLookupByLibrary.simpleMessage("Aucune modification"),
    "Klein" : MessageLookupByLibrary.simpleMessage("Petit"),
    "Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Glucides"),
    "Kohlenhydrate und Bolusinsulin werden jetzt in den täglichen Grafiken angezeigt" : MessageLookupByLibrary.simpleMessage("Les glucides et les bolus sont maintenant affichés dans les graphes quotidiens"),
    "Lade die Basisdaten..." : MessageLookupByLibrary.simpleMessage("Chargement des données de base..."),
    "Legende" : MessageLookupByLibrary.simpleMessage("Légende"),
    "Legende für Katheter- und Sensorwechsel zur Tagesgrafik hinzugefügt." : MessageLookupByLibrary.simpleMessage("Ajout de la légende pour les changements de cathéter et de capteur sur le graphe quotidien."),
    "Letzte 2 Tage" : MessageLookupByLibrary.simpleMessage("Les 2 derniers jours"),
    "Letzte 2 Wochen" : MessageLookupByLibrary.simpleMessage("Les 2 dernières semaines"),
    "Letzte 3 Monate" : MessageLookupByLibrary.simpleMessage("Les 3 derniers mois"),
    "Letzte 3 Tage" : MessageLookupByLibrary.simpleMessage("Les 3 derniers jours"),
    "Letzte 3 Wochen" : MessageLookupByLibrary.simpleMessage("Les 3 dernières semaines"),
    "Letzte Unterzuckerung" : MessageLookupByLibrary.simpleMessage("Dernière hypoglycémie"),
    "Letzte Woche" : MessageLookupByLibrary.simpleMessage("La semaine dernière"),
    "Letzten Messwert in der Titelzeile anzeigen" : MessageLookupByLibrary.simpleMessage("Afficher la dernière valeur de glycémie dans la barre de titre"),
    "Letzter Monat" : MessageLookupByLibrary.simpleMessage("Le mois dernier"),
    "Mahlzeitenbolus_bolus to handle a meal" : MessageLookupByLibrary.simpleMessage("Bolus du repas"),
    "Man kann jetzt mehrere Benutzer anlegen. Das ist nützlich, um mehrere Nightscout-Instanzen auszuwerten (z.B. für Ärzte, Betreuer oder den Entwickler dieser Software)" : MessageLookupByLibrary.simpleMessage("Vous pouvez maintenant créer plusieurs utilisateurs. Ceci est utile pour analyser plusieurs instances Nightscout (par exemple pour les médecins, les aidants ou le développeur de ce logiciel)"),
    "Material mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Consommables avec des décimales"),
    "Max" : MessageLookupByLibrary.simpleMessage("Max"),
    "Max Mustermann" : MessageLookupByLibrary.simpleMessage("Jean Dupont"),
    "Maximaler Glukosewert in Grafiken:" : MessageLookupByLibrary.simpleMessage("Valeur de glucose maximale dans les graphiques:"),
    "Median" : MessageLookupByLibrary.simpleMessage("Médiane"),
    "Mehr gibt es dazu eigentlich nicht zu sagen." : MessageLookupByLibrary.simpleMessage("Il n\'y a rien de plus à dire à ce sujet."),
    "Mess-\nwerte" : MessageLookupByLibrary.simpleMessage("Valeurs"),
    "Min" : MessageLookupByLibrary.simpleMessage("Min"),
    "Mit Google Drive synchronisieren" : MessageLookupByLibrary.simpleMessage("Synchroniser avec Google Drive"),
    "Mittel-\nwert" : MessageLookupByLibrary.simpleMessage("Moyenne"),
    "Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|Sonntag" : MessageLookupByLibrary.simpleMessage("Lundi|Mardi|Mercredi|Jeudi|Vendredi|Samedi|Dimanche"),
    "Mo|Di|Mi|Do|Fr|Sa|So" : MessageLookupByLibrary.simpleMessage("Lun|Mar|Mer|Jeu|Ven|Sam|Dim"),
    "Nacht (21:00 - 05:59)" : MessageLookupByLibrary.simpleMessage("Nuit (21:00 - 05:59)"),
    "Nahe zusammen liegende Werte aufsummieren" : MessageLookupByLibrary.simpleMessage("Agrégation des mesures proches"),
    "Name" : MessageLookupByLibrary.simpleMessage("Nom"),
    "Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat." : MessageLookupByLibrary.simpleMessage("Le nom, la date de naissance, l\'insuline et la date de diagnostic du diabète peuvent maintenant être laissés vides sans impact négatif sur la présentation du PDF."),
    "Nein" : MessageLookupByLibrary.simpleMessage("Non"),
    "Neue Option im Profil, um fortlaufende Zeiten mit gleichen Werten zu einem Eintrag zusammen zu fassen." : MessageLookupByLibrary.simpleMessage("Nouvelle option dans le profil pour combiner les temps consécutifs avec les mêmes valeurs en une seule entrée."),
    "Neuer Parameter für die Tagesgrafik, der festlegt, ob die Linien für die Notizen unter der Grafik bis zur Glukosekurve gezeichnet werden sollen oder nicht." : MessageLookupByLibrary.simpleMessage("Nouveau paramètre graphique journalier qui détermine s\'il faut ou non tracer les lignes pour les notes sous le graphique jusqu\'à la courbe de glycémies."),
    "Neues PDF für eine Wochengrafik hinzugefügt, auf der die Glukosekurven der Woche übereinander gelegt werden." : MessageLookupByLibrary.simpleMessage("Ajout d\'un nouveau PDF pour un graphe hebdomadaire où les courbes de gyclémies de la semaine sont affichées une seule fois."),
    "Neuester Tag zuerst" : MessageLookupByLibrary.simpleMessage("Plus récent en premier"),
    "Niedrigster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Valeur la plus basse de la période"),
    "Nightscout Berichte" : MessageLookupByLibrary.simpleMessage("Rapports Nightscout"),
    "Nightscout Reporter ist nun auch grösstenteils in Spanisch und Polnisch verfügbar. Entsprechende Buttons wurden dem Hauptmenü hinzugefügt. Danke an die fleissigen Übersetzer :)." : MessageLookupByLibrary.simpleMessage("La majeure partie de Nightscout Reporter est maintenant traduite en espagnol et en polonais. Les boutons correspondants ont été ajoutés au menu principal. Merci aux traducteurs attentifs :)."),
    "Nightscout Reporter kann nun auch auf Portugiesisch verwendet werden." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter peut maintenant être utilisé en portugais."),
    "Nightscout Reporter kann nun auch in Japanisch verwendet werden." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter peut maintenant être utilisé en japonais."),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("Site Nightscout"),
    "Normal" : MessageLookupByLibrary.simpleMessage("Normal"),
    "Notiz" : MessageLookupByLibrary.simpleMessage("Note"),
    "Notiz-Linien bis zur Kurve zeichnen" : MessageLookupByLibrary.simpleMessage("Tracer des lignes de note sur la courbe"),
    "Notizen" : MessageLookupByLibrary.simpleMessage("Remarques"),
    "Nur letzte Basalrate ausgeben" : MessageLookupByLibrary.simpleMessage("Afficher uniquement le dernier débit de base"),
    "Nur letztes Profil ausgeben" : MessageLookupByLibrary.simpleMessage("Afficher uniquement le dernier profil"),
    "Ok" : MessageLookupByLibrary.simpleMessage("Ok"),
    "Optionen für die PDFs, die eine eindeutige Beziehung zu einem laufenden Loop haben, werden nun in Blau dargestellt. Das vereinfacht es, PDFs zu erstellen, denen man nicht ohne Weiteres entnehmen kann, dass ein Loop vorliegt. Dazu müssen nur die Haken bei den blauen Optionen entfernt werden." : MessageLookupByLibrary.simpleMessage("Les options pour les PDFs qui ont une relation unique avec une boucle en cours sont maintenant affichées en bleu. Cela rend facile la création de PDF où vous ne pouvez pas facilement déduire qu\'il y a une boucle en cours. Tout ce que vous avez à faire est de décocher les options bleues."),
    "PDF anzeigen" : MessageLookupByLibrary.simpleMessage("Afficher PDF"),
    "PDF erneut erzeugen" : MessageLookupByLibrary.simpleMessage("Créer le PDF à nouveau"),
    "PDF erzeugen" : MessageLookupByLibrary.simpleMessage("Créer un PDF"),
    "PDF für Profildaten" : MessageLookupByLibrary.simpleMessage("PDF des données de profil"),
    "PDF herunterladen (bei einigen Browsern benötigt)" : MessageLookupByLibrary.simpleMessage("Télécharger le PDF (nécessaire pour certains navigateurs)"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("Ouvrir le PDF dans la même fenêtre"),
    "PGR" : MessageLookupByLibrary.simpleMessage("PGR"),
    "Patient Glykämischer Status (PGS)" : MessageLookupByLibrary.simpleMessage("Statut glycémique du patient (PGS)"),
    "Pausiert" : MessageLookupByLibrary.simpleMessage("Interrompu"),
    "Polski" : MessageLookupByLibrary.simpleMessage("Polonais"),
    "Português" : MessageLookupByLibrary.simpleMessage("Portugais"),
    "Problem auf GitHub melden" : MessageLookupByLibrary.simpleMessage("Signaler un problème sur GitHub"),
    "Profil" : MessageLookupByLibrary.simpleMessage("Profil"),
    "Profil-Basalrate" : MessageLookupByLibrary.simpleMessage("Profil de débit de base"),
    "Profileinstellungen" : MessageLookupByLibrary.simpleMessage("Réglages du profil"),
    "Profilwechsel" : MessageLookupByLibrary.simpleMessage("Changement de profil"),
    "Protokoll" : MessageLookupByLibrary.simpleMessage("Log"),
    "Quelle: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)" : MessageLookupByLibrary.simpleMessage("Source: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). Le Pentagone Glucose Comprehensive Glucose : Un indicateur composite centré sur le glucose pour évaluer le contrôle glycémique des personnes atteintes de diabète. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)"),
    "Querformat" : MessageLookupByLibrary.simpleMessage("Paysage"),
    "Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse." : MessageLookupByLibrary.simpleMessage("Ordre des pages PDF modifié - Le diagramme du percentile vient maintenant après l\'analyse."),
    "Reservoirwechsel" : MessageLookupByLibrary.simpleMessage("Changement de réservoir"),
    "SMB" : MessageLookupByLibrary.simpleMessage("SMB"),
    "SMB Werte anzeigen" : MessageLookupByLibrary.simpleMessage("Afficher valeurs SMB"),
    "SMB an der Kurve platzieren" : MessageLookupByLibrary.simpleMessage("Placer SMB sur la courbe"),
    "Schliessen" : MessageLookupByLibrary.simpleMessage("Fermer"),
    "Schliessen Button im Nachrichtenbereich hinzugefügt." : MessageLookupByLibrary.simpleMessage("Le bouton Fermer a été ajouté dans la zone de message."),
    "Sechs Monate vorher" : MessageLookupByLibrary.simpleMessage("Six mois avant"),
    "Sechzehn" : MessageLookupByLibrary.simpleMessage("Seize"),
    "Sekunden anzeigen" : MessageLookupByLibrary.simpleMessage("Afficher les secondes"),
    "Sensorwechsel" : MessageLookupByLibrary.simpleMessage("Changement de capteur"),
    "Slovenský" : MessageLookupByLibrary.simpleMessage("Slovène"),
    "Soll der Benutzer mit der URL" : MessageLookupByLibrary.simpleMessage("L\'utilisateur avec l\'URL doit"),
    "Spalte HbA1c" : MessageLookupByLibrary.simpleMessage("Colonne HbA1C"),
    "Spalte HbA1c zu Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Colonne HbA1C ajoutée aux statistiques quotidiennnes"),
    "Spalte Messwerte" : MessageLookupByLibrary.simpleMessage("Colonne du nombre de mesures"),
    "Spalte Standardabweichung" : MessageLookupByLibrary.simpleMessage("Colonne écart type"),
    "Spalte TDD" : MessageLookupByLibrary.simpleMessage("Colonne Dose Totale Quotidienne"),
    "Spalte Variationskoeffizient" : MessageLookupByLibrary.simpleMessage("Colonne coefficient de variation"),
    "Spalten Perzentile" : MessageLookupByLibrary.simpleMessage("Colonne Pourcentiles"),
    "Spalten für 10% und 90% anzeigen" : MessageLookupByLibrary.simpleMessage("Afficher les colonnes pour 10% et 90%"),
    "Spaltenbreite der Informationen in der Analyse erhöht" : MessageLookupByLibrary.simpleMessage("Largeur de la colonne des informations augmentée dans l\'analyse"),
    "Speichern" : MessageLookupByLibrary.simpleMessage("Sauvegarder"),
    "Standard_theme selection - standard" : MessageLookupByLibrary.simpleMessage("Standard"),
    "Standardabweichung" : MessageLookupByLibrary.simpleMessage("Écart-type"),
    "Standardabweichung statt Anzahl" : MessageLookupByLibrary.simpleMessage("Écart-type au lieu du nombre"),
    "Standardbereich mit feinerer Abstufung" : MessageLookupByLibrary.simpleMessage("Plage standard avec gradation plus fine"),
    "Standardgrenzwerte" : MessageLookupByLibrary.simpleMessage("Zone cible standard"),
    "Startstunde" : MessageLookupByLibrary.simpleMessage("Heure de départ"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("Éc. type"),
    "Stunden" : MessageLookupByLibrary.simpleMessage("heures"),
    "Stündliche Statistik" : MessageLookupByLibrary.simpleMessage("Statistiques horaires"),
    "Summe" : MessageLookupByLibrary.simpleMessage("Somme"),
    "Summen für Bolus Insulin, Basalrate für den Tag und Basalrate aus dem Profil zur Tagesgrafik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Sommes pour bolus, basale de la journée et profil du débit de base ajouté au graphe quotidien"),
    "Symbole (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Symboles (cathéters etc.)"),
    "Synchronisierung aufheben" : MessageLookupByLibrary.simpleMessage("Annuler la synchronisation"),
    "TDD" : MessageLookupByLibrary.simpleMessage("DTQ"),
    "Tabelle" : MessageLookupByLibrary.simpleMessage("Tableau"),
    "Tabelle mit Glukosewerten" : MessageLookupByLibrary.simpleMessage("Tableau avec valeurs de glycémies"),
    "Tag (08:00 - 17:59)" : MessageLookupByLibrary.simpleMessage("Jour (08:00 - 17:59)"),
    "Tages-Basalrate" : MessageLookupByLibrary.simpleMessage("Débit de base quotidien"),
    "Tagesanalyse" : MessageLookupByLibrary.simpleMessage("Analyse du jour"),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("Graphe quotidien"),
    "Tagesgrafikparameter zur Anzeige der Legende" : MessageLookupByLibrary.simpleMessage("Paramètres du graphe quotidien pour l\'affichage des remarques"),
    "Tagesgrafikparameter zur Anzeige von Notizen" : MessageLookupByLibrary.simpleMessage("Paramètres du graphe quotidien pour l\'affichage des remarques"),
    "Tagesgrafikparameter zur umgekehrten Sortierung hinzugefügt. Die Tage werden damit beginnend mit dem höchsten Datum ausgegeben." : MessageLookupByLibrary.simpleMessage("Ajout de paramètres graphiques quotidiens pour le tri inverse. Les graphiques quotidiens sont créés à partir de la date la plus haute."),
    "Tagesnamen in Grafik anzeigen" : MessageLookupByLibrary.simpleMessage("Afficher les noms des jours sur les graphes"),
    "Tagesprofil" : MessageLookupByLibrary.simpleMessage("Profil quotidien"),
    "Tagesstartprofil anzeigen" : MessageLookupByLibrary.simpleMessage("Afficher le profil au début de la journée"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("Statistiques quotidiennes"),
    "Tagesstunden" : MessageLookupByLibrary.simpleMessage("Heures du jour"),
    "Tagestrend" : MessageLookupByLibrary.simpleMessage("Tendance quotidienne"),
    "Temporäre Basalraten" : MessageLookupByLibrary.simpleMessage("Débit de base temporaire"),
    "Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt" : MessageLookupByLibrary.simpleMessage("Les débits de base temporaires avec des valeurs absolues sont affichées correctement"),
    "Temporäre Profilwechsel werden jetzt erkannt und in der Tagesgrafik korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Les changements temporaires de profil sont maintenant reconnus et affichés correctement dans les graphiques quotidiens."),
    "Temporäre Ziele" : MessageLookupByLibrary.simpleMessage("Objectifs temporaires"),
    "Titelangaben für Datumsbereiche auf den PDFs vereinheitlicht" : MessageLookupByLibrary.simpleMessage("Les informations de titre pour les plages de dates sur les PDF sont unifiées"),
    "Trend" : MessageLookupByLibrary.simpleMessage("Tendance"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("Horaire"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("Heure de la journée"),
    "Unbegrenzt" : MessageLookupByLibrary.simpleMessage("Illimité"),
    "Unterzuckerungen anzeigen" : MessageLookupByLibrary.simpleMessage("Afficher l\'hypoglycémie"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("Url vers Nightscout-API (ex: https://xxx.herokuapp.com)"),
    "VarK\nin %" : MessageLookupByLibrary.simpleMessage("CV en %"),
    "Verbinde zu Google Drive..." : MessageLookupByLibrary.simpleMessage("Se connecter à Google Drive..."),
    "Verbinde zu Google..." : MessageLookupByLibrary.simpleMessage("Se connecter à Google ..."),
    "Verbindung zu Google Drive herstellen" : MessageLookupByLibrary.simpleMessage("Se connecter à Google Drive"),
    "Verbindung zu Google Drive trennen" : MessageLookupByLibrary.simpleMessage("Se déconnecter de Google Drive"),
    "Vergleich" : MessageLookupByLibrary.simpleMessage("Comparaison"),
    "Version" : MessageLookupByLibrary.simpleMessage("Version"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("Distribution"),
    "Verzögerter Bolus" : MessageLookupByLibrary.simpleMessage("Bolus retardé"),
    "Vier" : MessageLookupByLibrary.simpleMessage("Quatre"),
    "Von" : MessageLookupByLibrary.simpleMessage("à partir de"),
    "Vor der Erzeugung eines PDFs wird noch ein Dialog angezeigt, auf dem man Parameter für alle erzeugten PDFs eingeben kann. Man kann dort den Zielbereich auf den Standardbereich festlegen, den Ärzte gerne sehen. Das hat Auswirkungen auf alle Darstellungen des Zielbereichs, sowie auf die Verteilung der Werte innerhalb und ausserhalb des Zielbereichs. Man kann dort auch den Maximalwert für Glukose in Grafiken festlegen. Dieser Wert wird in der Tagesgrafik, dem Perzentil Diagramm und der Wochengrafik verwendet. Wenn er auf \"Automatisch\" gesetzt wird, wird der Maximalwert wie bisher auch aus den vorhandenen Daten ermittelt. Ausserdem kann man hier angeben, ob man den aktuellen Zeitraum erzeugen möchte oder einen Vergleichszeitraum. Das ist nützlich, um dem Arzt die Gegenüberstellung von Werten der Vergangenheit und jetzt zu zeigen." : MessageLookupByLibrary.simpleMessage("Avant de créer un PDF, une boîte de dialogue s\'affiche, dans laquelle vous pouvez entrer des paramètres pour tous les PDFs créés. Vous pouvez définir la zone cible à la zone standard que les médecins aiment voir. Ceci a un impact sur toutes les représentations de la zone cible, ainsi que sur la distribution des valeurs à l\'intérieur et à l\'extérieur de la zone cible. Vous pouvez également définir la valeur maximale pour le glucose dans les graphiques. Cette valeur est utilisée dans les graphiques quotidiens, le diagramme percentile et les graphiques hebdomadaires. S\'il est défini à \"Automatique\", la valeur maximale est déterminée à partir des données existantes. Vous pouvez également spécifier ici si vous voulez générer la période actuelle ou une période de comparaison. Ceci est utile pour montrer au médecin une comparaison des valeurs passées et maintenant."),
    "Warum werde ich mit mehreren Buttons genervt, statt eine einzelne PDF angezeigt zu kriegen?" : MessageLookupByLibrary.simpleMessage("Pourquoi suis-je ennuyé par plusieurs boutons au lieu d\'obtenir un seul PDF?"),
    "Was bisher geschah..." : MessageLookupByLibrary.simpleMessage("Ce qu\'il s\'est passé jusqu\'à présent..."),
    "Wechsel" : MessageLookupByLibrary.simpleMessage("Modification"),
    "Wechsel (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Changements (cathéters etc.)"),
    "Weihnachten_theme selection - christmas" : MessageLookupByLibrary.simpleMessage("Noël"),
    "Wenn Sonderzeichen in den Daten vorhanden sind (z.B. Smileys in den Notizen), führte das zu einem Absturz während der PDF-Erstellung. Das wurde behoben, indem diese Sonderzeichen aus der Ausgabe entfernt werden." : MessageLookupByLibrary.simpleMessage("Si des caractères spéciaux sont présents dans les données (par exemple des émoticônes dans les notes), cela causait un plantage lors de la création du PDF. Cela a été corrigé en supprimant ces caractères spéciaux pour l\'impression."),
    "Wenn auf der Profilseite leere Spalten vorkommen, führt das nicht mehr zu einer leeren Seite." : MessageLookupByLibrary.simpleMessage("S\'il y a des colonnes vides sur la page de profil, cela ne mène plus à une page vide."),
    "Wenn das erzeugte PDF zu gross wird, wird es nun auf mehrere PDF-Dateien aufgeteilt. In diesem Fall wird es nicht direkt geöffnet, sondern es wird eine Liste mit durchnummerierten Buttons angezeigt. Diese Buttons öffnen bei Betätigung das entsprechende PDF und erhalten einen Haken, um anzuzeigen, dass es geöffnet wurde. Das sollte es erleichtern, die PDFs nacheinander zu öffnen, weil normalerweise der Browser im Hintergrund verschwindet, wenn ein neues Fenster aufgemacht wird." : MessageLookupByLibrary.simpleMessage("Si le PDF généré est trop volumineux, il est maintenant divisé en plusieurs fichiers PDF. Dans ce cas, il ne s\'ouvrira pas directement, mais il y aura une liste de boutons numérotés. Ces boutons ouvrent le PDF correspondant et obtiennent une marque indiquant qu\'il a été ouvert. Cela devrait faciliter l\'ouverture des fichiers PDF, car la fenêtre du navigateur est généralement déplacée en arrière-plan quand une nouvelle fenêtre est ouverte."),
    "Wenn der Zeitraum leer ist, wird der Button für die Auswahl deutlich markiert und in dem Dialog zur Auswahl wird in der Titelzeile ein Hinweis darauf angezeigt." : MessageLookupByLibrary.simpleMessage("Si la période est vide, le bouton de la sélection est clairement identifié et dans la boîte de dialogue, et une indication apparaît dans la barre de titre dans la boîte de dialogue de sélection."),
    "Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet" : MessageLookupByLibrary.simpleMessage("Si les seuils dans Nightscout (BG_TARGET_BOTTOM et BG_TARGET_TOP) sont égal à 70 et 180, alors la plage pour les valeurs par défaut sera masquée sur la page d\'analyse"),
    "Wenn in den Einstellungen eine Verbindung zum Google-Konto hergestellt wird, werden die Cookies von Google verwendet und die Daten nicht mehr im localStorage des Browsers gespeichert, sondern im AppStorage auf Google Drive. Auf diese Art kann man die Daten zentralisiert verwalten und hat diese in jedem Browser zur Verfügung, der mit dem angegebenen Google Konto verbunden ist." : MessageLookupByLibrary.simpleMessage("Lorsque les paramètres sont connectés au compte Google, Les cookies de Google sont utilisés et les données ne sont plus stockées dans le stockage local du navigateur, mais sur Google Drive. De cette façon, vous pouvez gérer les données de manière centralisée et les rendre disponibles dans n\'importe quel navigateur connecté au compte Google spécifié."),
    "Wenn in den Einträgen Lücken von 15 Minuten oder mehr sind, führen diese zu einer Unterbrechung der Linie in der Tagesgrafik." : MessageLookupByLibrary.simpleMessage("S\'il y a des trous dans les entrées de 15 minutes ou plus, il y aura aussi un vide dans le graphe quotidien."),
    "Wenn in einem Profil mehr Zeiten erfasst wurden, als auf eine Seite passen, wurden diese fortlaufend in die nächste Seite hineingeschrieben. Jetzt wird an geeigneter Stelle eine neue Seite ausgegeben." : MessageLookupByLibrary.simpleMessage("Si plus de fois ont été enregistrées dans un profil que sur une page, elles écrasaient le contenu de la page suivante. Maintenant une nouvelle page est créée au besoin."),
    "Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt." : MessageLookupByLibrary.simpleMessage("Si aucune donnée n\'est disponible, les pages vides seront générées avec une astuce appropriée."),
    "Willkommen" : MessageLookupByLibrary.simpleMessage("Bienvenue"),
    "Willkommen bei Nightscout Reporter!" : MessageLookupByLibrary.simpleMessage("Bienvenue sur Nightscout Reporter!"),
    "Wochengrafik" : MessageLookupByLibrary.simpleMessage("Graphes hebdomadaires"),
    "Zeilen mit gleichen Werten zusammenfassen" : MessageLookupByLibrary.simpleMessage("Combiner les entrées avec les mêmes valeurs"),
    "Zeitraum" : MessageLookupByLibrary.simpleMessage("Période"),
    "Zeitraum festlegen" : MessageLookupByLibrary.simpleMessage("Sélectionnez la période"),
    "Zeitzone" : MessageLookupByLibrary.simpleMessage("Fuseau Horaire"),
    "Zielbereich" : MessageLookupByLibrary.simpleMessage("Zone cible"),
    "Zielbereich mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Zone cible avec décimales"),
    "Zugriffsschlüssel" : MessageLookupByLibrary.simpleMessage("Jeton d\'accès"),
    "Zur Berechnung der Analyse, Tagesstatistik und Tagesgrafik wird nun die gleiche Datenbasis verwendet, so dass die Werte auf allen PDFs gleich sind." : MessageLookupByLibrary.simpleMessage("La même base de données est utilisée pour calculer l\'analyse, les statistiques quotidiennes et les graphes quotidiens de sorte que les valeurs soient les mêmes sur tous les PDF."),
    "Zur Kachelansicht" : MessageLookupByLibrary.simpleMessage("Vers la vue des tuiles"),
    "Zur Listenansicht" : MessageLookupByLibrary.simpleMessage("Vers la vue liste"),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("Fonctions supplémentaires"),
    "Zusätzliche Informationen zu den PDFs und im UI hinzugefügt" : MessageLookupByLibrary.simpleMessage("informations supplémentaires ajoutées sur les PDFs et dans l\'interface utilisateur"),
    "Zusätzliche Spalte anzeigen" : MessageLookupByLibrary.simpleMessage("Afficher une colonne supplémentaire"),
    "Zwei" : MessageLookupByLibrary.simpleMessage("Deux"),
    "_msgPageCount" : m0,
    "_msgPageCountEst" : m1,
    "ab 4,6" : MessageLookupByLibrary.simpleMessage("à partir de 4,6"),
    "bis" : MessageLookupByLibrary.simpleMessage("jusqu\'au"),
    "dd.MM.yyyy" : MessageLookupByLibrary.simpleMessage("dd/MM/yyyy"),
    "extrem hohes Risiko" : MessageLookupByLibrary.simpleMessage("risque extrêmement élevé"),
    "g / Stunde" : MessageLookupByLibrary.simpleMessage("g / heure"),
    "geringes Risiko" : MessageLookupByLibrary.simpleMessage("risque faible"),
    "gesch. HbA1c" : MessageLookupByLibrary.simpleMessage("est. HbA1C"),
    "hohes Risiko" : MessageLookupByLibrary.simpleMessage("risque élevé"),
    "https://nightscout-reporter.zreptil.de/beta" : MessageLookupByLibrary.simpleMessage("https://nightscout-reporter.zreptil.de/beta"),
    "mg/dL" : MessageLookupByLibrary.simpleMessage("mg/dL"),
    "mmol/L" : MessageLookupByLibrary.simpleMessage("mmol/L"),
    "moderates Risiko" : MessageLookupByLibrary.simpleMessage("risque modéré"),
    "msgBasalInfo" : m2,
    "msgBasalInfo1" : m3,
    "msgBasalrateDay" : m4,
    "msgBasalrateProfile" : m5,
    "msgBolusInsulin" : m6,
    "msgCV" : m7,
    "msgCalibration" : m8,
    "msgCarbBolusInsulin" : m9,
    "msgCarbs" : m10,
    "msgCatheterDays" : m11,
    "msgChangedEntry" : m12,
    "msgCheckUser" : m13,
    "msgCorrectBolusInsulin" : m14,
    "msgCount" : m15,
    "msgDaySum" : m16,
    "msgDuration" : m17,
    "msgFactorEntry" : m18,
    "msgGVIBad" : m19,
    "msgGVIGood" : m20,
    "msgGVINone" : m21,
    "msgGVIVeryGood" : m22,
    "msgHYPER" : m23,
    "msgHYPERInfo" : m24,
    "msgHYPO" : m25,
    "msgHYPOInfo" : m26,
    "msgHigh" : m27,
    "msgHistorical" : m28,
    "msgHypoTitle" : m29,
    "msgISF" : m30,
    "msgKH" : m31,
    "msgKHBE" : m32,
    "msgLegendTDD" : m33,
    "msgLoadingData" : m34,
    "msgLoadingDataFor" : m35,
    "msgLogMicroBolus" : m36,
    "msgLogSMB" : m37,
    "msgLogTempBasal" : m38,
    "msgLogTempBasalAbsolute" : m39,
    "msgLogTempTarget" : m40,
    "msgLow" : m41,
    "msgMBG" : m42,
    "msgMEAN" : m43,
    "msgMEANInfo" : m44,
    "msgPGSBad" : m45,
    "msgPGSGood" : m46,
    "msgPGSVeryBad" : m47,
    "msgPGSVeryGood" : m48,
    "msgProfileSwitch" : m49,
    "msgProfileSwitchDuration" : m50,
    "msgReadingsInMinutes" : m51,
    "msgReadingsPerDay" : m52,
    "msgReadingsPerHour" : m53,
    "msgReservoirDays" : m54,
    "msgSMBInsulin" : m55,
    "msgSensorDays" : m56,
    "msgStandardLimits" : m57,
    "msgStdAbw" : m58,
    "msgTOR" : m59,
    "msgTORInfo" : m60,
    "msgTarget" : m61,
    "msgTargetArea" : m62,
    "msgTargetValue" : m63,
    "msgTimeOfDay24" : m64,
    "msgTimeOfDayAM" : m65,
    "msgTimeOfDayPM" : m66,
    "msgValidFrom" : m67,
    "msgValidRange" : m68,
    "msgValidTo" : m69,
    "msgValuesAbove" : m70,
    "msgValuesBelow" : m71,
    "msgValuesIn" : m72,
    "msgValuesNorm" : m73,
    "msgValuesNormHigh" : m74,
    "msgValuesNormLow" : m75,
    "msgValuesVeryHigh" : m76,
    "msgValuesVeryLow" : m77,
    "ok" : MessageLookupByLibrary.simpleMessage("ok"),
    "sehr geringes Risiko" : MessageLookupByLibrary.simpleMessage("très faible risque"),
    "tl;dr" : MessageLookupByLibrary.simpleMessage("tl;dr"),
    "verwerfen" : MessageLookupByLibrary.simpleMessage("annuler"),
    "wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("confirmer la suppression ?"),
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("Moyenne basale par jour"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("Moyenne bolus par jour"),
    "Ø ICR/Stunde" : MessageLookupByLibrary.simpleMessage("ICR/Heure moyen"),
    "Ø ISF/Stunde" : MessageLookupByLibrary.simpleMessage("ISF/Heure moyen"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("Moyenne d\'insuline par jour"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("Ratio insuline moyen"),
    "Ø KH pro Tag" : MessageLookupByLibrary.simpleMessage("Moyenne de glucides par jour"),
    "Ø Microbolus pro Tag" : MessageLookupByLibrary.simpleMessage("Moyenne microbolus par jour"),
    "Ø Zuckerwert" : MessageLookupByLibrary.simpleMessage("Glycémie moyenne"),
    "Überprüfe Zugriff auf Nightscout ..." : MessageLookupByLibrary.simpleMessage("Vérification de l\'accès à Nightscout ..."),
    "Übersetzungen korrigiert" : MessageLookupByLibrary.simpleMessage("Traductions corrigées"),
    "日本の" : MessageLookupByLibrary.simpleMessage("Japonais")
  };
}
