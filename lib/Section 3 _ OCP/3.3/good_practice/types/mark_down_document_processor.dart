import 'package:solid_principles/Section%203%20_%20OCP/3.3/good_practice/document_processor.dart';

class MarkDownDocumentProcessor extends DocumentProcessor{
  @override
  processDocument(String filePath, String content) {
      print('Processing Markdown document...');
      print('Converting to MD format: $content');
      print('Saving to: $filePath');
      return true;
  }


}