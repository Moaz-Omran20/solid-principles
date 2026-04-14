import 'package:solid_principles/Section%203%20_%20OCP/3.2/good_practice/console_logger.dart';
import 'package:solid_principles/Section%203%20_%20OCP/3.2/good_practice/logger.dart';

import 'file_logger_good.dart';
import 'user_service_good.dart';

void main()
{
  final Logger logger = FileLoggerGood('app.log');
  final Logger logger2 = ConsoleLogger();
  final userService = UserServiceGood(logger);

  userService.createUser('Alice');
  userService.deleteUser('Bob');




}