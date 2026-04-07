import 'package:solid_principles/Section%202%20_%20SRP/2.1/good_practice/user_model.dart';

class HashedPassword
{

  String hashPassword(UserModel user) {
    return '${user.password}_hashed';
  }


}