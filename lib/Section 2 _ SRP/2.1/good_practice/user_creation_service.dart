import 'package:solid_principles/Section%202%20_%20SRP/2.1/good_practice/save_user_data.dart';
import 'package:solid_principles/Section%202%20_%20SRP/2.1/good_practice/user_logger.dart';
import 'package:solid_principles/Section%202%20_%20SRP/2.1/good_practice/user_model.dart';

import 'email_validation.dart';
import 'hash_password.dart';

class UserCreationService {
  final EmailValidation emailValidation;
  final HashedPassword hashedPassword;
  final SaveUserData saveUserData;
  final UserLogger userLogger;

  void createUser(UserModel user) {
    if (!emailValidation.isValidEmail(user)) return;

    hashedPassword.hashPassword(user);
    saveUserData.saveToDatabase(user);
    userLogger.logUserCreation(user);
  }

  UserCreationService({
    required this.emailValidation,
    required this.hashedPassword,
    required this.saveUserData,
    required this.userLogger,
  });
}
