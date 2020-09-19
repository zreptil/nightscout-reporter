@JS('pdfMake')
library pdfmake;

import 'package:js/js.dart';

@JS('createPDF')
external Doc create(PDFContent content);

@JS()
@anonymous
class PDFContent {
  external List<dynamic> get content;
  external Styles get styles;
  external factory PDFContent({List<dynamic> content, Styles styles});
}

@JS()
@anonymous
class Doc {
  external void download();
  external void print();
  external void open();
  external factory Doc();
}
@JS()
@anonymous
class Styles {
  external Style get header;
  external Style get basic;
  external factory Styles({Style header, Style basic});
}

@JS()
@anonymous
class Style {
  external String get fontSize;
  external bool get bold;
  external bool get italic;
  external bool get color;
  external factory Style({
                           String color = 'black',
                           int fontSize = 12,
                           bool bold = false,
                           bool italic = false,
                         });
}

