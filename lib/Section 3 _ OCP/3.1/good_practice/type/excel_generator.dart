import 'package:solid_principles/Section%203%20_%20OCP/3.1/report_generator_bad.dart';

import '../report_generator.dart';

class ExcelGenerator implements ReportGenerator {


  @override
  // TODO: implement formateName
  String get formateName => 'EXCEL';


  @override
  String generate(ReportData data) {
    return '${data.title}\n${data.items.join(',')}';
  }


}
