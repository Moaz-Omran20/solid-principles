
import 'package:solid_principles/Section%206%20_%20DIP/6.3/services/analytics_service.dart';
import 'package:solid_principles/Section%206%20_%20DIP/6.3/services/api_service.dart';
import 'package:solid_principles/Section%206%20_%20DIP/6.3/services/auth_service.dart';

import 'app.dart';

void main() async {
  final authService = AuthServiceImpl();
  final apiService = RestApiService(authService);
  final analyticsService = AnalyticsServiceImpl();

  final app = Application(
    authService: authService,
    apiService: apiService,
    analyticsService: analyticsService,
  );

  await app.run();
}
