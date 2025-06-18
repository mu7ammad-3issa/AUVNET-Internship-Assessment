import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helpers/assets.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/helpers/validators.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 37.w),
      child: Column(
        children: [
          AuthTextFormField(
            icon: SvgPicture.asset(Assets.iconsEmail),
            isPassword: false,
            validator: Validators.validateEmail,
            hint: 'mail',
            keyboardType: TextInputType.emailAddress,
          ),
          verticalSpace(7),
          AuthTextFormField(
            icon: SvgPicture.asset(Assets.iconsPassword),
            isPassword: true,
            validator: Validators.validatePassword,
            hint: 'password',
            keyboardType: TextInputType.visiblePassword,
          ),
          verticalSpace(7),
          AuthTextFormField(
            icon: SvgPicture.asset(Assets.iconsPassword),
            isPassword: true,
            validator: Validators.validatePassword,
            hint: 'confirm password',
            keyboardType: TextInputType.visiblePassword,
          ),
        ],
      ),
    );
  }
}
