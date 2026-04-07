import 'package:solid_principles/Section%202%20_%20SRP/2.1/good/user_model.dart';

class EmailValidation
{
  bool isValidEmail(UserModel user) {
    return user.email.contains('@') && user.email.contains('.');
  }
}