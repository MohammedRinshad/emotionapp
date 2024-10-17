import 'package:emotionapp/presentatons/screens/mood_screen.dart';
import 'package:emotionapp/presentatons/screens/on_boarding_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => OnboardingScreen(),
    ),
    GoRoute(
      path: '/moodscreen',
      builder: (context, state) => MoodScreen(),
    ),
  ],
);
