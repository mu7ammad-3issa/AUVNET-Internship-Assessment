import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawel/core/theming/app_styles.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 19.w),
      child: Text(
        title,
        style: AppStyles.dmSansBold12Black.copyWith(
          fontSize: 20.sp, // Adjust the font size as needed
        ),
      ),
    );
  }
}
