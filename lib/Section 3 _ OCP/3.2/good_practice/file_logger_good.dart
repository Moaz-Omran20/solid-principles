import 'dart:io';

import 'logger.dart';

class FileLoggerGood implements Logger {
  final String filePath;

  FileLoggerGood(this.filePath);

  @override
  // TODO: implement logger
  String get logger => "File Logger";

  @override
  void log(String message) {
    void log(String message) {
      final timestamp = DateTime.now().toIso8601String();
      final logEntry = '[$timestamp] $message\n';

      File(filePath).writeAsStringSync(logEntry, mode: FileMode.append);
      print('Logged to file: $logEntry');
    }
  }
}
