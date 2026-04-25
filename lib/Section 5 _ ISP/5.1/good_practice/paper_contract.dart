import 'package:solid_principles/Section%205%20_%20ISP/5.1/good_practice/good_document_sys.dart';

class PaperContract implements Printable, Faxable, Scan {
  String content;

  PaperContract(this.content);

  @override
  void fax() {
    print('Faxing contract: $content');
  }

  @override
  void printDocument() {
    print('Printing contract: $content');
  }

  @override
  void scan() {
    print('Scanning contract: $content');
  }
}
