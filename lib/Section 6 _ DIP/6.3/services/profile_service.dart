
import 'analytics_service.dart';
import 'api_service.dart';
import 'auth_service.dart';

class ProfileService {
  final AuthService authService;
  final ApiService apiService;
  final AnalyticsService analyticsService;

  ProfileService({
    required this.authService,
    required this.apiService,
    required this.analyticsService,
  });

  Future<void> loadProfile() async {
    final userId = authService.getCurrentUserId();
    if (userId != null) {
      final posts = await apiService.fetchUserPosts(userId);
      print('Loaded ${posts.length} posts');
      analyticsService.logEvent('posts_loaded');
    }
  }
}
