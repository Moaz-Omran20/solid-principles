import 'package:solid_principles/Section%203%20_%20OCP/3.1/report_generator_bad.dart';

import '../report_generator.dart';

class PdfGenerator implements ReportGenerator {
  @override
  // TODO: implement formateName
  String get formateName => 'PDF';

  @override
  String generate(ReportData data) {
    return 'PDF Report: ${data.title}\n${data.items.join('\n')}';
  }
}
