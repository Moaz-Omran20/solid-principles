import 'package:solid_principles/Section%203%20_%20OCP/3.2/good_practice/logger.dart';

class UserServiceGood {

  final Logger _logger;

  UserServiceGood(this._logger);

  void createUser(String username) {
    print('Creating user: $username');

    _logger.log('User created: $username');
  }

  void deleteUser(String username) {
    print('Deleting user: $username');
    _logger.log('User deleted: $username');
  }


}