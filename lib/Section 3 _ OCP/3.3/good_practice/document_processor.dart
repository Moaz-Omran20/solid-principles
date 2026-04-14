abstract class DocumentProcessor {
  bool process(String filePath, String content) {
    if (!_validateDocument(filePath, content)) {
      return false;
    }

    _logProcessingStart();
    processDocument( filePath,  content);
    print('Converting to DOCX format: $content');
    print('Saving to: $filePath');
    return true;
  }

  bool _validateDocument(String filePath, String content) {
    if (filePath.isEmpty) {
      print('Error: File path is empty');
      return false;
    }

    if (content.isEmpty) {
      print('Error: Content is empty');
      return false;
    }
    return true;
  }

  void _logProcessingStart() {
    print('Processing document start...');
  }
  processDocument(String filePath, String content);

}
