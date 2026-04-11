import 'package:solid_principles/Section%203%20_%20OCP/3.1/report_generator_bad.dart';

import '../report_generator.dart';

class HtmlType implements ReportGenerator {


  @override
  // TODO: implement formateName
  String get formateName => 'HTML';

  @override
  String generate(ReportData data) {
    return '<html><h1>${data.title}</h1><ul>${data.items.map((item) => '<li>$item</li>').join()}</ul></html>';
  }


}
