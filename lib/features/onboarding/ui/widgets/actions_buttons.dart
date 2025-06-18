import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_button.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback onGetStartedPressed;
  final VoidCallback onNextPressed;

  const ActionButtons({
    super.key,
    required this.onGetStartedPressed,
    required this.onNextPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: AppTextButton(
            buttonText: 'Get Started',
            textStyle: AppStyles.rubikMedium18White,
            onPressed: onGetStartedPressed,
          ),
        ),
        verticalSpace(12),
        TextButton(
          onPressed: onNextPressed,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            'next',
            style: AppStyles.rubikRegular14DuskyBlue,
          ),
        ),
      ],
    );
  }
}
