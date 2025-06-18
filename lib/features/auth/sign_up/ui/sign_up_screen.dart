import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawel/core/helpers/extensions.dart';
import 'package:nawel/features/auth/sign_up/ui/widgets/sign_up_form.dart';
import '../../../../core/helpers/assets.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
              const SignUpForm(),
              verticalSpace(26),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: AppTextButton(
                  buttonText: 'sign up',
                  textStyle: AppStyles.dmSansMedium14White,
                  onPressed: () {},
                ),
              ),
              verticalSpace(12),
              TextButton(
                onPressed: () {
                  context.pop();
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text(
                  'already have an account? login',
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
