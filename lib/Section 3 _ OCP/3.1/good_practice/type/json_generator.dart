import 'package:solid_principles/Section%203%20_%20OCP/3.1/report_generator_bad.dart';

import '../report_generator.dart';

class JsonGenerator implements ReportGenerator {
  @override
  String get formateName => 'JSON';

  @override
  String generate(ReportData data) {
    return '{"title":"${data.title}", "items":"${data.items}"}';
  }
}
