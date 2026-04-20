import 'package:solid_principles/Section%204%20_%20LSP/4.2/good_practice/file_reader.dart';

class SecureFileReader implements FileReader {
  final List<String> allowedPaths = ['/public', '/shared'];

  @override
  bool canRead(String path) {
    if (!allowedPaths.any((allowed) => path.startsWith(allowed))) {
      return false;
    }
    return true;
  }

  @override
  String readFile(String path) {
    // TODO: implement readFile
    throw UnimplementedError();
  }


}
