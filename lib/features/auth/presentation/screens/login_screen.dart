import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawel/core/helpers/assets.dart';
import 'package:nawel/core/helpers/extensions.dart';
import 'package:nawel/core/helpers/spacing.dart';
import 'package:nawel/core/routing/routes.dart';
import 'package:nawel/core/theming/app_styles.dart';
import 'package:nawel/core/widgets/app_text_button.dart';
import 'package:nawel/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:nawel/features/auth/presentation/bloc/auth_event.dart';
import 'package:nawel/features/auth/presentation/bloc/auth_state.dart';
import 'package:nawel/features/auth/presentation/widgets/login_form.dart';

import '../../../../core/widgets/custom_snack_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is AuthAuthenticated) {
                context.pushReplacementNamed(Routes.appLayoutScreen);
                CustomSnackBar.showSuccess(context, 'Welcome To NAWEL');
              } else if (state is AuthError) {
                CustomSnackBar.showError(context, 'Invalid Email or Password');
              }
            },
            builder: (context, state) {
              return Column(
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
                  state is AuthLoading
                      ? const CircularProgressIndicator()
                      : Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: AppTextButton(
                            buttonText: 'login',
                            textStyle: AppStyles.dmSansMedium14White,
                            onPressed: () {
                              validateThenLogin(context);
                            },
                          ),
                        ),
                  verticalSpace(12),
                  TextButton(
                    onPressed: () {
                      context.pushNamed(Routes.signUpScreen);
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
              );
            },
          ),
        ),
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<AuthBloc>().loginFormKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
            LoginEvent(
              email: context.read<AuthBloc>().loginEmailController.text,
              password: context.read<AuthBloc>().loginPasswordController.text,
            ),
          );
    }
  }
}
