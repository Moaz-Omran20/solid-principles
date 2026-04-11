import '../monolithic_user_manager.dart';

class UserEmail {
  void sendWelcomeEmail(User user) {
    print('📧 Sending welcome email to ${user.email}');
    print('Subject: Welcome ${user.firstName}!');  }
}