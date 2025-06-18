import 'package:flutter/material.dart';
import 'package:nawel/core/routing/routes.dart';
import 'package:nawel/features/auth/login/login_screen.dart';

import '../../features/onboarding/ui/onboarding_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return null;
    }
  }
}
