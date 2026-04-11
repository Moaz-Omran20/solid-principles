import '../report_generator_bad.dart';

abstract class ReportGenerator {
  String get formateName;

  String generate(ReportData data);
}
