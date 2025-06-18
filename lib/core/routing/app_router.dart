import 'package:flutter/material.dart';
import 'package:nawel/core/routing/routes.dart';
import 'package:nawel/features/auth/login/ui/login_screen.dart';

import '../../features/auth/sign_up/ui/sign_up_screen.dart';
import '../../features/home/ui/home_screen.dart';
import '../../features/layout/app_layout.dart';
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
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.appLayoutScreen:
        return MaterialPageRoute(
          builder: (_) => const AppLayout(),
        );
      default:
        return null;
    }
  }
}
