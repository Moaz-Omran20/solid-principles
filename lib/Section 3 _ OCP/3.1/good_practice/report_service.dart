import 'package:solid_principles/Section%203%20_%20OCP/3.1/good_practice/report_generator.dart';

import '../report_generator_bad.dart';

class ReportService {

 final List<ReportGenerator> reportGenerator;

  ReportService(this.reportGenerator);


  String generateReport(ReportData model,String type)
  {
   final report =  reportGenerator.firstWhere((element) => element.formateName == type);

  return report.generate(model);
  }
}