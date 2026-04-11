import '../monolithic_user_manager.dart';

class UserLogger {
  void logUserCreation(User user) {
    final timestamp = DateTime.now();
    print('📝 LOG [$timestamp]: User created - ${user.id} (${user.email})');
  }
}