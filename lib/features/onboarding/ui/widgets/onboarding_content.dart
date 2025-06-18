import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/theming/colors_manager.dart';

class OnboardingContent extends StatelessWidget {
  final String title;
  final String subtitle;

  const OnboardingContent({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 36.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppStyles.rubikMedium28Charcoal,
            textAlign: TextAlign.center,
          ),
          verticalSpace(5),
          Text(
            subtitle,
            style: AppStyles.rubikRegular14DuskyBlue.copyWith(
              color: ColorsManager.duskyBlue.withOpacity(0.9),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
