import '../monolithic_user_manager.dart';
import 'id_generator.dart';
import 'user_email.dart';
import 'user_logger.dart';
import 'user_repository.dart';
import 'user_validation.dart';

class UserService {
  final UserRepository _repository;
  final UserValidation _validator;
  final IdGenerator _idGenerator;
  final UserEmail _emailService;
  final UserLogger _logger;

  UserService(
      this._repository,
      this._validator,
      this._idGenerator,
      this._emailService,
      this._logger,
      );

  User createUser(String firstName, String lastName, String email, List<String> roles) {
    // 1. Validate
    if (!_validator.isValidName(firstName) ||
        !_validator.isValidName(lastName) ||
        !_validator.isValidEmail(email)) {
      throw Exception('Invalid user data');
    }

    // 2. Generate ID
    final id = _idGenerator.generateId();

    // 3. Create Object
    final user = User(
      id: id,
      firstName: firstName,
      lastName: lastName,
      email: email,
      roles: roles,
    );

    // 4. Persistence
    _repository.add(user);

    // 5. Side Effects
    _emailService.sendWelcomeEmail(user);
    _logger.logUserCreation(user);

    return user;
  }

  // Delegate other methods to the repository
  List<User> search(String term) => _repository.search(term);
}