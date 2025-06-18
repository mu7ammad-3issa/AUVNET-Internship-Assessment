import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawel/core/helpers/extensions.dart';
import 'package:nawel/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:nawel/features/auth/presentation/bloc/auth_event.dart';
import 'package:nawel/features/auth/presentation/bloc/auth_state.dart';
import 'package:nawel/features/auth/presentation/widgets/sign_up_form.dart';
import '../../../../core/helpers/assets.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/custom_snack_bar.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is AuthAuthenticated) {
                context.pushReplacementNamed(Routes.loginScreen);
                CustomSnackBar.showSuccess(context, 'Registration Successful!');
              } else if (state is AuthError) {
                CustomSnackBar.showError(
                    context, 'Registration Failed: ${state.message}');
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
                  const SignUpForm(),
                  verticalSpace(26),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: state is AuthLoading
                        ? const CircularProgressIndicator()
                        : AppTextButton(
                            buttonText: 'sign up',
                            textStyle: AppStyles.dmSansMedium14White,
                            onPressed: () {
                              validateThenSignUp(context);
                            },
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
              );
            },
          ),
        ),
      ),
    );
  }

  void validateThenSignUp(BuildContext context) {
    if (context.read<AuthBloc>().registerFormKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
            RegisterEvent(
              email: context.read<AuthBloc>().registerEmailController.text,
              password:
                  context.read<AuthBloc>().registerPasswordController.text,
            ),
          );
    }
  }
}
