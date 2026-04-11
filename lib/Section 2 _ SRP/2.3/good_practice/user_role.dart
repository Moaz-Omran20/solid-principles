import 'package:solid_principles/Section%202%20_%20SRP/2.3/monolithic_user_manager.dart';

class UserRole {

  List<User>users;
  UserRole(this.users);

  Map<String, int> getRoleStatistics() {
    Map<String, int> stats = {};
    for (var user in users) {
      for (var role in user.roles) {
        stats[role] = (stats[role] ?? 0) + 1;
      }
    }
    return stats;
  }



}