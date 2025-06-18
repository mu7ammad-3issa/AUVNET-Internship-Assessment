import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawel/core/helpers/assets.dart';
import 'package:nawel/core/helpers/spacing.dart';
import 'package:nawel/core/routing/routes.dart';
import 'package:nawel/core/theming/app_styles.dart';
import 'package:nawel/core/widgets/app_text_button.dart';
import 'package:nawel/features/auth/login/ui/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpace(60),
              // logo
              Center(
                child: Image.asset(
                  Assets.imagesNawelLogo,
                ),
              ),
              const LoginForm(),
              verticalSpace(26),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: AppTextButton(
                  buttonText: 'login',
                  textStyle: AppStyles.dmSansMedium14White,
                  onPressed: () {},
                ),
              ),
              verticalSpace(12),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    Routes.signUpScreen,
                  );
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text(
                  'Create an account',
                  style: AppStyles.dmSansBold14Blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
