import 'package:solid_principles/Section%205%20_%20ISP/5.1/good_practice/good_document_sys.dart';

class DigitalReport implements Viewable{

  String content;

  DigitalReport(this.content);

  @override
  void view() {
    print('Viewing digital report: $content');
  }




}