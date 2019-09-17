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

  static m0(count) => "${Intl.plural(count, zero: '', one: '1 page', other: '${count} pages')}";

  static m1(count) => "${Intl.plural(count, zero: '', one: '1 page or more', other: '${count} pages or more')}";

  static m2(value) => "基礎単位：日(${value})";

  static m3(value) => "基礎単位：プロファイル設定(${value})";

  static m4(value) => "ボーラス　インスリン(${value})";

  static m5(value) => "CV [${value}%]";

  static m6(value) => "食事ボーラス(${value})";

  static m7(value) => "炭水化物(${value}g)";

  static m8(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} 日間/カニューレ)', other: '(${txt} 日間/カニューレ)')}";

  static m9(name, from, to) => "${name} ${from} => ${to}";

  static m10(url) => "${url} へのアクセスを確認しています…";

  static m11(value) => "補正ボーラス(${value})";

  static m12(value) => "${Intl.plural(value, zero: '値無し', one: '1個', other: '${value} 個')}";

  static m13(value) => "${value} 日";

  static m14(beg, end) => "${beg} - ${end}";

  static m15(max) => "不良(${max} 超)";

  static m16(min, max) => "良 (${min} to ${max})";

  static m17(min) => "利用不可(${min} 分未満)";

  static m18(min, max) => "良好(${min}～${max})";

  static m19(unit, value) => "重度の高血糖\n[${unit} x min²]";

  static m20(unit) => "重度の高血糖/日(${unit} 以上)";

  static m21(unit, value) => "重度の低血糖\n[${unit} x min²]";

  static m22(unit) => "重度の低血糖/日(${unit} 以下)";

  static m23(value) => "高血糖${value}";

  static m24(value) => "履歴${value}";

  static m25(unit) => "インスリン効果値(ISF) 1 IUでX ${unit} の血糖値が下がる";

  static m26(value) => "${value}g";

  static m27(value) => "g CH (${value} BU)";

  static m28(value) => "総インスリン量(${value})";

  static m29(error, stacktrace) => "データ取得エラー:${error}${stacktrace}";

  static m30(date) => "データを${date} より取得しています…";

  static m31(insulin, unit) => "SMB${insulin}${unit}";

  static m32(percent, duration) => "一時基礎料${percent}%/${duration} 分";

  static m33(target, duration, reason) => "目標範囲${target}、${duration} 分、理由：${reason}";

  static m34(value) => "低血糖${value}";

  static m35(gluc, unit) => "血糖値${gluc}${unit}";

  static m36(unit, value) => "平均血糖値[${unit}]";

  static m37(hba1c) => "指定期間の平均血糖値";

  static m38(min, max) => "不良 (${min} to ${max})";

  static m39(min, max) => "良好 (${min} to ${max})";

  static m40(max) => "とても悪い ( ${max} 超)";

  static m41(min) => "優秀(${min} 未満)";

  static m42(oldName, newName) => "プロフィール変更 - ${oldName} => ${newName}";

  static m43(oldName, newName, duration) => "Profileswitch - ${oldName} => ${newName} for ${duration} Minutes";

  static m44(howMany, fmt) => "${Intl.plural(howMany, zero: 'データがありません', one: '1件のデータ/分', other: '${fmt}分毎にデータ')}";

  static m45(howMany, fmt) => "${Intl.plural(howMany, zero: '値がありません', one: '1日あたり１データ', other: '1日あたり${fmt}データ')}";

  static m46(howMany, fmt) => "${Intl.plural(howMany, zero: 'データがありません', one: '1件のデータ/時間', other: '${fmt} 件のデータ/時間')}";

  static m47(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} 日間/リザーバー)', other: '(${txt} 日間/リザーバー)')}";

  static m48(value) => "SMB(${value})";

  static m49(count, txt) => "${Intl.plural(count, zero: '', one: '(${txt} 日間/センサー)', other: '(${txt} 日間/センサー)')}";

  static m50(value) => "(標準偏差 ${value})";

  static m51(value) => "ToR [${value}min/d]";

  static m52(min, max) => "1日あたりの目標範囲外の時間${min} から${max}。";

  static m53(unit) => "血糖値目標範囲${unit}";

  static m54(min, max, units) => "目標範囲(${min} - ${max} ${units})";

  static m55(value) => "目標値";

  static m56(time) => "${time}";

  static m57(time) => "午前${time}";

  static m58(time) => "午後${time}";

  static m59(begDate) => "${begDate} から有効";

  static m60(begDate, endDate) => "${begDate} から${endDate} まで有効";

  static m61(endDate) => "${endDate} まで有効";

  static m62(high) => "${high} を超えた値";

  static m63(low) => "${low} 未満の値";

  static m64(low, high) => "${low} から${high} の値";

  static m65(low, high) => "目標範囲 (${low} - ${high})";

  static m66(value) => "高い値 (${value})";

  static m67(value) => "低い値 (${value})";

  static m68(value) => "非常に高い ( > ${value})";

  static m69(value) => "非常に低い値 (< ${value})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "0,0 bis 2,0" : MessageLookupByLibrary.simpleMessage("0,0 ～ 2,0"),
    "1 Minute" : MessageLookupByLibrary.simpleMessage("１分間"),
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
    "1.3.0 - 19.08.2019" : MessageLookupByLibrary.simpleMessage("1.3.0 - 19/08/2019"),
    "1.3.1 - 22.08.2019" : MessageLookupByLibrary.simpleMessage("1.3.1 - 22/08/2019"),
    "1.3.2 - 05.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.2 - 05/09/2019"),
    "1.3.3 - 12.09.2019" : MessageLookupByLibrary.simpleMessage("1.3.3 - 12/09/2019"),
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
    "<br><br>Wenn diese URL geschützt ist, muss ausserdem das UserToken korrekt definiert sein." : MessageLookupByLibrary.simpleMessage("<br> <br> If this URL is protected, the UserToken must also be defined correctly."),
    "Absturz behoben, der auftrat, wenn kein passendes Profil für einen Zeitpunkt gefunden werden konnte" : MessageLookupByLibrary.simpleMessage("プロフィールが一定時間内に一致しない場合、クラッシュしていた問題が修正されました。"),
    "Acht" : MessageLookupByLibrary.simpleMessage("8"),
    "Aktuelle Periode" : MessageLookupByLibrary.simpleMessage("選択中の期間"),
    "Als ersten Tag der Woche festlegen" : MessageLookupByLibrary.simpleMessage("週の始まりの曜日を選択"),
    "Ampullenwechsel" : MessageLookupByLibrary.simpleMessage("リザーバー交換"),
    "Anmelden" : MessageLookupByLibrary.simpleMessage("サインイン"),
    "Anmeldung bei Google..." : MessageLookupByLibrary.simpleMessage("Signing in to Google…"),
    "Anmeldung erfolgreich" : MessageLookupByLibrary.simpleMessage("ログインしました"),
    "Anpas-\nsung" : MessageLookupByLibrary.simpleMessage("調整"),
    "Anzahl Ampullenwechsel" : MessageLookupByLibrary.simpleMessage("Count of reservoir changes"),
    "Anzahl Katheterwechsel" : MessageLookupByLibrary.simpleMessage("Count of site changes"),
    "Anzahl Messungen" : MessageLookupByLibrary.simpleMessage("値数"),
    "Anzahl Sensorenwechsel" : MessageLookupByLibrary.simpleMessage("Count of sensor changes"),
    "Anzahl der Sensoren zur Analyse hinzugefügt" : MessageLookupByLibrary.simpleMessage("分析へのセンサー数追加"),
    "Anzeigeeinstellungen" : MessageLookupByLibrary.simpleMessage("Displaysettings"),
    "Auf 10be muss beim Server in den Standardeinstellungen der Haken bei \"cors\" aktiviert werden, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen." : MessageLookupByLibrary.simpleMessage("On 10be, the default settings for the server must enable the \"cors\" checkbox so that external tools like this one can access the data."),
    "Auf Kacheln Bilder statt Namen anzeigen" : MessageLookupByLibrary.simpleMessage("Show images instead of names on tiles"),
    "Auf den Kacheln können nun Bilder statt der Namen angezeigt werden. Die Bilder zeigen dann das ungefähre Aussehen der entsprechenden Seite an. Sie entsprechen nicht den tatsächlichen Daten, sondern sind nur eine visuelle Darstellung, die es manchem Benutzer vielleicht einfacher machen, die gewünschten Seiten schneller auszuwählen. Die Aktivierung der Bilder erfolgt im Einstellungsdialog." : MessageLookupByLibrary.simpleMessage("Images can now be displayed on tiles instead of names. The pictures then show the approximate appearance of the corresponding page. They do not correspond to the actual data, but are just a visual representation that may make it easier for some users to quickly select the pages they want. The activation of the images can be done using the settings dialog."),
    "Auf den Seiten Profil und Basalrate wird in der Titelzeile jetzt wieder das Datum angezeigt, ab dem das Profil gilt." : MessageLookupByLibrary.simpleMessage("On the profile and basal rate pages, the title bar now again shows the date where this profile starts."),
    "Auf der Analyseseite kann statt der Anzahl der Werte bei den Zielbereichen jetzt die Standardabweichung der Werte im Zielbereich angezeigt werden." : MessageLookupByLibrary.simpleMessage("分析ページの値の個数の代わりに目標範囲の標準偏差が表示されるようになりました。"),
    "Auf der Analyseseite werden nun auch GVI und PGS ausgegeben." : MessageLookupByLibrary.simpleMessage("分析ページにGVIとPGSを追加しました。"),
    "Auf der Analyseseite wird jetzt auch die Standardabweichung aller Werte der Periode angezeigt." : MessageLookupByLibrary.simpleMessage("分析ページに選択範囲すべての標準偏差も表示されるようになりました。"),
    "Auf der Profilseite wurde die Spalte für die Werte von ICR verbreitert." : MessageLookupByLibrary.simpleMessage("プロフィールページのICRの列幅を広げました"),
    "Aufsummierte Werte" : MessageLookupByLibrary.simpleMessage("合計値"),
    "Ausgewertete Tage" : MessageLookupByLibrary.simpleMessage("評価期間"),
    "Ausrichtung" : MessageLookupByLibrary.simpleMessage("Orientation"),
    "Auswertung" : MessageLookupByLibrary.simpleMessage("分析"),
    "Basal" : MessageLookupByLibrary.simpleMessage("ベーサル"),
    "Basal mit zwei Nachkommastellen" : MessageLookupByLibrary.simpleMessage("ベーサルレート：小数点以下表示"),
    "Basalrate" : MessageLookupByLibrary.simpleMessage("基礎単位"),
    "Basalrate\nIE / Stunde" : MessageLookupByLibrary.simpleMessage("ベーサル U / 時"),
    "Behandlungen" : MessageLookupByLibrary.simpleMessage("トリートメント"),
    "Bei Tagesgrafiken und Wochengrafiken gibt es jetzt die Möglichkeit 1, 2, 4, 8 oder 16 Grafiken auf einer Seite zu platzieren." : MessageLookupByLibrary.simpleMessage("デイリーグラフとウィークリーグラフで1枚のPDFに複数の画像を表示できるようになりました。（1枚・2枚・4枚・8枚・16枚）"),
    "Bei der Berechnung der Kohlenhydrate werden weitere Datensätze berücksichtigt" : MessageLookupByLibrary.simpleMessage("追加データは炭水化物の計算に利用されます"),
    "Beim Auslesen des Profils ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("プロファイル読み込み中にエラーが発生しました。"),
    "Beim CGP werden die aktuellen Werte jetzt in der Legende angezeigt." : MessageLookupByLibrary.simpleMessage("The CGP now displays the current values in the legend."),
    "Beim Erzeugen des PDF ist ein Fehler aufgetreten." : MessageLookupByLibrary.simpleMessage("PDF作成中にエラーが発生しました。"),
    "Beim Laden der Daten wird das entsprechende Datumsformat zur Anzeige verwendet" : MessageLookupByLibrary.simpleMessage("データのロード中は、対応する日付フォーマットが進行状況の表示に使用されます。"),
    "Benutzer können ein User-Token angeben, um sich mit geschützten Nightscout-Instanzen zu verbinden" : MessageLookupByLibrary.simpleMessage("保護されたNightscoutに接続する為に、ユーザートークンを設定できます"),
    "Benutzer können nun gelöscht werden" : MessageLookupByLibrary.simpleMessage("ユーザー情報を削除で出来るようになりました。"),
    "Benutzerdaten" : MessageLookupByLibrary.simpleMessage("ユーザーデータ"),
    "Benutzerdaten werden nun verschlüsselt im Browser gespeichert" : MessageLookupByLibrary.simpleMessage("ユーザーデータは、ブラウザに暗号化されて保存されるようになりました。"),
    "Berechnete IE für Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("炭水化物より算出したインスリン量（U）"),
    "Berechnete IE für Kohlenhydrate anzeigen" : MessageLookupByLibrary.simpleMessage("炭水化物量から算出したインスリン量を表示する"),
    "Bereite Daten vor..." : MessageLookupByLibrary.simpleMessage("データを準備しています…"),
    "Bestätigung" : MessageLookupByLibrary.simpleMessage("確認"),
    "Bis" : MessageLookupByLibrary.simpleMessage("～"),
    "Bisher fehlende Summenwerte in der Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("日別統計に合計を追加しました。"),
    "Bitte einen Zeitraum wählen." : MessageLookupByLibrary.simpleMessage("期間を選択して下さい"),
    "Bitte überprüfe die Aktivierung der Wochentage unter dem Monat" : MessageLookupByLibrary.simpleMessage("カレンダーの下にあるチェック印を確認してください"),
    "Blutwerte werden jetzt auch bei mmol/L in den Grafiken korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("血糖値がmmol/lでグラフに正しく表示できるようになりました。"),
    "Bolus" : MessageLookupByLibrary.simpleMessage("ボーラス"),
    "Bolusarten anzeigen" : MessageLookupByLibrary.simpleMessage("ボーラスタイプを表示する"),
    "CGP" : MessageLookupByLibrary.simpleMessage("CGP"),
    "Comprehensive Glucose Pentagon" : MessageLookupByLibrary.simpleMessage("グルコース総合グラフ"),
    "Da wir seit einiger Zeit in Europa eine DSGVO haben, werden im Folgenden noch die Vorschriften dafür erfüllt. Der folgende Text ist nur auf Deutsch verfügbar:" : MessageLookupByLibrary.simpleMessage("Since we have a DSGVO in Europe, the following text meets the rules for it. The following text is only available in German:"),
    "Das \"Comprehensive Glucose Pentagon\" (Umfassendes Glukose Fünfeck) wurde als eigenes PDF und als Zusatzseite zur Tagesgrafik und Wochengrafik hinzugefügt. Es handelt sich hierbei um eine Darstellung von fünf Messgrössen, mit deren Hilfe sich die Qualität der Therapie ermitteln und mit anderen vergleichen lässt. Auf den Ausdrucken wird ein Verweis auf die zugrunde liegende Abhandlung ausgegeben." : MessageLookupByLibrary.simpleMessage("「グルコース総合グラフ」をデイリーチャートとウィークリーチャートに別ページとして追加しました。このグラフは５つの要素を表しており、各要素を比較して治療の質を決定できます。印刷出力では出力している各レポートの追加ページとして出力されます。"),
    "Das Anklicken des Nachrichtenbereichs schliesst diesen nicht mehr." : MessageLookupByLibrary.simpleMessage("メッセージエリアをクリックしても、ページが閉じなくなりました。"),
    "Das Control für die Eingabe des Zeitraums wurde angepasst, damit es auf schmalen Display auch korrekt dargestellt wird." : MessageLookupByLibrary.simpleMessage("期間選択の選択画面が、狭いディスプレイで正しく表示されるように調整しました。"),
    "Das Enddatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("終了日が正しくありません"),
    "Das PDF für die Basalrate war nicht korrekt, wenn nicht für jede Stunde ein Wert vorlag." : MessageLookupByLibrary.simpleMessage("ベーサルレートPDFは、毎時間の値が無い場合は正しく表示できませんでした。"),
    "Das PDF wurde erstellt. Wenn es nicht angezeigt wird, dann ist vermutlich ein Popup-Blocker aktiv, der die Anzeige verhindert. Diesen bitte deaktivieren." : MessageLookupByLibrary.simpleMessage("PDFが作成されました。表示されない場合、ブラウザのポップアップ禁止設定が有効になっている可能性がありますので、ご確認ください。"),
    "Das Profil-PDF wird nun im Querformat erzeugt, um auch Profile mit vielen Einträgen für die Parameter brauchbar darstellen zu können." : MessageLookupByLibrary.simpleMessage("パラメータのエントリーが多いプロファイルでもPDFが横長で出力され表示できるようになりました。"),
    "Das Startdatum ist nicht korrekt" : MessageLookupByLibrary.simpleMessage("開始日が正しくありません"),
    "Das User-Token wird nur benötigt, wenn der Zugriff in Nightscout über AUTH_DEFAULT_ROLES eingeschränkt wurde" : MessageLookupByLibrary.simpleMessage("NightscoutへのアクセスをAUTH_DEFAULT_ROLESで設定している場合は、ユーザートークンを入力する必要があります。"),
    "Das gelbe Fünfeck stellt den Wertebereich des angegebenen Zeitraums dar." : MessageLookupByLibrary.simpleMessage("黄色の五角形は、選択期間の値を表しています"),
    "Das grüne Fünfeck stellt den Wertebereich eines gesunden Menschen ohne Diabetes dar." : MessageLookupByLibrary.simpleMessage("緑色の五角形の範囲は、糖尿病では無い人の値を表しています"),
    "Daten für die Glukosewerte mit fehlerhaftem Datumsformat werden jetzt trotzdem korrekt ausgelesen." : MessageLookupByLibrary.simpleMessage("間違っている血糖値と日付形式のデータも正しく読み込めます。"),
    "Daten verschiedener Uploader werden nun besser interpretiert." : MessageLookupByLibrary.simpleMessage("異なるアップローダーからのデータを正確に処理できるようになりました。"),
    "Daten, die von xDrip als sync markiert wurden, werden bei der Auswertung ignoriert." : MessageLookupByLibrary.simpleMessage("xDripより同期されたデータは計算時に無視されます。"),
    "Datenschutzerklärung" : MessageLookupByLibrary.simpleMessage("著作権"),
    "Datum" : MessageLookupByLibrary.simpleMessage("日付"),
    "Dauer der Insulinaktivität (DIA)" : MessageLookupByLibrary.simpleMessage("インスリン作用時間(DIA)"),
    "Dauer der Kohlenhydrataktivität" : MessageLookupByLibrary.simpleMessage("炭水化物作用時間"),
    "Der Fehler im Profil, der dazu führte, dass die Werte für ISF und Zielbereich falsch umgerechnet werden, wurde behoben." : MessageLookupByLibrary.simpleMessage("プロフィールのISFと目標範囲の値が正確に変換されないバグを修正しました。"),
    "Der Zeitraum enthält keine auswertbaren Tage" : MessageLookupByLibrary.simpleMessage("選択した期間に表示できる日が含まれていません"),
    "Der prognostische glykämische Risikoparameter stellt das Risiko von Langzeitkomplikationen dar (bisher nicht durch Studien belegt)." : MessageLookupByLibrary.simpleMessage("予後血糖リスクパラメーターは、長期の合併症リスクを表します(現在までの研究では証明されていません)。"),
    "Details des Profilwechsels" : MessageLookupByLibrary.simpleMessage("Details of Profileswitch"),
    "Deutsch" : MessageLookupByLibrary.simpleMessage("ドイツ語"),
    "Diabetes seit" : MessageLookupByLibrary.simpleMessage("糖尿病歴"),
    "Die Analyse-Seite wurde überarbeitet und zeigt nun Überschriften über den Bereichen an" : MessageLookupByLibrary.simpleMessage("分析ページ上部に見出しが表示されるようにデザインを変更しました。"),
    "Die Angabe DIA auf der Profilseite wird nun mit zwei Nachkommastellen angezeigt." : MessageLookupByLibrary.simpleMessage("プロフィールのインスリン作用時間は、小数点以下2桁で表示されるようになりました。"),
    "Die Aufteilung auf mehrere PDF-Dateien funktioniert jetzt besser." : MessageLookupByLibrary.simpleMessage("PDFファイルの複数分割が改善されました。"),
    "Die Auswahl des Zeitraums ist nun flexibler. Die Auswahl erfolgt in einem Dialog, der die eingestellte Sprache berücksichtigt. Mit der Auswahl der vorbelegten Bereiche (Heute, Letzte Woche, usw.) wird festgelegt, dass beim nächsten Aufruf das aktuelle Datum als Grundlage für den Bereich verwendet wird. Wenn der Bereich direkt im Kalender festgelegt wird, dann gilt dieser beim nächsten Aufruf so wie er festgelegt wurde. Standardmässig ist der erste Tag der Woche jetzt ein Montag. Dieser kann aber durch Anklicken des Wochentags in der Titelzeile des Monats auf die eigene Präferenz festgelegt werden. Die Eingabe der Datumsfelder erfolgt in der Form, die der Sprache entspricht (Tag.Monat.Jahr für deutsch, Monat/Tag/Jahr für englisch)." : MessageLookupByLibrary.simpleMessage("期間の選択がより自由になりました。選択は、言語を考慮したダイアログで行われます。規定の範囲（本日、先週等）を選択すると現在の日付が次の設定での基準日として設定されます。範囲をカレンダーで直接設定している場合は、設定に従って定義されます。又、デフォルトでは週の始まりは月曜日ですが、タイトルバーの曜日をクリックする事で変更が可能です。日付フィールドは言語に対応するフォーマットで入力されます。(ドイツ語：日/月/年　英語：月/日/年)"),
    "Die Auswahl des Zeitraums und der Benutzer wurde in die Titelzeile verschoben." : MessageLookupByLibrary.simpleMessage("The selection of the period and the user has been moved to the title bar."),
    "Die Balken für das Bolusinsulin in der Tagesgrafik werden nun entsprechend dem Maximalwert an Bolusinsulin an dem Tag skaliert." : MessageLookupByLibrary.simpleMessage("デイリーグラフのボーラスバーは、その日の最大ボーラスによって縮尺が決定されます。"),
    "Die Basalratenprofile für den Tag werden nun auch anhand der Behandlungsdaten ermittelt. Profilwechsel werden in der Tagesgrafik angezeigt und sollten ab dem Zeitpunkt des Wechsels auch eine korrekte Basalratenanpassung anzeigen." : MessageLookupByLibrary.simpleMessage("ベーサルレートも治療データによりプロフィールが変更されます。プロフィールされた場合は、新しいプロファイルを表示します。"),
    "Die Berechnung der PDF-Grössen wurde korrigiert, so dass nun weniger PDFs erstellt werden, wenn sie aufgrund der Grösse aufgeteilt werden." : MessageLookupByLibrary.simpleMessage("ＰＤＦサイズの計算を修正しました。サイズにより分割する際のＰＤＦ数が少なくなりました。"),
    "Die Berechnung der Summenzeile auf der Seite Tagesstatistik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("日別統計の合計行の計算を修正しました。"),
    "Die Berechnung der tatsächlichen Basalrate wurde korrigiert." : MessageLookupByLibrary.simpleMessage("実際のベーサルレートの計算式を修正しました。"),
    "Die Berechnung des täglichen Insulins berücksichtigt nun auch die SMB." : MessageLookupByLibrary.simpleMessage("SMBが1日のインスリン量にも考慮されるようになりました。"),
    "Die Buttons für die vergangenen Perioden werden nicht angezeigt, wenn kein Zeitraum oder kein PDF ausgewählt wurde." : MessageLookupByLibrary.simpleMessage("選択期間及びPDF作成がされてい場合は、過去の期間ボタンは表示されません。"),
    "Die Daten, die Du hier eingibst, werden normalerweise im localStorage des Browsers gespeichert. Dieser beinhaltet webseitenbezogene Daten, die nur von dieser Webseite ausgelesen werden können. In diesem Fall werden keine Cookies verwendet und es werden keine Daten auf Servern gespeichert. Es wird lediglich eine Verbindung zur angegebenen Nightscout-Instanz aufgebaut und die dort vorhandenen Daten ausgelesen, um daraus ein PDF-Dokument zu erzeugen. Dieses kann dann dem Diabetesberater oder sonstigen Interessenten vorgelegt werden." : MessageLookupByLibrary.simpleMessage("このページに入力したデータは、当ページからのみ読み込みが可能でブラウザのローカルストレージに保存されます。データはサーバーに保存されずクッキーも使用しません。Nightscoutへ接続しデータを読み込みPDFを作成します。PDFを利用して糖尿病カウンセラーや医療関係者に提出出来る場合があります。（※医療関係者に提出する場合は、関係機関にご相談ください。）"),
    "Die Einstellungen für das Herunterladen des PDFs, das Öffnen im gleichen Fenster und die Maximalgrösse der PDFs wurden von der Synchronisierung mit Google Drive ausgenommen, weil sie speziell für den verwendeten Browser oder das verwendete Gerät benötigt werden. Sie werden nach wie vor gespeichert, aber sie werden nicht zwischen verschiedenen Browsern synchronisiert." : MessageLookupByLibrary.simpleMessage("The settings for downloading the PDF, opening the PDF in the same window, and the maximum size of the PDFs were excluded from syncing with Google Drive because they are specific to the browser or device you are using. They are still saved, but they are not synchronized between different browsers."),
    "Die Ermittlung der Einheit (mg/dl oder mmol/l) wird nun flexibler gehandhabt, so dass auch Leerzeichen in der entsprechenden Einstellung nicht mehr zu einer Fehlinterpretation führen." : MessageLookupByLibrary.simpleMessage("単位(mg/dl or mmol/l) の決定が柔軟に対応できるようになりました。設定にスペースが入っている場合でも間違える事がなくなりました。"),
    "Die Farben für Dialoge und Scrollbars wurden angepasst." : MessageLookupByLibrary.simpleMessage("ダイアログとスクロールバーの色を調整しました。"),
    "Die Genauigkeit der Insulindosierung wird aus dem Profil ermittelt. Der Wert mit der höchsten Genauigkeit legt fest, mit wieviel Nachkommastellen Basalratenwerte angezeigt werden." : MessageLookupByLibrary.simpleMessage("正確なインスリン投与量はプロフィールより決定されます。正確な値はベーサルレートの小数点以下の桁数を決定します。"),
    "Die Glukosekurve der täglichen Grafiken wurde von fehlenden Daten befreit." : MessageLookupByLibrary.simpleMessage("デイリーグラフ中の血糖値曲線は測定値が欠損している場合も適切に表示できます。"),
    "Die Icons auf einigen Buttons waren zu nahe am Text" : MessageLookupByLibrary.simpleMessage("テキストに近すぎる場所にあった一部のアイコンを修正しました。"),
    "Die Kohlenhydratangaben auf der Tagesgrafik werden jetzt ohne den Zusatz KH ausgegeben." : MessageLookupByLibrary.simpleMessage("デイリーグラフ上のカーボに接頭語KHなしで表示されるようになりました。"),
    "Die Links zu Nightscout und den Reports von Nightscout im Menü funktionieren jetzt auch richtig, wenn ein Usertoken angegeben wurde." : MessageLookupByLibrary.simpleMessage("NightscoutとNightscoutレポートのリンクがユーザートークンを設定すると動作するようになりました。"),
    "Die Listenansicht ist jetzt wieder scrollbar." : MessageLookupByLibrary.simpleMessage("The listview is scrollable again."),
    "Die Microboli des Minimed 600 Uploaders werden jetzt auch ermittelt und in der Analyse ausgegeben, wenn sie vorhanden sind." : MessageLookupByLibrary.simpleMessage("解析には、Minimed600シリーズアップローダーのマイクロボーラスも表示されます。"),
    "Die Mischung von zwei Seiten auf einer PDF-Seite, die manchmal vorkam, wurde behoben." : MessageLookupByLibrary.simpleMessage("1つのPDFページに2ページ混在することがありましたが修正しました。"),
    "Die Möglichkeit für Beta-Funktionen wurde entfernt; die Betaversion ist nun hier zu finden:" : MessageLookupByLibrary.simpleMessage("ベータ機能の予定は削除されました。ベータバージョンは現在こちらから利用可能です。："),
    "Die Möglichkeit, die URL in der Titelzeile anzeigen zu lassen wurde entfernt, da jetzt der aktuelle Benutzer oder dessen URL direkt angezeigt wird" : MessageLookupByLibrary.simpleMessage("ユーザー名とユーザーのURLが直接表示されるようになった為、タイトルバーにURLを表示する機能は削除されました。"),
    "Die Positionierung der Notizen in der Tagesgrafik wurde korrigiert, so dass sie näher an der Uhrzeit stehen. Die Striche wurden so verkürzt, dass sie nur noch bis zum unteren Rand der Grafik gehen und nicht mehr durch die Wertetabelle." : MessageLookupByLibrary.simpleMessage("デイリーグラフのポンプ履歴の表示位置は、時間近くに表示されるように修正しました。短くグラフの下部に表示し、値と重なりません。"),
    "Die Profilseite wurde angepasst, damit Einträge für 24 Stunden auf eine Seite passen." : MessageLookupByLibrary.simpleMessage("プロフィールページでは24時間のエントリーが1ページに収まるように調整されています。"),
    "Die Reihenfolge der Formulare kann nun verändert werden. Dazu einfach das Handle auf der linken Seite des Buttons für das Formular anklicken, festhalten und an die Stelle ziehen, vor der es ausgedruckt werden soll." : MessageLookupByLibrary.simpleMessage("作成するPDFの順序を変更できるようになりました。作成する項目を選択する画面で、項目の左側をクリックしたまま上下のドラッグして任意の場所に移動してください。"),
    "Die Seiten Profil und Basalrate zeigen nun bei einem Profil, das nur temporär während eines Tages aktiv war den Zeitraum an, in dem es aktiv war." : MessageLookupByLibrary.simpleMessage("一時的に設定した１日間のプロフィールとベーサルレートは、この期間だけを別ページで表示するようになりました。"),
    "Die Skalen an den Grafiken wurden überarbeitet. Sie zeigen jetzt für mmol/L ganzzahlige Werte an und die Einheiten wurden entfernt. Diese stehen nur noch unten an der Grafik. Das betrifft die täglichen Grafiken, wöchentlichen Grafiken und das Glukose Percentil Diagramm." : MessageLookupByLibrary.simpleMessage("グラフの縮尺が変更されました。これにより単位が削除され血糖値の数値のみが表示されます。単位はグラフの下部に表示されます。（デイリーグラフ・ウィークリーグラフ・血糖値パーセントチャート）"),
    "Die Spalten auf der Profilseite wurden korrigiert, damit auch längere Zeitnamen (z.B. in spanisch) Platz finden." : MessageLookupByLibrary.simpleMessage("ページの列表示が修正され、より長い時間名を表示できるようになりました(例：スペイン語等)"),
    "Die Standardabweichung wird jetzt auch bei mmol/L korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("標準偏差は、mmol / Lを選択しても正しく表示されるようになりました。"),
    "Die Tagesstatistik zeigt mmol/l-Werte nun korrekt an" : MessageLookupByLibrary.simpleMessage("日別統計のmmol/l表示ができるようになりました。"),
    "Die URL wurde noch nicht festgelegt" : MessageLookupByLibrary.simpleMessage("URLが設定されていません。"),
    "Die URL wurde noch nicht festgelegt." : MessageLookupByLibrary.simpleMessage("URLが設定されていません"),
    "Die Vorschaubilder auf den Kacheln passen sich abhängig von den ausgewählten Optionen teilweise an (z.B. die Auswahl von CGP bei Tagesgrafiken)." : MessageLookupByLibrary.simpleMessage("The preview images on the tiles will partially adjust depending on the options selected (for example, choosing CGP for day graphics)."),
    "Die Webseite verwendet hauptsächlich Javascript zur Erledigung ihrer Aufgaben. Bei der Erzeugung des PDF-Dokuments kommen Javascript und PHP zum Einsatz." : MessageLookupByLibrary.simpleMessage("当ウェブサイトはJavascriptを利用しています。PDFを作成する時はJavascriptとPHPを使用します。"),
    "Die Werte für den Standardzielbereich auf der Analyse-Seite werden nun korrekt ermittelt" : MessageLookupByLibrary.simpleMessage("分析ページのデフォルトのターゲット範囲の値が正しく計算されるようになりました。"),
    "Die angegebene URL ist nicht erreichbar. Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. " : MessageLookupByLibrary.simpleMessage("The specified URL is not reachable. If the URL is correct, then it may be due to the Nightscout-settings. "),
    "Die eigenen Grenzwerte auf der Analyseseite in mmol/L werden nun korrekt berechnet." : MessageLookupByLibrary.simpleMessage("分析ページにmmol/Lを使用時のリミット設定が正しく計算されるようになりました。"),
    "Die fehlerhafte Platzierug der blutigen Werte bei mmol/L in der Tagesgrafik wurde korrigiert." : MessageLookupByLibrary.simpleMessage("デイリーグラフの血糖値をmmol/L標記にした場合も正しい位置に表示されるようになりました。"),
    "Die fehlerhafte Zentrierung der Auswahlbuttons wurde korrigiert." : MessageLookupByLibrary.simpleMessage("メインページのボタン配置の間違いを修正しました。"),
    "Die glykämische Variabilität stellt die Streuung der Werte um den glykämischen Mittelwert herum in Prozent dar." : MessageLookupByLibrary.simpleMessage("血糖変動係数は、血糖値平均値前後の変動をパーセントで表示したものです"),
    "Die mittlerweile überflüssige Option zur Darstellung der Basalrate mit zwei Nachkommastellen wurde aus der Tagesgrafik entfernt." : MessageLookupByLibrary.simpleMessage("デイリーグラフからベーサルレート少数点の古いオプションを削除しました。"),
    "Die teilweise falsch zugewiesenen Grenzwerte für die Bereiche (niedrig, normal, hoch) wurden korrigiert." : MessageLookupByLibrary.simpleMessage("一部間違って割り当てていたエリア(低血糖、普通、高血糖) は修正されました。"),
    "Diese Seite dient der Erzeugung von PDF-Dokumenten mit den bei Nightscout gespeicherten Daten. Dafür ist es notwendig, auf diese Daten zugreifen zu können, weshalb zunächst ein paar Einstellungen gespeichert werden müssen. Solange diese nicht vorhanden und gültig sind, kann die Seite nichts für Dich tun." : MessageLookupByLibrary.simpleMessage("このページはNightscoutのデータを利用してPDFを作成します。最初に Nightscoutにアクセスできるように設定を保存する必要があります。 設定を保存し有効にしなければ利用できません。"),
    "Diese Seite hinzugefügt. Sie wird jedesmal beim Start von Nightscout Reporter angezeigt, wenn sie in der aktuellen Version noch nicht angezeigt wurde. Ausserdem kann sie im Hamburgermenü wieder aufgerufen werden." : MessageLookupByLibrary.simpleMessage("このページを追加しました。リリースの最新バージョンで表示されていない場合はNightscout　Reporterの起動時に表示されます。又、メニューからも再度表示できます。"),
    "Diese Webseite speichert keine Daten auf Servern. Die benötigten Daten werden von der eingegebenen URL zur Nightscout-Instanz geholt und als PDF aufbereitet. Die Daten, die zur Funktion der Webseite benötigt werden, werden im localStorage des Browsers gespeichert und nicht an den Server übermittelt. Wenn die Synchronisierung mit Google Drive aktiviert wird, dann werden diese Daten zusätzlich in den Anwendungsdaten auf dem Google Drive des verbundenen Kontos gespeichert." : MessageLookupByLibrary.simpleMessage("This website does not store data on servers. The required data is retrieved from the entered URL to the Nightscout instance and formatted as PDF. The data required for the website to work is stored in the localStorage of the browser and not transmitted to the server. If syncing with Google Drive is turned on, then that data will also be stored in the application data on Google Drive\'s associated account."),
    "Dieser Regler legt fest, wie gross eine Ausgabe maximal werden darf, bevor sie auf mehrere PDF-Dateien aufgeteilt wird. Wenn bei Erstellung eines PDFs ein leeres Fenster angezeigt wird, dann hilft es normalerweise, diesen Regler weiter nach links zu bewegen." : MessageLookupByLibrary.simpleMessage("このスライダーはPDFが、複数のファイルに分割される時の最大サイズを設定します。PDFを作成する時に空白ページが表示される場合は、このスライダーを左へ移動すると改善する場合があります。"),
    "Diverse Abstürze beim Auslesen der Daten bereinigt" : MessageLookupByLibrary.simpleMessage("読み取り時のクラッシュの修正"),
    "Dämmerung (06:00 - 08:00, 18:00 - 20:00)" : MessageLookupByLibrary.simpleMessage("早朝、夕方 (06:00 - 08:00, 18:00 - 20:00)"),
    "Eigene Grenzwerte" : MessageLookupByLibrary.simpleMessage("自己目標範囲"),
    "Ein Fehler wurde behoben, der dafür sorgte, dass die letzten Tage bestimmter Monate nicht im Kalender-Control angezeigt wurden." : MessageLookupByLibrary.simpleMessage("カレンダーコントロールの特定月の最後日数が表示されないバグを修正しました。"),
    "Ein Fehler wurde behoben, der in der Tagesgrafik dazu führte, dass Texte in der Legende andere Texte überschrieben haben." : MessageLookupByLibrary.simpleMessage("デイリーグラフが凡例に被るバグを修正しました。"),
    "Ein Fehler wurde wahrscheinlich behoben, der dazu führt, dass bei manchen Profilen der Wert für DIA nicht korrekt ausgelesen wurde." : MessageLookupByLibrary.simpleMessage("一部のプロフィールで誤ってDIAの数値が欠落するバグが修正されました。"),
    "Ein Link zur Facebookseite von Nightscout Reporter wurde im Menü hinzugefügt." : MessageLookupByLibrary.simpleMessage("ナイトスカウト レポーターのFacebookページへのリンクをメニューに追加しました。"),
    "Eine" : MessageLookupByLibrary.simpleMessage("1"),
    "Einige Browser sind nicht in der Lage PDF Dateien anzuzeigen, die eine bestimmte Grösse überschreiten. Da das von verschiedenen Faktoren abhängt, die sich nicht ohne Weiteres automatisch ermitteln lassen, gibt es die Möglichkeit, statt einer grossen PDF Datei, die nicht angezeigt werden kann, mehrere kleinere PDF Dateien zu erzeugen, die der Browser anzeigen kann. In den Einstellungen und hier kann diese Grösse festgelegt werden. Diese Seite hier wird nur angezeigt, wenn das PDF aufgeteilt werden musste. Wenn nur ein PDF erzeugt wurde, dann wird es direkt angezeigt." : MessageLookupByLibrary.simpleMessage("ブラウザによっては特定のサイズを超えるPDFを表示できません。表示できない大きなサイズのPDFを分割し、小さなサイズのPDFを複数作成する場合があります。又、このページはPDFを分割する必要がある場合にのみ表示されます。PDFを分割する必要が無い場合は直接表示されます。"),
    "Einige Formulare können nun mit Parametern konfiguriert werden; hierzu den Pfeil am rechten Rand des Formularbuttons anklicken und im aufgeklappten Bereich die entsprechenden Einstellungen vornehmen; der Pfeil erscheint erst, wenn das Formular zum Ausdruck markiert wurde" : MessageLookupByLibrary.simpleMessage("一部の印刷用フォームはパラメーターを使用して設定できるようになりました。フォームボタンの右側にある∨矢印をクリックして、下に開いたチェックボックスで表示設定をします。フォームボタンを選択するまで∨矢印は表示されません。"),
    "Einige der Optionen für die PDFs wurden hierarchisch angeordnet. Es macht z.B. keinen Sinn, die SMB Werte in der Tagesgrafik an der Kurve platzieren zu lassen, wenn die SMB Werte gar nicht angezeigt werden. Deswegen werden Optionen, die von einer anderen Option abhängen nur dann angezeigt, wenn die entsprechende Option markiert ist. Dadurch ändert sich leider auch die Speicherung der Optionen, weshalb sich die aktuelle Auswahl der Optionen bei manchen PDFs verändert. Da müssen die Optionen dann neu gesetzt werden." : MessageLookupByLibrary.simpleMessage("Some of the options for the PDFs have been arranged hierarchically. There is no point in having the SMB values placed in the daily graph at the curve if the SMB values are not displayed at all. Therefore, options that depend on another option are only displayed if the corresponding option is selected. This unfortunately also changes the storage of options, which is why the current selection of options for some PDFs changed. These options have to be set again."),
    "Einstellungen" : MessageLookupByLibrary.simpleMessage("設定"),
    "Einstellungen für die Verwendung der Seite vornehmen" : MessageLookupByLibrary.simpleMessage("設定"),
    "Einstellungen von Release-Version übernehmen" : MessageLookupByLibrary.simpleMessage("リリースバージョンから設定を移行する"),
    "English (GB)" : MessageLookupByLibrary.simpleMessage("英語(イギリス)"),
    "English (USA)" : MessageLookupByLibrary.simpleMessage("英語(アメリカ)"),
    "Erzeuge PDF..." : MessageLookupByLibrary.simpleMessage("PDFを作成中…"),
    "Es gibt in den Einstellungen eine Option, das PDF herunterladen zu lassen, statt es im Browser direkt anzeigen zu lassen. Das wird für Browser wie Edge benötigt." : MessageLookupByLibrary.simpleMessage("Edgeブラウザ等の為に、設定ページにPDFをブラウザで表示せずにダウンロードするオプションがあります。"),
    "Es gibt in den Einstellungen eine neue Option, um den letzten in Nightscout gespeicherten Glukosewert in der Titelzeile anzeigen zu lassen. Wenn diese Option aktiviert ist, wird der aktuelle Wert, das Alter des Wertes, der Trendpfeil und die Differenz zum vorherigen Wert rechts in der Titelzeile angezeigt. Diese Anzeige wird jede Minute aktualisiert, solange das Browserfenster den Eingabefokus besitzt. Wenn es diesen nicht hat, wird die Aktualisierung angehalten und der Wert ausgeblendet, um nicht unnötig Systemresourcen zu belasten." : MessageLookupByLibrary.simpleMessage("この設定にはNightscoutに保存されている最新の血糖値をタイトルバーに表示する新しいオプションがあります。有効にすると、現在の血糖値・経過時間・トレンド矢印及び以前の血糖値との差がタイトルバーの右側に表示されます。\nこの表示はブラウザに入力カーソルがある時は、毎分更新されます。入力カーソルが無い場合はシステムの負荷を避ける為、値は非表示になります。"),
    "Es gibt jetzt auch die Möglichkeit, Nightscout Reporter in europäischem Englisch darzustellen. Der Unterschied zum amerikanischen Englisch besteht derzeit lediglich im Datumsformat (gb: dd/MM/yyyy, us: MM/dd/yyyy)." : MessageLookupByLibrary.simpleMessage("Nightscout　Reporterをイギリス英語で使用できるようになりました。アメリカ英語との違いは日付表示のみです。(例：dd/MM/yyyy, us: MM/dd/yyyy)"),
    "Es gibt jetzt die Möglichkeit, PDFs vergangener Zeiträume zu erzeugen, ohne den Zeitraum anpassen zu müssen. Oberhalb des Buttons zur PDF-Erzeugung gibt es zwei Buttons, welche die PDFs für eine frühere Periode erzeugen. Der untere der beiden Buttons erzeugt die Vorperiode, der obere die vorletzte Periode. Auf den Buttons wird das Startdatum und das Enddatum angezeigt. Wenn z.B. als Zeitraum \"Letzte 2 Wochen\" gewählt wurde, dann wird mit dem unteren Button der Zeitraum von zwei Wochen beginnend vor vier Wochen erzeugt und mit dem oberen Button der Zeitraum von zwei Wochen beginnend vor sechs Wochen. Auf diese Art kann man recht einfach Vergleichsberichte erzeugen, um die Entwicklung der Werte zu erkennen. Auf den Seiten wird für diese Ausdrucke in der Kopfzeile das Wort \"Historisch 1\", bzw. \"Historisch 2\" oberhalb des Zeitraums ausgegeben. So kann man beim Vergleich der Werte die Daten voneinander unterscheiden." : MessageLookupByLibrary.simpleMessage("期間を新たに設定しなくても、過去に表示した期間のPDFを作成できるようになりました。PDFを作成するボタンの上に、前の期間を選択するボタンがふたつあります。ふたつのボタンの内、下側が直近に選択した期間で上側が最後から2番目の期間となります。ボタンには開始日と終了日が表示されます。又、期間「過去２週間」を選択すると、下側のボタンは4週前から始まる2週間の期間と上側のボタンでは4週間前から始まる2週間の期間が作成されます。\nこのように数値の変化を比較する為のレポートを容易に作成できます。又、ヘッダーに印刷されるページでは、上部に「履歴１」「履歴２」と表示されます。"),
    "Es ist jetzt möglich, die Buttons zur PDF-Auswahl als Kacheln darstellen zu lassen. Die Option dazu ist im Menü auf der linken Seite zu finden. In der Kachelansicht werden die Buttons über die verfügbare Fläche verteilt und sind so auf kleinen Geräten leichter zu treffen. Ausserdem sieht man dann normalerweise alle verfügbaren PDFs auf einen Blick und muss nicht scrollen. Auf den aktivierten Kacheln wird angezeigt, an welcher Stelle im PDF die entsprechenden Seiten ausgegeben werden und wieviele Seiten die entsprechende Kachel ausgibt. Diese Zahl kann für die meisten Kacheln korrekt ermittelt werden, bei einigen ist das aber ohne Auswertung der Daten nicht möglich (z.B. Profile und Protokoll). In diesem Fall wird entweder keine Seitenzahl oder eine Mindestzahl an Seiten angegeben. Sobald die Erstellung des PDFs erfolgt ist, werden die korrekten Zahlen angezeigt. Die Reihenfolge der Kacheln kann verändert werden, indem man sie festhält und an die Stelle verschiebt, an der man sie gerne hätte. Nach Anklicken des Icons in der oberen rechten Ecke können die Parameter für das entsprechende PDF erfasst werden." : MessageLookupByLibrary.simpleMessage("It is now possible to display the buttons for PDF selection as tiles. The option can be found in the menu on the left. In the tile view, the buttons are distributed over the available area and are thus easier to hit on small devices. In addition, you normally see all available PDFs at a glance and do not have to scroll. The activated tiles indicate at which point in the PDF the corresponding pages are created and how many pages the corresponding tile creates. The number of pages can be determined correctly for most tiles, but for some this is not possible without data insight (for example, profiles and protocol). In this case, either no page number or a minimum number of pages is shown. Once the PDF is created, the correct numbers will be displayed. The sortorder of the tiles can be changed by dragging it to where you want it. After clicking the icon in the upper right corner, the parameters for the corresponding PDF can be set."),
    "Es ist jetzt möglich, die Einstellungen auf Google Drive zu speichern. Das hat den Vorteil, dass man die Einstellungen nicht nur im aktuellen Browser hat, sondern bei jedem Browser, mit dem man sich bei Google anmeldet. Die Einstellungen werden nach wie vor im Browser gespeichert. Bei einer Verbindung zu Google Drive werden sie aber zusätzlich auf Google Drive gespeichert. Beim Laden der Seite wird überprüft, ob eine Synchronisierung gewünscht ist. Wenn das der Fall ist, dann werden die Daten von Google Drive heruntergeladen. Wenn die Daten darin neuer sind als die Daten im Browser, werden sie verwendet. Nach dem Speichern der Daten werden bei aktivierter Synchronisierung diese Daten mit dem aktuellen Zeitstempel auf Google Drive gespeichert. Die Synchronisierung wird im Menü auf der linken Seite aktiviert und deaktiviert. Sie kann auch beim erstmaligen Aufruf der Seite in einem neuen Browser direkt im Willkommensbildschirm aktiviert werden. Nightscout Reporter verlangt nur die Berechtigung die eigenen App-Daten zu speichern und zu laden und benötigt keinen Zugriff auf andere Daten auf Google Drive." : MessageLookupByLibrary.simpleMessage("It is now possible to save the settings to Google Drive. This has the advantage that you have the settings not only in the current browser, but in any browser, which is connected to your Google account. The settings are still stored in the browser. When connected to Google Drive, they will also be stored on Google Drive. When loading the page, it checks if synchronization is desired. If that\'s the case then the data will be downloaded from Google Drive. If the downloaded data is newer than the data in the browser, it will be used. Once the data is saved, syncing will save that data with the current timestamp to Google Drive. The synchronization is activated and deactivated in the menu on the left side. It can also be activated when calling the page fpr the first time in a new browser directly in the welcome screen. Nightscout Reporter only requires permission to save and load your own app data and does not require access to other data on Google Drive."),
    "Es ist jetzt möglich, die Wochentage festzulegen, die im Zeitraum berücksichtigt werden sollen. Die entsprechenden Tage werden bei der Auswahl des Zeitraums mit den Buttons unterhalb des Monats festgelegt. Auf den PDFs werden Zeiträume dann zusätzlich mit der Information versehen, welche Wochentage berücksichtigt werden, wenn es nicht alle sind." : MessageLookupByLibrary.simpleMessage("期間選択で使用する曜日選択が可能になりました。期間選択をするとカレンダーの下側で使用曜日を選択できます。PDF作成では曜日選択をした場合、選択期間とともに使用曜日が表示されます。"),
    "Es sind keine Daten für den Ausdruck vorhanden" : MessageLookupByLibrary.simpleMessage("表示可能なデータがありません"),
    "Es werden jetzt auch blutige Werte erkannt, die von Loop auf dem IPhone eingetragen werden." : MessageLookupByLibrary.simpleMessage("IphoneのLoopで血糖値を入力した場合も認識するようになりました。"),
    "Español" : MessageLookupByLibrary.simpleMessage("スペイン語"),
    "Facebook Seite" : MessageLookupByLibrary.simpleMessage("Facebook"),
    "Fehler beim Laden der Daten" : MessageLookupByLibrary.simpleMessage("データ取得エラー"),
    "Fehler werden besser abgefangen und mit sinnvollem Text ersetzt." : MessageLookupByLibrary.simpleMessage("エラーを適切に処理し、意味の解るテキストに置き換えられます。"),
    "Fehlerhafte Ausgabe der Blutzuckerwerte in der täglichen Grafik korrigiert." : MessageLookupByLibrary.simpleMessage("デイリーグラフの誤った血糖値出力が修正されました。"),
    "Fehlerhafte Messwerte werden in der Auswertung der Grafiken nicht mehr brücksichtigt; diese werden an dem Wert \"NONE\" im Datenfeld \"direction\" erkannt" : MessageLookupByLibrary.simpleMessage("間違った値はグラフの表示で評価されなくなりました。データフィールドの「矢印」や「無し」によって認識されます。"),
    "Fehlermeldung beim Laden von Profilen ohne Startdatum entfernt." : MessageLookupByLibrary.simpleMessage("開始日を入力せずプロフィールを読み込んだ時に出ていたエラーメッセージを削除しました。"),
    "Für die Tagesgrafik gibt es jetzt eine Option, um die Aufsummierung nahe beieinander liegender Werte umzuschalten." : MessageLookupByLibrary.simpleMessage("デイリーグラフに、時間帯が近い数値をまとめるオプションが追加されました。"),
    "Geburtstag" : MessageLookupByLibrary.simpleMessage("生年月日"),
    "Ges." : MessageLookupByLibrary.simpleMessage("合計"),
    "Gesamt" : MessageLookupByLibrary.simpleMessage("合計"),
    "Geschätzter HbA1c" : MessageLookupByLibrary.simpleMessage("推定A1C"),
    "Glukose Pentagon erzeugen" : MessageLookupByLibrary.simpleMessage("グルコース総合グラフを表示する"),
    "Glukose Perzentil Diagramm" : MessageLookupByLibrary.simpleMessage("血糖値変動パターン"),
    "Glukose im Zielbereich" : MessageLookupByLibrary.simpleMessage("目標範囲内"),
    "Glukose zu hoch" : MessageLookupByLibrary.simpleMessage("高血糖"),
    "Glukose zu niedrig" : MessageLookupByLibrary.simpleMessage("低血糖"),
    "Glukosekurve" : MessageLookupByLibrary.simpleMessage("血糖値曲線"),
    "Glukosewert" : MessageLookupByLibrary.simpleMessage("グルコース"),
    "Glykämischer Variabilitäts Index (GVI)" : MessageLookupByLibrary.simpleMessage("血糖値変動指数 (GVI)"),
    "Grafiken pro Seite" : MessageLookupByLibrary.simpleMessage("１ページのグラフ数"),
    "Gross" : MessageLookupByLibrary.simpleMessage("大"),
    "Gruppierung der Zeiten" : MessageLookupByLibrary.simpleMessage("時間帯をまとめて表示"),
    "Heute" : MessageLookupByLibrary.simpleMessage("今日"),
    "Hinweise auf Nightscout in der Kopf- und Fusszeile des PDFs ausblenden" : MessageLookupByLibrary.simpleMessage("PDFのヘッダとフッターにナイトスカウトの情報を表示しない"),
    "Hochformat" : MessageLookupByLibrary.simpleMessage("Portrait"),
    "Hohe Basalraten werden jetzt besser dargestellt." : MessageLookupByLibrary.simpleMessage("高いベーサルレートも正しく表示されます。"),
    "Höchster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("期間中の最高血糖値"),
    "IE" : MessageLookupByLibrary.simpleMessage("U"),
    "Im Kalender-Control kann kein Datum nach dem aktuellen Tag mehr ausgewählt werden." : MessageLookupByLibrary.simpleMessage("範囲選択のカレンダーコントロールで現在以降の日付が選択できなくなりました。"),
    "Im Kalender-Control wird ein eingestellter Bereich (Heute, Letzte Woche, etc.) jetzt korrekt auf den aktuellen Tag bezogen." : MessageLookupByLibrary.simpleMessage("カレンダーコントロールで、定義期間(今日、先週等) が正しく現在の日付を参照するようになりました。"),
    "Im Kalender-Control wird jetzt der Monat des entsprechenden Datums angezeigt, wenn eines der Felder Von oder bis den Fokus erhält." : MessageLookupByLibrary.simpleMessage("開始日または終了日のフィールドに日付を入力した場合、カレンダーコントロールが対応する月に移動するようになりました。"),
    "Im PDF werden Zahlen und Datumsangaben entsprechend der ausgewählten Sprache formatiert" : MessageLookupByLibrary.simpleMessage("PDF内の日付のフォーマットは選択した言語によります"),
    "Im Profil werden jetzt die richtigen Einheiten verwendet (mg/dL oder mmol/l)." : MessageLookupByLibrary.simpleMessage("プロフィールで正しい単位が利用できるようになりました。(mg/dL か mmol/l)"),
    "Im Profil werden nun die Gesamtsumme der Basalrate und die durchschnittlichen Werte für ICR und ISF pro Stunde angezeigt." : MessageLookupByLibrary.simpleMessage("The profile now shows the total basal rate and the average ICR and ISF per hour."),
    "Impressum" : MessageLookupByLibrary.simpleMessage("作者"),
    "In Firefox ist es jetzt auch möglich, die Hauptseite zu scrollen, wenn sie länger ist, als das Browserfenster." : MessageLookupByLibrary.simpleMessage("メインページをFirefoxで表示している際に、ブラウザ画面より長い場合はスクロールできるようになりました。"),
    "In den Einstellungen gibt es einen Regler, der festlegt, wie gross die erzeugten PDF-Dateien maximal sein dürfen. Wenn nur ein leeres PDF erzeugt wird, dann sollte dieser Regler weiter nach links geschoben werden, um die Dateigrösse zu verringern." : MessageLookupByLibrary.simpleMessage("設定項目に作成するPDFのファイルサイズを設定するスライダーがあります。空白のPDFが作成された場合、このスライダーを左に移動してファイルサイズを小さくしてください。"),
    "In der Analyse können die Prozentzahlen für die Zielbereiche mit Nachkommazahl angezeigt werden. Das verringert die Differenz zu 100%, wenn man sie zusammenzählt. Der verbleibende Rest sind Rundungsdifferenzen." : MessageLookupByLibrary.simpleMessage("分析ページでは目標範囲のパーセントを小数点を含め表示できます。この数値の合計と100％との差異は数値の四捨五入によるものです。"),
    "In der Auswertung gibt es eine neue Option, um den Standardbereich feiner abzustufen. Dort werden dann zusätzlich sehr hohe Werte und sehr niedrige Werte angezeigt." : MessageLookupByLibrary.simpleMessage("分析ページには標準範囲を細かく調整する機能が追加されました。このオプションでは、「非常に高い値」「非常に低い値」が表示できます。"),
    "In der Auswertung können die Angaben für Material (Katheter, Sensor, Ampulle) mit Nachkommastellen angezeigt werden." : MessageLookupByLibrary.simpleMessage("分析ページでは、消耗品(カニューレ・センサー・リザーバー) の情報を小数点以下の桁数で表示できます。"),
    "In der Kachelansicht können die Parameter aller ausgewählten Seiten zusammen in einer Liste eingestellt werden. Dazu gibt es im Titelbereich der Parameterliste neben dem Schliessen-Button einen zusätzlichen Button, mit dem man zwischen den beiden Möglichkeiten umschalten kann." : MessageLookupByLibrary.simpleMessage("In the tile view, the parameters of all selected pages can be set together in a list. For this purpose, there is an additional button in the title area of the parameter list next to the close button, with which you can switch between the two options."),
    "In der Legende unter der Tagesgrafik wird die Summe der Kohlenhydrate für den Tag angezeigt." : MessageLookupByLibrary.simpleMessage("デイリーグラフの凡例にある炭水化物には合計値が表示されます。"),
    "In der Tagesgrafik gibt es eine Option, die berechneten IE für aufgenommene Kohlenhydrate anzeigen zu lassen. Der Wert, der unmittelbar unter den Kohlenhydraten angezeigt wird, entspricht dem Bolus, der zu diesem Zeitpunkt für diese Kohlenhydratmenge abgegeben werden sollte. Dieser Wert kann niedriger als der tatsächlich abgegebene Wert ausfallen, weil für die Insulinabgabe noch IOB und andere Faktoren berücksichtigt werden." : MessageLookupByLibrary.simpleMessage("デイリーグラフには取得炭水化物より計算したインスリン量を表示するオプションがあります。炭水化物の下に表示される数値は、その時点で摂取炭水化物に対して投与するべきボーラスの量です。この数値は、IOBと他の要因を考慮して計算される為、実際に投与したインスリン量を下回る場合があります。"),
    "In der Tagesgrafik gibt es eine Option, mit dem man die verschiedenen Arten der Boli kenntlich machen lassen kann. Wenn diese Option gesetzt ist, wird ein Bolus, der zu einer Mahlzeit abgegeben wurde mit einer anderen Farbe markiert, als ein Bolus zur Korrektur. In der Legende werden dann Korrektur-, Mahlzeiten-Boli und SMB getrennt angezeigt." : MessageLookupByLibrary.simpleMessage("デイリーグラフに違う種類のボーラスを区別することが出来るオプションがあります。\n食事時と補正のボーラスは別色でマークされます。又、凡例には食事ボーラス・補正ボーラス・スーパーマイクロボーラス（SMB）の値も表示されます。"),
    "In der Tagesgrafik gibt es eine Option, mit der man sich die erfassten Trainingsdaten anzeigen lassen kann. Diese werden dann am unteren Rand über der Tabelle der Glukosewerte eingefügt." : MessageLookupByLibrary.simpleMessage("デイリーグラフには、グラフにエクササイズのデータを表示するオプションがあります。グラフの最下部の血糖値の上に表示されます。"),
    "In der Tagesgrafik kann die Anzeige der SMB nun ausgeblendet werden." : MessageLookupByLibrary.simpleMessage("デイリーグラフのSMBは非表示にできます。"),
    "In der Tagesgrafik kann jetzt bei Auswahl der Tages Basalrate angegeben werden, dass der Name des Profils angezeigt wird, das am Beginn des Tages aktiv war. Dieser wird dann so angezeigt, wie ein Profilwechsel um 0 Uhr." : MessageLookupByLibrary.simpleMessage("When selecting the daily basal rate, it is now possible to specify in the options of the daily graph that the name of the profile that was active at the beginning of the day is displayed. This will then be displayed as a profile change at 0 am."),
    "In der Tagesgrafik werden die Insulinangaben jetzt kleiner dargestellt, wenn die Basalrate eine Genauigkeit von mehr als 2 Nachkommastellen hat." : MessageLookupByLibrary.simpleMessage("ベーサルレートを小数点2桁表示にした場合、デイリーグラフでのインスリン量は小さく表示されます。"),
    "In der Tagesgrafik werden jetzt auch Blutzuckermessungen angezeigt. Sie werden als rote Quadrate dargestellt und die zugehörigen Werte in der Tabelle unterhalb der Grafik werden ebenfalls mit roter Schrift angezeigt." : MessageLookupByLibrary.simpleMessage("デイリーチャートに血糖値が表示されるようになりました。値が赤の四角で表示されます。又、下の表のグラフも赤で表示されます。"),
    "In der Tagesgrafik werden nun SMBs auch angezeigt, wenn die Option für die Darstellung von Insulin akitivert wurde. Man kann festlegen, ob die SMBs an der Glukosekurve oder am Zielwert angezeigt werden." : MessageLookupByLibrary.simpleMessage("インスリンを表示するに設定した場合、SMBがデイリーグラフに表示されるようになりました。SMBを血糖値曲線か目標値に表示するかを選択できます。"),
    "In der Tagesgrafik werden nun auch Kohlenhydratkorrekturen angezeigt." : MessageLookupByLibrary.simpleMessage("デイリーグラフにカーボが表示されるようになりました。"),
    "In der Tagesgrafik werden nun auch Reservoirwechsel angezeigt." : MessageLookupByLibrary.simpleMessage("リザーバー交換がデイリーグラフに表示されます。"),
    "In der Tagesgrafik werden nun auch bei Anzeige des Zielwertes die temporären Ziele berücksichtigt." : MessageLookupByLibrary.simpleMessage("デイリーグラフの表示で、目標血糖値を表示する際に一時目標も表示されるようになりました。"),
    "In der Tagesgrafik werden nun der geschätzte HbA1C und die prozentuale Menge an Bolusinsulin und Basalinsulin für den Tag angezeigt. Diese Anzeige erfolgt innerhalb der Legende, weshalb diese aktiviert sein muss, damit die Werte angezeigt werden." : MessageLookupByLibrary.simpleMessage("日別の推定A1C、ボーラスインスリンおよび基礎インスリンの割合は、デイリーグラフの下の凡例に表示されます。これらを表示するには凡例表示を有効にする必要があります。"),
    "In der Tagesgrafik wird jetzt eine Tabelle mit halbstündigen Glukosewerten eingeblendet angezeigt. Diese kann über einen Parameter ausgeschaltet werden." : MessageLookupByLibrary.simpleMessage("デイリーグラフに30分単位で血糖値グラフが表示されるようになりました。これはパラメーターを使用してオフにできます。"),
    "In der Tagesgraphic werden jetzt Insulinwerte und Kohlenhydratwerte zusammengefasst, wenn es mehrere innerhalb einer Stunde gibt. Die Balken werden nach wie vor für jeden Wert einzeln ausgegeben. Auf diese Art sollte es keine überlappende Ausgabe der Werte mehr geben. Die zusammengefassten Werte werden in eckigen Klammern ausgegeben, um anzuzeigen, dass hier Werte aufsummiert wurden." : MessageLookupByLibrary.simpleMessage("デイリーグラフでは、インスリンと炭水化物の値が1時間に複数個ある場合は合計が表示されます。各バーは値ごとに表示されます。又、この表示により文字が重なる事が解消されました。角括弧で表示された値は合計された値です。"),
    "In der Tagesstatistik und in den täglichen Grafiken werden jetzt zum Datum die Wochentage mit angezeigt." : MessageLookupByLibrary.simpleMessage("日別統計及びデイリーグラフに曜日が表示されるようになりました。"),
    "In der Tagesstatistik wurde die Spalte Varianzkoeffizient hinzugefügt (VarK)." : MessageLookupByLibrary.simpleMessage("日別統計にCoefficient of variation (CV) の項目を追加しました。"),
    "In der Tagesstatistik wurden bei unvollständigen Daten teilweise fehlerhafte Werte ausgegeben. Das wurde korrigiert." : MessageLookupByLibrary.simpleMessage("Fixed wrong data display in the daily statistics when a day has too little data."),
    "In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools wie dieses hier auf die Daten zugreifen dürfen." : MessageLookupByLibrary.simpleMessage("The variable ENABLE must contain the word \"cors\" so that external tools like this one can access the data."),
    "Initiale Version, alles ist neu!" : MessageLookupByLibrary.simpleMessage("初期バージョン。すべてがおニューです！"),
    "Insulin" : MessageLookupByLibrary.simpleMessage("インスリン"),
    "Insulin Kohlenhydrate Verhältnis (ICR)" : MessageLookupByLibrary.simpleMessage("インスリンカーボ比(ICR)"),
    "Insulin Kohlenhydrate Verhältnis (ICR)\nX g Kohlenhydrate für 1 IE" : MessageLookupByLibrary.simpleMessage("インスリンカーボ比(ICR)　１Uあたり炭水化物 X g"),
    "Insulin Sensitivitäts Faktoren (ISF)" : MessageLookupByLibrary.simpleMessage("インスリン効果値(ISF)"),
    "Insulin-Quelle" : MessageLookupByLibrary.simpleMessage("インスリンソース"),
    "Ja" : MessageLookupByLibrary.simpleMessage("はい"),
    "Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember" : MessageLookupByLibrary.simpleMessage("1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月"),
    "Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez" : MessageLookupByLibrary.simpleMessage("1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月"),
    "Japanisch" : MessageLookupByLibrary.simpleMessage("日本語"),
    "Kalibrierung und blutige Messungen" : MessageLookupByLibrary.simpleMessage("血糖値とキャリブレーション"),
    "Katheterwechsel" : MessageLookupByLibrary.simpleMessage("ポンプ注入場所変更"),
    "Keine" : MessageLookupByLibrary.simpleMessage("無し"),
    "Keine Änderung" : MessageLookupByLibrary.simpleMessage("変更無し"),
    "Klein" : MessageLookupByLibrary.simpleMessage("小"),
    "Kohlenhydrate" : MessageLookupByLibrary.simpleMessage("炭水化物"),
    "Kohlenhydrate und Bolusinsulin werden jetzt in den täglichen Grafiken angezeigt" : MessageLookupByLibrary.simpleMessage("日別のグラフにカーボとボーラスインスリンが表示できるようになりました。"),
    "Legende" : MessageLookupByLibrary.simpleMessage("凡例"),
    "Legende für Katheter- und Sensorwechsel zur Tagesgrafik hinzugefügt." : MessageLookupByLibrary.simpleMessage("凡例にカニューレとセンサーの変更表示を追加しました。"),
    "Letzte 2 Tage" : MessageLookupByLibrary.simpleMessage("2日"),
    "Letzte 2 Wochen" : MessageLookupByLibrary.simpleMessage("2週間"),
    "Letzte 3 Monate" : MessageLookupByLibrary.simpleMessage("3カ月"),
    "Letzte 3 Tage" : MessageLookupByLibrary.simpleMessage("3日"),
    "Letzte 3 Wochen" : MessageLookupByLibrary.simpleMessage("3週間"),
    "Letzte Woche" : MessageLookupByLibrary.simpleMessage("１週間"),
    "Letzten Messwert in der Titelzeile anzeigen" : MessageLookupByLibrary.simpleMessage("タイトルバーに最新の血糖値を表示する"),
    "Letzter Monat" : MessageLookupByLibrary.simpleMessage("1カ月"),
    "Man kann jetzt mehrere Benutzer anlegen. Das ist nützlich, um mehrere Nightscout-Instanzen auszuwerten (z.B. für Ärzte, Betreuer oder den Entwickler dieser Software)" : MessageLookupByLibrary.simpleMessage("複数のユーザーのレポートを作成できるようになりました。 複数のナイトスカウトの事例を分析するのに役立ちます(例: 医師、介護者、またはこのソフトウェアの開発者など)。"),
    "Material mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("小数点以下を表示する"),
    "Max" : MessageLookupByLibrary.simpleMessage("最大"),
    "Median" : MessageLookupByLibrary.simpleMessage("中央値"),
    "Mehr gibt es dazu eigentlich nicht zu sagen." : MessageLookupByLibrary.simpleMessage("There is nothing more to say about it."),
    "Mess-\nwerte" : MessageLookupByLibrary.simpleMessage("値"),
    "Min" : MessageLookupByLibrary.simpleMessage("最小"),
    "Mit Google Drive synchronisieren" : MessageLookupByLibrary.simpleMessage("Sync with Google Drive"),
    "Mittel-\nwert" : MessageLookupByLibrary.simpleMessage("平均"),
    "Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|Sonntag" : MessageLookupByLibrary.simpleMessage("月曜日|火曜日|水曜日|木曜日|金曜日|土曜日|日曜日"),
    "Mo|Di|Mi|Do|Fr|Sa|So" : MessageLookupByLibrary.simpleMessage("月|火|水|木|金|土|日"),
    "Nacht (20:00 - 08:00)" : MessageLookupByLibrary.simpleMessage("夜間 (20:00 - 08:00)"),
    "Nahe zusammen liegende Werte aufsummieren" : MessageLookupByLibrary.simpleMessage("近い時間帯のトリートメントをまとめて表示する"),
    "Name" : MessageLookupByLibrary.simpleMessage("氏名"),
    "Name, Geburtstag, Insulin und das Startdatum des Diabetes können nun leer gelassen werden, ohne dass das negative Auswirkungen auf die Darstellung im PDF hat." : MessageLookupByLibrary.simpleMessage("名前、生年月日、インスリン、糖尿病発症日が空欄でもPDFの表示ができるようになりました。"),
    "Nein" : MessageLookupByLibrary.simpleMessage("いいえ"),
    "Neue Option im Profil, um fortlaufende Zeiten mit gleichen Werten zu einem Eintrag zusammen zu fassen." : MessageLookupByLibrary.simpleMessage("プロフィールで同じ値を持つ項目の時刻を統合する新しいオプションです。"),
    "Neuer Parameter für die Tagesgrafik, der festlegt, ob die Linien für die Notizen unter der Grafik bis zur Glukosekurve gezeichnet werden sollen oder nicht." : MessageLookupByLibrary.simpleMessage("デイリーグラフパラメーターはデイリーグラフにポンプ履歴から血糖値曲線まで線を描画するかを決定する。"),
    "Neues PDF für eine Wochengrafik hinzugefügt, auf der die Glukosekurven der Woche übereinander gelegt werden." : MessageLookupByLibrary.simpleMessage("1週間の血糖値曲線が一度に表示されるウィークリーグラフのPDFページが追加されました。"),
    "Neueste Woche zuerst" : MessageLookupByLibrary.simpleMessage("新しい週を最初に表示する"),
    "Neuester Tag zuerst" : MessageLookupByLibrary.simpleMessage("表示日を昇順にする"),
    "Niedrigster Wert im Zeitraum" : MessageLookupByLibrary.simpleMessage("期間中の最低血糖値"),
    "Nightscout Berichte" : MessageLookupByLibrary.simpleMessage("ナイトスカウト レポート"),
    "Nightscout Reporter ist nun auch grösstenteils in Spanisch und Polnisch verfügbar. Entsprechende Buttons wurden dem Hauptmenü hinzugefügt. Danke an die fleissigen Übersetzer :)." : MessageLookupByLibrary.simpleMessage("Nightscout Reporterの大部分がスペイン語とポーランド語に翻訳されました。 メインメニューに選択ボタンが追加されました。 勤勉な翻訳者のおか​​げです :)"),
    "Nightscout Reporter kann nun auch in Japanisch verwendet werden." : MessageLookupByLibrary.simpleMessage("ナイトスカウトレポーターで日本語表示が可能になりました。"),
    "Nightscout Seite" : MessageLookupByLibrary.simpleMessage("ナイトスカウト サイト"),
    "Normal" : MessageLookupByLibrary.simpleMessage("正常"),
    "Notiz" : MessageLookupByLibrary.simpleMessage("ノート"),
    "Notiz-Linien bis zur Kurve zeichnen" : MessageLookupByLibrary.simpleMessage("ノートから血糖値カーブまで線を引く"),
    "Notizen" : MessageLookupByLibrary.simpleMessage("ポンプ履歴"),
    "Ok" : MessageLookupByLibrary.simpleMessage("OK"),
    "Optionen für die PDFs, die eine eindeutige Beziehung zu einem laufenden Loop haben, werden nun in Blau dargestellt. Das vereinfacht es, PDFs zu erstellen, denen man nicht ohne Weiteres entnehmen kann, dass ein Loop vorliegt. Dazu müssen nur die Haken bei den blauen Optionen entfernt werden." : MessageLookupByLibrary.simpleMessage("Options for the PDFs that have a unique relationship to a running loop are now displayed in blue. This makes it easy to create PDFs where you can not easily deduce that there is a loop running. All you have to do is to uncheck the blue options."),
    "PDF anzeigen" : MessageLookupByLibrary.simpleMessage("PDFを開く"),
    "PDF erneut erzeugen" : MessageLookupByLibrary.simpleMessage("もう一度PDFを作る"),
    "PDF für Profildaten" : MessageLookupByLibrary.simpleMessage("プロフィールデータ用PDF"),
    "PDF herunterladen (bei einigen Browsern benötigt)" : MessageLookupByLibrary.simpleMessage("PDFをダウンロードする(一部のブラウザで必要)"),
    "PDF im selben Fenster öffnen" : MessageLookupByLibrary.simpleMessage("PDFを同じウィンドウで開く"),
    "PGR" : MessageLookupByLibrary.simpleMessage("PGR"),
    "Patient Glykämischer Status (PGS)" : MessageLookupByLibrary.simpleMessage("血糖状態(PGS)"),
    "Pausiert" : MessageLookupByLibrary.simpleMessage("一時停止"),
    "Polski" : MessageLookupByLibrary.simpleMessage("ポーランド語"),
    "Problem auf GitHub melden" : MessageLookupByLibrary.simpleMessage("GitHubに問題を報告する"),
    "Profil" : MessageLookupByLibrary.simpleMessage("プロフィール"),
    "Profil-Basalrate" : MessageLookupByLibrary.simpleMessage("ベーサルレート（プロファイル）"),
    "Profileinstellungen" : MessageLookupByLibrary.simpleMessage("プロフィール設定"),
    "Profilwechsel" : MessageLookupByLibrary.simpleMessage("プロフィール切替"),
    "Protokoll" : MessageLookupByLibrary.simpleMessage("ログ"),
    "Quelle: Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)" : MessageLookupByLibrary.simpleMessage("文献：Vigersky, R. A., Shin, J., Jiang, B., Siegmund, T., McMahon, C., & Thomas, A. (2018). The Comprehensive Glucose Pentagon: A Glucose-Centric Composite Metric for Assessing Glycemic Control in Persons With Diabetes. Journal of Diabetes Science and Technology, 12(1), 114–123. (https://doi.org/10.1177/1932296817718561)"),
    "Querformat" : MessageLookupByLibrary.simpleMessage("Landscape"),
    "Reihenfolge der PDF Seiten geändert - Perzentil Diagramm kommt jetzt nach der Analyse." : MessageLookupByLibrary.simpleMessage("PDFのページの順番を変更しました。グルコース変動パターンは、分析の後に出ます。"),
    "Reservoirwechsel" : MessageLookupByLibrary.simpleMessage("リザーバー交換"),
    "SMB" : MessageLookupByLibrary.simpleMessage("SMB"),
    "SMB Werte anzeigen" : MessageLookupByLibrary.simpleMessage("SMBを表示する"),
    "SMB an der Kurve platzieren" : MessageLookupByLibrary.simpleMessage("曲線上にSMBを表示する"),
    "Schliessen" : MessageLookupByLibrary.simpleMessage("閉じる"),
    "Schliessen Button im Nachrichtenbereich hinzugefügt." : MessageLookupByLibrary.simpleMessage("メッセージエリアに閉じるボタンを追加しました。"),
    "Sechzehn" : MessageLookupByLibrary.simpleMessage("16"),
    "Sensorwechsel" : MessageLookupByLibrary.simpleMessage("センサー交換"),
    "Soll der Benutzer mit der URL" : MessageLookupByLibrary.simpleMessage("ナイトスカウトのURLが必要です"),
    "Spalte HbA1c" : MessageLookupByLibrary.simpleMessage("A1C"),
    "Spalte HbA1c zu Tagesstatistik hinzugefügt" : MessageLookupByLibrary.simpleMessage("日別統計にA1Cを追加"),
    "Spalte Messwerte" : MessageLookupByLibrary.simpleMessage("値のカウント"),
    "Spalte Standardabweichung" : MessageLookupByLibrary.simpleMessage("標準偏差"),
    "Spalte Variationskoeffizient" : MessageLookupByLibrary.simpleMessage("血糖変動係数"),
    "Spalten Perzentile" : MessageLookupByLibrary.simpleMessage("パーセント"),
    "Spaltenbreite der Informationen in der Analyse erhöht" : MessageLookupByLibrary.simpleMessage("解析ページの情報を表示する列幅が広くなりました。"),
    "Speichern" : MessageLookupByLibrary.simpleMessage("保存"),
    "Standardabweichung" : MessageLookupByLibrary.simpleMessage("標準偏差"),
    "Standardabweichung statt Anzahl" : MessageLookupByLibrary.simpleMessage("値のカウント数の代わりに標準偏差を表示する"),
    "Standardbereich mit feinerer Abstufung" : MessageLookupByLibrary.simpleMessage("標準範囲を精細グラデーションで表示する"),
    "Standardgrenzwerte" : MessageLookupByLibrary.simpleMessage("標準目標範囲"),
    "Std.\nAbw." : MessageLookupByLibrary.simpleMessage("標準偏差"),
    "Stunden" : MessageLookupByLibrary.simpleMessage("時間"),
    "Summen für Bolus Insulin, Basalrate für den Tag und Basalrate aus dem Profil zur Tagesgrafik hinzugefügt" : MessageLookupByLibrary.simpleMessage("デイリーグラフに、1日の総インスリン単位、プロフィールで設定したベーサルレートを追加しました。"),
    "Symbole (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("記号(カニューレ等)"),
    "Synchronisierung aufheben" : MessageLookupByLibrary.simpleMessage("Cancel Sync"),
    "TDD" : MessageLookupByLibrary.simpleMessage("TDD"),
    "Tabelle mit Glukosewerten" : MessageLookupByLibrary.simpleMessage("表に炭水化物を表示する"),
    "Tag (08:00 - 18:00)" : MessageLookupByLibrary.simpleMessage("日中(08:00 - 18:00)"),
    "Tages-Basalrate" : MessageLookupByLibrary.simpleMessage("ベーサルレート"),
    "Tagesanalyse" : MessageLookupByLibrary.simpleMessage("日間分析"),
    "Tagesgrafik" : MessageLookupByLibrary.simpleMessage("デイリーグラフ"),
    "Tagesgrafikparameter zur Anzeige der Legende" : MessageLookupByLibrary.simpleMessage("ポンプ履歴を表示する為のデイリーグラフパラメーター"),
    "Tagesgrafikparameter zur Anzeige von Notizen" : MessageLookupByLibrary.simpleMessage("ポンプ履歴を表示する為のデイリーグラフパラメーター"),
    "Tagesgrafikparameter zur umgekehrten Sortierung hinzugefügt. Die Tage werden damit beginnend mit dem höchsten Datum ausgegeben." : MessageLookupByLibrary.simpleMessage("デイリーグラフを逆順に並べ替えるパラメータを追加しました。デイリーグラフは、最も古い日付から作成されます。"),
    "Tagesnamen in Grafik anzeigen" : MessageLookupByLibrary.simpleMessage("グラフに日付を表示する"),
    "Tagesstartprofil anzeigen" : MessageLookupByLibrary.simpleMessage("Show profile at daystart"),
    "Tagesstatistik" : MessageLookupByLibrary.simpleMessage("日別統計"),
    "Temporäre Basalraten" : MessageLookupByLibrary.simpleMessage("一時基礎レート"),
    "Temporäre Basalraten mit absoluten Werten werden korrekt dargestellt" : MessageLookupByLibrary.simpleMessage("一時ベーサルと通常ベーサルレートが正しく表示されるようになりました。"),
    "Temporäre Profilwechsel werden jetzt erkannt und in der Tagesgrafik korrekt angezeigt." : MessageLookupByLibrary.simpleMessage("Temporary profile changes are now recognized and displayed correctly in the daily graphics."),
    "Temporäre Ziele" : MessageLookupByLibrary.simpleMessage("一時目標"),
    "Titelangaben für Datumsbereiche auf den PDFs vereinheitlicht" : MessageLookupByLibrary.simpleMessage("PDFのタイトルの日付情報が統一されました。"),
    "Training anzeigen" : MessageLookupByLibrary.simpleMessage("運動を表示する"),
    "Uhr-\nzeit" : MessageLookupByLibrary.simpleMessage("時間"),
    "Uhrzeit" : MessageLookupByLibrary.simpleMessage("時間"),
    "Unbegrenzt" : MessageLookupByLibrary.simpleMessage("無制限"),
    "Url zur Nightscout-API (z.B. https://xxx.herokuapp.com)" : MessageLookupByLibrary.simpleMessage("NightscoutのURL(例：https://xxx.herokuapp.com)"),
    "User-Token" : MessageLookupByLibrary.simpleMessage("ユーザートークン"),
    "VarK\nin %" : MessageLookupByLibrary.simpleMessage("CV in %"),
    "Verbinde zu Google Drive..." : MessageLookupByLibrary.simpleMessage("Googleドライブに接続しています…"),
    "Verbinde zu Google..." : MessageLookupByLibrary.simpleMessage("グーグルに接続しています…"),
    "Verbindung zu Google Drive herstellen" : MessageLookupByLibrary.simpleMessage("Googleドライブに接続する"),
    "Verbindung zu Google Drive trennen" : MessageLookupByLibrary.simpleMessage("Googleドライブから切断する"),
    "Vergleich" : MessageLookupByLibrary.simpleMessage("比較する"),
    "Version" : MessageLookupByLibrary.simpleMessage("バージョン"),
    "Verteilung" : MessageLookupByLibrary.simpleMessage("分布"),
    "Vier" : MessageLookupByLibrary.simpleMessage("4"),
    "Von" : MessageLookupByLibrary.simpleMessage("から"),
    "Vorherige Periode" : MessageLookupByLibrary.simpleMessage("前の期間"),
    "Vorletzte Periode" : MessageLookupByLibrary.simpleMessage("最後から２番目の期間"),
    "Warum werde ich mit mehreren Buttons genervt, statt eine einzelne PDF angezeigt zu kriegen?" : MessageLookupByLibrary.simpleMessage("PDFが単一ページで取得出来ずに、複数のボタンで表示されるのですか。"),
    "Was bisher geschah..." : MessageLookupByLibrary.simpleMessage("変更履歴…"),
    "Wechsel (Katheter etc.)" : MessageLookupByLibrary.simpleMessage("交換(カニューレ等)"),
    "Wenn Sonderzeichen in den Daten vorhanden sind (z.B. Smileys in den Notizen), führte das zu einem Absturz während der PDF-Erstellung. Das wurde behoben, indem diese Sonderzeichen aus der Ausgabe entfernt werden." : MessageLookupByLibrary.simpleMessage("データ中に特殊文字がある場合(ポンプ履歴にスマイルマーク等)、PDFの作成中にクラッシュが発生していました。出力時に特殊文字を削除するように修正しました。"),
    "Wenn das erzeugte PDF zu gross wird, wird es nun auf mehrere PDF-Dateien aufgeteilt. In diesem Fall wird es nicht direkt geöffnet, sondern es wird eine Liste mit durchnummerierten Buttons angezeigt. Diese Buttons öffnen bei Betätigung das entsprechende PDF und erhalten einen Haken, um anzuzeigen, dass es geöffnet wurde. Das sollte es erleichtern, die PDFs nacheinander zu öffnen, weil normalerweise der Browser im Hintergrund verschwindet, wenn ein neues Fenster aufgemacht wird." : MessageLookupByLibrary.simpleMessage("作成したPDFのサイズが大きい場合は、複数のPDFファイルに分割されます。この場合、直接PDFは開かず番号付きのボタンリストが表示されます。このボタンをクリックするとPDFが開いてチェックマークが表示されます。又、新しウィンドウで開くと現在のブラウザウィンドウが背面に移動する為、PDFを簡単に開く事ができます。"),
    "Wenn der Zeitraum leer ist, wird der Button für die Auswahl deutlich markiert und in dem Dialog zur Auswahl wird in der Titelzeile ein Hinweis darauf angezeigt." : MessageLookupByLibrary.simpleMessage("期間選択がされていない場合は、ハイライト表示されタイトルバーに期間を選択する為のボタンが表示されます。"),
    "Wenn die Grenzwerte in Nightscout (BG_TARGET_BOTTOM und BG_TARGET_TOP) den Werten 70 und 180 entsprechen, wird auf der Analyse-Seite der Bereich für die Standardzielwerte ausgeblendet" : MessageLookupByLibrary.simpleMessage("Nightscoutのしきい値(BG_TARGET_BOTTOM and BG_TARGET_TOP) が70と180の場合、デフォルトのターゲット範囲は分析ページに表示されません。"),
    "Wenn in den Einstellungen eine Verbindung zum Google-Konto hergestellt wird, werden die Cookies von Google verwendet und die Daten nicht mehr im localStorage des Browsers gespeichert, sondern im AppStorage auf Google Drive. Auf diese Art kann man die Daten zentralisiert verwalten und hat diese in jedem Browser zur Verfügung, der mit dem angegebenen Google Konto verbunden ist." : MessageLookupByLibrary.simpleMessage("グーグルアカウントに接続すると設定がブラウザのローカルストレージに保存されずに、グーグルドライブのAPPストレージに保存されます。この場合、データが一元管理されグーグルアカウントに接続しているブラウザで利用できるようになります。"),
    "Wenn in den Einträgen Lücken von 15 Minuten oder mehr sind, führen diese zu einer Unterbrechung der Linie in der Tagesgrafik." : MessageLookupByLibrary.simpleMessage("入力に15分以上ギャップがあると、デイリーチャートにもギャップが生じます。"),
    "Wenn in einem Profil mehr Zeiten erfasst wurden, als auf eine Seite passen, wurden diese fortlaufend in die nächste Seite hineingeschrieben. Jetzt wird an geeigneter Stelle eine neue Seite ausgegeben." : MessageLookupByLibrary.simpleMessage("プロフィールに記載された項目が1ページに収まらない場合、次のページに重なって表示されていましたが次のページを作成して重ならなくなりました。"),
    "Wenn keine Daten verfügbar sind, werden leere Seiten mit einem entsprechenden Hinweis erzeugt." : MessageLookupByLibrary.simpleMessage("利用可能なデータが選択されていない場合は、ヒントと共に空白ページが作成されます。"),
    "Willkommen" : MessageLookupByLibrary.simpleMessage("おいでやす"),
    "Willkommen bei Nightscout Reporter!" : MessageLookupByLibrary.simpleMessage("ナイトスカウト レポーターへおいでやす！"),
    "Wochengrafik" : MessageLookupByLibrary.simpleMessage("ウィークリーグラフ"),
    "Zeilen mit gleichen Werten zusammenfassen" : MessageLookupByLibrary.simpleMessage("同じ値の設定はまとめて表示する"),
    "Zeitraum" : MessageLookupByLibrary.simpleMessage("期間"),
    "Zeitraum festlegen" : MessageLookupByLibrary.simpleMessage("期間を設定してください"),
    "Zeitzone" : MessageLookupByLibrary.simpleMessage("タイムゾーン"),
    "Zielbereich" : MessageLookupByLibrary.simpleMessage("目標範囲"),
    "Zielbereich mit Nachkommastellen" : MessageLookupByLibrary.simpleMessage("目標範囲に小数点以下を表示"),
    "Zur Berechnung der Analyse, Tagesstatistik und Tagesgrafik wird nun die gleiche Datenbasis verwendet, so dass die Werte auf allen PDFs gleich sind." : MessageLookupByLibrary.simpleMessage("値がすべてのPDFで同一になるように、同じデータベースを使用して、分析、日別統計、デイリーグラフを算出しました。"),
    "Zur Kachelansicht" : MessageLookupByLibrary.simpleMessage("タイトルビューへ"),
    "Zur Listenansicht" : MessageLookupByLibrary.simpleMessage("リストビューへ"),
    "Zusatzfunktionen" : MessageLookupByLibrary.simpleMessage("追加機能"),
    "Zusätzliche Informationen zu den PDFs und im UI hinzugefügt" : MessageLookupByLibrary.simpleMessage("PDFとその表示についての情報を追加しました。"),
    "Zusätzliche Spalte anzeigen" : MessageLookupByLibrary.simpleMessage("追加した列を表示する"),
    "Zwei" : MessageLookupByLibrary.simpleMessage("2"),
    "_msgPageCount" : m0,
    "_msgPageCountEst" : m1,
    "ab 4,6" : MessageLookupByLibrary.simpleMessage("4,6～"),
    "bis" : MessageLookupByLibrary.simpleMessage("から"),
    "dd.MM.yyyy" : MessageLookupByLibrary.simpleMessage("yyyy/MM/dd"),
    "extrem hohes Risiko" : MessageLookupByLibrary.simpleMessage("リスクが非常に高い"),
    "g / Stunde" : MessageLookupByLibrary.simpleMessage("g / 時間"),
    "geringes Risiko" : MessageLookupByLibrary.simpleMessage("リスクが少ない"),
    "gesch. HbA1c" : MessageLookupByLibrary.simpleMessage("推定A1C"),
    "hohes Risiko" : MessageLookupByLibrary.simpleMessage("リスクが高い"),
    "https://nightscout-reporter.zreptil.de/beta" : MessageLookupByLibrary.simpleMessage("https://nightscout-reporter.zreptil.de/beta"),
    "mg/dL" : MessageLookupByLibrary.simpleMessage("mg/dL"),
    "mmol/L" : MessageLookupByLibrary.simpleMessage("mmol/L"),
    "moderates Risiko" : MessageLookupByLibrary.simpleMessage("リスクがある"),
    "msgBasalrateDay" : m2,
    "msgBasalrateProfile" : m3,
    "msgBolusInsulin" : m4,
    "msgCV" : m5,
    "msgCarbBolusInsulin" : m6,
    "msgCarbs" : m7,
    "msgCatheterDays" : m8,
    "msgChangedEntry" : m9,
    "msgCheckUser" : m10,
    "msgCorrectBolusInsulin" : m11,
    "msgCount" : m12,
    "msgDaySum" : m13,
    "msgFactorEntry" : m14,
    "msgGVIBad" : m15,
    "msgGVIGood" : m16,
    "msgGVINone" : m17,
    "msgGVIVeryGood" : m18,
    "msgHYPER" : m19,
    "msgHYPERInfo" : m20,
    "msgHYPO" : m21,
    "msgHYPOInfo" : m22,
    "msgHigh" : m23,
    "msgHistorical" : m24,
    "msgISF" : m25,
    "msgKH" : m26,
    "msgKHBE" : m27,
    "msgLegendTDD" : m28,
    "msgLoadingData" : m29,
    "msgLoadingDataFor" : m30,
    "msgLogSMB" : m31,
    "msgLogTempBasal" : m32,
    "msgLogTempTarget" : m33,
    "msgLow" : m34,
    "msgMBG" : m35,
    "msgMEAN" : m36,
    "msgMEANInfo" : m37,
    "msgPGSBad" : m38,
    "msgPGSGood" : m39,
    "msgPGSVeryBad" : m40,
    "msgPGSVeryGood" : m41,
    "msgProfileSwitch" : m42,
    "msgProfileSwitchDuration" : m43,
    "msgReadingsInMinutes" : m44,
    "msgReadingsPerDay" : m45,
    "msgReadingsPerHour" : m46,
    "msgReservoirDays" : m47,
    "msgSMBInsulin" : m48,
    "msgSensorDays" : m49,
    "msgStdAbw" : m50,
    "msgTOR" : m51,
    "msgTORInfo" : m52,
    "msgTarget" : m53,
    "msgTargetArea" : m54,
    "msgTargetValue" : m55,
    "msgTimeOfDay24" : m56,
    "msgTimeOfDayAM" : m57,
    "msgTimeOfDayPM" : m58,
    "msgValidFrom" : m59,
    "msgValidRange" : m60,
    "msgValidTo" : m61,
    "msgValuesAbove" : m62,
    "msgValuesBelow" : m63,
    "msgValuesIn" : m64,
    "msgValuesNorm" : m65,
    "msgValuesNormHigh" : m66,
    "msgValuesNormLow" : m67,
    "msgValuesVeryHigh" : m68,
    "msgValuesVeryLow" : m69,
    "ok" : MessageLookupByLibrary.simpleMessage("ok"),
    "sehr geringes Risiko" : MessageLookupByLibrary.simpleMessage("とてもリスクが少ない"),
    "tl;dr" : MessageLookupByLibrary.simpleMessage("tl;dr"),
    "verwerfen" : MessageLookupByLibrary.simpleMessage("取消"),
    "wirklich gelöscht werden?" : MessageLookupByLibrary.simpleMessage("削除してもよろしいですか?"),
    "Ø Basal pro Tag" : MessageLookupByLibrary.simpleMessage("平均基礎投与量（日）"),
    "Ø Bolus pro Tag" : MessageLookupByLibrary.simpleMessage("平均ボーラス投与量（日）"),
    "Ø ICR/Stunde" : MessageLookupByLibrary.simpleMessage("平均インスリンカーボ比/時間"),
    "Ø ISF/Stunde" : MessageLookupByLibrary.simpleMessage("平均　インスリン効果値/時間"),
    "Ø Insulin pro Tag" : MessageLookupByLibrary.simpleMessage("平均投与インスリン量（日）"),
    "Ø Insulinverhältnis" : MessageLookupByLibrary.simpleMessage("平均　インスリン比"),
    "Ø KH pro Tag" : MessageLookupByLibrary.simpleMessage("平均摂取炭水化物（日）"),
    "Ø Microbolus pro Tag" : MessageLookupByLibrary.simpleMessage("平均マイクロボーラス（日）"),
    "Ø Zuckerwert" : MessageLookupByLibrary.simpleMessage("平均血糖値"),
    "Überprüfe Zugriff auf Nightscout ..." : MessageLookupByLibrary.simpleMessage("ナイトスカウトの接続を確認しています…"),
    "Übersetzungen korrigiert" : MessageLookupByLibrary.simpleMessage("翻訳の修正")
  };
}
