// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt_PT locale. All the
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
  get localeName => 'pt_PT';

  static m0(startTag0, endTag0) => "After I was asked again and again whether I could be donated, I decided to make such a possibility available. Nightscout Reporter is still completely free and will stay that way. If you still want to express your affection for the program, I don\'t want to stand in your way any longer. The donation button is not visible. But if you want to throw something in the ${startTag0}hat${endTag0}, you will find it :)";

  static m1(count) => "${Intl.plural(count, zero: '', one: '1 página', other: '${count} páginas')}";

  static m2(count) => "${Intl.plural(count, zero: '', one: '1 página ou mais', other: '${count} páginas ou mais')}";

  static m3(isVisible) => "O token de acesso só é necessário se o acesso no Nightscout foi restrito via AUTH_DEFAULT_ROLES";

  static m4(time) => "A taxa de basal tem sido válida desde ${time} e não inclui nenhuma alteração temporária.";

  static m5(unit) => "Este basalrate estava ativo em ${unit}.";

  static m6(value) => "Taxa Basal do dia (${value})";

  static m7(value) => "Taxa Basal do perfil (${value})";

  static m8(value) => "Insulina Bolus (${value})";

  static m9(value) => "CV [${value}%]";

  static m10(date) => "Verificando ${date} ...";

  static m11(scale, intercept, slope) => "Calibração (escala ${scale} / interceptação em ${intercept} / coeficiente angular ${slope})";

  static m12(value) => "Bolus da refeição (${value})";

  static m13(value) => "Hidratos de Carbono (${value}g)";

  static m14(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} dia por cateter)', other: '(${txt} dias por cateter)')}";

  static m15(name, from, to) => "${name} ${from} => ${to}";

  static m16(url) => "Comunicando com ${url}...";

  static m17(value) => "Bolus de Correção (${value})";

  static m18(value) => "${Intl.plural(value, zero: 'Sem valor', one: '1 valor', other: '${value} valores')}";

  static m19(value) => "${value} dias";

  static m20(hours, minutes) => "${hours} h ${minutes} m";

  static m21(isVisible) => "A data do último dia completo com dados";

  static m22(beg, end) => "${beg} - ${end}";

  static m23(count) => "${Intl.plural(count, zero: '', one: '1 página', other: '${count} páginas')}";

  static m24(max) => "mau (greater than ${max})";

  static m25(min, max) => "bom (${min} para ${max})";

  static m26(min) => "não disponível (less than ${min})";

  static m27(min, max) => "muito bom (${min} para ${max})";

  static m28(unit, value) => "Intensidade HIPER\n[${unit} x min²]";

  static m29(unit) => "A intensidade da hiperglicemia por dia (valores maiores ou iguais a ${unit}).";

  static m30(unit, value) => "Intensidade HIPO\n[${unit} x min²]";

  static m31(unit) => "A intensidade da hipoglicemia por dia (valores menores ou iguais a ${unit}).";

  static m32(value) => "Alto${value}";

  static m33(value) => "Histórico ${value}";

  static m34(value) => "Hipos (< ${value})";

  static m35(unit) => "Fator de Sensibilidade da Insulina (ISF) 1 U reduz BG em X ${unit}";

  static m36(value) => "${value}g";

  static m37(value) => "g CH (${value} BU)";

  static m38(value) => "Dose Total Diário (${value})";

  static m39(error, stacktrace) => "Erro ao carregar dados: ${error} ${stacktrace}";

  static m40(date) => "A carregar dados para ${date}...";

  static m41(insulin, unit) => "Microbolus ${insulin} ${unit}";

  static m42(range, duration, reason, scale) => "temp. Substituição por ${duration} min, Motivo: ${reason}, Alvo: ${range}, Escala: ${scale}%";

  static m43(insulin, unit) => "SMB ${insulin} ${unit}";

  static m44(percent, duration) => "basal temporária ${percent}% / ${duration} min";

  static m45(value, duration) => "basal temporária ${value}% / ${duration} min";

  static m46(target, duration, reason) => "alvo temporário ${target} por ${duration} min, motivo: ${reason}";

  static m47(value) => "Baixo${value}";

  static m48(gluc, unit) => "Valor do sangue ${gluc} ${unit}";

  static m49(unit, value) => "Glicose média\n[${unit}]";

  static m50(hba1c) => "O valor da glicémia médio no período especificado.";

  static m51(min, max) => "mau (${min} para ${max})";

  static m52(min, max) => "bom (${min} para ${max})";

  static m53(max) => "muito mau (maior que ${max})";

  static m54(min) => "excelente (menor que ${min})";

  static m55(oldName, newName) => "TrocaPerfil - ${oldName} => ${newName}";

  static m56(oldName, newName, duration) => "Profileswitch - ${oldName} => ${newName} por ${duration} Minutos";

  static m57(howMany, fmt) => "${Intl.plural(howMany, zero: 'Sem valores disponiveis', one: '1 valor por minuto', other: 'valor a cada ${fmt} minutos')}";

  static m58(howMany, fmt) => "${Intl.plural(howMany, zero: 'Sem dados disponiveis', one: '1 valor por dia', other: '${fmt} valores por dia')}";

  static m59(howMany, fmt) => "${Intl.plural(howMany, zero: 'Sem valores disponiveis', one: '1 valor por hora', other: '${fmt} valores por horas')}";

  static m60(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} dia por reservatório)', other: '(${txt} dias por reservatório)')}";

  static m61(value) => "SMB (${value})";

  static m62(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} dia por sensor)', other: '(${txt} dias por sensor)')}";

  static m63(low, high, unit) => "Usar intervalo padrão (${low} ${unit} - ${high} ${unit})";

  static m64(isVisible) => "A data do primeiro dia com dados";

  static m65(value) => "(DesvP ${value})";

  static m66(value) => "ToR [${value}min/d]";

  static m67(min, max) => "O tempo por dia em minutos em que os valores estão fora do intervalo de ${min} a ${max}.";

  static m68(unit) => "Intervalo alvo da glicose ${unit}";

  static m69(min, max, units) => "Intervalo Alvo(${min} - ${max} ${units})";

  static m70(value) => "Valor de Alvo";

  static m71(time) => "${time}";

  static m72(time) => "${time} am";

  static m73(time) => "${time} pm";

  static m74(maxCount, count, text) => "${Intl.plural(count, zero: '', one: 'O uploader \"${text}\" criou os registos de dados.', other: 'Os uploaders seguintes criaram os registos de dados: ${text}')}";

  static m75(maxCount) => "Nem todos os perfis puderam ser carregados porque mais de ${maxCount} são gravados no período selecionado. ";

  static m76(begDate) => "válido desde ${begDate}";

  static m77(begDate, endDate) => "válido de ${begDate} para ${endDate}";

  static m78(endDate) => "válido até ${endDate}";

  static m79(high) => "Valores acima de ${high}";

  static m80(low) => "Valores abaixo ${low}";

  static m81(low, high) => "Valor entre ${low} e ${high}";

  static m82(low, high) => "Intervalo alvo (${low} - ${high})";

  static m83(value) => "Valores altos (${value})";

  static m84(value) => "Valores baixos (${value})";

  static m85(value) => "Valores muito altos ( > ${value})";

  static m86(value) => "Valores muito baixos (< ${value})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "0,0 bis 2,0" : MessageLookupByLibrary.simpleMessage("0,0 a 2,0"),
    "1 Minute" : MessageLookupByLibrary.simpleMessage("1 Minuto"),
    "1 Stunde" : MessageLookupByLibrary.simpleMessage("1 Hora"),
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
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("10% - 90% dos valores"),
    "15 Minuten" : MessageLookupByLibrary.simpleMessage("15 Minutos"),
    "2,1 bis 3,0" : MessageLookupByLibrary.simpleMessage("2,1 a 3,0"),
    "2.0.0 - 15.7.2020" : MessageLookupByLibrary.simpleMessage("2.0.0 - 15/7/2020"),
    "2.0.1 - 8.9.2020" : MessageLookupByLibrary.simpleMessage("2.0.1 - 8/9/2020"),
    "2.0.2 - 22.9.2020" : MessageLookupByLibrary.simpleMessage("2.0.2 - 22/9/2020"),
    "2.0.3 - 18.10.2020" : MessageLookupByLibrary.simpleMessage("2.0.3 - 18/10/2020"),
    "2.0.4 - 18.02.2021" : MessageLookupByLibrary.simpleMessage("2.0.4 - 18/02/2021"),
    "2.0.5 - 07.03.2021" : MessageLookupByLibrary.simpleMessage("2.0.5 - 07/03/2021"),
    "2.0.6 - 17.03.2021" : MessageLookupByLibrary.simpleMessage("2.0.6 - 17/03/2021"),
    "2.0.7 - xx.04.2021" : MessageLookupByLibrary.simpleMessage("2.0.7 - xx/04/2021"),
    "25%" : MessageLookupByLibrary.simpleMessage("25%"),
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("25% - 75% dos valores"),
    "3,1 bis 4,0" : MessageLookupByLibrary.simpleMessage("3,1 a 4,0"),
    "30 Minuten" : MessageLookupByLibrary.simpleMessage("30 Minutos"),
    "4,1 bis 4,5" : MessageLookupByLibrary.simpleMessage("4,1 a 4,5"),
    "5 Minuten" : MessageLookupByLibrary.simpleMessage("5 Minutos"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "90%" : MessageLookupByLibrary.simpleMessage("90%"),
    "<br><br>Wenn diese URL geschützt ist, muss ausserdem der Zugriffsschlüssel korrekt definiert sein. Diesen erreicht man über \"Administrator-Werkzeuge\" auf der persönlichen Nightscout Seite." : MessageLookupByLibrary.simpleMessage("<br> <br> Se esta URL está protegida, o Token de Acesso também deve ser definido corretamente. Pode ser inserido através de \"Ferramentas de administração\" na página pessoal do nightscout."),
    "Abbruch" : MessageLookupByLibrary.simpleMessage("Cancelar"),
    "Absturz behoben, der auftrat, wenn kein passendes Profil für einen Zeitpunkt gefunden werden konnte" : MessageLookupByLibrary.simpleMessage("Corrigido um erro que ocorreu quando nenhum perfil correspondente poderia ser encontrado por um determinado tempo"),
    "Acht" : MessageLookupByLibrary.simpleMessage("Oito"),
    "Alle Benutzer ausgeben" : MessageLookupByLibrary.simpleMessage("Mostrar todos os usuários"),
    "Alle Werte für den Tag anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar todos os valores do dia"),
    "Alles" : MessageLookupByLibrary.simpleMessage("Todos"),
    "Allgemeines" : MessageLookupByLibrary.simpleMessage("Geral"),
    "Als ersten Tag der Woche festlegen" : MessageLookupByLibrary.simpleMessage("Definir como primeiro dia da semana"),
    "Ampullenwechsel" : MessageLookupByLibrary.simpleMessage("Mudança do reservatório"),
    "Anmelden" : MessageLookupByLibrary.simpleMessage("Iniciar Sessão"),
    "Anmeldung bei Google..." : MessageLookupByLibrary.simpleMessage("A iniciar sessão no Google…"),
    "Anmeldung erfolgreich" : MessageLookupByLibrary.simpleMessage("Inicio de sessão com sucesso"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("Correção"),
    "Anzahl Ampullenwechsel" : MessageLookupByLibrary.simpleMessage("Mudanças de reservatórios"),
    "Anzahl Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Quantidade de alterações de site"),
    "Anzahl Messungen" : MessageLookupByLibrary.simpleMessage("Número de valores"),
    "Anzahl Sensorenwechsel" : MessageLookupByLibrary.simpleMessage("Mudanças de sensor"),
    "Anzahl Unterzuckerungen" : MessageLookupByLibrary.simpleMessage("Número de Hipos"),
    "Anzahl der Sensoren zur Analyse hinzugefügt" : MessageLookupByLibrary.simpleMessage("Número de sensores adicionados à análise"),
    "Anzahl:" : MessageLookupByLibrary.simpleMessage("Contagem:"),
    "Anzeigeeinstellungen" : MessageLookupByLibrary.simpleMessage("Definições visuais"),
    "Auf 10be muss beim Server in den Standardeinstellungen der Haken bei \"cors\" aktiviert werden, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen. Wenn \"cors\" aktiviert wurde, muss auf dem Server eventuell noch ReDeploy gemacht werden, bevor es wirklich verfügbar ist." : MessageLookupByLibrary.simpleMessage("No servidor 10be, a seleção \"cors\" no servidor deve estar ativada para que ferramentas externas como esta possam aceder os dados. Se o \"cors\" for ativado, deve executar o ReDeploy para que a alteração produza efeito."),
    "Auf Kacheln Bilder statt Namen anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar imagens em vez de nomes nos mosaicos"),
    "Auf dem Einstellungen-Dialog gibt es neben den URL-Eingabefeldern jeweils einen Button, um die URL in einem neuen Browser-Fenster zu öffnen." : MessageLookupByLibrary.simpleMessage("Além dos campos de entrada de URL, há um botão na caixa de diálogo Configurações para abrir a URL em uma nova janela do navegador."),
    "Auf den Kacheln können nun Bilder statt der Namen angezeigt werden. Die Bilder zeigen dann das ungefähre Aussehen der entsprechenden Seite an. Sie entsprechen nicht den tatsächlichen Daten, sondern sind nur eine visuelle Darstellung, die es manchem Benutzer vielleicht einfacher machen, die gewünschten Seiten schneller auszuwählen. Die Aktivierung der Bilder erfolgt im Einstellungsdialog." : MessageLookupByLibrary.simpleMessage("As imagens agora podem ser exibidas em mosaicos ao invés de nomes. As imagens mostram a aparência aproximada da página correspondente. Não correspondem aos dados reais, mas é apenas uma representação visual que pode tornar mais fácil para alguns usuários selecionarem rapidamente as páginas que quiserem. A ativação das imagens pode ser feita usando a caixa de diálogo de configurações."),
    "Auf den Seiten Profil und Basalrate wird in der Titelzeile jetzt wieder das Datum angezeigt, ab dem das Profil gilt." : MessageLookupByLibrary.simpleMessage("Na página do perfil e da taxa de basal, a barra de título agora mostra novamente a data em que este perfil começa."),
    "Auf der Analyseseite kann statt der Anzahl der Werte bei den Zielbereichen jetzt die Standardabweichung der Werte im Zielbereich angezeigt werden." : MessageLookupByLibrary.simpleMessage("O desvio padrão dos valores na área de destino agora pode ser exibido na página de análise em vez do número de valores."),
    "Auf der Analyseseite werden nun auch GVI und PGS ausgegeben." : MessageLookupByLibrary.simpleMessage("A página de análise agora também mostra GVI e PGS."),
    "Auf der Analyseseite wird jetzt auch die Standardabweichung aller Werte der Periode angezeigt." : MessageLookupByLibrary.simpleMessage("Agora também o desvio padrão de todos os valores do período será mostrado na página de análise."),
    "Auf der Profilseite wurde die Spalte für die Werte von ICR verbreitert." : MessageLookupByLibrary.simpleMessage("Aumentada a largura da coluna ICR na página de perfil."),
    "Auf der Seite \"Profil\" wird die Gültigkeit jetzt mit Uhrzeit angezeigt." : MessageLookupByLibrary.simpleMessage("A validade agora é exibida com o tempo na página \"Perfil\"."),
    "Auf der Seite \"Stündliche Statistik\" gibt es eine neue Option, um auch Spalten mit 10% und 90% anzeigen zu lassen." : MessageLookupByLibrary.simpleMessage("Há uma nova opção na página \"Estatísticas horárias\" para também mostrar colunas com 10% e 90%."),
    "Auf der Seite Protokoll werden jetzt auch Insulinabgaben angezeigt, die z.B. über xdrip eingegeben wurden." : MessageLookupByLibrary.simpleMessage("As entregas da insulina agora também são exibidas na página do protocolo, por exemplo, se elas foram inseridas via xdrip."),
    "Aufhebung von temp. Ziel" : MessageLookupByLibrary.simpleMessage("Cancelar basal temp"),
    "Aufsummierte Werte" : MessageLookupByLibrary.simpleMessage("Valores resumidos"),
    "Aus den Profilen ermitteln" : MessageLookupByLibrary.simpleMessage("Extrair dos perfis"),
    "Ausgabe" : MessageLookupByLibrary.simpleMessage("Resultado"),
    "Ausgabe Parameter" : MessageLookupByLibrary.simpleMessage("Parâmetros"),
    "Ausgewertete Tage" : MessageLookupByLibrary.simpleMessage("Dias avaliados"),
    "Ausgewählter Zeitraum" : MessageLookupByLibrary.simpleMessage("Período selecionado"),
    "Ausrichtung" : MessageLookupByLibrary.simpleMessage("Orientação"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("Análise"),
    "Automatisch" : MessageLookupByLibrary.simpleMessage("Automático"),
    "Automatisch_theme selection - automatic" : MessageLookupByLibrary.simpleMessage("Automático"),
    "Basal" : MessageLookupByLibrary.simpleMessage("Basal"),
    "Basal 0%" : MessageLookupByLibrary.simpleMessage("Basal 0%"),
    "Basal anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar basal"),
    "Basal aus Profil anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar basal do perfil"),
    "Basal ges." : MessageLookupByLibrary.simpleMessage("Total de Basal"),
    "Basal mit zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Basal com dois lugares decimais"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("Taxa da Basal"),
    "Basalrate\nIE / Stunde" : MessageLookupByLibrary.simpleMessage("Basal rácio Uni / hora"),
    "Basalrate anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar basalrate"),
    "Batteriewechsel" : MessageLookupByLibrary.simpleMessage("Troca de bateria"),
    "Behandlungen" : MessageLookupByLibrary.simpleMessage("Tratamentos"),
    "Bei Herokuapp und anderen Anbietern kostenloser Datenbankinstanzen ist der Speicherplatz der Instanz beschränkt, weshalb sie irgendwann voll ist. Dann kann man zwar eine neue Instanz anlegen, Nightscout Reporter benötigt aber für eine lückenlose Darstellung aller Tage Zugriff auf alle Instanzen, für die man eine Auswertung erhalten will. Deshalb können nun mehrere URLs für die Nightscout Instanzen eingegeben werden. Zusätzlich muss noch eingegeben werden, welches der erste und der letzte Tag mit Daten ist. Mit diesen Informationen ist es Nightscout Reporter dann möglich die benötigten Daten lückenlos auch über mehrere Instanzen hinweg auszuwerten." : MessageLookupByLibrary.simpleMessage("Com o herokuapp e outros provedores gratuitos de banco de dados, o espaço de armazenamento da instância é limitado, e é por isso que fica cheio em algum momento. Então pode criar uma nova instância mas o Nightscout Reporter precisa de acesso a todas as instâncias para as quais você deseja receber um PDF para poder exibi-lo sem interrupções todos os dias. Portanto, várias URLs agora podem ser inseridas para as instâncias do Nightscout. Além disso, você deve informar qual é o primeiro e último dia com dados. Com estas informações, o Nightscout Reporter pode então avaliar os dados necessários em múltiplas instâncias."),
    "Bei Tagesgrafiken und Wochengrafiken gibt es jetzt die Möglichkeit 1, 2, 4, 8 oder 16 Grafiken auf einer Seite zu platzieren." : MessageLookupByLibrary.simpleMessage("Nos gráficos diários e nas gráficos semanais, existe agora a possibilidade de colocar 1, 2, 4, 8 ou 16 imagens numa página."),
    "Bei den Ausgabeparametern kann jetzt festgelegt werden, in welcher Einheit die Glukosemessungen ausgegeben werden sollen. Diese wird zu Beginn aus den in Nightscout gespeicherten Daten ermittelt und entsprechend vorbelegt. Es ist aber auch möglich, diese Einheit zu ändern oder beide Einheiten ausgeben zu lassen. Wenn beide ausgegeben werden, dann wird jedes Formular auf dem Glukoseangaben vorhanden sind zunächst mit mg/dL und danach nochmal mit mmol/l ausgegeben. Diese Einheit wird auch in den Shortcuts gespeichert." : MessageLookupByLibrary.simpleMessage("Nos parâmetros de saída, pode especificar a unidade na qual os valores de glicose devem ser mostrados. No início, isso é determinado a partir dos dados armazenados no Nightscout e pré-atribuído de acordo. Mas também é possível alterar esta unidade ou mostrar ambas as unidades. Se \"dois\" é selecionado, então cada formulário no qual a informação de glicose está disponível é mostrada primeiro com mg/dL e novamente com mmol/l. Esta unidade também é salva nos atalhos."),
    "Bei der Auswertung kann nun ein Bereich angezeigt werden, in dem die Anzahl an Unterzuckerungen während des ausgewählten Zeitraums und der Zeitpunkt der letzten Unterzuckerung angezeigt werden." : MessageLookupByLibrary.simpleMessage("Na análise, uma área agora pode ser exibida, mostrando o número de hipos no período selecionado e o tempo da última hipo."),
    "Bei der Basalrate und dem Profil gibt es nun eine Option jeweils nur das letzte im entsprechenden Zeitraum ausgeben zu lassen. Das verringert die Blätterflut bei häufigem Profilwechsel." : MessageLookupByLibrary.simpleMessage("Com a taxa de basal e o perfil, existe agora a opção de apenas ter o último impresso no período correspondente. Isto reduz o número de páginas com mudanças frequentes no perfil."),
    "Bei der Berechnung der Kohlenhydrate werden weitere Datensätze berücksichtigt" : MessageLookupByLibrary.simpleMessage("Dados adicionais são usados para o cálculo de hidratos de carbonos"),
    "Bei der Festlegung des Zeitraums kann man jetzt angeben, bis zu welchem Tag der Zeitraum ermittelt werden soll. Voreingestellt ist so wie bisher auch der aktuelle Tag. Man kann aber auch den gestrigen Tag einstellen, um Tage mit vollständigen Daten zu haben, oder das letzte Wochenende, wenn man an vollständigen Wochen interessiert ist." : MessageLookupByLibrary.simpleMessage("When defining the period, you can now specify up to which day the period should be determined. As before, the current day is preset. You can also set yesterday to have days with complete dates, or the last weekend if you are interested in complete weeks."),
    "Bei der Profilermittlung wurde manchmal der letzte Profilwechsel ignoriert. Das ist nun behoben." : MessageLookupByLibrary.simpleMessage("A última alteração do perfil foi às vezes ignorada ao determinar o perfil. Isso agora foi corrigido."),
    "Beide" : MessageLookupByLibrary.simpleMessage("Ambos"),
    "Beim Auslesen der Profile ist ein Fehler aufgetreten. Möglicherweise sind zu viele Daten in der Profiltabelle (wird z.B. von iOS Loop verursacht). Du kannst versuchen, in den Einstellungen die Anzahl an auszulesenden Profildatensätzen zu verringern." : MessageLookupByLibrary.simpleMessage("Ocorreu um erro ao ler os perfis. Pode haver muitos dados na tabela de perfil (por exemplo, provocada pelo iOS Loop ou andoid APS). Pode tentar reduzir o número de registos de dados do perfil a serem lidos nas configurações."),
    "Beim CGP werden die aktuellen Werte jetzt in der Legende angezeigt." : MessageLookupByLibrary.simpleMessage("O CGP agora exibe os valores atuais na legenda."),
    "Beim Erzeugen des PDF ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("Ocorreu um erro ao criar o PDF."),
    "Beim Glukose Perzentil Diagramm kann man nun ein Maximum für die Skalierung festlegen. Wenn es auf \"Automatisch\" gesetzt wird, wird das Maximum wie bisher auch ermittelt. Bei einem anderen Wert wird die Obergrenze für das Diagramm auf diesen Wert festgesetzt. Damit ist es leichter möglich zwei Diagramme miteinander zu vergleichen, deren Obergrenze unterschiedlich ist." : MessageLookupByLibrary.simpleMessage("No Diagrama do percentil pode definir um máximo para a escala. Se estiver definido como \"Automático\", o máximo é determinado como antes. Para qualquer outro valor, o limite máximo para o diagrama é definido para esse valor. Isto facilita a comparação de dois diagramas com diferentes limites superiores."),
    "Beim Laden der Behandlungsdaten werden doppelte Datensätze herausgefiltert." : MessageLookupByLibrary.simpleMessage("Quando os dados de tratamento são carregados, registos de dados duplicados são filtrados."),
    "Beim Laden der Daten wird das entsprechende Datumsformat zur Anzeige verwendet" : MessageLookupByLibrary.simpleMessage("Ao carregar os dados, o formato de data correspondente é usado para a exibição de progresso"),
    "Beim Perzentil Diagramm gibt es eine neue Option, mit der man die Basalrate unter dem Diagramm anzeigen lassen kann. Da das Diagramm normalerweise einen grösseren Zeitraum umspannt, wird dort die Basalrate angezeigt, die zu Beginn des Zeitraums aktiv war." : MessageLookupByLibrary.simpleMessage("No diagrama percentil há uma nova opção para exibir a taxa basal abaixo do diagrama. Como o diagrama normalmente abrange um período mais longo, é exibida a taxa basal que estava ativa no início do período."),
    "Beim erstmaligen Start von Nightscout Reporter wurde er schon bei Sprachänderung normal angezeigt. Jetzt bleibt er wie vorgesehen auf dem Willkommen Dialog." : MessageLookupByLibrary.simpleMessage("Quando o Nightscout Reporter foi iniciado pela primeira vez, ele foi exibido normalmente quando o idioma mudou. Agora fica na caixa de diálogo das boas-vindas como pretendido."),
    "Benutzer können ein User-Token angeben, um sich mit geschützten Nightscout-Instanzen zu verbinden" : MessageLookupByLibrary.simpleMessage("Os usuários podem especificar um token de usuário para conectar a instâncias nightscout protegidas"),
    "Benutzer können nun gelöscht werden" : MessageLookupByLibrary.simpleMessage("Os usuários agora podem ser excluídos"),
    "Benutzerdaten" : MessageLookupByLibrary.simpleMessage("Dados do usuário"),
    "Benutzerdaten werden nun verschlüsselt im Browser gespeichert" : MessageLookupByLibrary.simpleMessage("Os dados do usuário agora são armazenados criptografados no browser"),
    "Berechnete IE für Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Calculo de U para hidratos de carbono"),
    "Berechnete IE für Kohlenhydrate anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar U calculadas para hidratos de carbono"),
    "Bereite Daten vor..." : MessageLookupByLibrary.simpleMessage("A preparar dados..."),
    "Bestätigung" : MessageLookupByLibrary.simpleMessage("Confirmação"),
    "Bewegung" : MessageLookupByLibrary.simpleMessage("Exercícios"),
    "Bewegung anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar exercícios"),
    "Bezeichnung" : MessageLookupByLibrary.simpleMessage("Título"),
    "Bis" : MessageLookupByLibrary.simpleMessage("Até"),
    "Bis heute|Bis gestern|Bis Wochenende" : MessageLookupByLibrary.simpleMessage("Til Today|Til Yesterday|Til Weekend"),
    "Bisher fehlende Summenwerte in der Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Adicionados totais ausentes nas estatísticas diárias"),
    "Bitte den Dateinamen für die Speicherung auswählen" : MessageLookupByLibrary.simpleMessage("Por favor, selecione o nome do arquivo para salvar"),
    "Bitte einen Zeitraum wählen." : MessageLookupByLibrary.simpleMessage("Por favor, selecione um período de tempo."),
    "Bitte überprüfe die Aktivierung der Wochentage unter dem Monat" : MessageLookupByLibrary.simpleMessage("Por favor, verifique a activação dos dias da semana abaixo do mês"),
    "Blutige Messung" : MessageLookupByLibrary.simpleMessage("Valores do Capilar"),
    "Blutige Werte sollten jetzt auch bei mmol-Daten korrekt in der Tagesgrafik angezeigt werden." : MessageLookupByLibrary.simpleMessage("Valores do sangue agora também devem ser exibidos corretamente no gráfico diário de dados mmol."),
    "Blutwerte werden jetzt auch bei mmol/L in den Grafiken korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Os valores de sangue agora são exibidos corretamente em mmol/L nos gráficos."),
    "Bolus" : MessageLookupByLibrary.simpleMessage("Bolus"),
    "Bolus Rechner_bolus calculated by the bolus wizard" : MessageLookupByLibrary.simpleMessage("Assistente de Bólus"),
    "Bolus anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar Bólus"),
    "Bolus ges." : MessageLookupByLibrary.simpleMessage("Total de Bolus"),
    "Bolusarten anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar tipos de bolus"),
    "Bolusspalte anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar Coluna do Bolus"),
    "CGP" : MessageLookupByLibrary.simpleMessage("CGP"),
    "CGP immer mit Standard Zielbereich" : MessageLookupByLibrary.simpleMessage("CGP sempre com área alvo Padrão"),
    "COB (Carbs On Board) anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar COB (hidratos A Bordo)"),
    "Comprehensive Glucose Pentagon" : MessageLookupByLibrary.simpleMessage("Pentágono abrangente de glicose"),
    "Da wir seit einiger Zeit in Europa eine DSGVO haben, werden im Folgenden noch die Vorschriften dafür erfüllt. Der folgende Text ist nur auf Deutsch verfügbar:" : MessageLookupByLibrary.simpleMessage("Uma vez que temos um DSGVO na Europa, o seguinte texto cumpre as regras do mesmo: o seguinte texto só está disponível em German:"),
    "Das \"Comprehensive Glucose Pentagon\" (Umfassendes Glukose Fünfeck) wurde als eigenes PDF und als Zusatzseite zur Tagesgrafik und Wochengrafik hinzugefügt. Es handelt sich hierbei um eine Darstellung von fünf Messgrössen, mit deren Hilfe sich die Qualität der Therapie ermitteln und mit anderen vergleichen lässt. Auf den Ausdrucken wird ein Verweis auf die zugrunde liegende Abhandlung ausgegeben." : MessageLookupByLibrary.simpleMessage("O \"Pentágono Completo de Glucose\" foi adicionado como um PDF separado e como uma página adicional ao gráfico diário e semanal. Trata-se de uma representação de cinco medidas, com a ajuda da qual a qualidade da terapia pode ser determinada e comparada com outras. Na impressão, uma referência é a saída para o papel subjacente."),
    "Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr." : MessageLookupByLibrary.simpleMessage("Clicar na área da mensagem já não a fecha."),
    "Das CGP wird jetzt auch bei extremen Werten korrekt erzeugt." : MessageLookupByLibrary.simpleMessage("O CGP agora é gerado corretamente, mesmo com valores extremos."),
    "Das Control für die Eingabe des Zeitraums wurde angepasst, damit es auf schmalen Display auch korrekt dargestellt wird." : MessageLookupByLibrary.simpleMessage("O controle para a definição do período foi ajustado para que ele seja exibido corretamente em uma exibição estreita."),
    "Das Enddatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("A data final não está correta"),
    "Das Logo von Nightscout Reporter wurde geändert. Es ist nach wie vor die bekannte und beliebte Eule, aber sie hat nun eine Mütze auf wie die Zeitungsausträger und teilweise auch Journalisten in uralten Filmen. Das Logo ist nur im Programm vorhanden und erscheint nicht auf den PDFs. Dort ist nach wie vor das normale Nightscout Logo, weil es dort platziert wurde, um auf Nightscout selbst hinzuweisen." : MessageLookupByLibrary.simpleMessage("The Nightscout Reporter logo has been changed. It is still the well-known and popular owl, but it now wears a hat like the newspaper deliverers and sometimes also journalists in ancient films. The logo is only shown in the program and does not appear on the PDFs. There is still the normal Nightscout logo because it was placed there to refer to Nightscout itself."),
    "Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag." : MessageLookupByLibrary.simpleMessage("A taxa de basal do PDF estava incorreta se não estava definido um valor para cada hora."),
    "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren." : MessageLookupByLibrary.simpleMessage("O PDF foi criado. Se não abriu, provavelmente tem os pop up bloqueados, o que impede a exibição. Por favor, ative os pop up."),
    "Das Problem, dass bestimmte Tage nicht erzeugt werden konnten, wurde behoben." : MessageLookupByLibrary.simpleMessage("O problema de certos dias não puderam ser criados foi resolvido."),
    "Das Profil-PDF wird nun im Querformat erzeugt, um auch Profile mit vielen Einträgen für die Parameter brauchbar darstellen zu können." : MessageLookupByLibrary.simpleMessage("Agora o PDF do perfil é criado em formato paisagem para que perfis com muitas entradas para os parâmetros também possam ser exibidos."),
    "Das Startdatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("A data de início não está correta"),
    "Das gelbe Fünfeck stellt den Wertebereich des angegebenen Zeitraums dar." : MessageLookupByLibrary.simpleMessage("O pentágono amarelo representa o intervalo de valor do período especificado."),
    "Das grüne Fünfeck stellt den Wertebereich eines gesunden Menschen ohne Diabetes dar." : MessageLookupByLibrary.simpleMessage("O pentágono verde representa o alcance do valor de uma pessoa saudável sem diabetes."),
    "Daten bis" : MessageLookupByLibrary.simpleMessage("Dados para"),
    "Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen." : MessageLookupByLibrary.simpleMessage("Dados para os valores de glicemia com formato de data incorreto foram lidos corretamente."),
    "Daten verschiedener Uploader werden nun besser interpretiert." : MessageLookupByLibrary.simpleMessage("Os dados de diferentes Uploaders agora são melhores interpretados."),
    "Daten von" : MessageLookupByLibrary.simpleMessage("Dados de"),
    "Daten, die von xDrip als sync markiert wurden, werden bei der Auswertung ignoriert." : MessageLookupByLibrary.simpleMessage("Os dados que foram marcados como sincronização pelo xDrip serão ignorados nas calculações."),
    "Datenschutzerklärung" : MessageLookupByLibrary.simpleMessage("Proteção de dados"),
    "Datum" : MessageLookupByLibrary.simpleMessage("Data"),
    "Dauer der Insulinaktivität (DIA)" : MessageLookupByLibrary.simpleMessage("Duração da atividade de insulina (DIA)"),
    "Dauer der Kohlenhydrataktivität" : MessageLookupByLibrary.simpleMessage("Duração da atividade de Hidratos de carbono"),
    "Dauer der abgeschalteten Basalrate anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar a duração da taxa de basal desabilitada"),
    "Dauer mit Minutenbruchteil" : MessageLookupByLibrary.simpleMessage("Precisão da duração"),
    "Der Fehler im Profil, der dazu führte, dass die Werte für ISF und Zielbereich falsch umgerechnet werden, wurde behoben." : MessageLookupByLibrary.simpleMessage("Corrigido o erro no perfil que fazia com que os valores de faixa do ISF e intervalo alvo fossem convertidos incorretamente."),
    "Der Fehler mit der Vervielfachung der Kohlenhydrate bei wiederholter Ausgabe der PDFs wurde korrigiert." : MessageLookupByLibrary.simpleMessage("O erro com a multiplicação dos Hidratos de carbono com o resultado repetido nos PDFs foi corrigido."),
    "Der Titel vom Glucose Percentil Diagramm wird nun auch bei Ausdruck im Hochformat nicht mehr falsch in den Optionen Formularauswahl dargestellt." : MessageLookupByLibrary.simpleMessage("O título do Diagrama Percentil da Glucose não é mais exibido incorretamente nas opções de seleção de formulário ao imprimir no formato de retrato."),
    "Der Zeitraum enthält keine auswertbaren Tage" : MessageLookupByLibrary.simpleMessage("O período não contém dias inestimáveis"),
    "Der prognostische glykämische Risikoparameter stellt das Risiko von Langzeitkomplikationen dar (bisher nicht durch Studien belegt)." : MessageLookupByLibrary.simpleMessage("O prognóstico Glycemic Riskparameter representa o risco de complicações a longo prazo (não provadas por estudos até agora)."),
    "Details des Profilwechsels" : MessageLookupByLibrary.simpleMessage("Detalhes do Perfil"),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("Alemão"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("Diabetes desde"),
    "Dialoge und die Anzeige des Fortschritts werden nun technisch etwas anders umgesetzt. Deswegen wird der Anwendungshintergrund nun in den Fällen dunkler dargestellt und es ist nicht möglich darauf etwas anzuklicken." : MessageLookupByLibrary.simpleMessage("Dialogs and the display of the progress are now implemented a little different technically. Because of this, the application background is now shown darker in the cases and it is not possible to click on anything."),
    "Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an" : MessageLookupByLibrary.simpleMessage("A página de análise foi redesenhada e agora exibe títulos acima das áreas"),
    "Die Analysewerte wurden nicht ganz korrekt ermittelt. Das wurde korrigiert und nun sollten die statistischen Daten über den Zeitraum richtig ausgewertet werden." : MessageLookupByLibrary.simpleMessage("Os valores da análise não foram determinados correctamente, foi corrigido e os dados estatísticos avaliados ao longo do período devem agora estar correctos."),
    "Die Angabe DIA auf der Profilseite wird nun mit zwei Nachkommastellen angezeigt." : MessageLookupByLibrary.simpleMessage("DIA na página do perfil agora é exibido com duas casas decimais."),
    "Die Anzeige der Bilder auf Kacheln wird nun wie vorgesehen korrekt in den Einstellungen vorbelegt." : MessageLookupByLibrary.simpleMessage("A exibição das imagens nos blocos agora está corretamente predefinida nas configurações como esperado."),
    "Die Aufsummierung der Werte in der Analyse wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Os valores acumulados na análise foi corrigida."),
    "Die Aufteilung auf mehrere PDF-Dateien funktioniert jetzt besser." : MessageLookupByLibrary.simpleMessage("A divisão em vários arquivos PDF funciona melhor agora."),
    "Die Ausgabe des Zielwertes und der blutigen Werte in der Tagesgrafik wurde korrigiert. Da gab es Probleme, wenn man eine andere Blutzucker Einheit als die auf dem Server eingestellte zur Ausgabe verwendet hat." : MessageLookupByLibrary.simpleMessage("The output of the target value and the blood values in the daily graphic has been corrected. There were problems when a different blood sugar unit than the one set on the server was used for output."),
    "Die Auswahl des Zeitraums ist nun flexibler. Die Auswahl erfolgt in einem Dialog, der die eingestellte Sprache berücksichtigt. Mit der Auswahl der vorbelegten Bereiche (Heute, Letzte Woche, usw.) wird festgelegt, dass beim nächsten Aufruf das aktuelle Datum als Grundlage für den Bereich verwendet wird. Wenn der Bereich direkt im Kalender festgelegt wird, dann gilt dieser beim nächsten Aufruf so wie er festgelegt wurde. Standardmässig ist der erste Tag der Woche jetzt ein Montag. Dieser kann aber durch Anklicken des Wochentags in der Titelzeile des Monats auf die eigene Präferenz festgelegt werden. Die Eingabe der Datumsfelder erfolgt in der Form, die der Sprache entspricht (Tag.Monat.Jahr für deutsch, Monat/Tag/Jahr für englisch)." : MessageLookupByLibrary.simpleMessage("Agora a seleção do período é mais flexível. A seleção é feita em uma caixa de diálogo que leva em conta o idioma. Selecionando os intervalos padrão (hoje, semana passada, etc. define a data atual como a base para o intervalo na próxima utilização. Se o intervalo é definido directamente no calendário, então será aplicado na próxima vez como definida. Por padrão, o primeiro dia da semana é agora uma segunda-feira. No entanto, isso pode ser definido para sua própria preferência clicando no dia da semana na barra de título do mês. Os campos de data são inseridos no formulário que corresponde ao idioma (dia.mês.ano para alemão, mês/dia / ano para inglês)."),
    "Die Auswahl des Zeitraums und der Benutzer wurde in die Titelzeile verschoben." : MessageLookupByLibrary.simpleMessage("A seleção do período e o usuário foi movido para a barra de título."),
    "Die Balken für das Bolusinsulin in der Tagesgrafik werden nun entsprechend dem Maximalwert an Bolusinsulin an dem Tag skaliert." : MessageLookupByLibrary.simpleMessage("As barras para a insulina do bolus no gráfico diário são colocadas em escala de acordo com a insulina do bolus máxima naquele dia."),
    "Die Balken in der Analyse werden jetzt korrekt skaliert." : MessageLookupByLibrary.simpleMessage("As barras na análise agora são dimensionadas corretamente."),
    "Die Basalratenprofile für den Tag werden nun auch anhand der Behandlungsdaten ermittelt. Profilwechsel werden in der Tagesgrafik angezeigt und sollten ab dem Zeitpunkt des Wechsels auch eine korrekte Basalratenanpassung anzeigen." : MessageLookupByLibrary.simpleMessage("Agora os perfis da taxa de Basal do dia também são determinados com base nos dados do tratamento. As alterações de perfil são exibidas no gráfico diário e também devem mostrar um ajuste correto da taxa de basal a partir do momento da alteração."),
    "Die Berechnung der PDF-Grössen wurde korrigiert, so dass nun weniger PDFs erstellt werden, wenn sie aufgrund der Grösse aufgeteilt werden." : MessageLookupByLibrary.simpleMessage("O cálculo dos tamanhos do PDF foi corrigido, para que menos PDFs sejam criados quando eles estão divididos devido ao tamanho."),
    "Die Berechnung der Summenzeile auf der Seite Tagesstatistik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("O cálculo da linha de totais na página de Estatísticas Diárias foi corrigido."),
    "Die Berechnung der tatsächlichen Basalrate wurde korrigiert." : MessageLookupByLibrary.simpleMessage("O cálculo da taxa basal atual foi corrigido."),
    "Die Berechnung des täglichen Insulins berücksichtigt nun auch die SMB." : MessageLookupByLibrary.simpleMessage("O cálculo da insulina diária também tem agora em conta as SMB."),
    "Die Bilder auf den Kacheln sind nun in der jeweiligen Sprache beschriftet." : MessageLookupByLibrary.simpleMessage("As imagens nos mosaicos estão agora rotuladas no respectivo idioma."),
    "Die Buttons für die Erzeugung vergangener Zeiträume wurden entfernt. Das kann jetzt im neuen PDF-Dialog eingestellt werden." : MessageLookupByLibrary.simpleMessage("Os botões para criar períodos anteriores foram removidos. Agora isto pode ser definido na nova caixa de diálogo PDF."),
    "Die Buttons für die vergangenen Perioden werden nicht angezeigt, wenn kein Zeitraum oder kein PDF ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("Os botões para os últimos períodos não serão exibidos se nenhum período ou PDF for selecionado."),
    "Die Daten, die Du hier eingibst, werden normalerweise im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. In diesem Fall werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("Os dados inseridos aqui serão gravados no armazenamento local do browser. Este contém dados que apenas podem ser lidos a partir deste site. Nenhum cookie é usado e nenhum dado é armazenado em servidores. Somente uma conexão com a instância especificada do Nightscout está configurada e os dados disponíveis são lidos para criar um documento PDF. Isso poderá então ser apresentado ao profissional de saúde para a diabetes ou a outra parte interessada."),
    "Die Eingabe des Zugriffsschlüssels auf dem Einstellungen-Dialog kann jetzt mit einem Button neben dem Eingabefeld lesbar gemacht werden." : MessageLookupByLibrary.simpleMessage("A entrada da chave de acesso na caixa de diálogo de configurações pode agora ser legível com um botão ao lado do campo de entrada."),
    "Die Einstellung für das Öffnen des PDF im gleichen Fenster, das Herunterladen des PDFs und den Hinweis auf Nightscout im PDF wurde aus den Einstellungen in die Ausgabe Parameter verschoben. Dadurch kann man das bei jedem Ausdruck schnell festlegen und ändern." : MessageLookupByLibrary.simpleMessage("A configuração para abrir o PDF na mesma janela, baixar o PDF e ocultar texto sobre o Nightscout no PDF foi movido das configurações para os parâmetros de saída. Isso permite que você defina e altere rapidamente isso para cada saída."),
    "Die Einstellungen für das Herunterladen des PDFs, das Öffnen im gleichen Fenster und die Maximalgrösse der PDFs wurden von der Synchronisierung mit Google Drive ausgenommen, weil sie speziell für den verwendeten Browser oder das verwendete Gerät benötigt werden. Sie werden nach wie vor gespeichert, aber sie werden nicht zwischen verschiedenen Browsern synchronisiert." : MessageLookupByLibrary.simpleMessage("Configurações para fazer o download do PDF, abrir o PDF na mesma janela, e os PDFs com tamanho superior ao máximo permitido foram excluídos da sincronização com o Google Drive porque eles são específicos para o browser ou dispositivo que você usa. Continuam a ser gravados, mas não são sincronizados entre browsers diferentes."),
    "Die Einträge im Protokoll für temporäre Ziele werden jetzt auch bei mmol-Angaben richtig angezeigt." : MessageLookupByLibrary.simpleMessage("As entradas no registro para alvos temporários agora são exibidas corretamente, mesmo com dados mmol."),
    "Die Ermittlung der Einheit (mg/dl oder mmol/l) wird nun flexibler gehandhabt, so dass auch Leerzeichen in der entsprechenden Einstellung nicht mehr zu einer Fehlinterpretation führen." : MessageLookupByLibrary.simpleMessage("A determinação da unidade (mg/dl ou mmol/l) é agora tratada de forma mais flexível, de modo que mesmo os espaços na configuração correspondente já não conduzem a uma interpretação errada."),
    "Die Ermittlung der effektiven täglichen Basalrate wurde umstrukturiert und sollte nun genauere Werte ergeben." : MessageLookupByLibrary.simpleMessage("A determinação da taxa basal diária efectiva foi reestruturada e deve agora proporcionar valores mais exactos."),
    "Die Farbe für Bewegung in der Tagesgrafik wurde geändert." : MessageLookupByLibrary.simpleMessage("Alteração da cor para exercícios no gráfico diário."),
    "Die Farben für Dialoge und Scrollbars wurden angepasst." : MessageLookupByLibrary.simpleMessage("As cores das caixas de diálogo e barras de deslizantes foram ajustadas."),
    "Die Genauigkeit der ISF Angaben im Profil wurde korrigiert." : MessageLookupByLibrary.simpleMessage("A precisão da ISF no perfil foi corrigida."),
    "Die Genauigkeit der Insulindosierung wird aus dem Profil ermittelt. Der Wert mit der höchsten Genauigkeit legt fest, mit wieviel Nachkommastellen Basalratenwerte angezeigt werden." : MessageLookupByLibrary.simpleMessage("A precisão da dosagem de insulina é determinada a partir do perfil. O valor com a maior precisão define quantos números decimais são usados para exibição de valores basais."),
    "Die Glucose Perzentil Grafik wurde um die Tabelle \"Stündliche Statistik\" erweitert. Diese listet tabellarisch die Werte des Zeitraums für jede Stunde des Tages auf. Man kann entweder nur die Grafik, nur die Tabelle oder beides zusammen erzeugen lassen." : MessageLookupByLibrary.simpleMessage("O gráfico do Percentil foi expandido para incluir a tabela de estatísticas por hora. Isto tabela os valores do período para cada hora do dia. Pode criar apenas o gráfico, apenas a tabela ou ambas juntas."),
    "Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit." : MessageLookupByLibrary.simpleMessage("O gráfico de glicose dos gráficos diários foi retirado dos dados em falta."),
    "Die Icons auf einigen Buttons waren zu nahe am Text" : MessageLookupByLibrary.simpleMessage("Os ícones em alguns botões estavam muito próximos do texto"),
    "Die Kohlenhydratangaben auf der Tagesgrafik werden jetzt ohne den Zusatz KH ausgegeben." : MessageLookupByLibrary.simpleMessage("A informação de Hidratos de carbono no gráfico diário agora é mostrado sem o sufixo KH."),
    "Die Legende der Tagesgrafik wurde um den Eintrag für Bewegung erweitert." : MessageLookupByLibrary.simpleMessage("A legenda do gráfico diário foi aumentada para incluir a entrada para exercícios."),
    "Die Legende der Tagesgrafik wurde um den Eintrag für blutige Messungen erweitert." : MessageLookupByLibrary.simpleMessage("A lenda do gráfico diário inclui agora a entrada de valores sanguíneos."),
    "Die Links zu Nightscout und den Reports von Nightscout im Menü funktionieren jetzt auch richtig, wenn ein Usertoken angegeben wurde." : MessageLookupByLibrary.simpleMessage("O link do menu para o Nightscout e relatórios do Nightscout agora também funcionam corretamente quando um token for fornecido."),
    "Die Listenansicht ist jetzt wieder scrollbar." : MessageLookupByLibrary.simpleMessage("A vista de listagem é deslizavél novamente."),
    "Die Microboli des Minimed 600 Uploaders werden jetzt auch ermittelt und in der Analyse ausgegeben, wenn sie vorhanden sind." : MessageLookupByLibrary.simpleMessage("O microbolus do Minimed 600 Uploader agora também é identificado e mostrado na análise, se eles existirem."),
    "Die Microboli vom Minimed 600 Uploader wurden aus der Ausgabe entfernt, da es sich dabei nur um Temporäre Basalraten handelt." : MessageLookupByLibrary.simpleMessage("O microboli do mapa Minimed 600 Uploader foi removido da saída, porque eles são apenas taxas basais temporárias."),
    "Die Mischung von zwei Seiten auf einer PDF-Seite, die manchmal vorkam, wurde behoben." : MessageLookupByLibrary.simpleMessage("A mistura de duas páginas em uma página PDF, que às vezes ocorreu foi corrigida."),
    "Die Möglichkeit für Beta-Funktionen wurde entfernt; die Betaversion ist nun hier zu finden:" : MessageLookupByLibrary.simpleMessage("A possibilidade de funções beta foi removida; a versão beta agora está disponível em:"),
    "Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird" : MessageLookupByLibrary.simpleMessage("A capacidade de exibir a URL na barra de título foi removida, uma vez que o usuário atual ou o URL dele agora são exibidos diretamente"),
    "Die Oberfläche kann jetzt verschiedene Darstellungen annehmen. Diese zeigen sich zur Zeit durch geänderte Farben und ein angepasstes Icon im Browsertab und beim Laden der Seite. Das hat keine Auswirkungen auf die erzeugten PDF-Dateien. Es ist die Vorbereitung für eine teilweise anpassbare Oberfläche. Das Thema der Darstellung wird standardmässig vom System festgelegt, was zur Zeit heisst, dass im Dezember ein weihnachtliches Thema angezeigt wird. Das kann aber durch Anklicken des Icons, das ab jetzt links unten zu sehen ist, geändert werden. Beim Anklicken wird rechts neben dem Icon ein Bereich mit den verfügbaren Darstellungen eingeblendet. Das erste Icon (der kleine Zauberer) bedeutet dabei, dass die Darstellung vom System ermittelt wird. Zur Zeit bedeutet das die weihnachtliche Darstellung im Dezember. Es kann in Zukunft aber auch weitere Kriterien geben, anhand derer das Thema angepasst wird. Die direkte Festlegung eines Themas mit einem der anderen icons hat aber immer Vorrang vor der systemeigenen Logik." : MessageLookupByLibrary.simpleMessage("A interface do usuário agora pode assumir representações diferentes. Eles se mostram no momento com cores diferentes e um ícone adaptado na aba do browser e com o carregamento do lado. Isto não afeta os ficheiros PDF gerados. É a preparação para uma superfície parcialmente personalizável. O tema da interface do usuário é definido por padrão pelo sistema, o que significa que atualmente um tema de Natal será exibido em dezembro. Mas isso pode ser alterado clicando no ícone, que pode ser visto no canto inferior esquerdo. Ao clicar no ícone, uma área com os temas disponíveis é exibida à direita do ícone. O primeiro ícone (o pequeno mérito) significa que o tema é determinado pelo sistema. Neste momento, isso significa a apresentação de Natal em dezembro. No entanto, poderá haver outros critérios no futuro que serão utilizados para ajustar o tema. No entanto, a definição direta de um tema com um dos outros ícones sempre tem precedência sobre a lógica do sistema."),
    "Die Positionierung der Notizen in der Tagesgrafik wurde korrigiert, so dass sie näher an der Uhrzeit stehen. Die Striche wurden so verkürzt, dass sie nur noch bis zum unteren Rand der Grafik gehen und nicht mehr durch die Wertetabelle." : MessageLookupByLibrary.simpleMessage("O posicionamento das notas no gráfico diário foi corrigido para que elas fiquem mais próximas do tempo. Os traços foram encurtados de modo que eles vão apenas para o final do gráfico e não para a tabela de valores."),
    "Die Profilbasalrate im Formular Tagesprofil wird jetzt ebenfalls mit Balken dargestellt." : MessageLookupByLibrary.simpleMessage("A taxa basal do perfil na forma de perfil diário agora também é exibida com barras."),
    "Die Profile für den Zeitraum wurden teilweise nicht korrekt identifiziert. Das sollte behoben sein." : MessageLookupByLibrary.simpleMessage("Os perfis para o período foram parcialmente identificados incorretamente. Isso deve ser corrigido."),
    "Die Profilseite wurde angepasst, damit Einträge für 24 Stunden auf eine Seite passen." : MessageLookupByLibrary.simpleMessage("A página de perfil foi adaptada para que as entradas por 24 horas caibam numa página."),
    "Die Profiltabelle sollte normalerweise nur Daten zu den verwendeten Profilen beinhalten. iOS Loop verwendet diese Tabelle aber dazu, um dort eigene Einstellungen zu speichern und tut dies bei einigen Benutzern exzessiv. Ab einer bestimmten Datenmenge kann die Profiltabelle über die API dann nicht mehr korrekt abgefragt werden. Deswegen gibt es hier die Möglichkeit, die Anzahl an Datensätzen einzuschränken, die aus dieser Tabelle geholt werden. Das ist so lange notwendig, wie iOS Loop oder andere Uploader diese Tabelle falsch befüllen.\n\nMaximale Anzahl an Profildatensätzen:" : MessageLookupByLibrary.simpleMessage("A tabela de perfil normalmente deve conter dados nos perfis utilizados. iOS Loop usa esta tabela para salvar suas próprias configurações e faz isso excessivamente em alguns usuários. Acima de um certo número de dados, a tabela de perfil não poderá mais ser consultada corretamente através da API. É por isso que existe esta opção de restringir o número de registos de dados que são retirados desta tabela. Isso é necessário desde que o iOS Loop ou outros carregadores preencham esta tabela incorretamente.\n\nNúmero máximo de conjuntos de dados de perfil:"),
    "Die Reihenfolge der Formulare kann nun verändert werden. Dazu einfach das Handle auf der linken Seite des Buttons für das Formular anklicken, festhalten und an die Stelle ziehen, vor der es ausgedruckt werden soll." : MessageLookupByLibrary.simpleMessage("A ordem dos formulários agora pode ser alterada. Simplesmente carregue no controle do lado esquerdo do botão para o formulário, segure-o e arraste-o para o lugar onde ele deve ser impresso."),
    "Die Seiten Profil und Basalrate zeigen nun bei einem Profil, das nur temporär während eines Tages aktiv war den Zeitraum an, in dem es aktiv war." : MessageLookupByLibrary.simpleMessage("As páginas do perfil e a taxa de Basal para um perfil que estava temporariamente ativa durante um dia agora só mostram esta faixa horária."),
    "Die Seitenzahlen auf den Kacheln wurden weiter an den unteren Rand verschoben, damit sie immer gut lesbar sind." : MessageLookupByLibrary.simpleMessage("Os números de páginas nos mosaicos foram movidos mais para baixo para que sejam sempre fáceis de ler."),
    "Die Skalen an den Grafiken wurden überarbeitet. Sie zeigen jetzt für mmol/L ganzzahlige Werte an und die Einheiten wurden entfernt. Diese stehen nur noch unten an der Grafik. Das betrifft die täglichen Grafiken, wöchentlichen Grafiken und das Glukose Percentil Diagramm." : MessageLookupByLibrary.simpleMessage("As escalas nos gráficos foram atualizadas. Agora elas mostram números reais para mmol/L e as unidades foram removidas. Estes são mostrados na parte inferior dos gráficos. Isso inclui os gráficos diários, gráficos semanais e o gráfico de percentil."),
    "Die Spalten auf der Profilseite wurden korrigiert, damit auch längere Zeitnamen (z.B. in spanisch) Platz finden." : MessageLookupByLibrary.simpleMessage("As colunas na página foram corrigidas para acomodar nomes de tempo mais longos (por exemplo, em espanhol)."),
    "Die Standardabweichung wird jetzt auch bei mmol/L korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("O desvio-padrão agora também é mostrado corretamente ao usar mmol/L."),
    "Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an" : MessageLookupByLibrary.simpleMessage("As estatísticas diárias agora exibem valores mmol/l corretamente"),
    "Die URL wurde noch nicht festgelegt" : MessageLookupByLibrary.simpleMessage("O URL ainda não foi definido"),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("O URL ainda não foi definido."),
    "Die URLs der Benutzer werden nun nach dem Enddatum sortiert." : MessageLookupByLibrary.simpleMessage("As URLs dos usuários agora são classificadas de acordo com a data final."),
    "Die Url zur Nightscout-API muss mit https beginnen, da Nightscout Reporter auch auf https läuft. Ein Zugriff auf unsichere http-Resourcen ist nicht möglich." : MessageLookupByLibrary.simpleMessage("O Endereço para a API Nightscout deve iniciar com https, uma vez que o Nightscout Reporter também é executado em https. Não é possível o acesso a recursos http inseguros."),
    "Die Vorschaubilder auf den Kacheln passen sich abhängig von den ausgewählten Optionen teilweise an (z.B. die Auswahl von CGP bei Tagesgrafiken)." : MessageLookupByLibrary.simpleMessage("As imagens de visualização nos mosaicos irão ajustar-se parcialmente dependendo das opções selecionadas (por exemplo, escolher CGP para gráficos diários)."),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("O site usa principalmente Javascript para fazer seu trabalho. Ao criar o documento PDF Javascript e PHP são usados."),
    "Die Werte VarK und ToR im CGP werden bei Tages- und Wochengrafiken in der Legende und in der Grafik korrekt ausgegeben." : MessageLookupByLibrary.simpleMessage("Os valores VarK e ToR no CGP são resultados corretos para os gráficos do dia e da semana na legenda e no gráfico."),
    "Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt" : MessageLookupByLibrary.simpleMessage("Os valores do intervalo padrão na página de análise agora são calculados corretamente"),
    "Die Werte im CGP werden jetzt bei mmol-Angaben auch korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Os valores no CGP agora também são exibidos corretamente para dados em mmol."),
    "Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. " : MessageLookupByLibrary.simpleMessage("A URL especificada não está acessível. Se a URL está correta, então ela pode não estar acessível devido às configurações do Nightscout. "),
    "Die berechneten IE für Kohlenhydrate in der Tagesgrafik wurden teilweise mit falschen Faktoren ermittelt. Der Fehler wurde behoben." : MessageLookupByLibrary.simpleMessage("O IE calculado para hidratos de carbono no gráfico diário foi parcialmente determinado com fatores errados. O bug foi corrigido."),
    "Die eigenen Grenzwerte auf der Analyseseite in mmol/L werden nun korrekt berechnet." : MessageLookupByLibrary.simpleMessage("Os próprios limites da página de análise em mmol/L agora são calculados corretamente."),
    "Die einzelne Seite CGP kann jetzt auch im Querformat ausgegeben werden." : MessageLookupByLibrary.simpleMessage("A única página CGP pode agora ter formato paisagem."),
    "Die falsche Bezeichnung für durchschnittliche Kohlenhydrate pro Tag in der Tagesstatistik wurde durch die korrekte Bezeichnung für durchschnittliche Kohlenhydrate pro Mahlzeit ersetzt." : MessageLookupByLibrary.simpleMessage("The incorrect name for average carbohydrates per day in the daily statistics has been replaced by the correct name for average carbohydrates per meal."),
    "Die fehlerhafte Platzierug der blutigen Werte bei mmol/L in der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Corrigido o erro de posicionamento dos valores sangrentos no gráfico diário ao usar mmol/L."),
    "Die fehlerhafte Zentrierung der Auswahlbuttons wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Foi corrigido o alinhamento errado dos botões na página principal."),
    "Die glykämische Variabilität stellt die Streuung der Werte um den glykämischen Mittelwert herum in Prozent dar." : MessageLookupByLibrary.simpleMessage("A variabilidade Glicémia representa a variação de valores em torno do valor médio da glicémia em porcentagem."),
    "Die glykämische Variabilität wird jetzt im CGP auch bei Tages- und Wochengrafiken korrekt ausgegeben." : MessageLookupByLibrary.simpleMessage("A variabilidade glicémia agora está corretamente exibida no CGP, mesmo com gráficos diários e semanais."),
    "Die meisten Spalten auf der Seite \"Stündliche Statistik\" werden bei nicht vorhandenen Daten leer gelassen." : MessageLookupByLibrary.simpleMessage("A maioria das colunas na página \"Estatísticas horárias\" ficam em branco se não houver dados."),
    "Die mittlerweile überflüssige Option zur Darstellung der Basalrate mit zwei Nachkommastellen wurde aus der Tagesgrafik entfernt." : MessageLookupByLibrary.simpleMessage("Removido a opção obsoleta para os decimais da taxa de basalrate dos gráficos diários."),
    "Die teilweise falsch zugewiesenen Grenzwerte für die Bereiche (niedrig, normal, hoch) wurden korrigiert." : MessageLookupByLibrary.simpleMessage("Os limites parcialmente mal alocados para as áreas (baixa, normal, elevada) foram corrigidos."),
    "Die temporäre Basalrate am Anfang des Tages wurde bisher falsch gesetzt, wenn sie im vorherigen Tag gesetzt wurde. Das wurde behoben." : MessageLookupByLibrary.simpleMessage("A taxa de basal temporária no início do dia foi definida incorretamente se foi definida no dia anterior. Isso foi corrigido."),
    "Die Überschrift über der Tabelle vom Glucose Perzentil Diagramm wurde korrigiert." : MessageLookupByLibrary.simpleMessage("O título acima da tabela de diagrama percentil de glicose foi corrigido."),
    "Die Überschrift über der mittleren Spalte im Tagesprofil wurde korrigiert." : MessageLookupByLibrary.simpleMessage("O título acima da coluna do meio no perfil diário foi corrigido."),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("Esta página é usada para gerar documentos PDF com os dados armazenados no Nightscout. Por conseguinte, é necessário o acesso aos dados, razão pela qual algumas configurações devem ser salvas primeiro. Enquanto estes não estiverem disponíveis e certos, o site não poderá mostrar os resultados."),
    "Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden." : MessageLookupByLibrary.simpleMessage("Adicionado esta página. É exibida cada vez que o Nightscout reporter inicia, se não for exibido na versão atual. Além disso, pode ser chamado de novo no menu."),
    "Diese Webseite speichert keine Daten auf Servern. Die benötigten Daten werden von der eingegebenen URL zur Nightscout-Instanz geholt und als PDF aufbereitet. Die Daten, die zur Funktion der Webseite benötigt werden, werden im localStorage des Browsers gespeichert und nicht an den Server übermittelt. Wenn die Synchronisierung mit Google Drive aktiviert wird, dann werden diese Daten zusätzlich in den Anwendungsdaten auf dem Google Drive des verbundenen Kontos gespeichert." : MessageLookupByLibrary.simpleMessage("Este site não armazena dados nos servidores. Os dados necessários são recuperados a partir da URL inserida para a instância do Nightscout e formatados como PDF. Os dados necessários para o site funcionar são armazenados no armazenamento local do browser e não transmitidos ao servidor. Se a sincronização com o Google Drive estiver ativada, os dados também serão armazenados nos dados do aplicativo na conta associada ao Google Drive."),
    "Dieser Regler legt fest, wie gross eine Ausgabe maximal werden darf, bevor sie auf mehrere PDF-Dateien aufgeteilt wird. Wenn bei Erstellung eines PDFs ein leeres Fenster angezeigt wird, dann hilft es normalerweise, diesen Regler weiter nach links zu bewegen." : MessageLookupByLibrary.simpleMessage("Este botão deslizante define o tamanho máximo permitido antes do PDF ser dividido em vários ficheiros. Se uma janela em branco for exibida ao criar um PDF, normalmente ajuda ao mover o botão deslizante para a esquerda."),
    "Dieses Formular zeigt an, wie sich die Glukosewerte im ausgewählten Zeitraum über den Tag\nverteilen. Diese Verteilung kann graphisch und tabellarisch ausgegeben werden.\n\nIn der Grafik sind die Bereiche für bestimmte Abweichungen farblich markiert. Die Linie zeigt den Medianwert\nan. In der Tabelle kann man diese Werte nachlesen. Wenn die Basalrate mit ausgegeben wird, dann ist das die\nBasalrate, die zu Beginn des ausgewählten Zeitraums aktiv war." : MessageLookupByLibrary.simpleMessage("Este formulário mostra como os valores da glicose são distribuídos no dia no período selecionado. Esta distribuição pode ser de saída gráfica e em forma tabular.\n\nNo gráfico, as áreas para certos desvios são codificadas por cores. A linha mostra o valor da mediana. Você pode procurar os valores na tabela. Se a taxa de basal também é exibida, então esta é a taxa de basal ativa no início do período selecionado."),
    "Dieses Formular zeigt das Comprehensive Glucose Pentagon an, welches die Qualität der \nGlukoseeinstellung in einer schnell zu erfassenden Weise darstellt. Es wird für den ausgewählten Zeitraum angezeigt\nwie lange der Glukosewert im Schnitt während des Tages ausserhalb des Zielbereichs war, wie hoch die Intensität\nder Überzuckerungen und der Unterzuckerungen war, wie hoch der Mittelwert war und wie hoch die Variabilität der\nWerte war.\n\nDiese Grafik kann auch bei @05@ und @08@ ausgegeben werden. \n" : MessageLookupByLibrary.simpleMessage("Esta forma apresenta o Pentágono Global de Glucose, que representa a qualidade do controlo de glicose de uma forma facilmente compreensível. Para o período selecionado, mostra quanto tempo o valor médio de glicose ficou fora do intervalo alvo durante o dia, o quanto elevada era a intensidade da hiperglicemia e da hipoglicemia era o valor médio e a elevada variabilidade dos valores.\n\nEste gráfico também pode ser saída em @05@ e @08@."),
    "Dieses Formular zeigt das Profil an. Es werden normalerweise alle Profile des ausgewählten\nZeitraums ausgegeben. Wenn sich in dem Zeitraum das Profil geändert hat, wird ein neues Blatt erzeugt.\n\nEs gibt aber eine Option, welche nur das letzte Profil des Zeitraums ausgibt. Ausserdem gibt es eine Option,\nmit der gleiche Zeilen zusammengefasst werden. Das führt zu einem kürzeren Profil, wenn mehrere Zeiten nacheinander\ndie gleichen Werte beinhalten." : MessageLookupByLibrary.simpleMessage("Este formulário mostra o perfil. Geralmente todos os perfis do período selecionado são mostrados. Se o perfil for alterado durante este período, uma nova folha será criada.\n\nEntretanto, há uma opção que apenas produz o último perfil do período. Existe também a opção de combinar linhas com os mesmos valores. Isto leva a um perfil mais curto se várias vezes consecutivas tiverem os mesmos valores."),
    "Dieses Formular zeigt den Trend der Glukosewerte über den Tag hinweg an. Dabei wird in der Spalte Trend immer\nangezeigt, um wieviel Prozent sich der Wert von einer vollen Stunde zur nächsten verändert hat. Dieser Trend\nist ganz hilfreich, wenn man bei einem Basalratentest erkennen will, wie sich der Glukosewert nur anhand der\nBasalrate entwickelt. Es kann auch eine Spalte für die Boluswerte und die Kohlenhydrate angezeigt werden.\nDiese sollten aber bei einem Basalratentest natürlich leer sein. Ebenso muss ein eventuell vorhandener Loop \nim Zeitraum des Tests abgeschaltet sein. Es geht dabei nur um den Diabetiker und seine Basalrate.\n\nEs wird auch eine Spalte mit der Basalrate angezeigt, wenn die Option \"Alle Werte für einen Tag anzeigen\"\nnicht markiert wurde. Wenn die Option markiert wurde, dann fehlt der Platz (und auch der Sinn), diese\ndarzustellen." : MessageLookupByLibrary.simpleMessage("Este formulário mostra a tendência nos níveis de glicose ao longo do dia. A coluna de tendência mostra sempre a percentagem pela qual o valor foi alterado de uma hora inteira para a próxima. Esta tendência é muito útil se quiser ver uma taxa de teste basal como o valor da glicose se desenvolve apenas dependendo da taxa basal. Uma coluna para valores de bólus e hidratos de carbono também pode ser exibida. No entanto, é claro que estes devem estar vazios num teste de taxa de basal. Qualquer loop existente também deve ser desligado durante o teste. Tudo se refere ao diabético e à sua taxa de basal.\n\nUma coluna com a taxa de basal também é exibida se a opção \"Mostrar todos os valores de um dia\" não estiver marcada. Se a opção foi marcada, então não há espaço (e também não há ponto) para que isso seja mostrado."),
    "Dieses Formular zeigt den Verlauf der Glukosekurve für einen Tag. Pro Tag im ausgewählten\nZeitraum wird eine Seite erzeugt. Es gibt sehr viele Optionen, mit denen dieses Formular angepasst werden kann.\nDie Optionen, die auf einen Loop hinweisen sind andersfarbig markiert, um sie schneller identifizieren zu \nkönnen. Die Optionen COB und IOB verlangsamen die Ausgabe teilweise erheblich, weshalb man diese nur dann\nverwenden sollte, wenn sie wirklich von Interesse sind.\n\nUnter der Grafik kann die Basalrate angezeigt werden. Ein laufender Loop wird diese immer wieder hoch und runter\nsetzen. Deshalb kann man sowohl die tatsächliche Basalrate als auch die im Profil eingestellte Basalrate \nanzeigen lassen. Für die Basalrate gibt es noch die Formulare @09@, @11@ und @02@, auf denen man sie genauer \nanalysieren kann. Man kann auch das @10@ für den Tag erzeugen lassen. Das wird dann auf einer neuen Seite ausgegeben.\n\nDieses Formular ist eines der seitenintensivsten Formulare in Nightscout Reporter. Deshalb gibt es hier \ndie Möglichkeit, mehrere Tagesgrafiken auf einer Seite ausgeben zu lassen. Darunter leidet natürlich die Lesbarkeit,\naber für einen Überblick über den Verlauf ist das ganz nützlich." : MessageLookupByLibrary.simpleMessage("Este formulário mostra a curva de glicose por um dia. Uma página é gerada por dia no período selecionado. Há muitas opções que podem ser usadas para personalizar este formulário. As opções que indicam estão marcadas numa cor diferente para que possam ser identificadas facilmente. As opções COB e IOB às vezes diminuem consideravelmente a saída É por isso que você só deve usá-los se estiver realmente interessado nisso.\n\nA taxa basal pode ser exibida abaixo do gráfico. Um circulo de execução irá aumentar e diminuir isso várias vezes. É por isso que você pode exibir tanto a taxa basal real quanto a taxa de basal definida no perfil. Para a taxa de basal existem as formas @09@, @11@ e @02@, nas quais você pode analisá-lo de forma mais precisa. Também é possível gerar o @10@ para o dia. Isto é então impresso em uma nova página.\n\nEste formulário é uma das formas mais intensivas de páginas no Nightscout Reporter. É por isso que há a opção de exibir vários gráficos diários em uma página. É claro que a legibilidade sofre com isso, mas é muito útil para uma visão de conjunto dos progressos."),
    "Dieses Formular zeigt den Verlauf der Glukosekurve über eine Woche hinweg an. Der Zeitraum wird\ndazu in Wochenabschnitte aufgeteilt und jede Woche wird auf einer eigenen Seite ausgegeben. Die Wochen werden\nfarblich markiert, so dass man sie gut unterscheiden kann. Zusätzlich kann noch das @10@ für die jeweilige\nWoche erzeugt werden." : MessageLookupByLibrary.simpleMessage("Este formulário mostra a curva de glicose ao longo de uma semana. O período é dividido em segmentos semanais e cada semana é exibida em uma página separada. As semanas são codificadas por cores para que você possa facilmente distingui-las. Além disso, o @10@ pode ser gerado durante a respectiva semana."),
    "Dieses Formular zeigt die Auswertung der Werte des ausgewählten Zeitraums. Dabei wird auch\nder durchscnittliche Verbrauch an Materialien rechnerisch ermittelt und angezeigt. Dieses Formular beinhaltet\ndie meisten Informationen, die Diabetologen gerne wissen wollen.\n\nDer HbA1c wird rechnerisch aus den vorhandenen Daten ermittelt und weicht normalerweise nicht unerheblich von\ndem tatsächlich gemessenen Wert ab. Der Wert, der aus der Blutprobe ermittelt wird, gibt die tatsächliche\nBindung von Glukose im Blut wieder. Da diese von zusätzlichen Faktoren abhängig ist und nicht nur von den hier\nverwendeten Messdaten, ergeben sich Unterschiede zum errechneten Wert. Vor allem, wenn es sich bei den gemessenen\nWerten nicht um Blutzucker, sondern um Gewebszucker handelt, wie er von CGM-Systemen verwendet wird.\n\nTrotzdem ist dieser Wert ein grober Anhaltspunkt für die Qualität der Glukoseeinstellung und wird in der vom Labor\nermittelten Form gerne von Diabetologen als Richtwert verwendet, weshalb er hier angezeigt wird. Er wird aber in\nschwächerer Schrift ausgegeben, damit seine zweifelhafte Natur auch erkennbar ist." : MessageLookupByLibrary.simpleMessage("Este formulário mostra a análise das medidas para o período selecionado. Também o consumo médio de materiais é calculado. Este formulário contém a maior parte das informações que os diabetologistas gostariam de saber.\n\nO A1C é calculado a partir dos dados disponíveis e difere significativamente em circunstâncias normais do valor realmente medido. O valor determinado pela amostra de sangue mostra o verdadeiro vínculo da glicose no sangue. Uma vez que isto depende de fatores adicionais e não apenas dos dados de medição utilizados aqui, há diferenças em relação ao valor calculado. Especialmente quando os valores medidos não são açúcar de sangue, mas sim açúcar de tecido, como utilizado pelos sistemas CGM.\n\nMesmo este valor é um valor aproximado para a qualidade do ajuste de glicose, o valor determinado pelo laboratório é frequentemente usado pelos diabetologistas como valor de credível, É por isso que é aqui apresentado. No entanto, é emitida numa fonte mais fraca, para que a sua natureza duvidosa possa ser claramente reconhecida."),
    "Dieses Formular zeigt die Basalrate, die im Profil eingestellt ist in graphischer Form an.\nEs werden normalerweise alle Basalraten des ausgewählten Zeitraums ausgegeben. Wenn sich in dem Zeitraum\ndie Basalrate geändert hat, wird eine neue Seite erzeugt.\n\nEs gibt aber eine Option, welche nur die letzte Basalrate des Zeitraums ausgibt." : MessageLookupByLibrary.simpleMessage("Este formulário mostra a taxa de basal definida no perfil em forma gráfica. Geralmente, todas as taxas de basal para o período selecionado são exibidas. Se a taxa de basal mudou no período, uma nova página será criada.\n\nNo entanto, há uma opção que apenas produz a última taxa de basal do período."),
    "Dieses Formular zeigt die Daten in tabellarischer Form an. Es kann abhängig von den\nausgewählten Optionen sehr viele Seiten umfassen. Es ist vor allem dafür sinnvoll, um bestimmte Daten aufzufinden.\nZum Beispiel kann man damit ermitteln, wann Katheterwechsel vorgenommen wurden, wieviele Datensätze als doppelt \nerkannt wurden oder wo Notizen erfasst wurden.\n" : MessageLookupByLibrary.simpleMessage("Este formulário mostra os dados em um formulário tabular. Ele pode consistir de muitas páginas, dependendo das opções escolhidas. É especialmente útil encontrar certos dados. Por exemplo, pode ser usado para determinar quando o cateter foi alterado, quantos registros de dados foram reconhecidos como duplicados ou onde as notas foram registradas."),
    "Dieses Formular zeigt die statistischen Werte für die Tage des ausgewählten Zeitraums\nan. Für jeden Tag wird eine Zeile erzeugt. Die Spalten kann man teilweise konfigurieren. Auch hier wird der geschätzte \nHbA1c ausgegeben. Dieser hat wie auch im Formular @01@ nur sehr wenig Aussagekraft, weshalb er auch hier nur mit \nschwächerer Schrift angezeigt wird.\n" : MessageLookupByLibrary.simpleMessage("Este formulário mostra os valores estatísticos para os dias do período selecionado. Uma linha é gerada para cada dia. As colunas podem ser parcialmente configuradas. A A1C estimada também é uma saída aqui. Assim como na forma @01@, este tem muito pouco valor informativo, e é por isso que é mostrado aqui também com uma fonte mais fraca."),
    "Dieses Formular zeigt die tatsächliche Basalrate, die während des Tages gelaufen ist unter\nBerücksichtigung aller temporären Basalratenanpassungen. Zusätzlich kann noch die im Profil hinterlegte\nBasalrate angezeigt werden. Die Basalrate kann als Wert, als prozentuale Änderung in Bezug auf die Profilbasalrate\noder mit beidem angezeigt werden. Die Summenspalte zeigt die bis zur entsprechenden Uhrzeit abgegebene Basalrate\nan. Es ist auch möglich, die Uhrzeit mit Sekunden anzeigen zu lassen. Damit kann man die angezeigten Werte\nrechnerisch überprüfen.\n\nWenn die Basalrate aus dem Profil angezeigt wird, wird das Maximum für die Darstellung der Balken anhand des\nmaximalen Wertes der Profilbasalrate ermittelt. Dadurch werden bei Werten über 100% des Maximalwerts der \nProfilbasalrate die Balken über die Spalte hinaus verlängert. Es gibt aber eine Option, um diese Balken abzuschneiden \nund als Pfeile darstellen zu lassen." : MessageLookupByLibrary.simpleMessage("Este formulário mostra a taxa de basal real que foi executada durante o dia, levando em conta quaisquer ajustes temporários de taxa de basal. A taxa de basal armazenada no perfil também pode ser exibida. A taxa basal pode ser exibida como um valor, como uma alteração percentual na relação com a taxa basal do perfil, ou ambos. A coluna total mostra a taxa de basal entregue até o tempo correspondente. Também é possível exibir o tempo com segundos. Isto pode ser usado para verificar matematicamente os valores exibidos.\n\nSe a taxa de basal for exibida do perfil, o máximo para a exibição das barras é determinado usando o valor máximo da taxa basal do perfil. Como resultado, as barras são estendidas além da coluna para valores acima de 100% do valor máximo da taxa basal do perfil. Mas há uma opção para cortar essas barras\ne exibi-las como setas."),
    "Dieses Formular zeigt eine Übersicht für einen Tag. Hier \n  werden die Tagesgrafik, die Basalrate, die Basalratenanpassungen, Insulin On \n  Board und Carbs On Board angezeigt." : MessageLookupByLibrary.simpleMessage("Este formulário mostra uma visão geral para um dia. Aqui\n   o gráfico diário, a taxa de basal, os ajustes de taxa de basal, Insulina on board\n   tabuleiro e hidratos de carbono exibidos."),
    "Dieses Formular zeigt eine Übersicht über die \nStunden der Tage des ausgewählten Zeitraums an. Die angezeigten Werte sind die\nMittelwerte der innerhalb der entsprechenden Stunde gemessenen Werte. Sie\nwerden anhand des ausgewählten Zielbereichs eingefärbt. In den Formularoptionen\nkann man die Startstunde festlegen. Die Datumsspalte befindet sich immer links\nvon 0 Uhr und zeigt an, wo ein neuer Tag beginnt." : MessageLookupByLibrary.simpleMessage("This form shows an overview of the hours of the days of the selected period. The displayed values are the median values of the values measured within the corresponding hour. They are colored based on the selected target area. The start hour can be set in the form options. The date column is always to the left of midnight and shows where a new day begins."),
    "Diverse Abstürze beim Auslesen der Daten bereinigt" : MessageLookupByLibrary.simpleMessage("Corrigidos vários erros ao ler dados"),
    "Drei Monate vorher" : MessageLookupByLibrary.simpleMessage("Três meses antes"),
    "Dämmerung (06:00 - 07:59, 18:00 - 20:59)" : MessageLookupByLibrary.simpleMessage("Crepúsculo (06:00 - 07:59, 18:00 - 20:59)"),
    "Eigene Grenzwerte" : MessageLookupByLibrary.simpleMessage("Meu Intervalo alvo"),
    "Ein Fehler bei der Ausgabe der temporären Ziele in der Tagesgrafik wurde behoben." : MessageLookupByLibrary.simpleMessage("An error in the output of the temporary goals in the daily graphic has been fixed."),
    "Ein Fehler beim Laden der ausgewählten Formulare wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Um erro ao carregar os formulários selecionados foi corrigido."),
    "Ein Fehler in der Zahlenformatierung wurde behoben." : MessageLookupByLibrary.simpleMessage("Um erro na formatação numérica foi corrigido."),
    "Ein Fehler wurde behoben, der bei der Auswahl des Zeitraums die Benutzung verhinderte, wenn man ein leeres Eingabefeld fokussierte." : MessageLookupByLibrary.simpleMessage("A bug has been fixed that prevented usage of the app when selecting the time period if you focused on an empty input field."),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die Anwendung in einem undefinierten Zustand war, wenn man den letzten Benutzer gelöscht hat." : MessageLookupByLibrary.simpleMessage("A bug has been fixed that caused the application to be in an undefined state when the last user was deleted."),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die letzten Tage bestimmter Monate nicht im Kalender-Control angezeigt wurden." : MessageLookupByLibrary.simpleMessage("Corrigido um erro que fazia com que os últimos dias de certos meses não fossem exibidos no controlo do calendário."),
    "Ein Fehler wurde behoben, der dafür sorgte, dass temporäre Ziele in der Tagesgrafik mit zeitlicher Verschiebung angezeigt wurden." : MessageLookupByLibrary.simpleMessage("Erro corrigido que fez com que alvos temporários fossem exibidos no gráfico diário com um deslocamento de tempo."),
    "Ein Fehler wurde behoben, der dazu führte, dass Dialoge mit Escape geschlossen werden konnten, was die Anwendung in einem unbrauchbaren Zustand zurückliess." : MessageLookupByLibrary.simpleMessage("Fixed a bug that caused dialogs to be closed with Escape, leaving the application in an unusable state."),
    "Ein Fehler wurde behoben, der dazu führte, dass bei fehlenden Daten wie z.B. Treatments gar kein PDF mehr erstellt werden konnte." : MessageLookupByLibrary.simpleMessage("Um erro foi corrigido e resultou em dados ausentes, como tratamentos já não são capazes de criar um PDF."),
    "Ein Fehler wurde behoben, der in der Tagesgrafik dazu führte, dass Texte in der Legende andere Texte überschrieben haben." : MessageLookupByLibrary.simpleMessage("Foi corrigido um bug que causou que os gráficos diários substituíssem textos na legenda."),
    "Ein Fehler wurde wahrscheinlich behoben, der dazu führt, dass bei manchen Profilen der Wert für DIA nicht korrekt ausgelesen wurde." : MessageLookupByLibrary.simpleMessage("Um erro foi provavelmente corrigido, faz com que alguns perfis lhe faltem o valor do DIA."),
    "Ein Jahr vorher" : MessageLookupByLibrary.simpleMessage("Um ano antes"),
    "Ein Link zur Facebookseite von Nightscout Reporter wurde im Menü hinzugefügt." : MessageLookupByLibrary.simpleMessage("Um link para a página do Facebook do Nightscout Reporter foi adicionado ao menu."),
    "Ein Shortcut beinhaltet den Zeitraum und die ausgewählten Formulare mit den jeweils gesetzten Optionen. Wenn ein Shortcut aktiviert wird, werden die darin gespeicherten Einstellungen geladen und aktiviert." : MessageLookupByLibrary.simpleMessage("O atalho contém o período e os formulários selecionados com as opções definidas. Quando um atalho é ativado, as configurações salvas são carregadas e ativadas."),
    "Ein möglicher Absturz bei der Ausgabe des CGP bei der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Uma possível falha na saída do CGP no gráfico diário foi corrigida."),
    "Eine" : MessageLookupByLibrary.simpleMessage("Um"),
    "Einen Monat vorher" : MessageLookupByLibrary.simpleMessage("Um mês antes"),
    "Einheit der Glukosemessung" : MessageLookupByLibrary.simpleMessage("Unidade para valores de glicose"),
    "Einige Browser sind nicht in der Lage PDF Dateien anzuzeigen, die eine bestimmte Grösse überschreiten. Da das von verschiedenen Faktoren abhängt, die sich nicht ohne Weiteres automatisch ermitteln lassen, gibt es die Möglichkeit, statt einer grossen PDF Datei, die nicht angezeigt werden kann, mehrere kleinere PDF Dateien zu erzeugen, die der Browser anzeigen kann. In den Einstellungen und hier kann diese Grösse festgelegt werden. Diese Seite hier wird nur angezeigt, wenn das PDF aufgeteilt werden musste. Wenn nur ein PDF erzeugt wurde, dann wird es direkt angezeigt." : MessageLookupByLibrary.simpleMessage("Alguns browsers não podem exibir ficheiros PDF que excedam um determinado tamanho. Uma vez que isso depende de vários fatores que não podem ser facilmente determinados automaticamente, existe a possibilidade de gerar vários ficheiros PDF mais pequenos que o browser pode exibir, ao invés de um ficheiro PDF grande que não pode ser exibido. Este tamanho pode ser especificado nas definições e aqui. Esta página só será exibida se o PDF tiver que ser dividido. Se apenas um PDF foi criado, ele será exibido diretamente."),
    "Einige Formulare können nun mit Parametern konfiguriert werden; hierzu den Pfeil am rechten Rand des Formularbuttons anklicken und im aufgeklappten Bereich die entsprechenden Einstellungen vornehmen; der Pfeil erscheint erst, wenn das Formular zum Ausdruck markiert wurde" : MessageLookupByLibrary.simpleMessage("Alguns formulários agora podem ser configurados com parâmetros; carregue na seta no lado direito do botão do formulário e faça as configurações apropriadas na área aberta; a seta não aparecerá até que o formulário seja marcado para impressão"),
    "Einige der Optionen für die PDFs wurden hierarchisch angeordnet. Es macht z.B. keinen Sinn, die SMB Werte in der Tagesgrafik an der Kurve platzieren zu lassen, wenn die SMB Werte gar nicht angezeigt werden. Deswegen werden Optionen, die von einer anderen Option abhängen nur dann angezeigt, wenn die entsprechende Option markiert ist. Dadurch ändert sich leider auch die Speicherung der Optionen, weshalb sich die aktuelle Auswahl der Optionen bei manchen PDFs verändert. Da müssen die Optionen dann neu gesetzt werden." : MessageLookupByLibrary.simpleMessage("Algumas das opções para os PDFs foram organizadas de forma hierárquica. Não faz sentido que os valores de SMB sejam colocados na curva do gráfico diário se os valores de SMB não forem sequer exibidos. Portanto, as opções que dependem de outra opção só são exibidas se a opção correspondente for selecionada. Isto infelizmente também altera as opções de armazenamento, razão pela qual a actual selecção de opções para alguns PDFs mudou. Estas opções têm de ser definidas novamente."),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("Definições"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("Configurações para usar a página"),
    "Einstellungen von Release-Version übernehmen" : MessageLookupByLibrary.simpleMessage("Aplicar configurações da versão de lançamento"),
    "Einstiegsvideo" : MessageLookupByLibrary.simpleMessage("Quickstartvideo"),
    "English (GB)" : MessageLookupByLibrary.simpleMessage("Inglês (GB)"),
    "English (USA)" : MessageLookupByLibrary.simpleMessage("Inglês (USA)"),
    "Ermittle ersten Tag mit Daten" : MessageLookupByLibrary.simpleMessage("Procurando primeiro dia com dados"),
    "Ermittle letzten Tag mit Daten" : MessageLookupByLibrary.simpleMessage("Procurando último dia com dados"),
    "Erzeuge PDF..." : MessageLookupByLibrary.simpleMessage("A criar PDF..."),
    "Es gibt ein neues PDF namens Tagesstunden. Dieses zeigt die Durchschnittswerte eines Tages in jedem Stundenintervall an und färbt die Zellen entsprechend des Glukosewertes ein. So hat man eine gut Übersicht über die Werteverteilung im ausgewählten Zeitraum." : MessageLookupByLibrary.simpleMessage("Há um novo PDF chamado Dias/Horas. Isto mostra os valores médios de um dia em cada intervalo horário e preenche a cor de fundo das células de acordo com o valor de glicose. Isto dá-lhe uma boa visão geral da distribuição de valores no período seleccionado."),
    "Es gibt ein neues PDF namens Tagestrend. Dieses zeigt die Werte eines Tages zusammen mit dem Trend zu jeder vollen Stunde, sowie der eingestellten Basalrate aus dem Profil. Das ist eine gute Übersicht für Basalratentests, um zu erkennen, wo etwas anzupassen ist." : MessageLookupByLibrary.simpleMessage("Há um novo PDF chamado Tendência Diária. Isto mostra os valores de um dia juntamente com a tendência de hora e a taxa de basal definida no perfil. Esta é uma boa panorâmica dos testes de taxa de basal para ver onde é que algo precisa de ser ajustado."),
    "Es gibt eine neue Option in der Tagesgrafik mit der man den Zielwert ein- und ausblenden kann." : MessageLookupByLibrary.simpleMessage("Há uma nova opção no gráfico diário com a qual você pode exibir e ocultar o valor alvo."),
    "Es gibt eine neue PDF-Seite für die Tagesprofile. Darauf ist eine Tabelle zu sehen, die die tatsächliche Basalrate für den Tag zeigt, inklusive aller temporären Anpassungen. Ich brauchte das für Debugzwecke, aber vielleicht findet das der eine oder andere Benutzer auch interessant. Das Profil, das dort angezeigt wird entspricht dem Tagesprofil auf der Seite Tagesgrafik. Beim Loopen können das sehr viele Seiten werden, da dort normalerweise alle paar Minuten Anpassungen an der Basalrate vorgenommen werden. Deswegen wird die Tabelle auch abhängig von der Datenmenge in maximal drei Spalten dargestellt, um die Anzahl an Seiten zu reduzieren." : MessageLookupByLibrary.simpleMessage("Existe uma nova página PDF para os perfis diários. Contém uma tabela que mostra a taxa de basal real de cada dia, incluindo todos os ajustamentos temporários. Eu precisava disso para depuração, mas talvez alguns usuários também o considerem interessante. O perfil exibido lá corresponde ao perfil diário na página Gráficos Diários. Loops pode produzir muitas páginas, já que a taxa de basal geralmente é ajustada a cada poucos minutos. Portanto, dependendo da quantidade de dados, a tabela é exibida num máximo de três colunas para reduzir o número de páginas."),
    "Es gibt in den Einstellungen eine Option, das PDF herunterladen zu lassen, statt es im Browser direkt anzeigen zu lassen. Das wird für Browser wie Edge benötigt." : MessageLookupByLibrary.simpleMessage("Há uma opção nas configurações para fazer download do PDF em vez de tê-lo exibido diretamente no browser. Isto é necessário para browsers como o Edge."),
    "Es gibt in den Einstellungen eine neue Option, um den letzten in Nightscout gespeicherten Glukosewert in der Titelzeile anzeigen zu lassen. Wenn diese Option aktiviert ist, wird der aktuelle Wert, das Alter des Wertes, der Trendpfeil und die Differenz zum vorherigen Wert rechts in der Titelzeile angezeigt. Diese Anzeige wird jede Minute aktualisiert, solange das Browserfenster den Eingabefokus besitzt. Wenn es diesen nicht hat, wird die Aktualisierung angehalten und der Wert ausgeblendet, um nicht unnötig Systemresourcen zu belasten." : MessageLookupByLibrary.simpleMessage("Há uma nova opção nas configurações para exibir o último valor de glicose armazenado no Nightscout na barra de títulos. Se esta opção estiver ativada, o valor atual, a idade do valor, a seta de tendência e a diferença para o valor anterior é exibida no lado direito da barra de títulos. Esta tela é atualizada a cada minuto, desde que a janela do seu navegador tenha o foco de entrada. Se não tiver o foco, a atualização é interrompida e o valor está escondido para evitar carga desnecessária sobre os recursos do sistema."),
    "Es gibt jetzt Shortcuts, mit denen man die aktuelle Auswahl der Formulare, deren Parameter und den ausgewählten Zeitraum speichern kann. Beim Aktivieren eines Shortcuts wird das alles wieder so eingestellt, wie es war, als der Shortcut gespeichert wurde." : MessageLookupByLibrary.simpleMessage("Agora há atalhos com os quais você pode salvar a seleção atual de formulários, seus parâmetros e o período selecionado. Ao ativar um atalho, tudo é ajustado para o que era quando o atalho foi salvo."),
    "Es gibt jetzt auch die Möglichkeit, Nightscout Reporter in europäischem Englisch darzustellen. Der Unterschied zum amerikanischen Englisch besteht derzeit lediglich im Datumsformat (gb: dd/MM/yyyy, us: MM/dd/yyyy)." : MessageLookupByLibrary.simpleMessage("Existe agora também a possibilidade de usar o Relatório de Nightscout em inglês europeu. A diferença para o inglês americano existe actualmente apenas no formato da data (gb: dd/MM/yyyy, nós: MM/dd/yyyy)."),
    "Es gibt jetzt die Möglichkeit, PDFs vergangener Zeiträume zu erzeugen, ohne den Zeitraum anpassen zu müssen. Oberhalb des Buttons zur PDF-Erzeugung gibt es zwei Buttons, welche die PDFs für eine frühere Periode erzeugen. Der untere der beiden Buttons erzeugt die Vorperiode, der obere die vorletzte Periode. Auf den Buttons wird das Startdatum und das Enddatum angezeigt. Wenn z.B. als Zeitraum \"Letzte 2 Wochen\" gewählt wurde, dann wird mit dem unteren Button der Zeitraum von zwei Wochen beginnend vor vier Wochen erzeugt und mit dem oberen Button der Zeitraum von zwei Wochen beginnend vor sechs Wochen. Auf diese Art kann man recht einfach Vergleichsberichte erzeugen, um die Entwicklung der Werte zu erkennen. Auf den Seiten wird für diese Ausdrucke in der Kopfzeile das Wort \"Historisch 1\", bzw. \"Historisch 2\" oberhalb des Zeitraums ausgegeben. So kann man beim Vergleich der Werte die Daten voneinander unterscheiden." : MessageLookupByLibrary.simpleMessage("Existe agora a capacidade de gerar PDFs de períodos passados sem ter de ajustar o período. existem dois botões para períodos anteriores acima do botão para criar PDF que geram os PDFs. A parte inferior dos dois botões gera o período anterior, o período superior ao anterior. Os botões mostram a data de início e a data de fim. Se o período de \"últimas 2 semanas\" for selecionado, então o botão mais baixo cria o período a partir de duas semanas, começando há quatro semanas, e o botão superior o período de duas semanas a partir de há seis semanas. Desta forma, é fácil gerar relatórios de comparação para detectar a evolução dos valores. As palavras \"Histórico 1\" ou \"Histórico 2\" são colocadas acima do período nas páginas para estes documentos impressos no cabeçalho. Então você pode distinguir os dados entre si ao comparar as folhas."),
    "Es gibt jetzt kleine Hilfebuttons bei den Formularen. In der Listenansicht ersetzen sie die Icons zum Ziehen der Formulare, in der Kachelansicht werden sie links oben auf den Kacheln dargestellt. Die jeweilige Ansicht kann man im Hamburgermenü auswählen. Beim Anklicken eines solchen Buttons wird ein Text angezeigt, der beschreibt, was das entsprechende Formular darstellt." : MessageLookupByLibrary.simpleMessage("Existem agora pequenos botões de ajuda nos formulários. Na exibição de lista, eles substituem os ícones para arrastar os formulários, no modo de exibição de bloco eles são exibidos no canto superior esquerdo dos botões. A visualização respetiva pode ser selecionada no menu. Quando você clica no botão, um texto é exibido que descreve o que o formulário correspondente mostra."),
    "Es gibt keine mehrfachen Datensätze." : MessageLookupByLibrary.simpleMessage("Não há vários conjuntos de dados."),
    "Es ist jetzt möglich, die Buttons zur PDF-Auswahl als Kacheln darstellen zu lassen. Die Option dazu ist im Menü auf der linken Seite zu finden. In der Kachelansicht werden die Buttons über die verfügbare Fläche verteilt und sind so auf kleinen Geräten leichter zu treffen. Ausserdem sieht man dann normalerweise alle verfügbaren PDFs auf einen Blick und muss nicht scrollen. Auf den aktivierten Kacheln wird angezeigt, an welcher Stelle im PDF die entsprechenden Seiten ausgegeben werden und wieviele Seiten die entsprechende Kachel ausgibt. Diese Zahl kann für die meisten Kacheln korrekt ermittelt werden, bei einigen ist das aber ohne Auswertung der Daten nicht möglich (z.B. Profile und Protokoll). In diesem Fall wird entweder keine Seitenzahl oder eine Mindestzahl an Seiten angegeben. Sobald die Erstellung des PDFs erfolgt ist, werden die korrekten Zahlen angezeigt. Die Reihenfolge der Kacheln kann verändert werden, indem man sie festhält und an die Stelle verschiebt, an der man sie gerne hätte. Nach Anklicken des Icons in der oberen rechten Ecke können die Parameter für das entsprechende PDF erfasst werden." : MessageLookupByLibrary.simpleMessage("Agora é possível exibir os botões para seleção de PDF como mosaico. A opção pode ser encontrada no menu à esquerda. Na visualização dos mosaicos, os botões são distribuídos pela área disponível e, portanto, são mais fáceis de carregar em pequenos dispositivos. Além disso, vê normalmente todos os PDFs disponíveis de uma vez só e não precisa mexer na página. Os mosáicos ativados indicam em que ponto no PDF as páginas correspondentes são criadas e quantas páginas o mosaico correspondente cria. O número de páginas pode ser determinado corretamente para a maioria dos mosaicos, mas para alguns isso não é possível sem informações (por exemplo, perfis e protocolo). Neste caso, nenhum número de página ou um número mínimo de páginas é mostrado. Depois de criado, os números corretos serão exibidos. O sitio dos mosaicos pode ser alterado arrastando-o para onde você quiser. Depois de clicar no ícone no canto superior direito, os parâmetros para o PDF correspondente podem ser definidos."),
    "Es ist jetzt möglich, die Einstellungen auf Google Drive zu speichern. Das hat den Vorteil, dass man die Einstellungen nicht nur im aktuellen Browser hat, sondern bei jedem Browser, mit dem man sich bei Google anmeldet. Die Einstellungen werden nach wie vor im Browser gespeichert. Bei einer Verbindung zu Google Drive werden sie aber zusätzlich auf Google Drive gespeichert. Beim Laden der Seite wird überprüft, ob eine Synchronisierung gewünscht ist. Wenn das der Fall ist, dann werden die Daten von Google Drive heruntergeladen. Wenn die Daten darin neuer sind als die Daten im Browser, werden sie verwendet. Nach dem Speichern der Daten werden bei aktivierter Synchronisierung diese Daten mit dem aktuellen Zeitstempel auf Google Drive gespeichert. Die Synchronisierung wird im Menü auf der linken Seite aktiviert und deaktiviert. Sie kann auch beim erstmaligen Aufruf der Seite in einem neuen Browser direkt im Willkommensbildschirm aktiviert werden. Nightscout Reporter verlangt nur die Berechtigung die eigenen App-Daten zu speichern und zu laden und benötigt keinen Zugriff auf andere Daten auf Google Drive." : MessageLookupByLibrary.simpleMessage("Agora é possível gravar as definições no Google Drive. Essa é a vantagem de ter as definições não somente no browser atual, mas em qualquer browser, que está ligado à sua conta do Google. As definições ainda estão armazenadas no browser. Quando ligado ao Google Drive, ele também será armazenado no Google Drive. Ao carregar a página, verifica se a sincronização é necessária. Se for o caso, então os dados serão carregados do Google Drive. Se os dados carregados forem mais recentes que os dados no browser, eles serão utilizados. Uma vez que os dados são gravados, a sincronização gravará esses dados com o timestamp atual no Google Drive. A sincronização está ativada e desativada no menu do lado esquerdo. Ele também pode ser ativado quando ligar a página fpr pela primeira vez num novo browser diretamente na página de boas-vindas. O Nightscout Reporter requer apenas permissão para gravar e carregar os seus próprios dados do aplicativo e não requer acesso a outros dados no Google Drive."),
    "Es ist jetzt möglich, die Wochentage festzulegen, die im Zeitraum berücksichtigt werden sollen. Die entsprechenden Tage werden bei der Auswahl des Zeitraums mit den Buttons unterhalb des Monats festgelegt. Auf den PDFs werden Zeiträume dann zusätzlich mit der Information versehen, welche Wochentage berücksichtigt werden, wenn es nicht alle sind." : MessageLookupByLibrary.simpleMessage("É agora possível fixar os dias da semana que devem ser utilizados no período. Ao selecionar um período os dias correspondentes são definidos com botões abaixo do mês. Nos PDFs, os períodos são indicados com os dias da semana que são utilizados, se pelo menos um não existir."),
    "Es sind keine Daten für den Ausdruck vorhanden" : MessageLookupByLibrary.simpleMessage("Não há dados para impressão"),
    "Es sind keine Daten vorhanden." : MessageLookupByLibrary.simpleMessage("Sem dados disponíveis."),
    "Es werden jetzt auch blutige Werte erkannt, die von Loop auf dem IPhone eingetragen werden." : MessageLookupByLibrary.simpleMessage("Os valores de sangue que são inseridos pelo Loop no iPhone também agora são reconhecidos."),
    "Español" : MessageLookupByLibrary.simpleMessage("Espanhol"),
    "Exportieren" : MessageLookupByLibrary.simpleMessage("Exportar"),
    "Facebook Seite" : MessageLookupByLibrary.simpleMessage("Página do Facebook"),
    "Fehler" : MessageLookupByLibrary.simpleMessage("Erro"),
    "Fehler behoben, der bei der Kachelansicht teilweise verhindert hat, dass die Parameter für die Kacheln aufgerufen werden konnten." : MessageLookupByLibrary.simpleMessage("Corrigido um erro que por vezes impedia os parâmetros dos blocos de serem chamados na visualização dos mosaicos."),
    "Fehler beim Laden der Daten" : MessageLookupByLibrary.simpleMessage("Erro ao carregar dados"),
    "Fehler werden besser abgefangen und mit sinnvollem Text ersetzt." : MessageLookupByLibrary.simpleMessage("Os erros são melhor interceptados e substituídos por texto."),
    "Fehlerhafte Ausgabe der Blutzuckerwerte in der täglichen Grafik korrigiert." : MessageLookupByLibrary.simpleMessage("Corrigimos o resultado incorreto dos níveis de glicose no gráfico diário."),
    "Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt" : MessageLookupByLibrary.simpleMessage("Os valores das falhas não são mais considerados na avaliação dos gráficos; eles são reconhecidos pelo valor \"Nenhum\" no campo de dados \"sentido\""),
    "Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt." : MessageLookupByLibrary.simpleMessage("Mensagem de erro ao carregar perfis sem a data de início removida."),
    "Français" : MessageLookupByLibrary.simpleMessage("Françês"),
    "Für die Tagesgrafik gibt es jetzt eine Option, um die Aufsummierung nahe beieinander liegender Werte umzuschalten." : MessageLookupByLibrary.simpleMessage("Agora há uma opção para que os gráficos diários alternem a acumulação de valores fechados."),
    "GPD" : MessageLookupByLibrary.simpleMessage("GPD"),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("Data de nascimento"),
    "Gelbe Kreise zeigen an, dass der entsprechende Wert die Skala überschreitet." : MessageLookupByLibrary.simpleMessage("Círculos amarelos indicam que o valor correspondente excede a escala."),
    "Genauigkeit der Basalangaben:" : MessageLookupByLibrary.simpleMessage("Precisão de valores da basal:"),
    "Ges." : MessageLookupByLibrary.simpleMessage("Total"),
    "Gesamt" : MessageLookupByLibrary.simpleMessage("Total"),
    "Geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("HbA1c Estimado"),
    "Glukose Pentagon erzeugen" : MessageLookupByLibrary.simpleMessage("Criar pentagon de glicose"),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("Diagrama do Percentil da Glicose"),
    "Glukose im Zielbereich" : MessageLookupByLibrary.simpleMessage("Glicose na área alvo"),
    "Glukose zu hoch" : MessageLookupByLibrary.simpleMessage("Glicose muito alta"),
    "Glukose zu niedrig" : MessageLookupByLibrary.simpleMessage("Glicose muito baixa"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("Curva de glicose"),
    "Glukosewert" : MessageLookupByLibrary.simpleMessage("Glucose"),
    "Glykämischer Variabilitäts Index (GVI)" : MessageLookupByLibrary.simpleMessage("Índice de Variabilidade Glicêmica (GVI)"),
    "Google Assistant" : MessageLookupByLibrary.simpleMessage("Google Assistant"),
    "Grafik" : MessageLookupByLibrary.simpleMessage("Gráfico"),
    "Grafiken pro Seite" : MessageLookupByLibrary.simpleMessage("Gráficos por página"),
    "Gross" : MessageLookupByLibrary.simpleMessage("Grande"),
    "Gruppierung der Zeiten" : MessageLookupByLibrary.simpleMessage("Agrupamento de tempos"),
    "HTML-Notizen anzeigen" : MessageLookupByLibrary.simpleMessage("Exibir notas em HTML"),
    "Heute" : MessageLookupByLibrary.simpleMessage("Hoje"),
    "Hiermit wird festgelegt, um wieviel der Zeitraum des PDFs verschoben werden soll, um Vergleichswerte zu erhalten." : MessageLookupByLibrary.simpleMessage("Isto determina quanto o período do PDF deve ser deslocado para obter valores comparativos."),
    "Hinweise auf Nightscout in der Kopf- und Fusszeile des PDFs ausblenden" : MessageLookupByLibrary.simpleMessage("Ocultar texto sobre Nightscout no cabeçalho e rodapé do PDF"),
    "Hinzufügen" : MessageLookupByLibrary.simpleMessage("Adicionar"),
    "Historische Daten" : MessageLookupByLibrary.simpleMessage("Histórico"),
    "Hochformat" : MessageLookupByLibrary.simpleMessage("Retrato"),
    "Hohe Basalraten werden jetzt besser dargestellt." : MessageLookupByLibrary.simpleMessage("As elevadas taxas de basal estão agora melhor representadas."),
    "Höchster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Valor mais alto no período"),
    "IE" : MessageLookupByLibrary.simpleMessage("U"),
    "IE-Anzeige" : MessageLookupByLibrary.simpleMessage("IE-Display"),
    "IE/std" : MessageLookupByLibrary.simpleMessage("U/hr"),
    "IOB (Insulin On Board) anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar IOB (Insulina a Bordo)"),
    "Im CGP wurden die Skalenbeschriftungen korrigiert." : MessageLookupByLibrary.simpleMessage("Os rótulos da escala foram corrigidos no CGP."),
    "Im CGP wurden verschiedene Berechnungen korrigiert, die sich vor allem in Differenzen bei ToR und Mittelwerten zeigten." : MessageLookupByLibrary.simpleMessage("Foram corrigidos vários cálculos no CGP, que foram mostrados principalmente nas diferenças entre os valores médios e os valores de ToR."),
    "Im Dialog der Ausgabe Parameter gibt es nun die Möglichkeit, das CGP immer mit dem Standard Zielbereich zu erzeugen. Diese Option ist anfangs eingeschaltet, da das CGP ein standardisiertes Formular ist, das gerne zu Vergleichszwecken herangezogen wird. Man kann es aber für seine eigenen Zwecke ausschalten. Diese Einstellung wird dann auch beibehalten." : MessageLookupByLibrary.simpleMessage("Na caixa de diálogo de parâmetros de saída, existe agora a possibilidade de sempre gerar o CGP com a área alvo padrão. Esta opção é inicialmente ativada porque o CGP é um formulário padronizado que é frequentemente utilizado para fins de comparação. Mas pode desativá-lo para seus próprios fins. Esta configuração é mantida."),
    "Im Dialog der Ausgabe Parameter wurde rechts oben der Schieberegler \"zu Vergleichszwecken\" hinzugefügt. Wenn dieser aktiviert ist, dann wird überall der Standard Zielbereich verwendet. Intern wird das auch noch für andere Anpassungen verwendet. Diese Option ist dafür gedacht, dass man seine Ausdrucke mit anderen Diabetikern vergleichen kann. Das ist zum Beispiel zur Vorlage bei Ärzten und Diabetesberatern sinnvoll." : MessageLookupByLibrary.simpleMessage("Na caixa de diálogo dos parâmetros de saída, a opção \"para fins de comparação\" foi adicionada no canto superior direito. Se isso for ativado, a área-alvo padrão será usada em todos os lugares. Internamente, isto também é usado para outros ajustes. Esta opção é projetada para que você possa comparar seus totais com outros diabéticos. Isto é útil, por exemplo, para a submissão a médicos e consultores para a diabetes."),
    "Im Einstellungen Dialog gibt es jetzt die Möglichkeit, die Einstellungen zu exportieren und zu importieren. Beim Export wird eine Datei mit den allgemeinen Einstellungen geschrieben, beim Import wird so eine Datei wieder eingelesen. Damit kann man auch ohne Google Drive Zugriff die Einstellungen über verschiedene Browser hinweg manuell synchronisieren." : MessageLookupByLibrary.simpleMessage("Na caixa de diálogo Configurações existe agora a possibilidade de exportar e importar as configurações. Ao exportar, um arquivo é escrito com as configurações gerais; ao importar, esse arquivo é lido novamente. Isso permite que você sincronize manualmente as configurações entre diferentes navegadores, mesmo sem o acesso ao Google Drive."),
    "Im Einstellungsdialog wurden die Zeilen mit den Benutzerangaben und der URL gegeneinander ausgetauscht, um eine sinnvollere Verwaltung zu ermöglichen." : MessageLookupByLibrary.simpleMessage("Na caixa de diálogo de definições, as linhas com os detalhes do usuário e a URL foram trocadas por uma administração mais significativa."),
    "Im Kalender-Control kann kein Datum nach dem aktuellen Tag mehr ausgewählt werden." : MessageLookupByLibrary.simpleMessage("O controlo do calendário não pode mais selecionar uma data após o dia atual."),
    "Im Kalender-Control wird ein eingestellter Bereich (Heute, Letzte Woche, etc.) jetzt korrekt auf den aktuellen Tag bezogen." : MessageLookupByLibrary.simpleMessage("No controlo do calendário, um período definido (hoje, na semana passada, etc.) está agora corretamente baseado no dia atual."),
    "Im Kalender-Control wird jetzt der Monat des entsprechenden Datums angezeigt, wenn eines der Felder Von oder bis den Fokus erhält." : MessageLookupByLibrary.simpleMessage("O controlo do calendário agora exibe o mês da data correspondente quando um dos campos De ou Para receber o foco."),
    "Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert" : MessageLookupByLibrary.simpleMessage("Números e datas no PDF são formatados de acordo com o idioma selecionado"),
    "Im Profil werden jetzt die richtigen Einheiten verwendet (mg/dL oder mmol/l)." : MessageLookupByLibrary.simpleMessage("O perfil agora usa as unidades corretas (mg/dL ou mmol/l)."),
    "Im Profil werden nun die Gesamtsumme der Basalrate und die durchschnittlichen Werte für ICR und ISF pro Stunde angezeigt." : MessageLookupByLibrary.simpleMessage("O perfil mostra agora a taxa de basal total e a média ICR e ISF por hora."),
    "Im Protokoll gibt es jetzt die Möglichkeit, sich doppelte Datensätze markieren zu lassen. Sie werden von Nightscout Reporter zwar rausgefiltert, aber er kann anzeigen, wie oft ein bestimmter Datensatz in den Daten gefunden wurde. Man kann dort auch angeben, dass er nur mehrfach vorhandene Datensätze ausgeben soll. So kann man mögliche Diskrepanzen zwischen Nightscout Reporter und anderen Reporting Tools herausfinden." : MessageLookupByLibrary.simpleMessage("No registro diário há agora a possibilidade de ter registros duplicados marcados. O Nightscout Reporter os filtra para fora, mas pode mostrar quantas vezes um registro em particular foi encontrado nos dados. Você também pode especificar que só deve produzir registros de dados que existam mais de uma vez. Desta forma você pode descobrir possíveis diferenças entre o Nightscout Reporter e outras ferramentas de relatório."),
    "Im Protokoll können jetzt auch Batteriewechsel der Pumpe angezeigt werden." : MessageLookupByLibrary.simpleMessage("O protocolo agora também pode mostrar alterações na bateria da bomba."),
    "Im Protokoll werden die Angaben, die ein temporäres Ziel von 0 IE für 0 Minuten setzen als \"Aufhebung von temp. Ziel\" ausgegeben." : MessageLookupByLibrary.simpleMessage("No log, a informação que define um alvo temporário de 0 U para 0 minutos é a saída como \"Cancelar alvo temporário\"."),
    "Im Protokoll werden nun auch temporäre Overrides ausgegeben, die von iOSLoop in die Behandlungsdaten eingetragen werden." : MessageLookupByLibrary.simpleMessage("Substituições temporárias que são inseridas nos dados de tratamento pelo iOSLoop agora também são mostradas no log diário."),
    "Im Tagesprofil kann nun angegeben werden, ob nur der Wert, die prozentuale Anpassung des Profils oder beides angezeigt werden soll. Ausserdem kann eine Linie eingefügt werden, die den im Basalprofil zum jeweiligen Zeitpunkt eingestellten Wert darstellt." : MessageLookupByLibrary.simpleMessage("No perfil diário você pode agora especificar se o valor, o ajuste de percentagens do perfil ou ambos devem ser exibidos. Além disso, uma linha pode ser inserida que mostra o valor definido no perfil basal no respetivo ponto no tempo."),
    "Importieren" : MessageLookupByLibrary.simpleMessage("Importar"),
    "Impressum" : MessageLookupByLibrary.simpleMessage("Informação legal"),
    "In Firefox ist es jetzt auch möglich, die Hauptseite zu scrollen, wenn sie länger ist, als das Browserfenster." : MessageLookupByLibrary.simpleMessage("Agora é possível rolar a página principal no Firefox, se é mais do que a janela do browser."),
    "In dem Dialog mit den Ausgabe Parametern wurde die Option hinzugefügt, die Genauigkeit der Ausgabe von Basalangaben festzulegen. Diese wird normalerweise aus den Angaben zur Basalrate in den Profilen ermittelt. Das wird auch weiterhin getan, wenn der erste Eintrag in der Liste ausgewählt wird. Ansonsten werden alle Basalangaben mit der Genauigkeit ausgegeben, die bei dieser Option ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("Na caixa de diálogo com os parâmetros de saída, uma opção foi adicionada para especificar a precisão da informação de saída da basal. Isso geralmente é determinado a partir das informações sobre a taxa basal nos perfis. Este ainda é o caso quando a primeira entrada na lista é selecionada. Caso contrário, todas as informações basais serão enviadas com a precisão selecionada para esta opção."),
    "In den Ausgabe Parametern kann nun angegeben werden, ob immer der neueste Tag zuerst angezeigt wird. Das hat Auswirkungen auf die Tagesgrafik, die Tagesstatistik und die Wochengrafik. In den Formularoptionen wurde die entsprechende Option entfernt." : MessageLookupByLibrary.simpleMessage("Agora você pode especificar nos parâmetros de saída se o novo dia é sempre exibido primeiro. Isso tem um impacto no gráfico diário, nas estatísticas diárias e no gráfico semanal. A opção correspondente foi removida das opções de formulário."),
    "In den Ausgabeparametern gibt es eine Checkbox, mit der man dafür sorgen kann, dass alle Optionen, die auf einen Loop hinweisen würden, für diese Ausgabe deaktiviert werden. Das sind die Optionen, die mit einem Kreis (=Loop) markiert sind." : MessageLookupByLibrary.simpleMessage("Nos parâmetros de saída há uma caixa de seleção com a qual você pode garantir que todas as opções que indicariam um loop são desativadas para esta saída. Essas são as opções que estão marcadas com um círculo (= loop)."),
    "In den Einstellungen gibt es einen Regler, der festlegt, wie gross die erzeugten PDF-Dateien maximal sein dürfen. Wenn nur ein leeres PDF erzeugt wird, dann sollte dieser Regler weiter nach links geschoben werden, um die Dateigrösse zu verringern." : MessageLookupByLibrary.simpleMessage("Nas configurações há um controle deslizante que define o tamanho dos arquivos PDF resultantes. Quando um PDF em branco é criado, então este controle deslizante deve ser movido para a esquerda, para reduzir o tamanho do ficheiro."),
    "In der Analyse können die Prozentzahlen für die Zielbereiche mit Nachkommazahl angezeigt werden. Das verringert die Differenz zu 100%, wenn man sie zusammenzählt. Der verbleibende Rest sind Rundungsdifferenzen." : MessageLookupByLibrary.simpleMessage("Na análise, as percentagens para os intervalos alvo podem ser mostradas com casas decimais. Isto reduz a diferença a 100% se for somar. O resto deve-se a diferenças de arredondamento."),
    "In der Auswertung gibt es eine neue Option, um den Standardbereich feiner abzustufen. Dort werden dann zusätzlich sehr hohe Werte und sehr niedrige Werte angezeigt." : MessageLookupByLibrary.simpleMessage("Há uma nova opção na análise para ajustar o intervalo padrão. Valores muito altos e valores muito baixos são exibidos com esta opção."),
    "In der Auswertung können die Angaben für Material (Katheter, Sensor, Ampulle) mit Nachkommastellen angezeigt werden." : MessageLookupByLibrary.simpleMessage("Na análise, as informações para o material (cateter, sensor, ampoule) podem ser exibidas com casas decimais."),
    "In der Kachelansicht können die Parameter aller ausgewählten Seiten zusammen in einer Liste eingestellt werden. Dazu gibt es im Titelbereich der Parameterliste neben dem Schliessen-Button einen zusätzlichen Button, mit dem man zwischen den beiden Möglichkeiten umschalten kann." : MessageLookupByLibrary.simpleMessage("Na visão tipo Mosaicos, os parâmetros de todas as páginas selecionadas podem ser definidos juntos numa lista. Para isso, há um botão adicional na área de título da lista de parâmetros ao lado do botão fechar, com que você pode alternar entre as duas opções."),
    "In der Legende unter der Tagesgrafik wird die Summe der Kohlenhydrate für den Tag angezeigt." : MessageLookupByLibrary.simpleMessage("A legenda abaixo do gráfico diário mostra a soma de hidratos de carbono para o dia."),
    "In der Sprachauswahl ist jetzt auch Slowakisch verfügbar." : MessageLookupByLibrary.simpleMessage("Eslovaco está agora disponível na selecção da língua."),
    "In der Tagesgrafik gibt es die Option, HTML-Notizen zu unterdrücken. Manche Uploader schreiben in die Notizen komplette HTML-Seiten rein, was im PDF extrem schlecht darstellbar ist. Deswegen kann man diese mit Setzen der Option ausblenden." : MessageLookupByLibrary.simpleMessage("Nos gráficos diários, há a opção de suprimir notas HTML. Alguns iploaders escrevem páginas HTML completas nas notas, o que é extremamente difícil de renderizar no PDF. É por isso que pode escondê-los definindo esta opção."),
    "In der Tagesgrafik gibt es eine Option, die berechneten IE für aufgenommene Kohlenhydrate anzeigen zu lassen. Der Wert, der unmittelbar unter den Kohlenhydraten angezeigt wird, entspricht dem Bolus, der zu diesem Zeitpunkt für diese Kohlenhydratmenge abgegeben werden sollte. Dieser Wert kann niedriger als der tatsächlich abgegebene Wert ausfallen, weil für die Insulinabgabe noch IOB und andere Faktoren berücksichtigt werden." : MessageLookupByLibrary.simpleMessage("No gráfico diário, há uma opção para exibir o IE calculado para hidratos de carbono ingeridos. O valor exibido abaixo dos hidratos de carbono no bolus que deve ser entregue para essa quantidade de hidratos de carbono na altura. Este valor pode ser menor que o valor real entregue, porque IOB e outros factores são tomados em conta para a entrega de insulina."),
    "In der Tagesgrafik gibt es eine Option, mit dem man die verschiedenen Arten der Boli kenntlich machen lassen kann. Wenn diese Option gesetzt ist, wird ein Bolus, der zu einer Mahlzeit abgegeben wurde mit einer anderen Farbe markiert, als ein Bolus zur Korrektur. In der Legende werden dann Korrektur-, Mahlzeiten-Boli und SMB getrennt angezeigt." : MessageLookupByLibrary.simpleMessage("Há uma opção nos gráficos diários que permite distinguir os diferentes tipos de bolus. Se esta opção for definida, um bolus que foi inserido para uma refeição é marcado com uma cor diferente do bolus dado como correção. Na legenda existem também valores separados para refeições, bolus de correcção e SMB."),
    "In der Tagesgrafik gibt es eine Option, mit der man sich die erfassten Trainingsdaten anzeigen lassen kann. Diese werden dann am unteren Rand über der Tabelle der Glukosewerte eingefügt." : MessageLookupByLibrary.simpleMessage("No gráfico diário existe uma opção, que acrescenta os dados do exercício ao gráfico. Será exibida no final do gráfico, mesmo acima da tabela de glucose."),
    "In der Tagesgrafik gibt es eine neue Option, um die Rundung der Insulinwerte auf die maximale Genauigkeit im Profil zu unterbinden. Das macht da Sinn, wo entweder kein Profil vorhanden ist, oder wo Werte mit höherer Genauigkeit als im Profil eingegeben werden." : MessageLookupByLibrary.simpleMessage("Há uma nova opção no gráfico diário para evitar o arredondamento dos valores da insulina para a máxima precisão no perfil. Isso faz sentido quando não há perfil ou quando os valores são inseridos com maior precisão do que no perfil."),
    "In der Tagesgrafik kann die Anzeige der SMB nun ausgeblendet werden." : MessageLookupByLibrary.simpleMessage("A exibição de SMB pode agora ser ocultada em gráficos diários."),
    "In der Tagesgrafik kann jetzt bei Auswahl der Tages Basalrate angegeben werden, dass der Name des Profils angezeigt wird, das am Beginn des Tages aktiv war. Dieser wird dann so angezeigt, wie ein Profilwechsel um 0 Uhr." : MessageLookupByLibrary.simpleMessage("Ao selecionar a basal diária, agora é possível especificar nas opções do gráfico diário do nome do perfil que estava ativo no início do dia é exibido. Isto será então exibido como uma mudança de perfil a 0 da manhã."),
    "In der Tagesgrafik kann man nun die IOB (Insulin On Board) und COB (Carbs On Board) anzeigen lassen. Die IOB werden am oberen Rand angezeigt, wo auch die Bolusabgaben dargestellt werden, die COB am unteren Rand, wo auch die Kohlenhydrate dargestellt werden." : MessageLookupByLibrary.simpleMessage("No gráfico diário pode exibir a IOB (Insulina a bordo) e a COB (Hidratos a bordo). O IOB é mostrado no topo onde o bolus é visível, o COB no fundo onde os Hidratos de carbono são visíveis."),
    "In der Tagesgrafik kann nun angezeigt werden, wie lange die Basalrate auf 0% lief." : MessageLookupByLibrary.simpleMessage("O gráfico diário mostra agora a duração da taxa de basal em 0%."),
    "In der Tagesgrafik werden Profilwechsel nicht mehr angezeigt, wenn sich das Profil beim Wechsel nicht geändert hat. iOSLoop fügt in die Nightscoutdatensätze sehr häufig neue Profile ein, die keine Änderung beinhalten, weil dort zusätzlich andere Konfigurationseinstellungen gespeichert werden." : MessageLookupByLibrary.simpleMessage("As alterações no perfil não são mais exibidas no gráfico diário se o perfil não mudou. O iOSLoop frequentemente insere novos perfis nos registros de dados do nightscout que não contêm quaisquer alterações porque outras configurações também são salvas lá."),
    "In der Tagesgrafik werden die Insulinangaben jetzt kleiner dargestellt, wenn die Basalrate eine Genauigkeit von mehr als 2 Nachkommastellen hat." : MessageLookupByLibrary.simpleMessage("Se a taxa de basal tem mais de 2 números decimais, os valores de insulina são menores nos gráficos diários."),
    "In der Tagesgrafik werden jetzt auch Blutzuckermessungen angezeigt. Sie werden als rote Quadrate dargestellt und die zugehörigen Werte in der Tabelle unterhalb der Grafik werden ebenfalls mit roter Schrift angezeigt." : MessageLookupByLibrary.simpleMessage("O gráfico diário agora também exibe valores de glicose no sangue. Eles são exibidos como quadrados vermelhos e os valores associados na tabela abaixo do gráfico também são exibidos em vermelho."),
    "In der Tagesgrafik werden nun SMBs auch angezeigt, wenn die Option für die Darstellung von Insulin akitivert wurde. Man kann festlegen, ob die SMBs an der Glukosekurve oder am Zielwert angezeigt werden." : MessageLookupByLibrary.simpleMessage("SMBs agora também são exibidos nos gráficos diários se a opção para exibir insulina tiver sido ativada. Você pode especificar se as SMBs são exibidas na curva de glicose ou no valor de destino."),
    "In der Tagesgrafik werden nun auch Kohlenhydratkorrekturen angezeigt." : MessageLookupByLibrary.simpleMessage("Correções de Hidratos de carbono agora são exibidas no gráfico diário."),
    "In der Tagesgrafik werden nun auch Reservoirwechsel angezeigt." : MessageLookupByLibrary.simpleMessage("As mudanças de reservatório também são agora mostradas no gráfico diário."),
    "In der Tagesgrafik werden nun auch bei Anzeige des Zielwertes die temporären Ziele berücksichtigt." : MessageLookupByLibrary.simpleMessage("No gráfico diário, os objectivos temporários são agora também tidos em conta quando apresentam o valor alvo."),
    "In der Tagesgrafik werden nun auch verzögerte Boli angezeigt." : MessageLookupByLibrary.simpleMessage("Bolus atrasado agora são exibidos no gráfico diário."),
    "In der Tagesgrafik werden nun der geschätzte HbA1C und die prozentuale Menge an Bolusinsulin und Basalinsulin für den Tag angezeigt. Diese Anzeige erfolgt innerhalb der Legende, weshalb diese aktiviert sein muss, damit die Werte angezeigt werden." : MessageLookupByLibrary.simpleMessage("O gráfico diário mostra agora o HbA1c estimado e a percentagem de insulina bolus e insulina basal para o dia. Estes valores são exibidos dentro da legenda, e é por isso que deve ser activado para que os valores apareçam."),
    "In der Tagesgrafik wird jetzt eine Tabelle mit halbstündigen Glukosewerten eingeblendet angezeigt. Diese kann über einen Parameter ausgeschaltet werden." : MessageLookupByLibrary.simpleMessage("Agora, os gráficos diários mostram uma tabela com valores de glicemia em semi-horária. Isso pode ser desligado através de um parâmetro."),
    "In der Tagesgrafik wurde \"Training\" in \"Bewegung\" umbenannt. Das passt besser zu den Einträgen in AAPS." : MessageLookupByLibrary.simpleMessage("No gráfico diário na versão do german \"Treino\" foi substituído por \"Bewegung\" já que isso corresponde melhor ao texto no AAPS."),
    "In der Tagesgraphic werden jetzt Insulinwerte und Kohlenhydratwerte zusammengefasst, wenn es mehrere innerhalb einer Stunde gibt. Die Balken werden nach wie vor für jeden Wert einzeln ausgegeben. Auf diese Art sollte es keine überlappende Ausgabe der Werte mehr geben. Die zusammengefassten Werte werden in eckigen Klammern ausgegeben, um anzuzeigen, dass hier Werte aufsummiert wurden." : MessageLookupByLibrary.simpleMessage("O gráfico diário resume agora os valores de insulina e os valores de Hidratos de carbono quando há vários valores dentro de uma hora. As barras são desenhadas individualmente para cada valor. Desta forma, não deve haver mais nenhuma saída sobreposta dos valores. Os valores resumidos são exibidos entre quadros para indicar que os valores foram resumidos aqui."),
    "In der Tagesstatistik können nun Spalten für TDD und Kohlenhydrate angezeigt werden." : MessageLookupByLibrary.simpleMessage("Colunas para TDD e hidratos de carbono agora podem ser exibidas nas estatísticas diárias."),
    "In der Tagesstatistik und in den täglichen Grafiken werden jetzt zum Datum die Wochentage mit angezeigt." : MessageLookupByLibrary.simpleMessage("Nas estatísticas diárias e nas gráficos diários, os dias da semana são agora exibidos com o dia da semana."),
    "In der Tagesstatistik wurde die Spalte Varianzkoeffizient hinzugefügt (VarK)." : MessageLookupByLibrary.simpleMessage("Nas estatísticas diárias, foi acrescentada a coluna Coeficiente de variação (CV)."),
    "In der Tagesstatistik wurden bei unvollständigen Daten teilweise fehlerhafte Werte ausgegeben. Das wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Corrigimos a exibição errada de dados nas estatísticas diárias quando um dia tinha poucos dados."),
    "In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen." : MessageLookupByLibrary.simpleMessage("A variável ENABLE deve conter a palavra \"cors\" para que ferramentas externas como esta possam aceder os dados."),
    "Information" : MessageLookupByLibrary.simpleMessage("Informação"),
    "Initiale Version, alles ist neu!" : MessageLookupByLibrary.simpleMessage("Versão inicial, tudo é novo!"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("Insulina"),
    "Insulin Kohlenhydrate Verhältnis (ICR)" : MessageLookupByLibrary.simpleMessage("Rácio Insulina Hidratos de carbono (ICR)"),
    "Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE" : MessageLookupByLibrary.simpleMessage("Rácio insulina Hidratos (ICR) X g Hidratos para 1 U"),
    "Insulin Sensitivitäts Faktoren (ISF)" : MessageLookupByLibrary.simpleMessage("Factores Sensibilidade Insulina (ISF)"),
    "Insulin auf maximale Stellen im Profil runden" : MessageLookupByLibrary.simpleMessage("Trocar a insulina para a precisão máxima no perfil"),
    "Insulin-Quelle" : MessageLookupByLibrary.simpleMessage("Fonte de Insulina"),
    "Ja" : MessageLookupByLibrary.simpleMessage("Sim"),
    "Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember" : MessageLookupByLibrary.simpleMessage("Janeiro|Fevereiro|Março|Abril|Maio|Junho|Julho|Agosto|Setembro|Outubro|Novembro|Dezembro"),
    "Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez" : MessageLookupByLibrary.simpleMessage("Jan|Feb|Mar|Abr|Mai|Jun|Jul|Aug|Sep|Oct|Nov|Dec"),
    "KH" : MessageLookupByLibrary.simpleMessage("Hidratos de carbono"),
    "Kalibrierung und blutige Messungen" : MessageLookupByLibrary.simpleMessage("Calibração e valores do sangue"),
    "Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Alterar site"),
    "Keine" : MessageLookupByLibrary.simpleMessage("Nada"),
    "Keine Änderung" : MessageLookupByLibrary.simpleMessage("Sem alterações"),
    "Klein" : MessageLookupByLibrary.simpleMessage("Pequeno"),
    "Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("Hidratos de carbono"),
    "Kohlenhydrate anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar Hidratos de Carbono"),
    "Kohlenhydrate und Bolusinsulin werden jetzt in den täglichen Grafiken angezeigt" : MessageLookupByLibrary.simpleMessage("Hidratos de carbono e insulina de bólus agora são exibidos nos gráficos diários"),
    "Lade die Basisdaten..." : MessageLookupByLibrary.simpleMessage("A carregar base de dados..."),
    "Legende" : MessageLookupByLibrary.simpleMessage("Legenda"),
    "Legende für Katheter- und Sensorwechsel zur Tagesgrafik hinzugefügt." : MessageLookupByLibrary.simpleMessage("Adicionada legenda para troca de cateter e sensor para gráfico diário."),
    "Letzte 2 Tage" : MessageLookupByLibrary.simpleMessage("Últimos 2 dias"),
    "Letzte 2 Wochen" : MessageLookupByLibrary.simpleMessage("Últimas 2 semanas"),
    "Letzte 3 Monate" : MessageLookupByLibrary.simpleMessage("Últimos 3 meses"),
    "Letzte 3 Tage" : MessageLookupByLibrary.simpleMessage("Últimos 3 dias"),
    "Letzte 3 Wochen" : MessageLookupByLibrary.simpleMessage("Últimas 3 semanas"),
    "Letzte Unterzuckerung" : MessageLookupByLibrary.simpleMessage("Última Hipo"),
    "Letzte Woche" : MessageLookupByLibrary.simpleMessage("Última semana"),
    "Letzten Messwert in der Titelzeile anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar o último valor de glicose na barra de títulos"),
    "Letzter Monat" : MessageLookupByLibrary.simpleMessage("Mês anterior"),
    "Loopdaten verbergen (die auf diese Art markierten Optionen ignorieren)" : MessageLookupByLibrary.simpleMessage("Ocultar dados do loop (ignorar as opções marcadas desta forma)"),
    "Löschen" : MessageLookupByLibrary.simpleMessage("Excluir"),
    "Mahlzeitenbolus_bolus to handle a meal" : MessageLookupByLibrary.simpleMessage("Bolus da refeição"),
    "Man kann jetzt mehrere Benutzer anlegen. Das ist nützlich, um mehrere Nightscout-Instanzen auszuwerten (z.B. für Ärzte, Betreuer oder den Entwickler dieser Software)" : MessageLookupByLibrary.simpleMessage("Agora pode criar vários usuários. Isto é útil para analisar várias instâncias do nightscout (por exemplo, para médicos, cuidadores ou o desenvolvedor deste software)"),
    "Material mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Material com locais decimais"),
    "Max" : MessageLookupByLibrary.simpleMessage("Máx"),
    "Max Mustermann" : MessageLookupByLibrary.simpleMessage("John Smith"),
    "Maximaler Glukosewert in Grafiken:" : MessageLookupByLibrary.simpleMessage("Valor máximo de Glicose em gráficos:"),
    "Median" : MessageLookupByLibrary.simpleMessage("Mediano"),
    "Mehr gibt es dazu eigentlich nicht zu sagen." : MessageLookupByLibrary.simpleMessage("Não há mais nada a dizer."),
    "Mehrfache Datensätze kennzeichnen" : MessageLookupByLibrary.simpleMessage("Negar datasets repetidos"),
    "Menü" : MessageLookupByLibrary.simpleMessage("Menu"),
    "Mess-\nwerte" : MessageLookupByLibrary.simpleMessage("Valores"),
    "Min" : MessageLookupByLibrary.simpleMessage("Min"),
    "Min / Max Werte anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar valores min. / max"),
    "Mit Google Drive synchronisieren" : MessageLookupByLibrary.simpleMessage("Sincronizar com o Google Drive"),
    "Mittel-\nwert" : MessageLookupByLibrary.simpleMessage("Média"),
    "Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|Sonntag" : MessageLookupByLibrary.simpleMessage("Segunda-feira|Terça-feira|Quarta-feira|Quinta-feira|Sexta-feira|Sábado|Domingo"),
    "Mo|Di|Mi|Do|Fr|Sa|So" : MessageLookupByLibrary.simpleMessage("Seg|Ter|Qua|Qui|Sex|Sab|Dom"),
    "Nacht (21:00 - 05:59)" : MessageLookupByLibrary.simpleMessage("Noite (21:00 - 05:59)"),
    "Nahe zusammen liegende Werte aufsummieren" : MessageLookupByLibrary.simpleMessage("Valores Acumulados próximo do intervalo Limite"),
    "Name" : MessageLookupByLibrary.simpleMessage("Nome"),
    "Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat." : MessageLookupByLibrary.simpleMessage("Nome, aniversário, insulina e data de início da diabetes agora podem ser deixados em branco sem qualquer impacto negativo na apresentação no PDF."),
    "Nein" : MessageLookupByLibrary.simpleMessage("Não"),
    "Neue Option im Profil, um fortlaufende Zeiten mit gleichen Werten zu einem Eintrag zusammen zu fassen." : MessageLookupByLibrary.simpleMessage("Nova opção no perfil para combinar horários consecutivos com os mesmos valores numa única entrada."),
    "Neuer Parameter für die Tagesgrafik, der festlegt, ob die Linien für die Notizen unter der Grafik bis zur Glukosekurve gezeichnet werden sollen oder nicht." : MessageLookupByLibrary.simpleMessage("Novo parâmetro do gráfico diário que determina se deve ou não desenhar as linhas para as notas abaixo do gráfico até a curva de glicose."),
    "Neues PDF für eine Wochengrafik hinzugefügt, auf der die Glukosekurven der Woche übereinander gelegt werden." : MessageLookupByLibrary.simpleMessage("Adicionamos um novo PDF para gráficos semanais onde as curvas de glicose da semana são mostradas de uma só vez."),
    "Neuester Tag zuerst" : MessageLookupByLibrary.simpleMessage("Dia mais recente primeiro"),
    "Niedrigster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("Valor mais baixo no período"),
    "Nightscout Berichte" : MessageLookupByLibrary.simpleMessage("Relatórios do Nightscout"),
    "Nightscout Reporter ist nun auch grösstenteils in Spanisch und Polnisch verfügbar. Entsprechende Buttons wurden dem Hauptmenü hinzugefügt. Danke an die fleissigen Übersetzer :)." : MessageLookupByLibrary.simpleMessage("A maior parte do Nightscout Reporter agora é traduzida para espanhol e polonês. Botões correspondentes foram adicionados ao menu principal. Graças aos tradutores :)."),
    "Nightscout Reporter kann nun auch auf Portugiesisch verwendet werden." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter pode agora ser usado em Português."),
    "Nightscout Reporter kann nun auch in Japanisch verwendet werden." : MessageLookupByLibrary.simpleMessage("Nightscout Reporter pode agora ser usado em Japonês."),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("Site Nightscout"),
    "Nightscout Url in der Fusszeile des PDFs anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar Url do Nightscout no rodapé dos PDFs"),
    "Normal" : MessageLookupByLibrary.simpleMessage("Normal"),
    "Notiz" : MessageLookupByLibrary.simpleMessage("Nota"),
    "Notiz-Linien bis zur Kurve zeichnen" : MessageLookupByLibrary.simpleMessage("Desenhar linhas das notas para a curva"),
    "Notizen" : MessageLookupByLibrary.simpleMessage("Notas"),
    "Nur letzte Basalrate ausgeben" : MessageLookupByLibrary.simpleMessage("Mostrar apenas a última taxa de basal"),
    "Nur letztes Profil ausgeben" : MessageLookupByLibrary.simpleMessage("Mostrar apenas o último perfil"),
    "Nur mehrfache Datensätze anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar apenas datasets repetidos"),
    "Ok" : MessageLookupByLibrary.simpleMessage("Ok"),
    "Optionen" : MessageLookupByLibrary.simpleMessage("Opções"),
    "Optionen für die PDFs, die eine eindeutige Beziehung zu einem laufenden Loop haben, werden nun in Blau dargestellt. Das vereinfacht es, PDFs zu erstellen, denen man nicht ohne Weiteres entnehmen kann, dass ein Loop vorliegt. Dazu müssen nur die Haken bei den blauen Optionen entfernt werden." : MessageLookupByLibrary.simpleMessage("As opções para PDFs que têm um relacionamento único com loop agora são exibidas em azul. Isso facilita a criação de PDFs onde você não pode facilmente deduzir que há um loop em execução. Tudo o que precisa fazer é desmarcar as opções azuis."),
    "PDF anzeigen" : MessageLookupByLibrary.simpleMessage("Visualizar PDF"),
    "PDF erneut erzeugen" : MessageLookupByLibrary.simpleMessage("Criar PDF novamente"),
    "PDF erzeugen" : MessageLookupByLibrary.simpleMessage("Crear PDF"),
    "PDF für Profildaten" : MessageLookupByLibrary.simpleMessage("PDF para dados do perfil"),
    "PDF herunterladen (bei einigen Browsern benötigt)" : MessageLookupByLibrary.simpleMessage("Download PDF (necessário para alguns browsers)"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("Abrir PDF na mesma janela"),
    "PGR" : MessageLookupByLibrary.simpleMessage("PGR"),
    "Patient Glykämischer Status (PGS)" : MessageLookupByLibrary.simpleMessage("Patient Glycemic Status (PGS)"),
    "Pausiert" : MessageLookupByLibrary.simpleMessage("Em pausa"),
    "Polski" : MessageLookupByLibrary.simpleMessage("Polaco"),
    "Português" : MessageLookupByLibrary.simpleMessage("Português"),
    "Problem auf GitHub melden" : MessageLookupByLibrary.simpleMessage("Reportar um problema ao GitHub"),
    "Profil" : MessageLookupByLibrary.simpleMessage("Perfil"),
    "Profil-Basalrate" : MessageLookupByLibrary.simpleMessage("Perfil da Taxa de Basal"),
    "Profileinstellungen" : MessageLookupByLibrary.simpleMessage("Definições do Perfil"),
    "Profilwechsel" : MessageLookupByLibrary.simpleMessage("TrocaPerfil"),
    "Protokoll" : MessageLookupByLibrary.simpleMessage("Registos"),
    "Prozent" : MessageLookupByLibrary.simpleMessage("Porcentagem"),
    "Quelle: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)" : MessageLookupByLibrary.simpleMessage("Source: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)"),
    "Querformat" : MessageLookupByLibrary.simpleMessage("Paisagem"),
    "Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse." : MessageLookupByLibrary.simpleMessage("Ordem das páginas PDF alterada - diagrama do percentil vem após análise."),
    "Reservoirwechsel" : MessageLookupByLibrary.simpleMessage("Mudança do reservatório"),
    "SMB" : MessageLookupByLibrary.simpleMessage("SMB"),
    "SMB Werte anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar valores SMB"),
    "SMB an der Kurve platzieren" : MessageLookupByLibrary.simpleMessage("Coloque o SMB na curva"),
    "Schliessen" : MessageLookupByLibrary.simpleMessage("Fechar"),
    "Schliessen Button im Nachrichtenbereich hinzugefügt." : MessageLookupByLibrary.simpleMessage("Botão Fechar adicionado na área de mensagem."),
    "Sechs Monate vorher" : MessageLookupByLibrary.simpleMessage("Seis meses antes"),
    "Sechzehn" : MessageLookupByLibrary.simpleMessage("Dezasseis"),
    "Sekunden anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar segundos"),
    "Sensorwechsel" : MessageLookupByLibrary.simpleMessage("Mudança do Sensor"),
    "Shortcut anlegen" : MessageLookupByLibrary.simpleMessage("Adicionar atalho"),
    "Shortcut ändern" : MessageLookupByLibrary.simpleMessage("Editar atalho"),
    "Shortcuts" : MessageLookupByLibrary.simpleMessage("Atalhos"),
    "Slovenský" : MessageLookupByLibrary.simpleMessage("Eslovaco"),
    "Soll der Benutzer mit der URL" : MessageLookupByLibrary.simpleMessage("O usuário deve usar o URL"),
    "Soll der Shortcut mit der Bezeichnung" : MessageLookupByLibrary.simpleMessage("`Apresentar o atalho com o título"),
    "Soll der Zeitraum" : MessageLookupByLibrary.simpleMessage("Apresentar o período"),
    "Soll die Einheit zur Glukosemessung" : MessageLookupByLibrary.simpleMessage("Deve a unidade para valor da glucose"),
    "Soll die Formularauswahl mit der aktuellen Auswahl ersetzt werden?" : MessageLookupByLibrary.simpleMessage("A seleção do formulário deve ser substituída pela seleção atual?"),
    "Soll die URL" : MessageLookupByLibrary.simpleMessage("Apagando Url"),
    "Spalte HbA1c" : MessageLookupByLibrary.simpleMessage("Coluna HbA1c"),
    "Spalte HbA1c zu Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Adicionada coluna HbA1c às estatísticas diárias"),
    "Spalte Messwerte" : MessageLookupByLibrary.simpleMessage("Coluna do Valor"),
    "Spalte Standardabweichung" : MessageLookupByLibrary.simpleMessage("Desvio padrão de coluna"),
    "Spalte Variationskoeffizient" : MessageLookupByLibrary.simpleMessage("Coluna do coeficiente de variação"),
    "Spalten Perzentile" : MessageLookupByLibrary.simpleMessage("Colunas dos percentis"),
    "Spalten für 10% und 90% anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar colunas para 10% e 90%"),
    "Spaltenbreite der Informationen in der Analyse erhöht" : MessageLookupByLibrary.simpleMessage("Largura da coluna das informações na análise aumentada"),
    "Speichern" : MessageLookupByLibrary.simpleMessage("Guardar"),
    "Spenden" : MessageLookupByLibrary.simpleMessage("Donate"),
    "Standard_theme selection - standard" : MessageLookupByLibrary.simpleMessage("Padrão"),
    "Standardabweichung" : MessageLookupByLibrary.simpleMessage("Desvio padrão"),
    "Standardabweichung statt Anzahl" : MessageLookupByLibrary.simpleMessage("Desvio padrão em vez da contagem de valor"),
    "Standardbereich mit feinerer Abstufung" : MessageLookupByLibrary.simpleMessage("Intervalo padrão com ajuste preciso"),
    "Standardgrenzwerte" : MessageLookupByLibrary.simpleMessage("Intervalo Padrão"),
    "Startstunde" : MessageLookupByLibrary.simpleMessage("Hora de inicio"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("DesvP"),
    "Stunden" : MessageLookupByLibrary.simpleMessage("horas"),
    "Stündliche Statistik" : MessageLookupByLibrary.simpleMessage("Estatísticas por hora"),
    "Summe" : MessageLookupByLibrary.simpleMessage("Sumatório"),
    "Summen für Bolus Insulin, Basalrate für den Tag und Basalrate aus dem Profil zur Tagesgrafik hinzugefügt" : MessageLookupByLibrary.simpleMessage("Somatório para insulina do bólus, taxa de basal para o dia e basal a partir do perfil adicionado ao gráfico diário"),
    "Symbole (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Símbolos (cateteres etc.)"),
    "Synchronisierung aufheben" : MessageLookupByLibrary.simpleMessage("Cancelar sincronização"),
    "TDD" : MessageLookupByLibrary.simpleMessage("TDD"),
    "TDD anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar TDD"),
    "Tabelle" : MessageLookupByLibrary.simpleMessage("Tabela"),
    "Tabelle mit Glukosewerten" : MessageLookupByLibrary.simpleMessage("Tabela com valores de glicose"),
    "Tag (08:00 - 17:59)" : MessageLookupByLibrary.simpleMessage("Day (08:00 - 17:59)"),
    "Tages-Basalrate" : MessageLookupByLibrary.simpleMessage("Taxa de Basal Diária"),
    "Tagesanalyse" : MessageLookupByLibrary.simpleMessage("Análise Diária"),
    "Tagesbasalrate verwenden" : MessageLookupByLibrary.simpleMessage("Usar taxa basal diária"),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("Gráfico Diário"),
    "Tagesgrafikparameter zur Anzeige der Legende" : MessageLookupByLibrary.simpleMessage("Gráficos diários para exibir notas"),
    "Tagesgrafikparameter zur Anzeige von Notizen" : MessageLookupByLibrary.simpleMessage("Gráficos diários para exibir notas"),
    "Tagesgrafikparameter zur umgekehrten Sortierung hinzugefügt. Die Tage werden damit beginnend mit dem höchsten Datum ausgegeben." : MessageLookupByLibrary.simpleMessage("Adicionados parâmetros dos gráficos diários para ordenação inversa. Os gráficos diários são criados começando com a data mais alta."),
    "Tagesnamen in Grafik anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar o nome dos dias no gráfico"),
    "Tagesprofil" : MessageLookupByLibrary.simpleMessage("Perfil diário"),
    "Tagesstartprofil anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar perfil ao início do dia"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("Estatísticas Diárias"),
    "Tagesstunden" : MessageLookupByLibrary.simpleMessage("Dias/Horas"),
    "Tagestrend" : MessageLookupByLibrary.simpleMessage("Tendência diária"),
    "Temporäre Basalraten" : MessageLookupByLibrary.simpleMessage("Taxa de Basal temporária"),
    "Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt" : MessageLookupByLibrary.simpleMessage("Taxas basais temporárias com valores absolutos setecentos são exibidas corretamente"),
    "Temporäre Overrides" : MessageLookupByLibrary.simpleMessage("Substituições temporárias"),
    "Temporäre Profilwechsel werden jetzt erkannt und in der Tagesgrafik korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("As alterações no perfil temporário agora são reconhecidas e exibidas corretamente nos gráficos diários."),
    "Temporäre Ziele" : MessageLookupByLibrary.simpleMessage("Alvos temporários"),
    "Titelangaben für Datumsbereiche auf den PDFs vereinheitlicht" : MessageLookupByLibrary.simpleMessage("Informações do título para os intervalos de datas nos PDFs estão unificadas"),
    "Trend" : MessageLookupByLibrary.simpleMessage("Tendência"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("Hora"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("Hora"),
    "Unbegrenzt" : MessageLookupByLibrary.simpleMessage("Ilimitado"),
    "Unterzuckerungen anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar hipoglicemia"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("Url do Nightscout-API (por exemplo, https://xxx.herokuapp.com)"),
    "VarK\nin %" : MessageLookupByLibrary.simpleMessage("CV em %"),
    "Verbinde zu Google Drive..." : MessageLookupByLibrary.simpleMessage("Conectar ao Google Drive..."),
    "Verbinde zu Google..." : MessageLookupByLibrary.simpleMessage("Conectar ao Google..."),
    "Verbindung zu Google Drive herstellen" : MessageLookupByLibrary.simpleMessage("Conectar ao Google Drive"),
    "Verbindung zu Google Drive trennen" : MessageLookupByLibrary.simpleMessage("Desconectar do Google Drive"),
    "Vergleich" : MessageLookupByLibrary.simpleMessage("Comparação"),
    "Version" : MessageLookupByLibrary.simpleMessage("Versão"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("Distribuição"),
    "Verzögerter Bolus" : MessageLookupByLibrary.simpleMessage("Bólus atrasado"),
    "Vier" : MessageLookupByLibrary.simpleMessage("Quatro"),
    "ViewWhatsnewComponent0__message_11" : m0,
    "Von" : MessageLookupByLibrary.simpleMessage("de"),
    "Vor der Erzeugung eines PDFs wird noch ein Dialog angezeigt, auf dem man Parameter für alle erzeugten PDFs eingeben kann. Man kann dort den Zielbereich auf den Standardbereich festlegen, den Ärzte gerne sehen. Das hat Auswirkungen auf alle Darstellungen des Zielbereichs, sowie auf die Verteilung der Werte innerhalb und ausserhalb des Zielbereichs. Man kann dort auch den Maximalwert für Glukose in Grafiken festlegen. Dieser Wert wird in der Tagesgrafik, dem Perzentil Diagramm und der Wochengrafik verwendet. Wenn er auf \"Automatisch\" gesetzt wird, wird der Maximalwert wie bisher auch aus den vorhandenen Daten ermittelt. Ausserdem kann man hier angeben, ob man den aktuellen Zeitraum erzeugen möchte oder einen Vergleichszeitraum. Das ist nützlich, um dem Arzt die Gegenüberstellung von Werten der Vergangenheit und jetzt zu zeigen." : MessageLookupByLibrary.simpleMessage("Antes de criar um PDF, é exibido uma caixa de parâmetros no qual pode inserir parâmetros para todos os PDFs criados. Pode definir o intervalo-alvo para o valor padrão que os médicos gostam de ver. Isto tem um impacto em todas as representações do intervalo alvo, bem como na distribuição dos valores dentro e fora do intervalo alvo. Você também pode definir o valor máximo para a glicose nos gráficos. Esse valor é usado nos gráficos diários, no diagrama percentual e nos gráficos semanais. Se estiver definido como \"Automático\", o valor máximo é determinado a partir dos dados existentes, como antes. Você também pode especificar aqui se deseja gerar o período atual ou um período de comparação. Isto é útil para mostrar ao médico uma comparação do passado e dos valores actuais."),
    "Warnung" : MessageLookupByLibrary.simpleMessage("Atenção"),
    "Warum werde ich mit mehreren Buttons genervt, statt eine einzelne PDF angezeigt zu kriegen?" : MessageLookupByLibrary.simpleMessage("Por que é que existe vários botões em vez de obter um único PDF?"),
    "Was bisher geschah..." : MessageLookupByLibrary.simpleMessage("O que aconteceu até agora..."),
    "Wechsel" : MessageLookupByLibrary.simpleMessage("Troca"),
    "Wechsel (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("Mudanças (cateteres etc.)"),
    "Weihnachten_theme selection - christmas" : MessageLookupByLibrary.simpleMessage("Natal"),
    "Wenn Sonderzeichen in den Daten vorhanden sind (z.B. Smileys in den Notizen), führte das zu einem Absturz während der PDF-Erstellung. Das wurde behoben, indem diese Sonderzeichen aus der Ausgabe entfernt werden." : MessageLookupByLibrary.simpleMessage("Se caracteres especiais estiverem presentes nos dados (por exemplo, sorrisos nas notas), isso causou uma falha durante a criação do PDF. Isso foi corrigido removendo esses caracteres especiais do resultado."),
    "Wenn auf der Profilseite leere Spalten vorkommen, führt das nicht mehr zu einer leeren Seite." : MessageLookupByLibrary.simpleMessage("Se houver colunas vazias na página de perfil, isso não leva mais a uma página vazia."),
    "Wenn das erzeugte PDF zu gross wird, wird es nun auf mehrere PDF-Dateien aufgeteilt. In diesem Fall wird es nicht direkt geöffnet, sondern es wird eine Liste mit durchnummerierten Buttons angezeigt. Diese Buttons öffnen bei Betätigung das entsprechende PDF und erhalten einen Haken, um anzuzeigen, dass es geöffnet wurde. Das sollte es erleichtern, die PDFs nacheinander zu öffnen, weil normalerweise der Browser im Hintergrund verschwindet, wenn ein neues Fenster aufgemacht wird." : MessageLookupByLibrary.simpleMessage("Se o PDF gerado for muito grande, ele será dividido em vários ficheiros PDF. Neste caso, não vai abrir diretamente, mas vai ser mostrada uma lista de botões numerados. Estes botões abrem o PDF correspondente e recebem uma marcação indicando que foi aberta. Isso deve tornar mais fácil a abertura dos PDFs, porque geralmente a janela do browser atual é movida para o plano de fundo quando uma nova janela é aberta."),
    "Wenn der Zeitraum leer ist, wird der Button für die Auswahl deutlich markiert und in dem Dialog zur Auswahl wird in der Titelzeile ein Hinweis darauf angezeigt." : MessageLookupByLibrary.simpleMessage("Se o período estiver vazio, o botão para a seleção está marcado e na caixa de diálogo para escolher uma indicação aparecerá na barra de títulos."),
    "Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet" : MessageLookupByLibrary.simpleMessage("Se os limiares no Nightscout (BG_TARGET_BOTTOM e BG_TARGET_TOP) são iguais a 70 e 180, então a área para os alvos padrão será ocultada na página de análise"),
    "Wenn die Synchronisierung mit Google Drive aufgehoben wird, wird die Berechtigung nun korrekt zurückgesetzt. Wenn man sich danach wieder synchronisieren will, werden nochmal die Berechtigungen abgefragt." : MessageLookupByLibrary.simpleMessage("Quando a sincronização com o Google Drive é cancelada, a autorização agora é redefinida corretamente. Se você quiser sincronizar novamente depois, as autorizações são solicitadas novamente."),
    "Wenn im CGP ein Wert den Maximalwert der Skala überschreitet, wird die entsprechende Ecke mit einem gelben Kreis markiert." : MessageLookupByLibrary.simpleMessage("Se um valor no CGP exceder o valor máximo da escala, o canto correspondente é marcado com um círculo amarelo."),
    "Wenn in den Einstellungen eine Verbindung zum Google-Konto hergestellt wird, werden die Cookies von Google verwendet und die Daten nicht mehr im localStorage des Browsers gespeichert, sondern im AppStorage auf Google Drive. Auf diese Art kann man die Daten zentralisiert verwalten und hat diese in jedem Browser zur Verfügung, der mit dem angegebenen Google Konto verbunden ist." : MessageLookupByLibrary.simpleMessage("Quando as definições forem ligadas à conta do Google, Os cookies do Google são usados e os dados não são mais armazenados no localStorage do browser, mas no AppStorage no Google Drive. Desta forma, pode gerir os dados centralmente e disponibilizá-los em qualquer browser conectado à Conta do Google especificada."),
    "Wenn in den Einträgen Lücken von 15 Minuten oder mehr sind, führen diese zu einer Unterbrechung der Linie in der Tagesgrafik." : MessageLookupByLibrary.simpleMessage("Se houver lacunas nas entradas de 15 minutos ou mais, haverá também uma lacuna no gráfico diário."),
    "Wenn in einem Profil mehr Zeiten erfasst wurden, als auf eine Seite passen, wurden diese fortlaufend in die nächste Seite hineingeschrieben. Jetzt wird an geeigneter Stelle eine neue Seite ausgegeben." : MessageLookupByLibrary.simpleMessage("Se foram registados mais vezes num perfil do que os que cabem numa página, eles superavam o conteúdo da próxima página. Agora, nova página é criada conforme necessário."),
    "Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt." : MessageLookupByLibrary.simpleMessage("Se nenhum dado estiver disponível, páginas em branco serão geradas com uma dica apropriada."),
    "Wert" : MessageLookupByLibrary.simpleMessage("Valor"),
    "Wert & Prozent" : MessageLookupByLibrary.simpleMessage("Valor & Porcentagem"),
    "Werte über dem Maximum als Pfeile darstellen" : MessageLookupByLibrary.simpleMessage("Mostrar valores acima do máximo como setas"),
    "Willkommen" : MessageLookupByLibrary.simpleMessage("Bem-vindo"),
    "Willkommen bei Nightscout Reporter!" : MessageLookupByLibrary.simpleMessage("Bem-vindo ao Nightscout Reporter!"),
    "Wochengrafik" : MessageLookupByLibrary.simpleMessage("Gráficos semanais"),
    "Zeilen mit gleichen Werten zusammenfassen" : MessageLookupByLibrary.simpleMessage("Combinar entradas com os mesmos valores"),
    "Zeitraum" : MessageLookupByLibrary.simpleMessage("Período"),
    "Zeitraum festlegen" : MessageLookupByLibrary.simpleMessage("Definir o período"),
    "Zeitraum:" : MessageLookupByLibrary.simpleMessage("Período:"),
    "Zeitzone" : MessageLookupByLibrary.simpleMessage("Fuso horário"),
    "Zielbereich" : MessageLookupByLibrary.simpleMessage("Intervalo alvo"),
    "Zielbereich mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("Intervalo alvo com casas decimais"),
    "Zielwert anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar o valor alvo"),
    "Zugriffsschlüssel" : MessageLookupByLibrary.simpleMessage("Token de acesso"),
    "Zur Berechnung der Analyse, Tagesstatistik und Tagesgrafik wird nun die gleiche Datenbasis verwendet, so dass die Werte auf allen PDFs gleich sind." : MessageLookupByLibrary.simpleMessage("A mesma base de dados é utilizada para calcular a análise, as estatísticas diárias e os gráficos diários, de modo a que os valores sejam os mesmos em todos os PDFs."),
    "Zur Kachelansicht" : MessageLookupByLibrary.simpleMessage("Para a visualização em mosáico"),
    "Zur Listenansicht" : MessageLookupByLibrary.simpleMessage("Para a visualização em lista"),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("Opções adicionais"),
    "Zusätzliche Informationen zu den PDFs und im UI hinzugefügt" : MessageLookupByLibrary.simpleMessage("adicionou informações adicionais sobre os PDFs e na interface do usuário"),
    "Zusätzliche Spalte anzeigen" : MessageLookupByLibrary.simpleMessage("Mostrar coluna adicional"),
    "Zwei" : MessageLookupByLibrary.simpleMessage("Dois"),
    "_msgPageCount" : m1,
    "_msgPageCountEst" : m2,
    "ab 4,6" : MessageLookupByLibrary.simpleMessage("a partir de 4,6"),
    "bis" : MessageLookupByLibrary.simpleMessage("até"),
    "dd.MM.yyyy" : MessageLookupByLibrary.simpleMessage("dd/MM/yyyy"),
    "ersetzt werden?" : MessageLookupByLibrary.simpleMessage("?"),
    "extrem hohes Risiko" : MessageLookupByLibrary.simpleMessage("risco extremamente alto"),
    "g / Stunde" : MessageLookupByLibrary.simpleMessage("g / hora"),
    "geringes Risiko" : MessageLookupByLibrary.simpleMessage("risco baixo"),
    "gesch. HbA1c" : MessageLookupByLibrary.simpleMessage("est. HbA1c"),
    "hohes Risiko" : MessageLookupByLibrary.simpleMessage("risco alto"),
    "https://nightscout-reporter.zreptil.de/beta" : MessageLookupByLibrary.simpleMessage("https://nightscout-reporter.zreptil.de/beta"),
    "iOS Loop missbraucht die Profiltabelle dazu, seine eigenen Settings zu speichern, was bei Benutzern dieser Software dazu führte, dass die Tabelle Profil nicht korrekt geladen werden kann. Deshalb gibt es jetzt in den Einstellungen die Möglichkeit, die Anzahl der Datensätze, die aus der Profiltabelle geladen werden einzuschränken." : MessageLookupByLibrary.simpleMessage("iOS Loop utiliza indevidamente a tabela perfil para salvar suas próprias configurações. o que para os usuários deste software significava que a tabela de perfil não pôde ser carregada corretamente. Portanto, nas configurações há agora a opção de restringir o número de registos de dados carregados a partir da tabela de perfil."),
    "mg/dL" : MessageLookupByLibrary.simpleMessage("mg/dL"),
    "mit dem Zeitraum" : MessageLookupByLibrary.simpleMessage("ser substituído por um período"),
    "mit der Einheit" : MessageLookupByLibrary.simpleMessage("com a unidade"),
    "mmol/L" : MessageLookupByLibrary.simpleMessage("mmol/L"),
    "moderates Risiko" : MessageLookupByLibrary.simpleMessage("risco moderado"),
    "msgAccessTokenHint" : m3,
    "msgBasalInfo" : m4,
    "msgBasalInfo1" : m5,
    "msgBasalrateDay" : m6,
    "msgBasalrateProfile" : m7,
    "msgBolusInsulin" : m8,
    "msgCV" : m9,
    "msgCalculatingDay" : m10,
    "msgCalibration" : m11,
    "msgCarbBolusInsulin" : m12,
    "msgCarbs" : m13,
    "msgCatheterDays" : m14,
    "msgChangedEntry" : m15,
    "msgCheckUser" : m16,
    "msgCorrectBolusInsulin" : m17,
    "msgCount" : m18,
    "msgDaySum" : m19,
    "msgDuration" : m20,
    "msgEndDateHint" : m21,
    "msgFactorEntry" : m22,
    "msgFormsText" : m23,
    "msgGVIBad" : m24,
    "msgGVIGood" : m25,
    "msgGVINone" : m26,
    "msgGVIVeryGood" : m27,
    "msgHYPER" : m28,
    "msgHYPERInfo" : m29,
    "msgHYPO" : m30,
    "msgHYPOInfo" : m31,
    "msgHigh" : m32,
    "msgHistorical" : m33,
    "msgHypoTitle" : m34,
    "msgISF" : m35,
    "msgKH" : m36,
    "msgKHBE" : m37,
    "msgLegendTDD" : m38,
    "msgLoadingData" : m39,
    "msgLoadingDataFor" : m40,
    "msgLogMicroBolus" : m41,
    "msgLogOverride" : m42,
    "msgLogSMB" : m43,
    "msgLogTempBasal" : m44,
    "msgLogTempBasalAbsolute" : m45,
    "msgLogTempTarget" : m46,
    "msgLow" : m47,
    "msgMBG" : m48,
    "msgMEAN" : m49,
    "msgMEANInfo" : m50,
    "msgPGSBad" : m51,
    "msgPGSGood" : m52,
    "msgPGSVeryBad" : m53,
    "msgPGSVeryGood" : m54,
    "msgProfileSwitch" : m55,
    "msgProfileSwitchDuration" : m56,
    "msgReadingsInMinutes" : m57,
    "msgReadingsPerDay" : m58,
    "msgReadingsPerHour" : m59,
    "msgReservoirDays" : m60,
    "msgSMBInsulin" : m61,
    "msgSensorDays" : m62,
    "msgStandardLimits" : m63,
    "msgStartDateHint" : m64,
    "msgStdAbw" : m65,
    "msgTOR" : m66,
    "msgTORInfo" : m67,
    "msgTarget" : m68,
    "msgTargetArea" : m69,
    "msgTargetValue" : m70,
    "msgTimeOfDay24" : m71,
    "msgTimeOfDayAM" : m72,
    "msgTimeOfDayPM" : m73,
    "msgTooMuchProfiles" : m74,
    "msgTooMuchProfilesPrefix" : m75,
    "msgValidFrom" : m76,
    "msgValidRange" : m77,
    "msgValidTo" : m78,
    "msgValuesAbove" : m79,
    "msgValuesBelow" : m80,
    "msgValuesIn" : m81,
    "msgValuesNorm" : m82,
    "msgValuesNormHigh" : m83,
    "msgValuesNormLow" : m84,
    "msgValuesVeryHigh" : m85,
    "msgValuesVeryLow" : m86,
    "ok" : MessageLookupByLibrary.simpleMessage("ok"),
    "sehr geringes Risiko" : MessageLookupByLibrary.simpleMessage("risco muito baixo"),
    "tl;dr" : MessageLookupByLibrary.simpleMessage("tl;dr"),
    "verwerfen" : MessageLookupByLibrary.simpleMessage("descartar"),
    "vom Benutzer wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("Tens a certeza?"),
    "wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("deseja apagar?"),
    "zu Vergleichszwecken (z.B. Arzt)" : MessageLookupByLibrary.simpleMessage("para fins de comparação (por exemplo, doutor)"),
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("Média de Basal por dia"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("Média de Bolus por dia"),
    "Ø ICR/Stunde" : MessageLookupByLibrary.simpleMessage("Média ICR/Hora"),
    "Ø ISF/Stunde" : MessageLookupByLibrary.simpleMessage("Média ISF/Hour"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("Média de Insulina por dia"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("Média de Insulina rácio"),
    "Ø KH pro Mahlzeit" : MessageLookupByLibrary.simpleMessage("Avg. carbs per day"),
    "Ø KH pro Tag" : MessageLookupByLibrary.simpleMessage("Média de Hidratos de carbono por dia"),
    "Ø Microbolus pro Tag" : MessageLookupByLibrary.simpleMessage("Média de Microbolus por dia"),
    "Ø Zuckerwert" : MessageLookupByLibrary.simpleMessage("Glucose média"),
    "Überprüfe Zugriff auf Nightscout ..." : MessageLookupByLibrary.simpleMessage("A verificar acesso ao Nightscout ..."),
    "Übersetzungen korrigiert" : MessageLookupByLibrary.simpleMessage("Traduções corretas"),
    "日本の" : MessageLookupByLibrary.simpleMessage("Japonês")
  };
}
