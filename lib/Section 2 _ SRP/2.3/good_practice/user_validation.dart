class UserValidation {
  bool isValidEmail(String email) => email.contains('@') && email.length > 5;
  bool isValidName(String name) => name.isNotEmpty && name.length >= 2;
}