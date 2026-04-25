import 'package:solid_principles/Section%205%20_%20ISP/5.1/good_practice/good_document_sys.dart';

class OfficeDocument implements Viewable, Printable {
  String content;

  OfficeDocument(this.content);

  @override
  void printDocument() {
    print('Printing contract: $content');
  }

  @override
  void view() {
    print('Viewing digital report: $content');
  }
}
