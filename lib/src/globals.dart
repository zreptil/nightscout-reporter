library diamant.globals;

import 'dart:async';
import 'dart:convert' as convert;
import 'dart:html' as html;
import 'dart:math' as math;

import 'package:angular_components/angular_components.dart';
import 'package:angular_components/material_datepicker/comparison.dart';
import 'package:angular_components/material_datepicker/comparison_option.dart';
import 'package:angular_components/material_datepicker/range.dart';
import 'package:http/browser_client.dart' as http;
import 'package:intl/intl.dart';

class Msg
{
  String okText = Intl.message("Schliessen");
  String text;
  String type = "msg";
  var links = [];
  bool get isEmpty
  => (text == null || text == "") && links.length == 0;

  void clear()
  {
    text = null;
    links = [];
  }

  void dismiss(call)
  {
    if (call != null)call();
    text = null;
    links = [];
  }
}

class LangData
{
  String code;
  String name;
  String img;
  String dateformat;
  String get imgPath
  => "https://findicons.com/files/icons/2758/flag_icons/32/${img}.png";

  LangData(this.code, this.name, this.dateformat, this.img);
}

class Globals
{
  static final Globals _globals = Globals._internal();
  String version = "1.0.4";
  String lastVersion;
  String get msgUrlFailure
  =>
    Intl.message("Die angegebene URL ist nicht erreichbar. "
      "Wenn die URL stimmt, dann kann es an den Nightscout-Einstellungen liegen. "
      "In der Variable ENABLE muss das Wort \"cors\" stehen, damit externe Tools, "
      "wie dieses hier, auf die Daten zugreifen dürfen.<br><br>Wenn diese URL geschützt ist, "
      "muss ausserdem das UserToken korrekt definiert sein (bisher nicht funktionsfähig).");
  String get msgNoURLDefined
  => Intl.message("Die URL wurde noch nicht festgelegt.");

  String title = "Nightscout Reporter";
  List<UserData> userList = List<UserData>();
  int userIdx = 0;
  UserData get user
  {
    if (userIdx >= 0 && userIdx < userList.length)return userList[userIdx];
    if (userList.length == 0)userList.add(UserData(this));
    userIdx = 0;
    return userList[0];
  }

  List<LangData> languageList = [
    LangData("de_DE", Intl.message("Deutsch"), "dd.MM.yyyy", "de"),
    LangData("en_US", Intl.message("English"), "M/d/yyyy", "us")
  ];
  LangData language;

  bool glucMGDL = true;
  DatepickerComparison dateRange = DatepickerComparison(
    DatepickerDateRange(Intl.message("Zeitraum"), null, null), ComparisonOption.custom);
  DateFormat fmtDateForData;
  DateFormat fmtDateForDisplay;
  bool canDebug = false;
  bool isBeta = false;
  bool pdfSameWindow = true;
  bool isConfigured = false;

  double glucFromData(double value)
  => glucMGDL ? value : value / 18.02;

  String get pdfTarget
  {
    if (!pdfSameWindow)return "_blank";
    return "";
  }

  static double calc(double a, double b, double factor)
  {
    if (a != null && a > 0)
    {
      if (b != null && b > 0)return a + ((b - a) * factor).toInt();
      else
        return a;
    }
    return b;
  }

  Future<String> request(String url, {String method = "GET"})
  async {
    http.BrowserClient client = http.BrowserClient();
    if (user.token != null && user.token.isNotEmpty)
    {
      String div = url.indexOf("?") > 0 ? "&" : "?";
      url = "${url}${div}token=${user.token}";
    }
    return client.get(url).then((response)
    {
      return response.body;
    }).catchError((error)
    {
      return error.toString();
    });
  }

  Future<String> checkSetup({checkUser: null})
  async {
    if (checkUser == null)checkUser = user;
    if (checkUser.storageApiUrl == null || checkUser.apiUrl == null)return msgNoURLDefined;
    String ret = null;
    String check = "${checkUser.apiUrl}status";
    await request(check).then((String response)
    {
      if (response != "<h1>STATUS OK</h1>")ret = msgUrlFailure;
    }).catchError((err)
    {
      ret = msgUrlFailure;
    });
    return ret;
  }

  factory Globals(){
    return _globals;
  }

  Globals._internal(){
    load();
  }

  changeLanguage(LangData value, {bool doReload = true, bool checkConfigured = false})
  async {
    language = value;
    if (checkConfigured && !isConfigured)html.window.localStorage.clear();
    saveStorage("language", language.code ?? "de_DE");
    if (doReload)html.window.location.reload();
  }

  void saveStorage(String key, String value)
  {
    if (value == null || value.isEmpty)html.window.localStorage.remove(key);
    else
      html.window.localStorage[key] = value;
  }

  String loadStorage(String key)
  {
    String ret = html.window.localStorage[key];
    if (ret == "null" || ret == null)ret = "";
    return ret;
  }

  UserData u(url, name)
  {
    UserData ret = UserData(this);
    ret.storageApiUrl = url;
    ret.name = name;
    return ret;
  }

  void load()
  {
    // read old data to save them for later. Will be removed in future updates
    if (loadStorage("apiUrl") != "")
    {
      UserData user = UserData(this);
//      user.apiSecret = loadStorage("apiSecret");
      user.storageApiUrl = loadStorage("apiUrl");
      user.diaStartDate = loadStorage("diaStartDate");
      user.insulin = loadStorage("insulin");
      user.birthDate = loadStorage("birthDate");
      user.name = loadStorage("userName");

      for (var entry in html.window.localStorage.entries)
      {
        if (entry.key.startsWith("form"))
        {
          user.formList[entry.key.substring(4)] = entry.value.toLowerCase() == "true";
          html.window.localStorage.remove(entry.key);
        }
      }
      userIdx = 0;
      saveStorage("mu", Globals.doit("[${user.asJson}]"));
      saveStorage("userIdx", "$userIdx");
      saveStorage("version", lastVersion);
      html.window.localStorage.remove("lastVersion");
//      html.window.localStorage.remove("apiSecret");
      html.window.localStorage.remove("apiUrl");
      html.window.localStorage.remove("diaStartDate");
      html.window.localStorage.remove("birthDate");
      html.window.localStorage.remove("userName");
      html.window.localStorage.remove("insulin");
    }

    String users = loadStorage("mu");
    userList.clear();
    // get user list from mu if available
    if (users != null)
    {
      var text = tiod(users);
      if (text != null && text.isNotEmpty)
      {
        try
        {
          var list = convert.json.decode(text);
          for (var entry in list)
            userList.add(UserData.fromData(this, entry));
        }
        catch (e)
        {
          html.window.localStorage.remove("mu");
        }
      }
      else
      {
        html.window.localStorage.remove("mu");
      }
    }

    userIdx = int.tryParse(loadStorage("userIdx")) ?? 0;
    if (userIdx > userList.length)userIdx = userList.length - 1;
    if (userIdx < 0)userIdx = 0;

    String langId = loadStorage("language");
    int idx = languageList.indexWhere((v)
    => v.code == langId);
    language = languageList[idx >= 0 ? idx : 0];
    lastVersion = loadStorage("version");
    fmtDateForData = DateFormat("yyyy-MM-dd");
    fmtDateForDisplay = DateFormat("dd.MM.yyyy");
    glucMGDL = loadStorage("glucMGDL") != "false";
    canDebug = loadStorage("debug") == "yes";
    isBeta = loadStorage("beta") == "yes";
    pdfSameWindow = loadStorage("pdfSameWindow") != "no";

    Date start = Date.today();
    Date end = Date.today();
    try
    {
      start = Date.parse(
        html.window.localStorage["startDate"] ?? Date.today().add(days: -7).format(fmtDateForData), fmtDateForData);
      end = Date.parse(html.window.localStorage["endDate"] ?? Date.today().format(fmtDateForData), fmtDateForData);
    }
    catch (ex)
    {}
    DatepickerDateRange dr = DatepickerDateRange(dateRange.range.title, start, end);
    dateRange = DatepickerComparison(dr, ComparisonOption.custom);
    changeLanguage(language, doReload: false);
  }

  void save()
  {
    String oldLang = html.window.localStorage["language"];
    html.window.localStorage.clear();
    saveStorage("version", version);
    if (canDebug)saveStorage("debug", "yes");

    String save = "";
    for (int i = 0; i < userList.length; i++)
      save = "${save},${userList[i].asJson}";
    saveStorage("mu", Globals.doit("[${save.substring(1)}]"));

    saveStorage("userIdx", "$userIdx");
    bool doReload = (language.code != oldLang && language.code != null);
    saveStorage("glucMGDL", glucMGDL.toString());
    saveStorage("language", language.code ?? "de_DE");
    saveStorage("beta", isBeta ? "yes" : "no");
    saveStorage("pdfSameWindow", pdfSameWindow ? "yes" : "no");

    if (dateRange.range != null)
    {
      if (dateRange.range.start != null)saveStorage("startDate", dateRange.range.start.format(fmtDateForData));
      if (dateRange.range.end != null) saveStorage("endDate", dateRange.range.end.format(fmtDateForData));
    }
    if (doReload)html.window.location.reload();
  }

  static tiod(String src)
  {
    if (src == null || src.isEmpty)return "";

    String ret = "";
    int pos = src.length ~/ 2;
    src = "${src.substring(pos + 1)}${src.substring(0, pos - 1)}";
    try
    {
      convert.base64Decode(src).forEach((value)
      {
        ret = "${ret}${String.fromCharCode(value)}";
      });
    }
    catch (ex)
    {
      ret = "";
    }

    return ret;
  }

  static doit(String src)
  {
    String ret = convert.base64Encode(src.codeUnits);
    int pos = ret.length ~/ 2;
    math.Random rnd = math.Random();
    String.fromCharCode(rnd.nextInt(26) + 64);
    ret =
    "${ret.substring(pos)}${String.fromCharCode(rnd.nextInt(26) + 64)}${String.fromCharCode(rnd.nextInt(10) + 48)}${ret
      .substring(0, pos)}";
    return ret;
  }

  static double percentile(List entries, int value)
  {
    double v = value / 100;
    List temp = List();
    // the entries must not be rearranged,
    // so we need a copy of this list
    for (var entry in entries)
      temp.add(entry);
    temp.sort((a, b)
    => a.gluc.compareTo(b.gluc));
    int N = temp.length;
    double n = (N - 1) * v + 1;
    if (n == 1)
    {
      return temp[0].gluc;
    }
    else if (n == N)
    {
      return temp[N - 1].gluc;
    }
    else
    {
      int k = n.toInt();
      double d = n - k;
      if (k > 0 && k < temp.length)return temp[k - 1].gluc + d * (temp[k].gluc - temp[k - 1].gluc);
      else
        return 0.0;
    }
  }
}

class UserData
{
  Globals g;
  String name = "";
  String birthDate = "";
  String storageApiUrl = "";

//  String apiSecret = "";
  String token = "";
  dynamic customData = Map<String, String>();
  String diaStartDate = "";
  String insulin = "";
  dynamic formList = Map<String, bool>();

  UserData(this.g);

  String get display
  {
    return name.isEmpty ? storageApiUrl : name;
  }

  String get asJson
  {
    if (storageApiUrl.endsWith("/api/v1/"))storageApiUrl.replaceAll("/api/v1/", "");
    if (storageApiUrl.endsWith("/api/v1"))storageApiUrl.replaceAll("/api/v1", "");
    if (storageApiUrl == "null")storageApiUrl = null;
    String forms = "";
    for (String key in formList.keys)
      forms = '${forms},"${key}":${formList[key]}';
    if (forms != "")forms = forms.substring(1);

    return '{"n":"$name",'
      '"bd":"${birthDate ?? ''}",'
//      '"sa":"${apiSecret ?? ''}",'
      '"ut":"${token ?? ''}",'
      '"u":"${storageApiUrl ?? ''}",'
      '"dd":"${diaStartDate ?? ''}",'
      '"i":"${insulin ?? ''}",'
      '"c":${convert.json.encode(customData)},'
      '"f":{${forms}}'
      '}';
  }

  static UserData fromJson(Globals g, String src)
  {
    String dst = "";
    int pos = src.length ~/ 2;
    src = "${src.substring(pos + 1)}${src.substring(0, pos - 1)}";
    convert.base64Decode(src).forEach((value)
    {
      dst = "${dst}${String.fromCharCode(value)}";
    });
    var data = convert.json.decode(dst);
    return fromData(g, data);
  }

  static UserData fromData(Globals g, var data)
  {
    UserData ret = UserData(g);
    try
    {
      ret.name = data["n"];
      ret.birthDate = data["bd"];
      ret.diaStartDate = data["dd"];
      ret.insulin = data["i"];
      ret.storageApiUrl = data["u"];
//      ret.apiSecret = data["sa"];
      ret.token = data["ut"];
      ret.customData = data["c"];
      ret.formList = data["f"] ?? Map<String, bool>();
      return ret;
    }
    catch (ex)
    {
      return null;
    }
  }

  String get baseUrl
  {
    if (storageApiUrl == null || storageApiUrl.length < 8)return "";
    return storageApiUrl.substring(0, storageApiUrl.substring(8).indexOf("/") + 8);
  }

  String get apiUrl
  {
    String ret = storageApiUrl;
    if (ret != null)
    {
      if (ret.startsWith("@"))return ret.substring(1);
      if (!ret.endsWith("/"))ret = "$ret/";
      if (!ret.endsWith("/api/v1/")) ret = "${ret}api/v1/";
    }
    return ret;
  }

  String get reportUrl
  {
    String ret = storageApiUrl;
    if (ret != null)
    {
      if (!ret.endsWith("/"))ret = "$ret/";
    }
    return "${ret}report";
  }

  Future<String> get isValid
  async {
    if (storageApiUrl == null || apiUrl == null)return Intl.message("Die URL wurde noch nicht festgelegt");
    String ret = null;
    String check = "${apiUrl}status";
    await g.request(check).then((String response)
    {
      if (response != "<h1>STATUS OK</h1>")ret = g.msgUrlFailure;
    }).catchError((err)
    {
      ret = g.msgUrlFailure;
    });
    return ret;
  }
}