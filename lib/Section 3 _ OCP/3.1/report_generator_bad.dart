import 'package:solid_principles/Section%203%20_%20OCP/3.1/good_practice/report_service.dart';

import 'good_practice/type/excel_generator.dart';
import 'good_practice/type/html_type.dart';
import 'good_practice/type/json_generator.dart';
import 'good_practice/type/pdf_generator.dart';

class ReportData {
  final String title;
  final List<String> items;
  final DateTime generatedAt;

  ReportData({
    required this.title,
    required this.items,
    required this.generatedAt,
  });
}

class ReportGeneratorBad {
  String generate(ReportData data, String type) {
    if (type == 'PDF') {
      return _generatePDF(data);
    } else if (type == 'HTML') {
      return _generateHTML(data);
    } else if (type == 'CSV') {
      return _generateCSV(data);
    } else if (type == 'EXCEL') {
      return _generateExcel(data);
    } else if (type == 'JSON') {
      return _generateJson(data);
    }

    return 'Unsupported format';
  }

  String _generatePDF(ReportData data) {
    return 'PDF Report: ${data.title}\n${data.items.join('\n')}';
  }

  String _generateHTML(ReportData data) {
    return '<html><h1>${data.title}</h1><ul>${data.items.map((item) => '<li>$item</li>').join()}</ul></html>';
  }

  String _generateCSV(ReportData data) {
    return '${data.title}\n${data.items.join(',')}';
  }

  String _generateExcel(ReportData data) {
    return 'EXCEL:${data.title}|${data.items.join('|')}';
  }

  String _generateJson(ReportData data) {
    return '{"title":"${data.title}", "items":"${data.items}"}';
  }
}

void main() {
  final data = ReportData(
    title: 'Sales Report',
    items: ['Product A: \$100', 'Product B: \$200', 'Product C: \$150'],
    generatedAt: DateTime.now(),
  );

  // final generator = ReportGeneratorBad();
  //
  // print(generator.generate(data, 'PDF'));
  // print(generator.generate(data, 'HTML'));
  // print(generator.generate(data, 'EXCEL'));
  // print(generator.generate(data, 'JSON'));

  //--------------------good use -------------------

  ReportService reportService = ReportService([
    PdfGenerator(),
    HtmlType(),
    ExcelGenerator(),
    JsonGenerator(),
  ]);
  String fileGenerator = reportService.generateReport(data, 'HTML');
  print(fileGenerator);
}
