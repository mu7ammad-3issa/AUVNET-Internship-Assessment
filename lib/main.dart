import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawel/core/routing/app_router.dart';
import 'package:nawel/firebase_options.dart';
import 'core/di/dependency_injection.dart' as di;

import 'nawel_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await di.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    NawelApp(appRouter: AppRouter()),
  );
}
