import '../document_processor.dart';

class PdfDocumentProcessor extends DocumentProcessor {
  @override
  processDocument(String filePath, String content) {
      print('Processing PDF document...');
      print('Converting to PDF format: $content');
      print('Saving to: $filePath');
      return true;
  }

}
