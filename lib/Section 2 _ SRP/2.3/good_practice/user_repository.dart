import '../monolithic_user_manager.dart';

class UserRepository {
  final List<User> _users = [];

  void add(User user) {
    _users.add(user);
    _saveToFile();
  }

  void _saveToFile() {
    print('Saving ${_users.length} users to file...');
  }

  User? getById(String id) {
    try {
      return _users.firstWhere((user) => user.id == id);
    } catch (e) {
      return null;
    }
  }

  List<User> search(String term) {
    return _users.where((user) =>
    user.firstName.toLowerCase().contains(term.toLowerCase()) ||
        user.email.toLowerCase().contains(term.toLowerCase())
    ).toList();
  }

  List<User> getAll() => List.unmodifiable(_users);
  int get count => _users.length;
}