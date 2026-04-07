import 'package:solid_principles/Section%202%20_%20SRP/2.1/good/user_model.dart';

class UserLogger {




  void logUserCreation(UserModel user) {
    print('LOG: User ${user.name} created at ${DateTime.now()}');
  }
}