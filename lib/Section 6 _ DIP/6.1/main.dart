//"High-level modules should not depend on low-level modules. Both should depend on abstractions."
// "Abstractions should not depend on details. Details should depend on abstractions."
import 'package:solid_principles/Section%206%20_%20DIP/6.1/profile_manager.dart';

void main() async {
  final profileManager = ProfileManager();

  final profile = await profileManager.loadProfile('user123');
  print('Loaded profile: ${profile.name}');
}
