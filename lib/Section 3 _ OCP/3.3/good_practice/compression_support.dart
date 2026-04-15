import 'package:solid_principles/Section%203%20_%20OCP/3.3/good_practice/document_processor.dart';

mixin CompressionSupport on DocumentProcessor {
  bool compressOutput = false;

  void enableCompression() {
    compressOutput = true;
    print("Compression enabled");
  }

  @override
  processDocument(String filePath, String content) {
    if (compressOutput) {
      _compressFile(filePath);
    }
    print('Processing PDF document...');
    print('Converting to PDF format: $content');
    print('Saving to: $filePath');
    return true;
  }

  void _compressFile(String filePath) {
    print("Compressing file");
  }
}
