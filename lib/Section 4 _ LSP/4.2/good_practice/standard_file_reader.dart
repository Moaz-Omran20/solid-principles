import 'package:solid_principles/Section%204%20_%20LSP/4.2/good_practice/file_reader.dart';

class StandardFileReader implements FileReader {
  @override
  bool canRead(String path) {
    return true;
  }

  @override
  String readFile(String path) {
    return 'File contents from $path';
  }
}
