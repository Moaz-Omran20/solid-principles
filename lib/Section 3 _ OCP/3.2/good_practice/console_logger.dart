
import 'package:solid_principles/Section%203%20_%20OCP/3.2/good_practice/logger.dart';

class ConsoleLogger implements Logger{

  ConsoleLogger();

  @override
  void log(String message) {

      print('Logged to Console');
  }

  @override
  // TODO: implement logger
  String get logger => "Console Logger";




}