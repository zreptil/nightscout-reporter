import 'package:nightscout_reporter/src/globals.dart' as globals;

class ClockElement {
  String type;
  int _size;
  bool selected = false;

  int get size {
    return _size;
  }

  set size(int value) {
    if (value == null || value < 1) value = 1;
    if (value > 5) value = 5;
    _size = value;
  }

  ClockElement();

  // retrieve the data as a json-encoded-string
  String get asJsonString {
    return '{"type":"$type"'
        ',"size":$size'
        '}';
  }

  static ClockElement fromJson(dynamic json) {
    var ret = ClockElement();
    try {
      ret.type = json['type'];
      ret.size = json['size'] ?? 1;
      ret.selected = json['selected'] ?? false;
    } catch (ex) {
      var msg = ex.toString();
      globals.Globals().showDebug('Fehler bei ClockElement.fromJson: ${msg}');
    }
    return ret;
  }
}
