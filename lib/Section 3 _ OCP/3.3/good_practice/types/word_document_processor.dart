import '../document_processor.dart';

class WordDocumentProcessor extends DocumentProcessor {
  @override
   processDocument(String filePath, String content) {
    print('Processing Word document...');
    print('Converting to DOCX format: $content');
    print('Saving to: $filePath');
    return true;
  }
}
