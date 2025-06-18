import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:nawel/core/routing/routes.dart';
import 'package:nawel/features/auth/presentation/screens/login_screen.dart';

import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../features/auth/presentation/screens/sign_up_screen.dart';
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
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => GetIt.instance<AuthBloc>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => GetIt.instance<AuthBloc>(),
            child: const SignUpScreen(),
          ),
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
