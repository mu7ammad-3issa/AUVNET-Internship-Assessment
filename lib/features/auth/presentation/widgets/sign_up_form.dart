import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nawel/features/auth/presentation/bloc/auth_bloc.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/helpers/validators.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AuthBloc>().registerFormKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 37.w),
        child: Column(
          children: [
            AuthTextFormField(
              controller: context.read<AuthBloc>().registerEmailController,
              icon: SvgPicture.asset(Assets.iconsEmail),
              isPassword: false,
              validator: Validators.validateEmail,
              hint: 'mail',
              keyboardType: TextInputType.emailAddress,
            ),
            verticalSpace(7),
            AuthTextFormField(
              controller: context.read<AuthBloc>().registerPasswordController,
              icon: SvgPicture.asset(Assets.iconsPassword),
              isPassword: true,
              validator: Validators.validatePassword,
              hint: 'password',
              keyboardType: TextInputType.visiblePassword,
            ),
            verticalSpace(7),
            AuthTextFormField(
              controller:
                  context.read<AuthBloc>().registerConfirmPasswordController,
              icon: SvgPicture.asset(Assets.iconsPassword),
              isPassword: true,
              validator: Validators.validatePassword,
              hint: 'confirm password',
              keyboardType: TextInputType.visiblePassword,
            ),
          ],
        ),
      ),
    );
  }
}
