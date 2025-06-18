import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawel/core/routing/app_router.dart';
import 'package:nawel/core/routing/routes.dart';
import 'package:nawel/core/theming/colors_manager.dart';

class NawelApp extends StatelessWidget {
  final AppRouter appRouter;
  const NawelApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorsManager.electricPurple,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.onboardingScreen,
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
