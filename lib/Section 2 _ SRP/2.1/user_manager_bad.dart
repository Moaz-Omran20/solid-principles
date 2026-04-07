import 'good_practice/email_validation.dart';
import 'good_practice/hash_password.dart';
import 'good_practice/save_user_data.dart';
import 'good_practice/user_creation_service.dart';
import 'good_practice/user_logger.dart';
import 'good_practice/user_model.dart';

class UserManager {
  String name = '';
  String email = '';

  bool isValidEmail(String email) {
    return email.contains('@') && email.contains('.');
  }

  String hashPassword(String password) {
    return '${password}_hashed';
  }

  void saveToDatabase() {
    print('Saving user $name to database...');
  }

  void sendWelcomeEmail() {
    print('Sending welcome email to $email...');
  }

  void logUserCreation() {
    print('LOG: User $name created at ${DateTime.now()}');
  }

  void createUser(String name, String email, String password) {
    this.name = name;
    this.email = email;

    if (!isValidEmail(email)) return;

    hashPassword(password);
    saveToDatabase();
    sendWelcomeEmail();
    logUserCreation();
  }
}

void main() {
  // final manager = UserManager();
  // manager.createUser('John', 'john@example.com', 'password123');

  final manager = UserCreationService(
    emailValidation: EmailValidation(),
    hashedPassword: HashedPassword(),
    saveUserData: SaveUserData(),
    userLogger: UserLogger(),
  );
  manager.createUser(
    UserModel(email: 'john@example.com', name: 'John', password: 'password123'),
  );
}
