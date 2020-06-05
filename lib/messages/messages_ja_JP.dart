// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ja_JP locale. All the
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
  get localeName => 'ja_JP';

  static m0(count) => "${Intl.plural(count, zero: '', one: '1 ページ', other: '${count} ページ')}";

  static m1(count) => "${Intl.plural(count, zero: '', one: '1 ページ以上', other: '${count} ページ以上')}";

  static m2(time) => "基礎単位は ${time} から有効で、一時的な変更はありません。";

  static m3(unit) => "This basalrate was active on ${unit}.";

  static m4(value) => "基礎単位：日(${value})";

  static m5(value) => "基礎単位：プロファイル設定(${value})";

  static m6(value) => "ボーラス インスリン(${value})";

  static m7(value) => "血糖変動係数${value}%]";

  static m8(scale, intercept, slope) => "キャリブレーション (scale ${scale} / intercept ${intercept} / slope ${slope})";

  static m9(value) => "食事ボーラス(${value})";

  static m10(value) => "炭水化物 (${value}g)";

  static m11(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} 日間/カニューレ)', other: '(${txt} 日間/カニューレ)')}";

  static m12(name, from, to) => "${name} ${from} => ${to}";

  static m13(url) => "${url} へのアクセスを確認中…";

  static m14(value) => "補正ボーラス(${value})";

  static m15(value) => "${Intl.plural(value, zero: '値なし', one: '1個', other: '${value} 個')}";

  static m16(value) => "${value} 日";

  static m17(hours, minutes) => "${hours} 時間 ${minutes} 分";

  static m18(beg, end) => "${beg} - ${end}";

  static m19(max) => "不良 (${max} 超)";

  static m20(min, max) => "良 (${min} to ${max})";

  static m21(min) => "利用不可(${min} 分未満)";

  static m22(min, max) => "良好 (${min}～${max})";

  static m23(unit, value) => "強い高血糖\n[${unit} x min²]";

  static m24(unit) => "高血糖の強さ/日(${unit} 以上)";

  static m25(unit, value) => "強い低血糖\n[${unit} x min²]";

  static m26(unit) => "低血糖の強さ/日(${unit} 以下)";

  static m27(value) => "血糖値高${value}";

  static m28(value) => "履歴 ${value}";

  static m29(value) => "低血糖 (< ${value})";

  static m30(unit) => "インスリン効果値(ISF) 1 IUでX ${unit} の血糖値が下がる";

  static m31(value) => "${value}g";

  static m32(value) => "g CH (${value} BU)";

  static m33(value) => "1日の総インスリン投与量 (${value})";

  static m34(error, stacktrace) => "データ読込エラー:${error}${stacktrace}";

  static m35(date) => "データを${date} より取得しています…";

  static m36(insulin, unit) => "Microbolus ${insulin} ${unit}";

  static m37(insulin, unit) => "SMB${insulin}${unit}";

  static m38(percent, duration) => "一時基礎量 ${percent}%/${duration} 分";

  static m39(value, duration) => "temp. Basal ${value} / ${duration} min";

  static m40(target, duration, reason) => "目標範囲${target}、${duration} 分、理由：${reason}";

  static m41(value) => "血糖値低 ${value}";

  static m42(gluc, unit) => "血糖値 ${gluc}${unit}";

  static m43(unit, value) => "平均血糖値[${unit}]";

  static m44(hba1c) => "指定期間の平均血糖値";

  static m45(min, max) => "不良 (${min} to ${max})";

  static m46(min, max) => "良好 (${min} to ${max})";

  static m47(max) => "とても悪い ( ${max} 超)";

  static m48(min) => "優秀 (${min} 未満)";

  static m49(oldName, newName) => "プロフィール変更 - ${oldName} => ${newName}";

  static m50(oldName, newName, duration) => "プロフィール変更 - ${oldName} => ${newName} から ${duration} 分";

  static m51(howMany, fmt) => "${Intl.plural(howMany, zero: 'データがありません', one: '1件のデータ/分', other: '${fmt}分毎にデータ')}";

  static m52(howMany, fmt) => "${Intl.plural(howMany, zero: '値がありません', one: '1日あたり1データ', other: '1日あたり${fmt}データ')}";

  static m53(howMany, fmt) => "${Intl.plural(howMany, zero: 'データがありません', one: '1件のデータ/時間', other: '${fmt} 件のデータ/時間')}";

  static m54(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} 日間/リザーバー)', other: '(${txt} 日間/リザーバー)')}";

  static m55(value) => "SMB(${value})";

  static m56(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} 日間/センサー)', other: '(${txt} 日間/センサー)')}";

  static m57(low, high, unit) => "標準の目標範囲を使用 (${low} ${unit} - ${high} ${unit})";

  static m58(value) => "(標準偏差 ${value})";

  static m59(value) => "ToR [${value}分/時]";

  static m60(min, max) => "1日あたりの目標範囲外の時間${min} から${max}。";

  static m61(unit) => "血糖値目標範囲${unit}";

  static m62(min, max, units) => "目標範囲 (${min} - ${max} ${units})";

  static m63(value) => "目標値";

  static m64(time) => "${time}";

  static m65(time) => "午前${time}";

  static m66(time) => "午後${time}";

  static m67(begDate) => "${begDate} から有効";

  static m68(begDate, endDate) => "${begDate} から${endDate} まで有効";

  static m69(endDate) => "${endDate} まで有効";

  static m70(high) => "${high} 以上の値";

  static m71(low) => "${low} 未満の値";

  static m72(low, high) => "${low} から ${high} の値";

  static m73(low, high) => "目標範囲 (${low} - ${high})";

  static m74(value) => "高い値 (${value})";

  static m75(value) => "低い値 (${value})";

  static m76(value) => "非常に高い ( > ${value})";

  static m77(value) => "非常に低い値 (< ${value})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "0,0 bis 2,0" : MessageLookupByLibrary.simpleMessage("0,0 ～ 2,0"),
    "1 Minute" : MessageLookupByLibrary.simpleMessage("1 分"),
    "1 Stunde" : MessageLookupByLibrary.simpleMessage("1時間"),
    "1.0.0 - 20.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.0 - 2018/10/20"),
    "1.0.1 - 23.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.1 - 2018/10/23"),
    "1.0.2 - 23.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.2 - 2018/10/23"),
    "1.0.3 - 26.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.3 - 2018/10/26"),
    "1.0.4 - 28.10.2018" : MessageLookupByLibrary.simpleMessage("1.0.4 - 2018/10/28"),
    "1.1.0 - 09.11.2018" : MessageLookupByLibrary.simpleMessage("1.1.0 - 2018/11/09"),
    "1.1.1 - 19.11.2018" : MessageLookupByLibrary.simpleMessage("1.1.1 - 2018/11/19"),
    "1.1.2 - 08.01.2019" : MessageLookupByLibrary.simpleMessage("1.1.2 - 2019/08/01"),
    "1.2.0 - 21.01.2019" : MessageLookupByLibrary.simpleMessage("1.2.0 - 2019/01/21"),
    "1.2.1 - 22.01.2019" : MessageLookupByLibrary.simpleMessage("1.2.1 - 2019/01/22"),
    "1.2.10 - 18.04.2019" : MessageLookupByLibrary.simpleMessage("1.2.10 - 2019/04/18"),
    "1.2.11 - 17.05.2019" : MessageLookupByLibrary.simpleMessage("1.2.11 - 2019/05/17"),
    "1.2.2 - 24.01.2019" : MessageLookupByLibrary.simpleMessage("1.2.2 - 2019/01/24"),
    "1.2.3 - 04.02.2019" : MessageLookupByLibrary.simpleMessage("1.2.3 - 2019/04/02"),
    "1.2.4 - 12.02.2019" : MessageLookupByLibrary.simpleMessage("1.2.4 - 2019/02/12"),
    "1.2.5 - 25.03.2019" : MessageLookupByLibrary.simpleMessage("1.2.5 - 2019/03/25"),
    "1.2.6 - 27.03.2019" : MessageLookupByLibrary.simpleMessage("1.2.6 - 2019/03/27"),
    "1.2.7 - 28.03.2019" : MessageLookupByLibrary.simpleMessage("1.2.7 - 28/03/2019"),
    "1.2.8 - 11.04.2019" : MessageLookupByLibrary.simpleMessage("1.2.8 - 2019/04/11"),
    "1.2.9 - 15.04.2019" : MessageLookupByLibrary.simpleMessage("1.2.9 - 2019/4/15"),
    "1.3.0 - 19.08.2019" : MessageLookupByLibrary.simpleMessage("1.3.0 - 2019/08/19"),
    "1.3.1 - 22.08.2019" : MessageLookupByLibrary.simpleMessage("1.3.1 - 2019/08/22"),
    "1.3.2 - 05.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.2 - 2019/09/05"),
    "1.3.3 - 12.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.3 - 2019/09/12"),
    "1.3.4 - 17.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.4 - 2019/09/17"),
    "1.3.5 - 23.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.5 ‐ 2019/09/23"),
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
    "10% - 90% der Werte" : MessageLookupByLibrary.simpleMessage("値の10% - 90%"),
    "15 Minuten" : MessageLookupByLibrary.simpleMessage("15 分"),
    "2,1 bis 3,0" : MessageLookupByLibrary.simpleMessage("2,1 ～ 3,0"),
    "25%" : MessageLookupByLibrary.simpleMessage("25%"),
    "25% - 75% der Werte" : MessageLookupByLibrary.simpleMessage("値の25% - 75%"),
    "3,1 bis 4,0" : MessageLookupByLibrary.simpleMessage("3,1 ～ 4,0"),
    "30 Minuten" : MessageLookupByLibrary.simpleMessage("30 分"),
    "4,1 bis 4,5" : MessageLookupByLibrary.simpleMessage("4,1 ～ 4,5"),
    "5 Minuten" : MessageLookupByLibrary.simpleMessage("5 分"),
    "75%" : MessageLookupByLibrary.simpleMessage("75%"),
    "90%" : MessageLookupByLibrary.simpleMessage("90%"),
    "<br><br>Wenn diese URL geschützt ist, muss ausserdem der Zugriffsschlüssel korrekt definiert sein. Diesen erreicht man über \"Administrator-Werkzeuge\" auf der persönlichen Nightscout Seite." : MessageLookupByLibrary.simpleMessage("<br> <br> この URL が保護されているなら、アクセス・トークンも正しく定義されている必要があります。これは自分のナイトスカウトのページの「管理ツール」(Admin Tools)から行えます。"),
    "Absturz behoben, der auftrat, wenn kein passendes Profil für einen Zeitpunkt gefunden werden konnte" : MessageLookupByLibrary.simpleMessage("プロファイルが一定時間内に一致しない場合、クラッシュしていた問題が修正されました。"),
    "Acht" : MessageLookupByLibrary.simpleMessage("8"),
    "Alle Werte für den Tag anzeigen" : MessageLookupByLibrary.simpleMessage("1日のすべての値を表示"),
    "Alles" : MessageLookupByLibrary.simpleMessage("すべて"),
    "Allgemeines" : MessageLookupByLibrary.simpleMessage("全般"),
    "Als ersten Tag der Woche festlegen" : MessageLookupByLibrary.simpleMessage("週の始まりの曜日を選択"),
    "Ampullenwechsel" : MessageLookupByLibrary.simpleMessage("リザーバー交換"),
    "Anmelden" : MessageLookupByLibrary.simpleMessage("サインイン"),
    "Anmeldung bei Google..." : MessageLookupByLibrary.simpleMessage("Google にサインイン中..."),
    "Anmeldung erfolgreich" : MessageLookupByLibrary.simpleMessage("ログインしました"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("調整"),
    "Anzahl Ampullenwechsel" : MessageLookupByLibrary.simpleMessage("リザーバーの交換回数"),
    "Anzahl Katheterwechsel" : MessageLookupByLibrary.simpleMessage("注入場所変更回数"),
    "Anzahl Messungen" : MessageLookupByLibrary.simpleMessage("値数"),
    "Anzahl Sensorenwechsel" : MessageLookupByLibrary.simpleMessage("センサー変更回数"),
    "Anzahl Unterzuckerungen" : MessageLookupByLibrary.simpleMessage("低血糖の回数"),
    "Anzahl der Sensoren zur Analyse hinzugefügt" : MessageLookupByLibrary.simpleMessage("分析へのセンサー数追加"),
    "Anzeigeeinstellungen" : MessageLookupByLibrary.simpleMessage("画面設定"),
    "Auf 10be muss beim Server in den Standardeinstellungen der Haken bei \"cors\" aktiviert werden, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen. Wenn \"cors\" aktiviert wurde, muss auf dem Server eventuell noch ReDeploy gemacht werden, bevor es wirklich verfügbar ist." : MessageLookupByLibrary.simpleMessage("10be では、このような外部ツールがデータにアクセスできるよう、サーバ用の初期設定で cors のチェックボックスを有効にしておく必要があります。cors が有効であれば、実際の利用前にサーバー上で ReDeploy を実行する必要があることがあります。"),
    "Auf Kacheln Bilder statt Namen anzeigen" : MessageLookupByLibrary.simpleMessage("タイルに名称ではなくイメージを表示"),
    "Auf den Kacheln können nun Bilder statt der Namen angezeigt werden. Die Bilder zeigen dann das ungefähre Aussehen der entsprechenden Seite an. Sie entsprechen nicht den tatsächlichen Daten, sondern sind nur eine visuelle Darstellung, die es manchem Benutzer vielleicht einfacher machen, die gewünschten Seiten schneller auszuwählen. Die Aktivierung der Bilder erfolgt im Einstellungsdialog." : MessageLookupByLibrary.simpleMessage("名前の代わりにタイル上に画像を表示できるようになりました。画像は、対応するページのおおまかな表示です。実際のデータではありませんが、視覚的な表示であるため、一部の利用者は望むページを手短に選択しやすくなるでしょう。画像の有効化は設定ダイアログから行えます。"),
    "Auf den Seiten Profil und Basalrate wird in der Titelzeile jetzt wieder das Datum angezeigt, ab dem das Profil gilt." : MessageLookupByLibrary.simpleMessage("プロファイルの開始日が、プロフィールページと基礎単位ページのタイトルバーに表示されます。"),
    "Auf der Analyseseite kann statt der Anzahl der Werte bei den Zielbereichen jetzt die Standardabweichung der Werte im Zielbereich angezeigt werden." : MessageLookupByLibrary.simpleMessage("分析ページの値の個数の代わりに目標範囲の標準偏差が表示されるようになりました。"),
    "Auf der Analyseseite werden nun auch GVI und PGS ausgegeben." : MessageLookupByLibrary.simpleMessage("分析ページに GVI と PGS を追加しました。"),
    "Auf der Analyseseite wird jetzt auch die Standardabweichung aller Werte der Periode angezeigt." : MessageLookupByLibrary.simpleMessage("分析ページに選択範囲すべての標準偏差も表示されるようになりました。"),
    "Auf der Profilseite wurde die Spalte für die Werte von ICR verbreitert." : MessageLookupByLibrary.simpleMessage("プロファイルページの ICR の列幅を広げました"),
    "Auf der Seite \"Profil\" wird die Gültigkeit jetzt mit Uhrzeit angezeigt." : MessageLookupByLibrary.simpleMessage("プロファイルページで、validity (未訳) が時間と共に表示されます。"),
    "Auf der Seite \"Stündliche Statistik\" gibt es eine neue Option, um auch Spalten mit 10% und 90% anzeigen zu lassen." : MessageLookupByLibrary.simpleMessage("「毎時統計」ページに新しいオプションが追加され、10％ と 90％ の列も表示できます。"),
    "Aufhebung von temp. Ziel" : MessageLookupByLibrary.simpleMessage("Cancel temp target"),
    "Aufsummierte Werte" : MessageLookupByLibrary.simpleMessage("合計値"),
    "Aus den Profilen ermitteln" : MessageLookupByLibrary.simpleMessage("プロファイルから抽出"),
    "Ausgabe" : MessageLookupByLibrary.simpleMessage("出力"),
    "Ausgabe Parameter" : MessageLookupByLibrary.simpleMessage("出力パラメータ"),
    "Ausgewertete Tage" : MessageLookupByLibrary.simpleMessage("評価期間"),
    "Ausgewählter Zeitraum" : MessageLookupByLibrary.simpleMessage("期間を選択"),
    "Ausrichtung" : MessageLookupByLibrary.simpleMessage("方向"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("分析"),
    "Automatisch" : MessageLookupByLibrary.simpleMessage("自動"),
    "Automatisch_theme selection - automatic" : MessageLookupByLibrary.simpleMessage("自動"),
    "Basal" : MessageLookupByLibrary.simpleMessage("基礎"),
    "Basal 0%" : MessageLookupByLibrary.simpleMessage("基礎 0%"),
    "Basal ges." : MessageLookupByLibrary.simpleMessage("総基礎"),
    "Basal mit zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("基礎単位：小数点以下表示"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("基礎単位"),
    "Basalrate\nIE / Stunde" : MessageLookupByLibrary.simpleMessage("基礎単位 U / 時"),
    "Basalrate anzeigen" : MessageLookupByLibrary.simpleMessage("基礎単位を表示"),
    "Batteriewechsel" : MessageLookupByLibrary.simpleMessage("電池交換"),
    "Behandlungen" : MessageLookupByLibrary.simpleMessage("処置"),
    "Bei Tagesgrafiken und Wochengrafiken gibt es jetzt die Möglichkeit 1, 2, 4, 8 oder 16 Grafiken auf einer Seite zu platzieren." : MessageLookupByLibrary.simpleMessage("1日グラフと週間グラフで、1枚の PDF に複数の画像を表示できるようになりました。1枚・2枚・4枚・8枚・16枚です。"),
    "Bei der Auswertung kann nun ein Bereich angezeigt werden, in dem die Anzahl an Unterzuckerungen während des ausgewählten Zeitraums und der Zeitpunkt der letzten Unterzuckerung angezeigt werden." : MessageLookupByLibrary.simpleMessage("解析で、選択期間中の低血糖の数と最後の低血糖の時間が表示できます。"),
    "Bei der Basalrate und dem Profil gibt es nun eine Option jeweils nur das letzte im entsprechenden Zeitraum ausgeben zu lassen. Das verringert die Blätterflut bei häufigem Profilwechsel." : MessageLookupByLibrary.simpleMessage("基礎単位とプロファイルにおいて、対応期間中の最後のものだけを印刷するオプションが利用できます。これにより頻繁にプロファイルが更新されるページを減らせます。"),
    "Bei der Berechnung der Kohlenhydrate werden weitere Datensätze berücksichtigt" : MessageLookupByLibrary.simpleMessage("追加データは炭水化物の計算に利用されます"),
    "Beim Auslesen des Profils ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("プロファイル読み込み中にエラーが発生しました。"),
    "Beim CGP werden die aktuellen Werte jetzt in der Legende angezeigt." : MessageLookupByLibrary.simpleMessage("CGP では、現在の値が凡例に表示されるようになりました。"),
    "Beim Erzeugen des PDF ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("PDF作成中にエラーが発生しました。"),
    "Beim Glukose Perzentil Diagramm kann man nun ein Maximum für die Skalierung festlegen. Wenn es auf \"Automatisch\" gesetzt wird, wird das Maximum wie bisher auch ermittelt. Bei einem anderen Wert wird die Obergrenze für das Diagramm auf diesen Wert festgesetzt. Damit ist es leichter möglich zwei Diagramme miteinander zu vergleichen, deren Obergrenze unterschiedlich ist." : MessageLookupByLibrary.simpleMessage("ブドウ糖パーセンタイル図表で、縮尺の最大値が設定できます。「自動」に設定されていれば、以前と同様に最大値が決定されます。それ以外の値では、図表の上限がこの値に設定されます。これにより、上限値の異なる2つの図表が比較しやすくなりました。"),
    "Beim Laden der Behandlungsdaten werden doppelte Datensätze herausgefiltert." : MessageLookupByLibrary.simpleMessage("処置データが読み込まれると、重複するデータレコードはフィルタリングされます。"),
    "Beim Laden der Daten wird das entsprechende Datumsformat zur Anzeige verwendet" : MessageLookupByLibrary.simpleMessage("データのロード中は、対応する日付形式が進行状況の表示に使用されます。"),
    "Beim Perzentil Diagramm gibt es eine neue Option, mit der man die Basalrate unter dem Diagramm anzeigen lassen kann. Da das Diagramm normalerweise einen grösseren Zeitraum umspannt, wird dort die Basalrate angezeigt, die zu Beginn des Zeitraums aktiv war." : MessageLookupByLibrary.simpleMessage("パーセンタイルの図表中の新しいオプションでは、基礎単位をその図表下に表示できます。この図表は通常より長い期間が表示されるため、その期間の最初にアクティブだった基礎単位が表示されます。"),
    "Benutzer können ein User-Token angeben, um sich mit geschützten Nightscout-Instanzen zu verbinden" : MessageLookupByLibrary.simpleMessage("保護されたナイトスカウトのプログラムに接続するためにユーザー・トークンを設定できます"),
    "Benutzer können nun gelöscht werden" : MessageLookupByLibrary.simpleMessage("利用者を削除可能になりました。"),
    "Benutzerdaten" : MessageLookupByLibrary.simpleMessage("利用者の情報"),
    "Benutzerdaten werden nun verschlüsselt im Browser gespeichert" : MessageLookupByLibrary.simpleMessage("利用者の情報は、ブラウザに暗号化されて保存されるようになりました。"),
    "Berechnete IE für Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("炭水化物より算出したインスリン量（U）"),
    "Berechnete IE für Kohlenhydrate anzeigen" : MessageLookupByLibrary.simpleMessage("炭水化物量から算出したインスリン量を表示"),
    "Bereite Daten vor..." : MessageLookupByLibrary.simpleMessage("データを準備中…"),
    "Bestätigung" : MessageLookupByLibrary.simpleMessage("確認"),
    "Bewegung" : MessageLookupByLibrary.simpleMessage("運動"),
    "Bewegung anzeigen" : MessageLookupByLibrary.simpleMessage("運動を表示"),
    "Bis" : MessageLookupByLibrary.simpleMessage("～"),
    "Bisher fehlende Summenwerte in der Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("日別統計に合計を追加しました。"),
    "Bitte einen Zeitraum wählen." : MessageLookupByLibrary.simpleMessage("期間を選択してください"),
    "Bitte überprüfe die Aktivierung der Wochentage unter dem Monat" : MessageLookupByLibrary.simpleMessage("カレンダーの下にあるチェック印を確認してください"),
    "Blutige Messung" : MessageLookupByLibrary.simpleMessage("Bloody values"),
    "Blutige Werte sollten jetzt auch bei mmol-Daten korrekt in der Tagesgrafik angezeigt werden." : MessageLookupByLibrary.simpleMessage("1日グラフの mmol  データの Bloody values が正しく表示されるようになりました。"),
    "Blutwerte werden jetzt auch bei mmol/L in den Grafiken korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("血糖値が mmol/l でグラフに正しく表示できるようになりました。"),
    "Bolus" : MessageLookupByLibrary.simpleMessage("ボーラス"),
    "Bolus Rechner_bolus calculated by the bolus wizard" : MessageLookupByLibrary.simpleMessage("ボーラス用ウィザード"),
    "Bolus ges." : MessageLookupByLibrary.simpleMessage("合計ボーラス"),
    "Bolusarten anzeigen" : MessageLookupByLibrary.simpleMessage("ボーラスの種類を表示"),
    "Bolusspalte anzeigen" : MessageLookupByLibrary.simpleMessage("ボーラスの列を表示"),
    "CGP" : MessageLookupByLibrary.simpleMessage("CGP"),
    "COB (Carbs On Board) anzeigen" : MessageLookupByLibrary.simpleMessage("COB (炭水化物 On Board) を表示"),
    "Comprehensive Glucose Pentagon" : MessageLookupByLibrary.simpleMessage("グルコース総合グラフ"),
    "Da wir seit einiger Zeit in Europa eine DSGVO haben, werden im Folgenden noch die Vorschriften dafür erfüllt. Der folgende Text ist nur auf Deutsch verfügbar:" : MessageLookupByLibrary.simpleMessage("以下の文章はヨーロッパの DSGVO に適合しています。またこのテキストはドイツ語のみで利用可能です:"),
    "Das \"Comprehensive Glucose Pentagon\" (Umfassendes Glukose Fünfeck) wurde als eigenes PDF und als Zusatzseite zur Tagesgrafik und Wochengrafik hinzugefügt. Es handelt sich hierbei um eine Darstellung von fünf Messgrössen, mit deren Hilfe sich die Qualität der Therapie ermitteln und mit anderen vergleichen lässt. Auf den Ausdrucken wird ein Verweis auf die zugrunde liegende Abhandlung ausgegeben." : MessageLookupByLibrary.simpleMessage("「グルコース総合グラフ」を、別の PDF として分割し、また 1日チャートと週間チャートとして別ページに追加しました。このグラフは 5つの指標を表しており、治療の質を決定するのを助けたり、各指標を比較できます。印刷出力では出力している各レポートの追加ページとして出力されます。"),
    "Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr." : MessageLookupByLibrary.simpleMessage("メッセージエリアをクリックしても、ページが閉じなくなりました。"),
    "Das Control für die Eingabe des Zeitraums wurde angepasst, damit es auf schmalen Display auch korrekt dargestellt wird." : MessageLookupByLibrary.simpleMessage("期間選択の選択画面が、狭いディスプレイで正しく表示されるように調整しました。"),
    "Das Enddatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("終了日が正しくありません"),
    "Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag." : MessageLookupByLibrary.simpleMessage("基礎単位の PDF は、毎時間の値がない場合は正しく表示できませんでした。"),
    "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren." : MessageLookupByLibrary.simpleMessage("PDFが作成されました。表示されない場合、ブラウザのポップアップ禁止設定が有効になっている可能性がありますので、ご確認ください。"),
    "Das Problem, dass bestimmte Tage nicht erzeugt werden konnten, wurde behoben." : MessageLookupByLibrary.simpleMessage("特定の日が作成できなかった問題が修正されました。"),
    "Das Profil-PDF wird nun im Querformat erzeugt, um auch Profile mit vielen Einträgen für die Parameter brauchbar darstellen zu können." : MessageLookupByLibrary.simpleMessage("パラメータのエントリーが多いプロファイルでも PDF が横長で出力され表示できるようになりました。"),
    "Das Startdatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("開始日が正しくありません"),
    "Das gelbe Fünfeck stellt den Wertebereich des angegebenen Zeitraums dar." : MessageLookupByLibrary.simpleMessage("黄色の五角形は、選択期間の値を表しています"),
    "Das grüne Fünfeck stellt den Wertebereich eines gesunden Menschen ohne Diabetes dar." : MessageLookupByLibrary.simpleMessage("緑色の五角形の範囲は、糖尿病ではない人の値を表しています"),
    "Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen." : MessageLookupByLibrary.simpleMessage("間違っている血糖値と日付形式のデータも正しく読み込めます。"),
    "Daten verschiedener Uploader werden nun besser interpretiert." : MessageLookupByLibrary.simpleMessage("異なるアップローダーからのデータを正確に処理できるようになりました。"),
    "Daten, die von xDrip als sync markiert wurden, werden bei der Auswertung ignoriert." : MessageLookupByLibrary.simpleMessage("xDripより同期されたデータは計算時に無視されます。"),
    "Datenschutzerklärung" : MessageLookupByLibrary.simpleMessage("情報保護"),
    "Datum" : MessageLookupByLibrary.simpleMessage("日付"),
    "Dauer der Insulinaktivität (DIA)" : MessageLookupByLibrary.simpleMessage("インスリン作用時間(DIA)"),
    "Dauer der Kohlenhydrataktivität" : MessageLookupByLibrary.simpleMessage("炭水化物作用時間"),
    "Dauer der abgeschalteten Basalrate anzeigen" : MessageLookupByLibrary.simpleMessage("無効化された基礎単位の期間を表示"),
    "Dauer mit Minutenbruchteil" : MessageLookupByLibrary.simpleMessage("正確な期間"),
    "Der Fehler im Profil, der dazu führte, dass die Werte für ISF und Zielbereich falsch umgerechnet werden, wurde behoben." : MessageLookupByLibrary.simpleMessage("プロフィールの ISF と目標範囲の値が正確に変換されないバグを修正しました。"),
    "Der Fehler mit der Vervielfachung der Kohlenhydrate bei wiederholter Ausgabe der PDFs wurde korrigiert." : MessageLookupByLibrary.simpleMessage("PDF の繰り返しの出力での炭水化物の乗算に関するエラーが修正されました。"),
    "Der Zeitraum enthält keine auswertbaren Tage" : MessageLookupByLibrary.simpleMessage("選択した期間に表示できる日が含まれていません"),
    "Der Zugriffsschlüssel wird nur benötigt, wenn der Zugriff in Nightscout über AUTH_DEFAULT_ROLES eingeschränkt wurde" : MessageLookupByLibrary.simpleMessage("AUTH_DEFAULT_ROLES でナイトスカウトのアクセスが制限されている場合のみアクセス・トークンが必要です。"),
    "Der prognostische glykämische Risikoparameter stellt das Risiko von Langzeitkomplikationen dar (bisher nicht durch Studien belegt)." : MessageLookupByLibrary.simpleMessage("予後血糖リスクパラメーターは、長期的な合併症のリスクを表します (これまでの研究で証明されてはいません)。"),
    "Details des Profilwechsels" : MessageLookupByLibrary.simpleMessage("プロファイル変更の詳細"),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("Deutsch"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("糖尿病歴"),
    "Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an" : MessageLookupByLibrary.simpleMessage("分析ページ上部に見出しが表示されるようにデザインを変更しました。"),
    "Die Analysewerte wurden nicht ganz korrekt ermittelt. Das wurde korrigiert und nun sollten die statistischen Daten über den Zeitraum richtig ausgewertet werden." : MessageLookupByLibrary.simpleMessage("分析値が正しく決定されていませんでした。これが修正され、指定期間中に評価される統計データは正されるでしょう。"),
    "Die Angabe DIA auf der Profilseite wird nun mit zwei Nachkommastellen angezeigt." : MessageLookupByLibrary.simpleMessage("プロフィールのインスリン作用時間は、小数点以下2桁で表示されるようになりました。"),
    "Die Aufsummierung der Werte in der Analyse wurde korrigiert." : MessageLookupByLibrary.simpleMessage("解析内の値の蓄積を修正しました。"),
    "Die Aufteilung auf mehrere PDF-Dateien funktioniert jetzt besser." : MessageLookupByLibrary.simpleMessage("PDF ファイルの複数分割が改善されました。"),
    "Die Auswahl des Zeitraums ist nun flexibler. Die Auswahl erfolgt in einem Dialog, der die eingestellte Sprache berücksichtigt. Mit der Auswahl der vorbelegten Bereiche (Heute, Letzte Woche, usw.) wird festgelegt, dass beim nächsten Aufruf das aktuelle Datum als Grundlage für den Bereich verwendet wird. Wenn der Bereich direkt im Kalender festgelegt wird, dann gilt dieser beim nächsten Aufruf so wie er festgelegt wurde. Standardmässig ist der erste Tag der Woche jetzt ein Montag. Dieser kann aber durch Anklicken des Wochentags in der Titelzeile des Monats auf die eigene Präferenz festgelegt werden. Die Eingabe der Datumsfelder erfolgt in der Form, die der Sprache entspricht (Tag.Monat.Jahr für deutsch, Monat/Tag/Jahr für englisch)." : MessageLookupByLibrary.simpleMessage("期間の選択がより自由になりました。選択は、言語を考慮したダイアログで行われます。規定の範囲（本日、先週等）を選択すると現在の日付が次の設定での基準日として設定されます。範囲をカレンダーで直接設定している場合は、設定に従って定義されます。又、デフォルトでは週の始まりは月曜日ですが、タイトルバーの曜日をクリックする事で変更が可能です。日付フィールドは言語に対応するフォーマットで入力されます。(ドイツ語：日/月/年　英語：月/日/年)"),
    "Die Auswahl des Zeitraums und der Benutzer wurde in die Titelzeile verschoben." : MessageLookupByLibrary.simpleMessage("タイトルバーに期間とユーザーの選択が移動されました。"),
    "Die Balken für das Bolusinsulin in der Tagesgrafik werden nun entsprechend dem Maximalwert an Bolusinsulin an dem Tag skaliert." : MessageLookupByLibrary.simpleMessage("1日グラフのボーラスバーは、その日の最大ボーラスによって縮尺が決定されます。"),
    "Die Balken in der Analyse werden jetzt korrekt skaliert." : MessageLookupByLibrary.simpleMessage("分析のバーが正しく縮尺されます。"),
    "Die Basalratenprofile für den Tag werden nun auch anhand der Behandlungsdaten ermittelt. Profilwechsel werden in der Tagesgrafik angezeigt und sollten ab dem Zeitpunkt des Wechsels auch eine korrekte Basalratenanpassung anzeigen." : MessageLookupByLibrary.simpleMessage("その日の基礎単位プロファイルも処置データに基づき決定されるようになりました。プロファイルの変更は1日グラフに表示され、変化した瞬間に調整され正しい基礎単位が表示されます。"),
    "Die Berechnung der PDF-Grössen wurde korrigiert, so dass nun weniger PDFs erstellt werden, wenn sie aufgrund der Grösse aufgeteilt werden." : MessageLookupByLibrary.simpleMessage("PDF のサイズ計算を修正しました。サイズにより分割する際の PDF の数が少なくなりました。"),
    "Die Berechnung der Summenzeile auf der Seite Tagesstatistik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("日別統計の合計行の計算を修正しました。"),
    "Die Berechnung der tatsächlichen Basalrate wurde korrigiert." : MessageLookupByLibrary.simpleMessage("実際の基礎単位の計算式を修正しました。"),
    "Die Berechnung des täglichen Insulins berücksichtigt nun auch die SMB." : MessageLookupByLibrary.simpleMessage("SMB が1日のインスリン量にも考慮されるようになりました。"),
    "Die Bilder auf den Kacheln sind nun in der jeweiligen Sprache beschriftet." : MessageLookupByLibrary.simpleMessage("タイルの画像が各言語でラベル付けされます。"),
    "Die Buttons für die Erzeugung vergangener Zeiträume wurden entfernt. Das kann jetzt im neuen PDF-Dialog eingestellt werden." : MessageLookupByLibrary.simpleMessage("以前の期間を作成ボタンが削除されました。これからは、これは新しい PDF ダイアログ内でで設定可能です。"),
    "Die Buttons für die vergangenen Perioden werden nicht angezeigt, wenn kein Zeitraum oder kein PDF ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("期間や PDF が選択されていない場合、過去の期間ボタンは表示されません。"),
    "Die Daten, die Du hier eingibst, werden normalerweise im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. In diesem Fall werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("このページに入力したデータは、当ページからのみ読み込みが可能でブラウザのローカルストレージに保存されます。ここにはサイトでしか読み込めないデータが含まれます。データはサーバーに保存されずクッキーも使用しません。指定したナイトスカウトのプログラムのみが接続されデータを読み込みPDFを作成します。PDFを利用して糖尿病に対する助言者や医療関係者に提出できる場合があります。（※医療関係者に提出する場合は、関係機関にご相談ください）"),
    "Die Einstellung für das Öffnen des PDF im gleichen Fenster, das Herunterladen des PDFs und den Hinweis auf Nightscout im PDF wurde aus den Einstellungen in die Ausgabe Parameter verschoben. Dadurch kann man das bei jedem Ausdruck schnell festlegen und ändern." : MessageLookupByLibrary.simpleMessage("The setting for opening the PDF in the same window, downloading the PDF and hiding text about Nightscout in the PDF has been moved from the settings to the output parameters. This allows you to quickly set and change that for each output."),
    "Die Einstellungen für das Herunterladen des PDFs, das Öffnen im gleichen Fenster und die Maximalgrösse der PDFs wurden von der Synchronisierung mit Google Drive ausgenommen, weil sie speziell für den verwendeten Browser oder das verwendete Gerät benötigt werden. Sie werden nach wie vor gespeichert, aber sie werden nicht zwischen verschiedenen Browsern synchronisiert." : MessageLookupByLibrary.simpleMessage("PDF のダウンロード、同じウィンドウで PDF を開く、また、 PDF の最大サイズの設定は、使用しているブラウザや端末固有の設定であるため、Google ドライブとの同期から除外されました。これはまだ保存されていますが、異なるブラウザ間では同期されません。"),
    "Die Einträge im Protokoll für temporäre Ziele werden jetzt auch bei mmol-Angaben richtig angezeigt." : MessageLookupByLibrary.simpleMessage("mmol データでも一時的対象のログの項目が正しく表示されます。"),
    "Die Ermittlung der Einheit (mg/dl oder mmol/l) wird nun flexibler gehandhabt, so dass auch Leerzeichen in der entsprechenden Einstellung nicht mehr zu einer Fehlinterpretation führen." : MessageLookupByLibrary.simpleMessage("単位 (mg/dl や mmol/l) の決定が柔軟に対応できるようになりました。設定にスペースが入っている場合でも間違える事がなくなりました。"),
    "Die Ermittlung der effektiven täglichen Basalrate wurde umstrukturiert und sollte nun genauere Werte ergeben." : MessageLookupByLibrary.simpleMessage("1日の基礎単位の決定が再構成され、より正確な値を得ることができます。"),
    "Die Farbe für Bewegung in der Tagesgrafik wurde geändert." : MessageLookupByLibrary.simpleMessage("1日グラフの運動の色を変更。"),
    "Die Farben für Dialoge und Scrollbars wurden angepasst." : MessageLookupByLibrary.simpleMessage("ダイアログとスクロールバーの色を調整しました。"),
    "Die Genauigkeit der ISF Angaben im Profil wurde korrigiert." : MessageLookupByLibrary.simpleMessage("プロファイルの ISF の精度を修正しました。"),
    "Die Genauigkeit der Insulindosierung wird aus dem Profil ermittelt. Der Wert mit der höchsten Genauigkeit legt fest, mit wieviel Nachkommastellen Basalratenwerte angezeigt werden." : MessageLookupByLibrary.simpleMessage("正確なインスリン投与量はプロフィールより決定されます。正確な値は基礎単位の小数点以下の桁数を決定します。"),
    "Die Glucose Perzentil Grafik wurde um die Tabelle \"Stündliche Statistik\" erweitert. Diese listet tabellarisch die Werte des Zeitraums für jede Stunde des Tages auf. Man kann entweder nur die Grafik, nur die Tabelle oder beides zusammen erzeugen lassen." : MessageLookupByLibrary.simpleMessage("ブドウ糖のパーセンタイル図に、毎時統計の表が追加されました。その日のそれぞれの1時間の値を集計します。図だけ、表だけ、または両方を作成することができます。"),
    "Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit." : MessageLookupByLibrary.simpleMessage("デイリーグラフ中の血糖値曲線は測定値が欠損している場合も適切に表示できます。"),
    "Die Icons auf einigen Buttons waren zu nahe am Text" : MessageLookupByLibrary.simpleMessage("テキストに近すぎる場所にあった一部のアイコンを修正しました。"),
    "Die Kohlenhydratangaben auf der Tagesgrafik werden jetzt ohne den Zusatz KH ausgegeben." : MessageLookupByLibrary.simpleMessage("1日グラフ上の炭水化物に接頭語 KH なしで表示されるようになりました。"),
    "Die Legende der Tagesgrafik wurde um den Eintrag für Bewegung erweitert." : MessageLookupByLibrary.simpleMessage("1日グラフのレジェンド要素が拡張され、運動の項目が追加されました。"),
    "Die Legende der Tagesgrafik wurde um den Eintrag für blutige Messungen erweitert." : MessageLookupByLibrary.simpleMessage("The legend of the daily graphic now includes the entry for bloody values."),
    "Die Links zu Nightscout und den Reports von Nightscout im Menü funktionieren jetzt auch richtig, wenn ein Usertoken angegeben wurde." : MessageLookupByLibrary.simpleMessage("ナイトスカウトとナイトスカウトレポートのリンクがユーザー・トークンを設定すると動作するようになりました。"),
    "Die Listenansicht ist jetzt wieder scrollbar." : MessageLookupByLibrary.simpleMessage("リストビューで再びスクロール可能になりました。"),
    "Die Microboli des Minimed 600 Uploaders werden jetzt auch ermittelt und in der Analyse ausgegeben, wenn sie vorhanden sind." : MessageLookupByLibrary.simpleMessage("解析には、Minimed600 シリーズアップローダーのマイクロボーラスも表示されます。"),
    "Die Microboli vom Minimed 600 Uploader wurden aus der Ausgabe entfernt, da es sich dabei nur um Temporäre Basalraten handelt." : MessageLookupByLibrary.simpleMessage("The microboli from the Minimed 600 Uploader have been removed from the output, because they are just temporary basal rates."),
    "Die Mischung von zwei Seiten auf einer PDF-Seite, die manchmal vorkam, wurde behoben." : MessageLookupByLibrary.simpleMessage("1つの PDF ページに2ページ混在することがありましたが修正しました。"),
    "Die Möglichkeit für Beta-Funktionen wurde entfernt; die Betaversion ist nun hier zu finden:" : MessageLookupByLibrary.simpleMessage("ベータ機能の予定は削除されました。ベータバージョンは現在こちらから利用可能です。："),
    "Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird" : MessageLookupByLibrary.simpleMessage("現在のユーザー名とその URL が直接表示されるようになったため、タイトルバーに URL を表示する機能は削除されました。"),
    "Die Oberfläche kann jetzt verschiedene Darstellungen annehmen. Diese zeigen sich zur Zeit durch geänderte Farben und ein angepasstes Icon im Browsertab und beim Laden der Seite. Das hat keine Auswirkungen auf die erzeugten PDF-Dateien. Es ist die Vorbereitung für eine teilweise anpassbare Oberfläche. Das Thema der Darstellung wird standardmässig vom System festgelegt, was zur Zeit heisst, dass im Dezember ein weihnachtliches Thema angezeigt wird. Das kann aber durch Anklicken des Icons, das ab jetzt links unten zu sehen ist, geändert werden. Beim Anklicken wird rechts neben dem Icon ein Bereich mit den verfügbaren Darstellungen eingeblendet. Das erste Icon (der kleine Zauberer) bedeutet dabei, dass die Darstellung vom System ermittelt wird. Zur Zeit bedeutet das die weihnachtliche Darstellung im Dezember. Es kann in Zukunft aber auch weitere Kriterien geben, anhand derer das Thema angepasst wird. Die direkte Festlegung eines Themas mit einem der anderen icons hat aber immer Vorrang vor der systemeigenen Logik." : MessageLookupByLibrary.simpleMessage("UI において異なる表示を想定するようにしました。現在、異なる色と対応したアイコンで表示されています (仮翻訳)  in the Browser tab and with the loading of the side. これは生成された PDF ファイルには影響しません。これは部分的にカスタマイズできる表示のための準備です。UI のテーマはシステムによってデフォルトで設定されています。12月現在はクリスマスのテーマが表示されるということです。しかし、左下のアイコンをクリックすることで、これを変更可能です。このクリックにより、アイコンの右側に使用できるテーマが表示されます。最初のアイコン (the little wizard) は、システムがテーマを決めているという意味です。12月現在ではクリスマスの presentation ということです。しかし、テーマを調整するための他の基準が、将来的に存在するかもしれません。ただし、one of the (未訳)  他のアイコンのあるテーマの直接的な定義は、システムの論理よりも常に優先されます。"),
    "Die Positionierung der Notizen in der Tagesgrafik wurde korrigiert, so dass sie näher an der Uhrzeit stehen. Die Striche wurden so verkürzt, dass sie nur noch bis zum unteren Rand der Grafik gehen und nicht mehr durch die Wertetabelle." : MessageLookupByLibrary.simpleMessage("1日グラフのポンプ履歴の表示位置は、時間近くに表示されるように修正しました。短くグラフの下部に表示し、値と重なりません。"),
    "Die Profile für den Zeitraum wurden teilweise nicht korrekt identifiziert. Das sollte behoben sein." : MessageLookupByLibrary.simpleMessage("期間用のプロファイルが部分的に誤って認識されていました。修正の必要があります。"),
    "Die Profilseite wurde angepasst, damit Einträge für 24 Stunden auf eine Seite passen." : MessageLookupByLibrary.simpleMessage("プロファイルのページでは 24 時間の項目が 1ページに収まるように調整されています。"),
    "Die Reihenfolge der Formulare kann nun verändert werden. Dazu einfach das Handle auf der linken Seite des Buttons für das Formular anklicken, festhalten und an die Stelle ziehen, vor der es ausgedruckt werden soll." : MessageLookupByLibrary.simpleMessage("作成する PDF の順序を変更できるようになりました。作成する項目を選択する画面で、項目の左側をクリックしたまま上下のドラッグして任意の場所に移動してください。"),
    "Die Seiten Profil und Basalrate zeigen nun bei einem Profil, das nur temporär während eines Tages aktiv war den Zeitraum an, in dem es aktiv war." : MessageLookupByLibrary.simpleMessage("一時的に設定した１日間のプロフィールとベーサルレートは、この期間だけを別ページで表示するようになりました。"),
    "Die Seitenzahlen auf den Kacheln wurden weiter an den unteren Rand verschoben, damit sie immer gut lesbar sind." : MessageLookupByLibrary.simpleMessage("タイルのページ番号をより下に移動し、いつでも読みやすくなりました。"),
    "Die Skalen an den Grafiken wurden überarbeitet. Sie zeigen jetzt für mmol/L ganzzahlige Werte an und die Einheiten wurden entfernt. Diese stehen nur noch unten an der Grafik. Das betrifft die täglichen Grafiken, wöchentlichen Grafiken und das Glukose Percentil Diagramm." : MessageLookupByLibrary.simpleMessage("グラフの縮尺が変更されました。これにより単位が削除され血糖値の数値のみが表示されます。単位はグラフの下部に表示されます。（1日グラフ・週間グラフ・血糖値比率チャート）"),
    "Die Spalten auf der Profilseite wurden korrigiert, damit auch längere Zeitnamen (z.B. in spanisch) Platz finden." : MessageLookupByLibrary.simpleMessage("ページの列表示が修正され、より長い時間名を表示できるようになりました (例：スペイン語など)"),
    "Die Standardabweichung wird jetzt auch bei mmol/L korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("標準偏差は、mmol / L を選択しても正しく表示されるようになりました。"),
    "Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an" : MessageLookupByLibrary.simpleMessage("日別統計のmmol/l表示ができるようになりました。"),
    "Die URL wurde noch nicht festgelegt" : MessageLookupByLibrary.simpleMessage("URL がまだ設定されていません"),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("URL はまだ設定されていません"),
    "Die Url zur Nightscout-API muss mit https beginnen, da Nightscout Reporter auch auf https läuft. Ein Zugriff auf unsichere http-Resourcen ist nicht möglich." : MessageLookupByLibrary.simpleMessage("ナイトスカウト API の URL は https から始まる必要があります。安全でない http リソースへのアクセスはできません。"),
    "Die Vorschaubilder auf den Kacheln passen sich abhängig von den ausgewählten Optionen teilweise an (z.B. die Auswahl von CGP bei Tagesgrafiken)." : MessageLookupByLibrary.simpleMessage("タイル上のプレビュー画像は、選択したオプションに応じて部分的に調整されます (例、1日グラフに CGP を選択時)。"),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("当ウェブサイトは Javascript を利用しています。PDF の作成時には Javascript と PHP が使用されます。"),
    "Die Werte VarK und ToR im CGP werden bei Tages- und Wochengrafiken in der Legende und in der Grafik korrekt ausgegeben." : MessageLookupByLibrary.simpleMessage("CGP 内の VarK と ToR の値が、日付と週のグラフで正しく出力  in the legend and in the graphic. (仮翻訳)\n"),
    "Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt" : MessageLookupByLibrary.simpleMessage("分析ページのデフォルトの目標範囲の値が正しく計算されるようになりました。"),
    "Die Werte im CGP werden jetzt bei mmol-Angaben auch korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("mmol データに対し CGP 内の値が正しく表示されます。"),
    "Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. " : MessageLookupByLibrary.simpleMessage("ご指定の URL にアクセスできません。URL が正しい場合はナイトスカウトの設定を確認してください。 "),
    "Die berechneten IE für Kohlenhydrate in der Tagesgrafik wurden teilweise mit falschen Faktoren ermittelt. Der Fehler wurde behoben." : MessageLookupByLibrary.simpleMessage("1日グラフ中の炭水化物用に計算された IE が一部誤った因数で決定されていました。このバグを修正しました。"),
    "Die eigenen Grenzwerte auf der Analyseseite in mmol/L werden nun korrekt berechnet." : MessageLookupByLibrary.simpleMessage("分析ページで mmol/L を使用時の独自制限が正しく計算されるようになりました。"),
    "Die einzelne Seite CGP kann jetzt auch im Querformat ausgegeben werden." : MessageLookupByLibrary.simpleMessage("単一ページの CGP も横書きで出力できるようになりました。"),
    "Die fehlerhafte Platzierug der blutigen Werte bei mmol/L in der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("1日グラフの血糖値を mmol/L 表記にした場合も、正しい位置に表示されるようになりました。"),
    "Die fehlerhafte Zentrierung der Auswahlbuttons wurde korrigiert." : MessageLookupByLibrary.simpleMessage("メインページのボタン配置の間違いを修正しました。"),
    "Die glykämische Variabilität stellt die Streuung der Werte um den glykämischen Mittelwert herum in Prozent dar." : MessageLookupByLibrary.simpleMessage("血糖変動係数は、血糖値平均値前後の変動をパーセントで表示したものです"),
    "Die glykämische Variabilität wird jetzt im CGP auch bei Tages- und Wochengrafiken korrekt ausgegeben." : MessageLookupByLibrary.simpleMessage("1日・週間グラフでも、CGP 中の血糖値の変動が正しく表示されます。"),
    "Die meisten Spalten auf der Seite \"Stündliche Statistik\" werden bei nicht vorhandenen Daten leer gelassen." : MessageLookupByLibrary.simpleMessage("「毎時統計」ページのほとんどの列は、データがなければ空のままです。"),
    "Die mittlerweile überflüssige Option zur Darstellung der Basalrate mit zwei Nachkommastellen wurde aus der Tagesgrafik entfernt." : MessageLookupByLibrary.simpleMessage("1日グラフから基礎単位少数点の古いオプションを削除しました。"),
    "Die teilweise falsch zugewiesenen Grenzwerte für die Bereiche (niedrig, normal, hoch) wurden korrigiert." : MessageLookupByLibrary.simpleMessage("一部間違って割り当てていた箇所 (低血糖、普通、高血糖) は修正されました。"),
    "Die temporäre Basalrate am Anfang des Tages wurde bisher falsch gesetzt, wenn sie im vorherigen Tag gesetzt wurde. Das wurde behoben." : MessageLookupByLibrary.simpleMessage("前日の設定がある場合、その日の最初の一時基礎単位が誤っていました。修正されました。"),
    "Die Überschrift über der Tabelle vom Glucode Perzentil Diagramm wurde korrigiert." : MessageLookupByLibrary.simpleMessage("The title above the table of glucose percentile diagram has been corrected."),
    "Die Überschrift über der mittleren Spalte im Tagesprofil wurde korrigiert." : MessageLookupByLibrary.simpleMessage("1日プロファイルの中間列の上の見出しを修正しました。"),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("このページはナイトスカウトのデータを利用してPDFを作成します。最初にこのデータにアクセスできるように設定を保存する必要があります。 設定を保存し有効にしなければ利用できません。"),
    "Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden." : MessageLookupByLibrary.simpleMessage("このページを追加しました。リリースの最新バージョンで表示されていない場合はナイトスカウトレポーターの起動時に表示されます。またメニューから再び表示することもできます。"),
    "Diese Webseite speichert keine Daten auf Servern. Die benötigten Daten werden von der eingegebenen URL zur Nightscout-Instanz geholt und als PDF aufbereitet. Die Daten, die zur Funktion der Webseite benötigt werden, werden im localStorage des Browsers gespeichert und nicht an den Server übermittelt. Wenn die Synchronisierung mit Google Drive aktiviert wird, dann werden diese Daten zusätzlich in den Anwendungsdaten auf dem Google Drive des verbundenen Kontos gespeichert." : MessageLookupByLibrary.simpleMessage("このウェブサイトはサーバー上にデータを保存しません。入力された URL からナイトスカウトの実行プログラムに必要なデータを取得し、またPDFとして出力します。ウェブサイトに必要なデータはブラウザのロ=カルストレージ領域に保存されサーバーには送信されません。Googleドライブの同期がオンになっている場合は、Googleドライブにも保存されます。"),
    "Dieser Regler legt fest, wie gross eine Ausgabe maximal werden darf, bevor sie auf mehrere PDF-Dateien aufgeteilt wird. Wenn bei Erstellung eines PDFs ein leeres Fenster angezeigt wird, dann hilft es normalerweise, diesen Regler weiter nach links zu bewegen." : MessageLookupByLibrary.simpleMessage("このスライダーはPDFが、複数のファイルに分割される時の最大サイズを設定します。PDFを作成する時に空白ページが表示される場合は、このスライダーを左へ移動すると改善する場合があります。"),
    "Diverse Abstürze beim Auslesen der Daten bereinigt" : MessageLookupByLibrary.simpleMessage("読み取り時のクラッシュの修正"),
    "Drei Monate vorher" : MessageLookupByLibrary.simpleMessage("3か月前"),
    "Dämmerung (06:00 - 07:59, 18:00 - 20:59)" : MessageLookupByLibrary.simpleMessage("暗い時間 (06:00 - 07:59, 18:00 - 20:59)"),
    "Eigene Grenzwerte" : MessageLookupByLibrary.simpleMessage("自己目標範囲"),
    "Ein Fehler in der Zahlenformatierung wurde behoben." : MessageLookupByLibrary.simpleMessage("数値の書式エラーが修正されました。"),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die letzten Tage bestimmter Monate nicht im Kalender-Control angezeigt wurden." : MessageLookupByLibrary.simpleMessage("カレンダー管理の特定月の最後日数が表示されないバグを修正しました。"),
    "Ein Fehler wurde behoben, der in der Tagesgrafik dazu führte, dass Texte in der Legende andere Texte überschrieben haben." : MessageLookupByLibrary.simpleMessage("1日グラフが凡例に被るバグを修正しました。"),
    "Ein Fehler wurde wahrscheinlich behoben, der dazu führt, dass bei manchen Profilen der Wert für DIA nicht korrekt ausgelesen wurde." : MessageLookupByLibrary.simpleMessage("一部のプロファイルで誤って DIA の数値が欠落するバグが修正されました。"),
    "Ein Jahr vorher" : MessageLookupByLibrary.simpleMessage("1年前"),
    "Ein Link zur Facebookseite von Nightscout Reporter wurde im Menü hinzugefügt." : MessageLookupByLibrary.simpleMessage("ナイトスカウトレポーターの Facebook ページへのリンクをメニューに追加しました。"),
    "Ein möglicher Absturz bei der Ausgabe des CGP bei der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("A possible crash in the output of the CGP in the daily graphic has been fixed."),
    "Eine" : MessageLookupByLibrary.simpleMessage("1"),
    "Einen Monat vorher" : MessageLookupByLibrary.simpleMessage("1か月前"),
    "Einige Browser sind nicht in der Lage PDF Dateien anzuzeigen, die eine bestimmte Grösse überschreiten. Da das von verschiedenen Faktoren abhängt, die sich nicht ohne Weiteres automatisch ermitteln lassen, gibt es die Möglichkeit, statt einer grossen PDF Datei, die nicht angezeigt werden kann, mehrere kleinere PDF Dateien zu erzeugen, die der Browser anzeigen kann. In den Einstellungen und hier kann diese Grösse festgelegt werden. Diese Seite hier wird nur angezeigt, wenn das PDF aufgeteilt werden musste. Wenn nur ein PDF erzeugt wurde, dann wird es direkt angezeigt." : MessageLookupByLibrary.simpleMessage("ブラウザによっては特定のサイズを超える PDF を表示できません。このサイズは様々なの要因によるため自動で決定できないため、表示できない大きなサイズのPDFを分割し、小さなサイズのPDFを複数作成する場合があります。このサイズは設定とここで指定できます。このページはPDFを分割する必要がある場合にのみ表示されます。PDFを分割する必要がない場合は直接表示されます。"),
    "Einige Formulare können nun mit Parametern konfiguriert werden; hierzu den Pfeil am rechten Rand des Formularbuttons anklicken und im aufgeklappten Bereich die entsprechenden Einstellungen vornehmen; der Pfeil erscheint erst, wenn das Formular zum Ausdruck markiert wurde" : MessageLookupByLibrary.simpleMessage("一部の印刷用フォームはパラメーターを使用して設定できるようになりました。フォームボタンの右側にある∨矢印をクリックして、下に開いたチェックボックスで表示設定をします。フォームボタンを選択するまで∨矢印は表示されません。"),
    "Einige der Optionen für die PDFs wurden hierarchisch angeordnet. Es macht z.B. keinen Sinn, die SMB Werte in der Tagesgrafik an der Kurve platzieren zu lassen, wenn die SMB Werte gar nicht angezeigt werden. Deswegen werden Optionen, die von einer anderen Option abhängen nur dann angezeigt, wenn die entsprechende Option markiert ist. Dadurch ändert sich leider auch die Speicherung der Optionen, weshalb sich die aktuelle Auswahl der Optionen bei manchen PDFs verändert. Da müssen die Optionen dann neu gesetzt werden." : MessageLookupByLibrary.simpleMessage("PDF のオプションの一部が階層で配置されました。SMB 値がまったく表示されていない場合には、1日グラフに配置されている意味がありません。そのため、別のオプションに依存するオプションは、対応するオプションを選択した場合にのみ表示されるようにしました。これは残念ながらオプションの保存方法も変えてしまい、現在の一部の PDF のオプションの選択方法が変更されました。これらのオプションは、再び設定する必要があります。"),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("設定"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("設定"),
    "Einstellungen von Release-Version übernehmen" : MessageLookupByLibrary.simpleMessage("リリースバージョンから設定を移行"),
    "English (GB)" : MessageLookupByLibrary.simpleMessage("英語 (イギリス)"),
    "English (USA)" : MessageLookupByLibrary.simpleMessage("英語 (アメリカ)"),
    "Erzeuge PDF..." : MessageLookupByLibrary.simpleMessage("PDFを作成中…"),
    "Es gibt ein neues PDF namens Tagesstunden. Dieses zeigt die Durchschnittswerte eines Tages in jedem Stundenintervall an und färbt die Zellen entsprechend des Glukosewertes ein. So hat man eine gut Übersicht über die Werteverteilung im ausgewählten Zeitraum." : MessageLookupByLibrary.simpleMessage("日別毎時間 (Dayhours) と命名された新しい PDF が追加されました。時間単位の間隔で1日の平均値を表示し、ブドウ糖値に応じてマスの背景色を変えます。選択期間中の値の分かりやすい概要が提供されます。"),
    "Es gibt ein neues PDF namens Tagestrend. Dieses zeigt die Werte eines Tages zusammen mit dem Trend zu jeder vollen Stunde, sowie der eingestellten Basalrate aus dem Profil. Das ist eine gute Übersicht für Basalratentests, um zu erkennen, wo etwas anzupassen ist." : MessageLookupByLibrary.simpleMessage("1日の傾向と名付けられた新しいPDFが用意されました。これは1日の値を時間ごとの傾向とプロファイルに設定された基礎単位と共に表示します。これは、基礎単位テストで調整が必要な箇所を確認するための良い概要となります。"),
    "Es gibt eine neue PDF-Seite für die Tagesprofile. Darauf ist eine Tabelle zu sehen, die die tatsächliche Basalrate für den Tag zeigt, inklusive aller temporären Anpassungen. Ich brauchte das für Debugzwecke, aber vielleicht findet das der eine oder andere Benutzer auch interessant. Das Profil, das dort angezeigt wird entspricht dem Tagesprofil auf der Seite Tagesgrafik. Beim Loopen können das sehr viele Seiten werden, da dort normalerweise alle paar Minuten Anpassungen an der Basalrate vorgenommen werden. Deswegen wird die Tabelle auch abhängig von der Datenmenge in maximal drei Spalten dargestellt, um die Anzahl an Seiten zu reduzieren." : MessageLookupByLibrary.simpleMessage("1日プロファイル用の新しい PDF が追加されました。すべての一時的な調整を含む、1日の実際の基礎単位の表\nが含まれています。デバッグのためにこれが必要でしたが、一部の利用者にも興味深いものでしょう。そこに表示されるプロファイルは、1日グラフのページの1日プロファイルに対応します。基礎単位は通常数分ごとに調整され、Loop は多くのページを生成します。そのため、データの量に応じてページ数を減らすために、最大3列で表が表示されます。"),
    "Es gibt in den Einstellungen eine Option, das PDF herunterladen zu lassen, statt es im Browser direkt anzeigen zu lassen. Das wird für Browser wie Edge benötigt." : MessageLookupByLibrary.simpleMessage("Edgeブラウザなどのブラウザ用に、PDFをブラウザで表示せずにダウンロードするオプションが設定にあります。"),
    "Es gibt in den Einstellungen eine neue Option, um den letzten in Nightscout gespeicherten Glukosewert in der Titelzeile anzeigen zu lassen. Wenn diese Option aktiviert ist, wird der aktuelle Wert, das Alter des Wertes, der Trendpfeil und die Differenz zum vorherigen Wert rechts in der Titelzeile angezeigt. Diese Anzeige wird jede Minute aktualisiert, solange das Browserfenster den Eingabefokus besitzt. Wenn es diesen nicht hat, wird die Aktualisierung angehalten und der Wert ausgeblendet, um nicht unnötig Systemresourcen zu belasten." : MessageLookupByLibrary.simpleMessage("この設定には基礎単位に保存されている最新の血糖値をタイトルバーに表示する新しいオプションがあります。有効にすると、現在の血糖値・経過時間・トレンド矢印及び以前の血糖値との差がタイトルバーの右側に表示されます。\nこの表示はブラウザに入力カーソルがある時は、毎分更新されます。入力カーソルがない場合はシステムの負荷を避けるため、値は非表示になります。"),
    "Es gibt jetzt auch die Möglichkeit, Nightscout Reporter in europäischem Englisch darzustellen. Der Unterschied zum amerikanischen Englisch besteht derzeit lediglich im Datumsformat (gb: dd/MM/yyyy, us: MM/dd/yyyy)." : MessageLookupByLibrary.simpleMessage("ナイトスカウトレポーターをイギリス英語で使用できるようになりました。アメリカ英語との違いは日付表示のみです。(例：dd/MM/yyyy, us: MM/dd/yyyy)"),
    "Es gibt jetzt die Möglichkeit, PDFs vergangener Zeiträume zu erzeugen, ohne den Zeitraum anpassen zu müssen. Oberhalb des Buttons zur PDF-Erzeugung gibt es zwei Buttons, welche die PDFs für eine frühere Periode erzeugen. Der untere der beiden Buttons erzeugt die Vorperiode, der obere die vorletzte Periode. Auf den Buttons wird das Startdatum und das Enddatum angezeigt. Wenn z.B. als Zeitraum \"Letzte 2 Wochen\" gewählt wurde, dann wird mit dem unteren Button der Zeitraum von zwei Wochen beginnend vor vier Wochen erzeugt und mit dem oberen Button der Zeitraum von zwei Wochen beginnend vor sechs Wochen. Auf diese Art kann man recht einfach Vergleichsberichte erzeugen, um die Entwicklung der Werte zu erkennen. Auf den Seiten wird für diese Ausdrucke in der Kopfzeile das Wort \"Historisch 1\", bzw. \"Historisch 2\" oberhalb des Zeitraums ausgegeben. So kann man beim Vergleich der Werte die Daten voneinander unterscheiden." : MessageLookupByLibrary.simpleMessage("期間を新たに設定しなくても、過去に表示した期間の PDF を作成できるようになりました。PDF を作成するボタンの上に、前の期間を選択するボタンがふたつあります。ふたつのボタンの内、下側が直近に選択した期間で上側が最後から2番目の期間となります。ボタンには開始日と終了日が表示されます。また期間「過去1週間」を選択すると、下側のボタンは4週前から始まる2週間の期間と上側のボタンでは4週間前から始まる2週間の期間が作成されます。\nこのように数値の変化を比較する為のレポートを容易に作成できます。またヘッダーに印刷されるページでは、上部に「履歴1」「履歴2」と表示されます。"),
    "Es ist jetzt möglich, die Buttons zur PDF-Auswahl als Kacheln darstellen zu lassen. Die Option dazu ist im Menü auf der linken Seite zu finden. In der Kachelansicht werden die Buttons über die verfügbare Fläche verteilt und sind so auf kleinen Geräten leichter zu treffen. Ausserdem sieht man dann normalerweise alle verfügbaren PDFs auf einen Blick und muss nicht scrollen. Auf den aktivierten Kacheln wird angezeigt, an welcher Stelle im PDF die entsprechenden Seiten ausgegeben werden und wieviele Seiten die entsprechende Kachel ausgibt. Diese Zahl kann für die meisten Kacheln korrekt ermittelt werden, bei einigen ist das aber ohne Auswertung der Daten nicht möglich (z.B. Profile und Protokoll). In diesem Fall wird entweder keine Seitenzahl oder eine Mindestzahl an Seiten angegeben. Sobald die Erstellung des PDFs erfolgt ist, werden die korrekten Zahlen angezeigt. Die Reihenfolge der Kacheln kann verändert werden, indem man sie festhält und an die Stelle verschiebt, an der man sie gerne hätte. Nach Anklicken des Icons in der oberen rechten Ecke können die Parameter für das entsprechende PDF erfasst werden." : MessageLookupByLibrary.simpleMessage("PDFを選択するボタンがタイルとして表示できるようになりました。このオプションは左側のメニューより設定できます。タイルビューでは、小さなデバイスでも画面内にボタンが配置され表示が容易になります。表示可能なPDFがスクロールせずに全て表示されます。アクティブにしたタイルには、PDFで印刷される場所とページ数が表示されます。この数はほとんどのタイルで正しく決定できますが、データ分析(例: プロファイルとプロトコル) を行わないと決定できないタイルもあります。この場合、ページ番号を指定しないか、最小ページ数を指定します。PDFが作成されると、正しい番号が表示されます。タイルを持って好きな場所に移動することで、印刷の順番を変えることができます。右上隅のアイコンをクリックすると、対応するPDFのパラメータをキャプチャできます。"),
    "Es ist jetzt möglich, die Einstellungen auf Google Drive zu speichern. Das hat den Vorteil, dass man die Einstellungen nicht nur im aktuellen Browser hat, sondern bei jedem Browser, mit dem man sich bei Google anmeldet. Die Einstellungen werden nach wie vor im Browser gespeichert. Bei einer Verbindung zu Google Drive werden sie aber zusätzlich auf Google Drive gespeichert. Beim Laden der Seite wird überprüft, ob eine Synchronisierung gewünscht ist. Wenn das der Fall ist, dann werden die Daten von Google Drive heruntergeladen. Wenn die Daten darin neuer sind als die Daten im Browser, werden sie verwendet. Nach dem Speichern der Daten werden bei aktivierter Synchronisierung diese Daten mit dem aktuellen Zeitstempel auf Google Drive gespeichert. Die Synchronisierung wird im Menü auf der linken Seite aktiviert und deaktiviert. Sie kann auch beim erstmaligen Aufruf der Seite in einem neuen Browser direkt im Willkommensbildschirm aktiviert werden. Nightscout Reporter verlangt nur die Berechtigung die eigenen App-Daten zu speichern und zu laden und benötigt keinen Zugriff auf andere Daten auf Google Drive." : MessageLookupByLibrary.simpleMessage("設定を Google ドライブに保存可能になりました。この利点は、現在のブラウザだけでなく、あなたの Google アカウントに接続されているどのブラウザでも設定を保持できるということです。設定はまだブラウザにも保存されたままです。Google ドライブに接続している場合、Google ドライブにも保存されます。ページを読み込み時に同期が必要かどうかを確認します。必要であれば、データが Google ドライブからダウンロードされます。ダウンロードしたデータがブラウザのデータよりも新しい場合、それが使用されます。データが保存されると、同期はそのデータを現在の日時でGoogle ドライブに保存します。同期の有効・無効化は、左側のメニューから可能です。また、新しいブラウザで初めてページを呼び出すときにも、ようこそ画面から有効にすることができます。ナイトスカウトレポーターには、自らのアプリ用データを保存して読み込む許可が必要なだけで、Google ドライブ上の他のデータにアクセスする要求はありません。"),
    "Es ist jetzt möglich, die Wochentage festzulegen, die im Zeitraum berücksichtigt werden sollen. Die entsprechenden Tage werden bei der Auswahl des Zeitraums mit den Buttons unterhalb des Monats festgelegt. Auf den PDFs werden Zeiträume dann zusätzlich mit der Information versehen, welche Wochentage berücksichtigt werden, wenn es nicht alle sind." : MessageLookupByLibrary.simpleMessage("期間選択で使用する曜日選択が可能になりました。期間選択をするとカレンダーの下側で使用曜日を選択できます。PDF作成では曜日選択をした場合、選択期間とともに使用曜日が表示されます。"),
    "Es sind keine Daten für den Ausdruck vorhanden" : MessageLookupByLibrary.simpleMessage("表示可能なデータがありません"),
    "Es werden jetzt auch blutige Werte erkannt, die von Loop auf dem IPhone eingetragen werden." : MessageLookupByLibrary.simpleMessage("iPhone の Loop で血糖値を入力した場合も認識するようになりました。"),
    "Español" : MessageLookupByLibrary.simpleMessage("Español"),
    "Facebook Seite" : MessageLookupByLibrary.simpleMessage("Facebook"),
    "Fehler behoben, der bei der Kachelansicht teilweise verhindert hat, dass die Parameter für die Kacheln aufgerufen werden konnten." : MessageLookupByLibrary.simpleMessage("タイルビューでタイル用のパラメータが呼び出しが阻止されていたバグを修正しました。"),
    "Fehler beim Laden der Daten" : MessageLookupByLibrary.simpleMessage("データ読込エラー"),
    "Fehler werden besser abgefangen und mit sinnvollem Text ersetzt." : MessageLookupByLibrary.simpleMessage("エラーを適切に処理し、意味が分かる文に置き換えられます。"),
    "Fehlerhafte Ausgabe der Blutzuckerwerte in der täglichen Grafik korrigiert." : MessageLookupByLibrary.simpleMessage("1日グラフの誤った血糖値出力が修正されました。"),
    "Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt" : MessageLookupByLibrary.simpleMessage("間違った値はグラフの表示で評価されなくなりました。データフィールドの「矢印」や「なし」によって認識されます。"),
    "Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt." : MessageLookupByLibrary.simpleMessage("開始日の入力のないプロファイルを読み込んだ際のエラーメッセージを削除しました。"),
    "Français" : MessageLookupByLibrary.simpleMessage("Français"),
    "Für die Tagesgrafik gibt es jetzt eine Option, um die Aufsummierung nahe beieinander liegender Werte umzuschalten." : MessageLookupByLibrary.simpleMessage("1日グラフに、時間帯が近い数値をまとめるオプションが追加されました。"),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("生年月日"),
    "Genauigkeit der Basalangaben:" : MessageLookupByLibrary.simpleMessage("正確な値の精度:"),
    "Ges." : MessageLookupByLibrary.simpleMessage("計"),
    "Gesamt" : MessageLookupByLibrary.simpleMessage("合計"),
    "Geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("推定A1C"),
    "Glukose Pentagon erzeugen" : MessageLookupByLibrary.simpleMessage("グルコース総合グラフを表示"),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("血糖値変動パターン"),
    "Glukose im Zielbereich" : MessageLookupByLibrary.simpleMessage("目標範囲内"),
    "Glukose zu hoch" : MessageLookupByLibrary.simpleMessage("血糖値が非常に高い"),
    "Glukose zu niedrig" : MessageLookupByLibrary.simpleMessage("血糖値が非常に低い"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("血糖値曲線"),
    "Glukosewert" : MessageLookupByLibrary.simpleMessage("グルコース"),
    "Glykämischer Variabilitäts Index (GVI)" : MessageLookupByLibrary.simpleMessage("血糖値変動指数 (GVI)"),
    "Grafik" : MessageLookupByLibrary.simpleMessage("図"),
    "Grafiken pro Seite" : MessageLookupByLibrary.simpleMessage("1ページのグラフ数"),
    "Gross" : MessageLookupByLibrary.simpleMessage("大"),
    "Gruppierung der Zeiten" : MessageLookupByLibrary.simpleMessage("時間帯をまとめて表示"),
    "HTML-Notizen anzeigen" : MessageLookupByLibrary.simpleMessage("HTMLメモを表示"),
    "Heute" : MessageLookupByLibrary.simpleMessage("今日"),
    "Hiermit wird festgelegt, um wieviel der Zeitraum des PDFs verschoben werden soll, um Vergleichswerte zu erhalten." : MessageLookupByLibrary.simpleMessage("これは、比較用の値を得るために PDF の期間をどれだけ推移すべきかを決定します。"),
    "Hinweise auf Nightscout in der Kopf- und Fusszeile des PDFs ausblenden" : MessageLookupByLibrary.simpleMessage("PDF のヘッダとフッターにナイトスカウトの情報を表示しない"),
    "Historische Daten" : MessageLookupByLibrary.simpleMessage("Historical Data"),
    "Hochformat" : MessageLookupByLibrary.simpleMessage("縦向き"),
    "Hohe Basalraten werden jetzt besser dargestellt." : MessageLookupByLibrary.simpleMessage("高い基礎単位も正しく表示されます。"),
    "Höchster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("期間中の最高血糖値"),
    "IE" : MessageLookupByLibrary.simpleMessage("U"),
    "IE/std" : MessageLookupByLibrary.simpleMessage("U/時"),
    "IOB (Insulin On Board) anzeigen" : MessageLookupByLibrary.simpleMessage("IOB (インスリン On Board) を表示"),
    "Im CGP wurden verschiedene Berechnungen korrigiert, die sich vor allem in Differenzen bei ToR und Mittelwerten zeigten." : MessageLookupByLibrary.simpleMessage("CGP では各種計算を修正しました。主に ToR と平均値の差で示されていました。"),
    "Im Einstellungsdialog wurden die Zeilen mit den Benutzerangaben und der URL gegeneinander ausgetauscht, um eine sinnvollere Verwaltung zu ermöglichen." : MessageLookupByLibrary.simpleMessage("設定ダイアログで利用者の詳細と URL の行が入れ替わり、より分かりやすく管理できます。"),
    "Im Kalender-Control kann kein Datum nach dem aktuellen Tag mehr ausgewählt werden." : MessageLookupByLibrary.simpleMessage("範囲選択のカレンダー管理で現在以降の日付が選択できなくなりました。"),
    "Im Kalender-Control wird ein eingestellter Bereich (Heute, Letzte Woche, etc.) jetzt korrekt auf den aktuellen Tag bezogen." : MessageLookupByLibrary.simpleMessage("カレンダー管理で、定義した期間 (今日、先週など) が正しく現在の日付を参照するようになりました。"),
    "Im Kalender-Control wird jetzt der Monat des entsprechenden Datums angezeigt, wenn eines der Felder Von oder bis den Fokus erhält." : MessageLookupByLibrary.simpleMessage("開始日または終了日のフィールドに日付を入力した場合、カレンダー管理が対応する月に移動するようになりました。"),
    "Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert" : MessageLookupByLibrary.simpleMessage("PDF 内の日付の形式は選択した言語に合わされます"),
    "Im Profil werden jetzt die richtigen Einheiten verwendet (mg/dL oder mmol/l)." : MessageLookupByLibrary.simpleMessage("プロファイルで正しい単位が利用できるようになりました。(mg/dL か mmol/l)"),
    "Im Profil werden nun die Gesamtsumme der Basalrate und die durchschnittlichen Werte für ICR und ISF pro Stunde angezeigt." : MessageLookupByLibrary.simpleMessage("プロフィールには合計基礎量と平均ICRおよびISFが表示されます。"),
    "Im Protokoll können jetzt auch Batteriewechsel der Pumpe angezeigt werden." : MessageLookupByLibrary.simpleMessage("プロトコルで、ポンプの電池交換も表示できるようになりました。"),
    "Im Protokoll werden die Angaben, die ein temporäres Ziel von 0 IE für 0 Minuten setzen als \"Aufhebung von temp. Ziel\" ausgegeben." : MessageLookupByLibrary.simpleMessage("ログ中で、0分 0U 一時目標に設定した情報を「一時目標をキャンセル」として出力しています。"),
    "Impressum" : MessageLookupByLibrary.simpleMessage("作者"),
    "In Firefox ist es jetzt auch möglich, die Hauptseite zu scrollen, wenn sie länger ist, als das Browserfenster." : MessageLookupByLibrary.simpleMessage("メインページを Firefox で表示している際に、ブラウザ画面より長い場合はスクロールできるようになりました。"),
    "In dem Dialog mit den Ausgabe Parametern wurde die Option hinzugefügt, die Genauigkeit der Ausgabe von Basalangaben festzulegen. Diese wird normalerweise aus den Angaben zur Basalrate in den Profilen ermittelt. Das wird auch weiterhin getan, wenn der erste Eintrag in der Liste ausgewählt wird. Ansonsten werden alle Basalangaben mit der Genauigkeit ausgegeben, die bei dieser Option ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("出力パラメータのダイアログで、基礎情報の出力精度を指定するオプションが追加されました。これは通常、プロファイルの基礎単位の情報から決定されます。これは、リストの最初の項目が選択されている場合も This is still the case (未訳) です。それ以外の場合は、このオプションで選択された精度ですべての基礎情報が出力されます。"),
    "In den Ausgabe Parametern kann nun angegeben werden, ob immer der neueste Tag zuerst angezeigt wird. Das hat Auswirkungen auf die Tagesgrafik, die Tagesstatistik und die Wochengrafik. In den Formularoptionen wurde die entsprechende Option entfernt." : MessageLookupByLibrary.simpleMessage("You can now specify in the output parameters whether the newest day is always displayed first. This has an impact on the daily graph, the daily statistics and the weekly graph. The corresponding option has been removed from the form options."),
    "In den Einstellungen gibt es einen Regler, der festlegt, wie gross die erzeugten PDF-Dateien maximal sein dürfen. Wenn nur ein leeres PDF erzeugt wird, dann sollte dieser Regler weiter nach links geschoben werden, um die Dateigrösse zu verringern." : MessageLookupByLibrary.simpleMessage("設定項目に作成するPDFのファイルサイズを設定するスライダーがあります。空白のPDFが作成された場合、このスライダーを左に移動してファイルサイズを小さくしてください。"),
    "In der Analyse können die Prozentzahlen für die Zielbereiche mit Nachkommazahl angezeigt werden. Das verringert die Differenz zu 100%, wenn man sie zusammenzählt. Der verbleibende Rest sind Rundungsdifferenzen." : MessageLookupByLibrary.simpleMessage("分析ページでは目標範囲のパーセントを小数点を含め表示できます。この数値の合計と100％との差異は数値の四捨五入によるものです。"),
    "In der Auswertung gibt es eine neue Option, um den Standardbereich feiner abzustufen. Dort werden dann zusätzlich sehr hohe Werte und sehr niedrige Werte angezeigt." : MessageLookupByLibrary.simpleMessage("分析ページには標準範囲を細かく調整する機能が追加されました。このオプションでは、「非常に高い値」「非常に低い値」が表示できます。"),
    "In der Auswertung können die Angaben für Material (Katheter, Sensor, Ampulle) mit Nachkommastellen angezeigt werden." : MessageLookupByLibrary.simpleMessage("分析ページでは、消耗品 (カニューレ・センサー・リザーバー) の情報を小数点以下の桁数で表示できます。"),
    "In der Kachelansicht können die Parameter aller ausgewählten Seiten zusammen in einer Liste eingestellt werden. Dazu gibt es im Titelbereich der Parameterliste neben dem Schliessen-Button einen zusätzlichen Button, mit dem man zwischen den beiden Möglichkeiten umschalten kann." : MessageLookupByLibrary.simpleMessage("タイルビューでは、すべての選択したページのパラメータを一覧からまとめて設定できます。このために、パラメータ一覧のタイトル部分に、閉じるボタンの次に追加のボタンがあり、2つのオプションを切り替えできます。"),
    "In der Legende unter der Tagesgrafik wird die Summe der Kohlenhydrate für den Tag angezeigt." : MessageLookupByLibrary.simpleMessage("1日グラフの凡例にある炭水化物には合計値が表示されます。"),
    "In der Sprachauswahl ist jetzt auch Slowakisch verfügbar." : MessageLookupByLibrary.simpleMessage("スロバキア語が言語から利用できます。"),
    "In der Tagesgrafik gibt es die Option, HTML-Notizen zu unterdrücken. Manche Uploader schreiben in die Notizen komplette HTML-Seiten rein, was im PDF extrem schlecht darstellbar ist. Deswegen kann man diese mit Setzen der Option ausblenden." : MessageLookupByLibrary.simpleMessage("1日グラフに、HTMLメモを抑制するオプションが用意されました。一部のアップロード者は、メモ中に完全なHTMLページを書く人がいますが、これは PDF として描画することが非常に難しいです。このオプションを設定することで、それらを非表示できます。"),
    "In der Tagesgrafik gibt es eine Option, die berechneten IE für aufgenommene Kohlenhydrate anzeigen zu lassen. Der Wert, der unmittelbar unter den Kohlenhydraten angezeigt wird, entspricht dem Bolus, der zu diesem Zeitpunkt für diese Kohlenhydratmenge abgegeben werden sollte. Dieser Wert kann niedriger als der tatsächlich abgegebene Wert ausfallen, weil für die Insulinabgabe noch IOB und andere Faktoren berücksichtigt werden." : MessageLookupByLibrary.simpleMessage("1日グラフには摂取した炭水化物より計算したインスリン量 IE を表示するオプションがあります。炭水化物の下に表示される数値は、その時点で摂取炭水化物に対して投与するべきボーラスの量です。この数値は、IOBと他の要因を考慮して計算されるため、実際に投与したインスリン量を下回る場合があります。"),
    "In der Tagesgrafik gibt es eine Option, mit dem man die verschiedenen Arten der Boli kenntlich machen lassen kann. Wenn diese Option gesetzt ist, wird ein Bolus, der zu einer Mahlzeit abgegeben wurde mit einer anderen Farbe markiert, als ein Bolus zur Korrektur. In der Legende werden dann Korrektur-, Mahlzeiten-Boli und SMB getrennt angezeigt." : MessageLookupByLibrary.simpleMessage("1日グラフに違う種類のボーラスを区別することが出来るオプションがあります。\n食事時と補正のボーラスは別色でマークされます。また凡例には食事ボーラス・補正ボーラス・スーパーマイクロボーラス（SMB）の値も表示されます。"),
    "In der Tagesgrafik gibt es eine Option, mit der man sich die erfassten Trainingsdaten anzeigen lassen kann. Diese werden dann am unteren Rand über der Tabelle der Glukosewerte eingefügt." : MessageLookupByLibrary.simpleMessage("1日グラフには、グラフにエクササイズのデータを表示するオプションがあります。グラフの最下部の血糖値の上に表示されます。"),
    "In der Tagesgrafik gibt es eine neue Option, um die Rundung der Insulinwerte auf die maximale Genauigkeit im Profil zu unterbinden. Das macht da Sinn, wo entweder kein Profil vorhanden ist, oder wo Werte mit höherer Genauigkeit als im Profil eingegeben werden." : MessageLookupByLibrary.simpleMessage("1日グラフの新しいオプションでは、インスリン値がそのプロファイルの最大精度で四捨五入されるのを抑制できます。これはプロファイルがない場合や、プロファイルよりも精度の高い値を入力した場合に意味があります。"),
    "In der Tagesgrafik kann die Anzeige der SMB nun ausgeblendet werden." : MessageLookupByLibrary.simpleMessage("1日グラフの SMB は非表示にできます。"),
    "In der Tagesgrafik kann jetzt bei Auswahl der Tages Basalrate angegeben werden, dass der Name des Profils angezeigt wird, das am Beginn des Tages aktiv war. Dieser wird dann so angezeigt, wie ein Profilwechsel um 0 Uhr." : MessageLookupByLibrary.simpleMessage("1日の基礎単位を選択する際に、その日の最初に利用されていたプロファイル名を表示できるようになりました。午前0時のプロファイルの変更として表示されます。"),
    "In der Tagesgrafik kann man nun die IOB (Insulin On Board) und COB (Carbs On Board) anzeigen lassen. Die IOB werden am oberen Rand angezeigt, wo auch die Bolusabgaben dargestellt werden, die COB am unteren Rand, wo auch die Kohlenhydrate dargestellt werden." : MessageLookupByLibrary.simpleMessage("1日グラフに IOB (インスリン On Board) と COB (炭水化物 On Board) を表示できます。ボーラスの表示されている上部に IOB、COB が表示されている下部に COB が表示されます。"),
    "In der Tagesgrafik kann nun angezeigt werden, wie lange die Basalrate auf 0% lief." : MessageLookupByLibrary.simpleMessage("1日グラフで基礎単位0％の期間を表示できます。"),
    "In der Tagesgrafik werden die Insulinangaben jetzt kleiner dargestellt, wenn die Basalrate eine Genauigkeit von mehr als 2 Nachkommastellen hat." : MessageLookupByLibrary.simpleMessage("基礎単位を小数点2桁表示にした場合、1日グラフでのインスリン量は小さく表示されます。"),
    "In der Tagesgrafik werden jetzt auch Blutzuckermessungen angezeigt. Sie werden als rote Quadrate dargestellt und die zugehörigen Werte in der Tabelle unterhalb der Grafik werden ebenfalls mit roter Schrift angezeigt." : MessageLookupByLibrary.simpleMessage("1日チャートに血糖値が表示されるようになりました。値が赤の四角で表示されます。又、下の表のグラフも赤で表示されます。"),
    "In der Tagesgrafik werden nun SMBs auch angezeigt, wenn die Option für die Darstellung von Insulin akitivert wurde. Man kann festlegen, ob die SMBs an der Glukosekurve oder am Zielwert angezeigt werden." : MessageLookupByLibrary.simpleMessage("インスリンを表示するに設定した場合、SMB が1日グラフに表示されるようになりました。SMB を血糖値曲線か目標値に表示するかを選択できます。"),
    "In der Tagesgrafik werden nun auch Kohlenhydratkorrekturen angezeigt." : MessageLookupByLibrary.simpleMessage("1日グラフに炭水化物が表示されるようになりました。"),
    "In der Tagesgrafik werden nun auch Reservoirwechsel angezeigt." : MessageLookupByLibrary.simpleMessage("リザーバー交換が1日グラフに表示されます。"),
    "In der Tagesgrafik werden nun auch bei Anzeige des Zielwertes die temporären Ziele berücksichtigt." : MessageLookupByLibrary.simpleMessage("1日グラフの表示で、目標血糖値を表示する際に一時目標も表示されるようになりました。"),
    "In der Tagesgrafik werden nun auch verzögerte Boli angezeigt." : MessageLookupByLibrary.simpleMessage("遅延ボーラスが1日グラフで表示されます。"),
    "In der Tagesgrafik werden nun der geschätzte HbA1C und die prozentuale Menge an Bolusinsulin und Basalinsulin für den Tag angezeigt. Diese Anzeige erfolgt innerhalb der Legende, weshalb diese aktiviert sein muss, damit die Werte angezeigt werden." : MessageLookupByLibrary.simpleMessage("日別の推定 A1C、ボーラスインスリンおよび基礎インスリンの割合は、1日グラフの下の凡例に表示されます。これらを表示するには凡例表示を有効にする必要があります。"),
    "In der Tagesgrafik wird jetzt eine Tabelle mit halbstündigen Glukosewerten eingeblendet angezeigt. Diese kann über einen Parameter ausgeschaltet werden." : MessageLookupByLibrary.simpleMessage("1日グラフに30分単位で血糖値グラフが表示されるようになりました。これはパラメーターを使用してオフにできます。"),
    "In der Tagesgrafik wurde \"Training\" in \"Bewegung\" umbenannt. Das passt besser zu den Einträgen in AAPS." : MessageLookupByLibrary.simpleMessage("ドイツ語の1日グラフで、「トレーニング」が Bewegung に置き換えられました。"),
    "In der Tagesgraphic werden jetzt Insulinwerte und Kohlenhydratwerte zusammengefasst, wenn es mehrere innerhalb einer Stunde gibt. Die Balken werden nach wie vor für jeden Wert einzeln ausgegeben. Auf diese Art sollte es keine überlappende Ausgabe der Werte mehr geben. Die zusammengefassten Werte werden in eckigen Klammern ausgegeben, um anzuzeigen, dass hier Werte aufsummiert wurden." : MessageLookupByLibrary.simpleMessage("1日グラフでは、インスリンと炭水化物の値が1時間に複数個ある場合は合計が表示されます。各バーは値ごとに表示されます。またこの表示により文字が重なることが解消されました。角括弧で表示された値は合計された値です。"),
    "In der Tagesstatistik und in den täglichen Grafiken werden jetzt zum Datum die Wochentage mit angezeigt." : MessageLookupByLibrary.simpleMessage("日別統計と1日グラフに曜日が表示されるようになりました。"),
    "In der Tagesstatistik wurde die Spalte Varianzkoeffizient hinzugefügt (VarK)." : MessageLookupByLibrary.simpleMessage("日別統計に Coefficient of variation (CV) の項目を追加しました。"),
    "In der Tagesstatistik wurden bei unvollständigen Daten teilweise fehlerhafte Werte ausgegeben. Das wurde korrigiert." : MessageLookupByLibrary.simpleMessage("1日のデータが少なすぎる場合、日別統計に誤ったデータが表示されるエラーを修正しました。"),
    "In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen." : MessageLookupByLibrary.simpleMessage("このような外部ツールがNightscoutに接続できるようにする為には、Nightscoutの設定で変数ENABLEに”cros”を追加する必要があります。"),
    "Initiale Version, alles ist neu!" : MessageLookupByLibrary.simpleMessage("初期バージョン。すべてが新しい！"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("インスリン"),
    "Insulin Kohlenhydrate Verhältnis (ICR)" : MessageLookupByLibrary.simpleMessage("インスリン炭水化物比(ICR)"),
    "Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE" : MessageLookupByLibrary.simpleMessage("インスリンカーボ比(ICR) 1Uあたり炭水化物 X g"),
    "Insulin Sensitivitäts Faktoren (ISF)" : MessageLookupByLibrary.simpleMessage("インスリン効果値(ISF)"),
    "Insulin auf maximale Stellen im Profil runden" : MessageLookupByLibrary.simpleMessage("インスリンをプロファイル中の最大精度で四捨五入"),
    "Insulin-Quelle" : MessageLookupByLibrary.simpleMessage("インスリンソース"),
    "Ja" : MessageLookupByLibrary.simpleMessage("はい"),
    "Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember" : MessageLookupByLibrary.simpleMessage("1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月"),
    "Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez" : MessageLookupByLibrary.simpleMessage("1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月"),
    "KH" : MessageLookupByLibrary.simpleMessage("炭水化物"),
    "Kalibrierung und blutige Messungen" : MessageLookupByLibrary.simpleMessage("血糖値とキャリブレーション"),
    "Katheterwechsel" : MessageLookupByLibrary.simpleMessage("ポンプ注入場所変更"),
    "Keine" : MessageLookupByLibrary.simpleMessage("なし"),
    "Keine Änderung" : MessageLookupByLibrary.simpleMessage("変更なし"),
    "Klein" : MessageLookupByLibrary.simpleMessage("小"),
    "Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("炭水化物"),
    "Kohlenhydrate und Bolusinsulin werden jetzt in den täglichen Grafiken angezeigt" : MessageLookupByLibrary.simpleMessage("1日グラフに炭水化物とボーラスインスリンが表示できるようになりました。"),
    "Lade die Basisdaten..." : MessageLookupByLibrary.simpleMessage("基礎データの読込中..."),
    "Legende" : MessageLookupByLibrary.simpleMessage("凡例"),
    "Legende für Katheter- und Sensorwechsel zur Tagesgrafik hinzugefügt." : MessageLookupByLibrary.simpleMessage("凡例にカニューレとセンサーの変更表示を追加しました。"),
    "Letzte 2 Tage" : MessageLookupByLibrary.simpleMessage("2日"),
    "Letzte 2 Wochen" : MessageLookupByLibrary.simpleMessage("2週間"),
    "Letzte 3 Monate" : MessageLookupByLibrary.simpleMessage("3か月"),
    "Letzte 3 Tage" : MessageLookupByLibrary.simpleMessage("3日"),
    "Letzte 3 Wochen" : MessageLookupByLibrary.simpleMessage("3週間"),
    "Letzte Unterzuckerung" : MessageLookupByLibrary.simpleMessage("最後の低血糖"),
    "Letzte Woche" : MessageLookupByLibrary.simpleMessage("1週間"),
    "Letzten Messwert in der Titelzeile anzeigen" : MessageLookupByLibrary.simpleMessage("タイトルバーに最新の血糖値を表示"),
    "Letzter Monat" : MessageLookupByLibrary.simpleMessage("1か月"),
    "Mahlzeitenbolus_bolus to handle a meal" : MessageLookupByLibrary.simpleMessage("食事用ボーラス"),
    "Man kann jetzt mehrere Benutzer anlegen. Das ist nützlich, um mehrere Nightscout-Instanzen auszuwerten (z.B. für Ärzte, Betreuer oder den Entwickler dieser Software)" : MessageLookupByLibrary.simpleMessage("複数のユーザーのレポートを作成できるようになりました。 複数のナイトスカウトの事例を分析するのに役立ちます(例: 医師、介護者、またはこのソフトウェアの開発者など)。"),
    "Material mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("小数点以下を表示する"),
    "Max" : MessageLookupByLibrary.simpleMessage("最大"),
    "Max Mustermann" : MessageLookupByLibrary.simpleMessage("ジョン・スミス"),
    "Maximaler Glukosewert in Grafiken:" : MessageLookupByLibrary.simpleMessage("グラフ中の最大血糖値:"),
    "Median" : MessageLookupByLibrary.simpleMessage("中央値"),
    "Mehr gibt es dazu eigentlich nicht zu sagen." : MessageLookupByLibrary.simpleMessage("何もありません。"),
    "Mess-\nwerte" : MessageLookupByLibrary.simpleMessage("値"),
    "Min" : MessageLookupByLibrary.simpleMessage("最小"),
    "Mit Google Drive synchronisieren" : MessageLookupByLibrary.simpleMessage("Google ドライブと同期"),
    "Mittel-\nwert" : MessageLookupByLibrary.simpleMessage("平均"),
    "Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|Sonntag" : MessageLookupByLibrary.simpleMessage("月曜日|火曜日|水曜日|木曜日|金曜日|土曜日|日曜日"),
    "Mo|Di|Mi|Do|Fr|Sa|So" : MessageLookupByLibrary.simpleMessage("月|火|水|木|金|土|日"),
    "Nacht (21:00 - 05:59)" : MessageLookupByLibrary.simpleMessage("夜間 (21:00 - 05:59)"),
    "Nahe zusammen liegende Werte aufsummieren" : MessageLookupByLibrary.simpleMessage("近い時間帯の処置をまとめて表示する"),
    "Name" : MessageLookupByLibrary.simpleMessage("氏名"),
    "Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat." : MessageLookupByLibrary.simpleMessage("名前、生年月日、インスリン、糖尿病発症日が空欄でも PDF の表示ができるようになりました。"),
    "Nein" : MessageLookupByLibrary.simpleMessage("いいえ"),
    "Neue Option im Profil, um fortlaufende Zeiten mit gleichen Werten zu einem Eintrag zusammen zu fassen." : MessageLookupByLibrary.simpleMessage("プロファイルで同じ値を持つ項目の時刻を統合する新しいオプションです。"),
    "Neuer Parameter für die Tagesgrafik, der festlegt, ob die Linien für die Notizen unter der Grafik bis zur Glukosekurve gezeichnet werden sollen oder nicht." : MessageLookupByLibrary.simpleMessage("1日グラフのパラメーターは1日グラフにポンプ履歴から血糖値曲線まで線を描画するかを決定する。"),
    "Neues PDF für eine Wochengrafik hinzugefügt, auf der die Glukosekurven der Woche übereinander gelegt werden." : MessageLookupByLibrary.simpleMessage("1週間の血糖値曲線が一度に表示される週間グラフのPDFページが追加されました。"),
    "Neuester Tag zuerst" : MessageLookupByLibrary.simpleMessage("表示日を昇順にする"),
    "Niedrigster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("期間中の最低血糖値"),
    "Nightscout Berichte" : MessageLookupByLibrary.simpleMessage("ナイトスカウト報告"),
    "Nightscout Reporter ist nun auch grösstenteils in Spanisch und Polnisch verfügbar. Entsprechende Buttons wurden dem Hauptmenü hinzugefügt. Danke an die fleissigen Übersetzer :)." : MessageLookupByLibrary.simpleMessage("ナイトスカウトレポーターの大部分がスペイン語とポーランド語に翻訳されました。 メインメニューに選択ボタンが追加されました。 勤勉な翻訳者のおか​​げです :)"),
    "Nightscout Reporter kann nun auch auf Portugiesisch verwendet werden." : MessageLookupByLibrary.simpleMessage("ナイトスカウトレポーターはポルトガル語でも利用可能になりました。"),
    "Nightscout Reporter kann nun auch in Japanisch verwendet werden." : MessageLookupByLibrary.simpleMessage("ナイトスカウトレポーターで日本語表示が可能になりました。"),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("ナイトスカウト サイト"),
    "Normal" : MessageLookupByLibrary.simpleMessage("正常"),
    "Notiz" : MessageLookupByLibrary.simpleMessage("メモ"),
    "Notiz-Linien bis zur Kurve zeichnen" : MessageLookupByLibrary.simpleMessage("ノートから血糖値カーブまで線を引く"),
    "Notizen" : MessageLookupByLibrary.simpleMessage("ポンプ履歴"),
    "Nur letzte Basalrate ausgeben" : MessageLookupByLibrary.simpleMessage("直近の基礎単位のみ表示"),
    "Nur letztes Profil ausgeben" : MessageLookupByLibrary.simpleMessage("最後のプロフィールのみ表示"),
    "Ok" : MessageLookupByLibrary.simpleMessage("OK"),
    "Optionen für die PDFs, die eine eindeutige Beziehung zu einem laufenden Loop haben, werden nun in Blau dargestellt. Das vereinfacht es, PDFs zu erstellen, denen man nicht ohne Weiteres entnehmen kann, dass ein Loop vorliegt. Dazu müssen nur die Haken bei den blauen Optionen entfernt werden." : MessageLookupByLibrary.simpleMessage("実行中のループで、固有の関係のある PDF のオプションが青色で表示されます。これは、ループ実行中だと容易に推測できない PDF の作成を簡単にします。青色のオプションを外すだけです。"),
    "PDF anzeigen" : MessageLookupByLibrary.simpleMessage("PDFを開く"),
    "PDF erneut erzeugen" : MessageLookupByLibrary.simpleMessage("もう一度PDFを作成"),
    "PDF erzeugen" : MessageLookupByLibrary.simpleMessage("PDF 作成"),
    "PDF für Profildaten" : MessageLookupByLibrary.simpleMessage("プロファイルデータ用PDF"),
    "PDF herunterladen (bei einigen Browsern benötigt)" : MessageLookupByLibrary.simpleMessage("PDFをダウンロードする (一部のブラウザで必要)"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("PDFを同じウィンドウで開く"),
    "PGR" : MessageLookupByLibrary.simpleMessage("PGR"),
    "Patient Glykämischer Status (PGS)" : MessageLookupByLibrary.simpleMessage("血糖状態 (PGS)"),
    "Pausiert" : MessageLookupByLibrary.simpleMessage("一時停止"),
    "Polski" : MessageLookupByLibrary.simpleMessage("Polski"),
    "Português" : MessageLookupByLibrary.simpleMessage("Português"),
    "Problem auf GitHub melden" : MessageLookupByLibrary.simpleMessage("GitHub に問題を報告"),
    "Profil" : MessageLookupByLibrary.simpleMessage("プロフィール"),
    "Profil-Basalrate" : MessageLookupByLibrary.simpleMessage("基礎単位（プロファイル）"),
    "Profileinstellungen" : MessageLookupByLibrary.simpleMessage("プロフィール設定"),
    "Profilwechsel" : MessageLookupByLibrary.simpleMessage("プロフィール切替"),
    "Protokoll" : MessageLookupByLibrary.simpleMessage("ログ"),
    "Quelle: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)" : MessageLookupByLibrary.simpleMessage("文献：Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)"),
    "Querformat" : MessageLookupByLibrary.simpleMessage("横向き"),
    "Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse." : MessageLookupByLibrary.simpleMessage("PDF のページの順番を変更しました。グルコース変動パターンは分析の後に出ます。"),
    "Reservoirwechsel" : MessageLookupByLibrary.simpleMessage("リザーバー交換"),
    "SMB" : MessageLookupByLibrary.simpleMessage("SMB"),
    "SMB Werte anzeigen" : MessageLookupByLibrary.simpleMessage("SMB 値を表示"),
    "SMB an der Kurve platzieren" : MessageLookupByLibrary.simpleMessage("曲線上に SMB を表示"),
    "Schliessen" : MessageLookupByLibrary.simpleMessage("閉じる"),
    "Schliessen Button im Nachrichtenbereich hinzugefügt." : MessageLookupByLibrary.simpleMessage("メッセージエリアに閉じるボタンを追加しました。"),
    "Sechs Monate vorher" : MessageLookupByLibrary.simpleMessage("6か月前"),
    "Sechzehn" : MessageLookupByLibrary.simpleMessage("16"),
    "Sekunden anzeigen" : MessageLookupByLibrary.simpleMessage("秒を表示"),
    "Sensorwechsel" : MessageLookupByLibrary.simpleMessage("センサー交換"),
    "Slovenský" : MessageLookupByLibrary.simpleMessage("Slovenský"),
    "Soll der Benutzer mit der URL" : MessageLookupByLibrary.simpleMessage("ナイトスカウトの URL が必要です"),
    "Spalte HbA1c" : MessageLookupByLibrary.simpleMessage("A1C の列"),
    "Spalte HbA1c zu Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("日別統計に A1C を追加"),
    "Spalte Messwerte" : MessageLookupByLibrary.simpleMessage("値数の列"),
    "Spalte Standardabweichung" : MessageLookupByLibrary.simpleMessage("標準偏差の列"),
    "Spalte TDD" : MessageLookupByLibrary.simpleMessage("TDD の列"),
    "Spalte Variationskoeffizient" : MessageLookupByLibrary.simpleMessage("血糖変動係数の列"),
    "Spalten Perzentile" : MessageLookupByLibrary.simpleMessage("パーセントの列"),
    "Spalten für 10% und 90% anzeigen" : MessageLookupByLibrary.simpleMessage("10% と 90% の列を表示"),
    "Spaltenbreite der Informationen in der Analyse erhöht" : MessageLookupByLibrary.simpleMessage("解析ページの情報を表示する列幅が広くなりました。"),
    "Speichern" : MessageLookupByLibrary.simpleMessage("保存"),
    "Standard_theme selection - standard" : MessageLookupByLibrary.simpleMessage("標準"),
    "Standardabweichung" : MessageLookupByLibrary.simpleMessage("標準偏差"),
    "Standardabweichung statt Anzahl" : MessageLookupByLibrary.simpleMessage("値のカウント数の代わりに標準偏差を表示"),
    "Standardbereich mit feinerer Abstufung" : MessageLookupByLibrary.simpleMessage("標準範囲を精細グラデーションで表示"),
    "Standardgrenzwerte" : MessageLookupByLibrary.simpleMessage("標準目標範囲"),
    "Startstunde" : MessageLookupByLibrary.simpleMessage("Starthour"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("標準偏差"),
    "Stunden" : MessageLookupByLibrary.simpleMessage("時間"),
    "Stündliche Statistik" : MessageLookupByLibrary.simpleMessage("毎時統計"),
    "Summe" : MessageLookupByLibrary.simpleMessage("計"),
    "Summen für Bolus Insulin, Basalrate für den Tag und Basalrate aus dem Profil zur Tagesgrafik hinzugefügt" : MessageLookupByLibrary.simpleMessage("1日グラフに、1日の総インスリン単位、プロファイルで設定した基礎単位を追加しました。"),
    "Symbole (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("記号 (カニューレなど)"),
    "Synchronisierung aufheben" : MessageLookupByLibrary.simpleMessage("同期をキャンセル"),
    "TDD" : MessageLookupByLibrary.simpleMessage("TDD"),
    "Tabelle" : MessageLookupByLibrary.simpleMessage("表"),
    "Tabelle mit Glukosewerten" : MessageLookupByLibrary.simpleMessage("表に炭水化物を表示"),
    "Tag (08:00 - 17:59)" : MessageLookupByLibrary.simpleMessage("日中 (08:00 - 17:59)"),
    "Tages-Basalrate" : MessageLookupByLibrary.simpleMessage("1日の基礎単位"),
    "Tagesanalyse" : MessageLookupByLibrary.simpleMessage("日間分析"),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("1日のグラフ"),
    "Tagesgrafikparameter zur Anzeige der Legende" : MessageLookupByLibrary.simpleMessage("ポンプ履歴を表示するための1日グラフ用パラメーター"),
    "Tagesgrafikparameter zur Anzeige von Notizen" : MessageLookupByLibrary.simpleMessage("ポンプ履歴を表示するための1日グラフ用パラメーター"),
    "Tagesgrafikparameter zur umgekehrten Sortierung hinzugefügt. Die Tage werden damit beginnend mit dem höchsten Datum ausgegeben." : MessageLookupByLibrary.simpleMessage("1日グラフを逆順に並べ替えるパラメータを追加しました。1日グラフは、最も古い日付から作成されます。"),
    "Tagesnamen in Grafik anzeigen" : MessageLookupByLibrary.simpleMessage("グラフに日付を表示"),
    "Tagesprofil" : MessageLookupByLibrary.simpleMessage("1日のプロファイル"),
    "Tagesstartprofil anzeigen" : MessageLookupByLibrary.simpleMessage("開始日にプロファイルを表示"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("日別統計"),
    "Tagesstunden" : MessageLookupByLibrary.simpleMessage("日別毎時間"),
    "Tagestrend" : MessageLookupByLibrary.simpleMessage("1日の傾向"),
    "Temporäre Basalraten" : MessageLookupByLibrary.simpleMessage("一時基礎単位"),
    "Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt" : MessageLookupByLibrary.simpleMessage("絶対値の一時基礎単位が正しく表示されるようになりました。"),
    "Temporäre Profilwechsel werden jetzt erkannt und in der Tagesgrafik korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("一時的にプロファイル変更が、1日グラフ中で正しく認識され表示されるようになりました。"),
    "Temporäre Ziele" : MessageLookupByLibrary.simpleMessage("一時目標"),
    "Titelangaben für Datumsbereiche auf den PDFs vereinheitlicht" : MessageLookupByLibrary.simpleMessage("PDF のタイトルの日付情報が統一されました。"),
    "Trend" : MessageLookupByLibrary.simpleMessage("傾向"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("時間"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("時間"),
    "Unbegrenzt" : MessageLookupByLibrary.simpleMessage("無制限"),
    "Unterzuckerungen anzeigen" : MessageLookupByLibrary.simpleMessage("低血糖を表示"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("ナイトスカウトの URL (例: https://xxx.herokuapp.com)"),
    "VarK\nin %" : MessageLookupByLibrary.simpleMessage("CV in %"),
    "Verbinde zu Google Drive..." : MessageLookupByLibrary.simpleMessage("Googleドライブに接続中…"),
    "Verbinde zu Google..." : MessageLookupByLibrary.simpleMessage("グーグルに接続中…"),
    "Verbindung zu Google Drive herstellen" : MessageLookupByLibrary.simpleMessage("Googleドライブに接続"),
    "Verbindung zu Google Drive trennen" : MessageLookupByLibrary.simpleMessage("Googleドライブから切断"),
    "Vergleich" : MessageLookupByLibrary.simpleMessage("比較"),
    "Version" : MessageLookupByLibrary.simpleMessage("バージョン"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("分布"),
    "Verzögerter Bolus" : MessageLookupByLibrary.simpleMessage("遅延ボーラス"),
    "Vier" : MessageLookupByLibrary.simpleMessage("4"),
    "Von" : MessageLookupByLibrary.simpleMessage("から"),
    "Vor der Erzeugung eines PDFs wird noch ein Dialog angezeigt, auf dem man Parameter für alle erzeugten PDFs eingeben kann. Man kann dort den Zielbereich auf den Standardbereich festlegen, den Ärzte gerne sehen. Das hat Auswirkungen auf alle Darstellungen des Zielbereichs, sowie auf die Verteilung der Werte innerhalb und ausserhalb des Zielbereichs. Man kann dort auch den Maximalwert für Glukose in Grafiken festlegen. Dieser Wert wird in der Tagesgrafik, dem Perzentil Diagramm und der Wochengrafik verwendet. Wenn er auf \"Automatisch\" gesetzt wird, wird der Maximalwert wie bisher auch aus den vorhandenen Daten ermittelt. Ausserdem kann man hier angeben, ob man den aktuellen Zeitraum erzeugen möchte oder einen Vergleichszeitraum. Das ist nützlich, um dem Arzt die Gegenüberstellung von Werten der Vergangenheit und jetzt zu zeigen." : MessageLookupByLibrary.simpleMessage("PDF 作成前にダイアログを表示し、作成されたすべての PDF のパラメーターを入力できます。目標範囲を、医師が確認したい標準範囲へと設定できます。これは目標範囲のすべての表示に影響があり、目標範囲の内外の値の分布にも影響します。またグラフ中でブドウ糖の最大値もせってできます。この値は、1日グラフ、パーセンタイル図、週間グラフで使用されます。「自動」に設定されている場合、これまでと同様に既存のデータから最大値が決定されます。またここで、現在の期間または比較期間のどちらを生成するのか指定できます。過去と現在の値の比較を医師に示すのに役立ちます。"),
    "Warum werde ich mit mehreren Buttons genervt, statt eine einzelne PDF angezeigt zu kriegen?" : MessageLookupByLibrary.simpleMessage("なぜひとつの PDF を取得するのではなく、複数のボタンで表示されるのですか？"),
    "Was bisher geschah..." : MessageLookupByLibrary.simpleMessage("変更履歴…"),
    "Wechsel" : MessageLookupByLibrary.simpleMessage("変更"),
    "Wechsel (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("交換 (カニューレなど)"),
    "Weihnachten_theme selection - christmas" : MessageLookupByLibrary.simpleMessage("クリスマス"),
    "Wenn Sonderzeichen in den Daten vorhanden sind (z.B. Smileys in den Notizen), führte das zu einem Absturz während der PDF-Erstellung. Das wurde behoben, indem diese Sonderzeichen aus der Ausgabe entfernt werden." : MessageLookupByLibrary.simpleMessage("データ中に特殊文字がある場合 (ポンプ履歴にスマイルマークなど)、PDFの作成中にクラッシュが発生していました。出力時に特殊文字を削除するように修正しました。"),
    "Wenn auf der Profilseite leere Spalten vorkommen, führt das nicht mehr zu einer leeren Seite." : MessageLookupByLibrary.simpleMessage("プロファイルページの空の列がある場合も、空のページになりません。"),
    "Wenn das erzeugte PDF zu gross wird, wird es nun auf mehrere PDF-Dateien aufgeteilt. In diesem Fall wird es nicht direkt geöffnet, sondern es wird eine Liste mit durchnummerierten Buttons angezeigt. Diese Buttons öffnen bei Betätigung das entsprechende PDF und erhalten einen Haken, um anzuzeigen, dass es geöffnet wurde. Das sollte es erleichtern, die PDFs nacheinander zu öffnen, weil normalerweise der Browser im Hintergrund verschwindet, wenn ein neues Fenster aufgemacht wird." : MessageLookupByLibrary.simpleMessage("作成した PDF のサイズが大きい場合は、複数のPDFファイルに分割されます。この場合、直接 PDF は開かず番号付きのボタンリストが表示されます。このボタンをクリックすると PDF が開いてチェックマークが表示されます。また新しウィンドウで開くと現在のブラウザウィンドウが背面に移動するため、PDF を簡単に開くことができます。"),
    "Wenn der Zeitraum leer ist, wird der Button für die Auswahl deutlich markiert und in dem Dialog zur Auswahl wird in der Titelzeile ein Hinweis darauf angezeigt." : MessageLookupByLibrary.simpleMessage("期間選択がされていない場合は、ハイライト表示されタイトルバーに期間を選択するためのボタンが表示されます。"),
    "Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet" : MessageLookupByLibrary.simpleMessage("ナイトスカウトのしきい値 (BG_TARGET_BOTTOM とBG_TARGET_TOP) が 70 と 180 の場合、デフォルトの目標範囲は分析ページに表示されません。"),
    "Wenn in den Einstellungen eine Verbindung zum Google-Konto hergestellt wird, werden die Cookies von Google verwendet und die Daten nicht mehr im localStorage des Browsers gespeichert, sondern im AppStorage auf Google Drive. Auf diese Art kann man die Daten zentralisiert verwalten und hat diese in jedem Browser zur Verfügung, der mit dem angegebenen Google Konto verbunden ist." : MessageLookupByLibrary.simpleMessage("Google アカウントに接続すると設定がブラウザのローカルストレージに保存されずに、Google ドライブのAPPストレージに保存されます。この場合、データが一元管理され Google アカウントに接続しているブラウザで利用できるようになります。"),
    "Wenn in den Einträgen Lücken von 15 Minuten oder mehr sind, führen diese zu einer Unterbrechung der Linie in der Tagesgrafik." : MessageLookupByLibrary.simpleMessage("入力に15分以上のずれがあると、1日チャートにもずれが生じます。"),
    "Wenn in einem Profil mehr Zeiten erfasst wurden, als auf eine Seite passen, wurden diese fortlaufend in die nächste Seite hineingeschrieben. Jetzt wird an geeigneter Stelle eine neue Seite ausgegeben." : MessageLookupByLibrary.simpleMessage("プロファイルに記載された項目が1ページに収まらない場合、次のページに重なって表示されていましたが次のページを作成して重ならなくなりました。"),
    "Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt." : MessageLookupByLibrary.simpleMessage("利用可能なデータが選択されていない場合は、ヒントと共に空白ページが生成されます。"),
    "Willkommen" : MessageLookupByLibrary.simpleMessage("ようこそ"),
    "Willkommen bei Nightscout Reporter!" : MessageLookupByLibrary.simpleMessage("ナイトスカウトレポーターへようこそ！"),
    "Wochengrafik" : MessageLookupByLibrary.simpleMessage("週間グラフ"),
    "Zeilen mit gleichen Werten zusammenfassen" : MessageLookupByLibrary.simpleMessage("同じ値の設定はまとめて表示"),
    "Zeitraum" : MessageLookupByLibrary.simpleMessage("期間"),
    "Zeitraum festlegen" : MessageLookupByLibrary.simpleMessage("期間を設定"),
    "Zeitzone" : MessageLookupByLibrary.simpleMessage("タイムゾーン"),
    "Zielbereich" : MessageLookupByLibrary.simpleMessage("目標範囲"),
    "Zielbereich mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("目標範囲に小数点以下を表示"),
    "Zugriffsschlüssel" : MessageLookupByLibrary.simpleMessage("アクセス・トークン"),
    "Zur Berechnung der Analyse, Tagesstatistik und Tagesgrafik wird nun die gleiche Datenbasis verwendet, so dass die Werte auf allen PDFs gleich sind." : MessageLookupByLibrary.simpleMessage("値がすべての PDF で同一になるように、同じデータベースを使用して、分析、日別統計、1日グラフを算出しました。"),
    "Zur Kachelansicht" : MessageLookupByLibrary.simpleMessage("タイトルビューへ"),
    "Zur Listenansicht" : MessageLookupByLibrary.simpleMessage("リストビューへ"),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("追加機能"),
    "Zusätzliche Informationen zu den PDFs und im UI hinzugefügt" : MessageLookupByLibrary.simpleMessage("PDFとその表示についての情報を追加しました。"),
    "Zusätzliche Spalte anzeigen" : MessageLookupByLibrary.simpleMessage("追加した列を表示"),
    "Zwei" : MessageLookupByLibrary.simpleMessage("2"),
    "_msgPageCount" : m0,
    "_msgPageCountEst" : m1,
    "ab 4,6" : MessageLookupByLibrary.simpleMessage("4,6～"),
    "bis" : MessageLookupByLibrary.simpleMessage("から"),
    "dd.MM.yyyy" : MessageLookupByLibrary.simpleMessage("yyyy/MM/dd"),
    "extrem hohes Risiko" : MessageLookupByLibrary.simpleMessage("リスクが非常に高い"),
    "g / Stunde" : MessageLookupByLibrary.simpleMessage("g / 時間"),
    "geringes Risiko" : MessageLookupByLibrary.simpleMessage("リスクが少ない"),
    "gesch. HbA1c" : MessageLookupByLibrary.simpleMessage("推定 A1C"),
    "hohes Risiko" : MessageLookupByLibrary.simpleMessage("リスクが高い"),
    "https://nightscout-reporter.zreptil.de/beta" : MessageLookupByLibrary.simpleMessage("https://nightscout-reporter.zreptil.de/beta"),
    "mg/dL" : MessageLookupByLibrary.simpleMessage("mg/dL"),
    "mmol/L" : MessageLookupByLibrary.simpleMessage("mmol/L"),
    "moderates Risiko" : MessageLookupByLibrary.simpleMessage("通常程度のリスク"),
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
    "ok" : MessageLookupByLibrary.simpleMessage("OK"),
    "sehr geringes Risiko" : MessageLookupByLibrary.simpleMessage("リスクがとても少ない"),
    "tl;dr" : MessageLookupByLibrary.simpleMessage("まとめ"),
    "verwerfen" : MessageLookupByLibrary.simpleMessage("取消"),
    "wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("削除してもよろしいですか?"),
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("平均基礎投与量 (日)"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("平均ボーラス投与量 (日)"),
    "Ø ICR/Stunde" : MessageLookupByLibrary.simpleMessage("平均 インスリンカーボ比/時間"),
    "Ø ISF/Stunde" : MessageLookupByLibrary.simpleMessage("平均 インスリン効果値/時間"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("平均投与インスリン量 (日)"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("平均インスリン比"),
    "Ø KH pro Tag" : MessageLookupByLibrary.simpleMessage("平均摂取炭水化物 (日)"),
    "Ø Microbolus pro Tag" : MessageLookupByLibrary.simpleMessage("平均マイクロボーラス (日)"),
    "Ø Zuckerwert" : MessageLookupByLibrary.simpleMessage("平均血糖値"),
    "Überprüfe Zugriff auf Nightscout ..." : MessageLookupByLibrary.simpleMessage("ナイトスカウトの接続を確認中…"),
    "Übersetzungen korrigiert" : MessageLookupByLibrary.simpleMessage("翻訳の修正"),
    "日本の" : MessageLookupByLibrary.simpleMessage("日本語")
  };
}
