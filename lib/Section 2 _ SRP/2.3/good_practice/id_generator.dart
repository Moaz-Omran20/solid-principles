
class IdGenerator {
  String generateId() => 'user_${DateTime.now().millisecondsSinceEpoch}';
}