import 'package:solid_principles/Section%202%20_%20SRP/2.1/good/user_model.dart';

class SaveUserData {

  void saveToDatabase(UserModel user) {
    print('Saving user ${user.name} to database...');
  }


}