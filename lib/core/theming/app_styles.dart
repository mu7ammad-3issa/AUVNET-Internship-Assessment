import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nawel/core/theming/colors_manager.dart';
import 'package:nawel/core/theming/font_weight_helper.dart';

abstract class AppStyles {
  static TextStyle rubikMedium28Charcoal = GoogleFonts.rubik(
    fontSize: 28.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.charcoal,
  );
  static TextStyle rubikRegular14DuskyBlue = GoogleFonts.rubik(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.duskyBlue,
  );
  static TextStyle rubikMedium18White = GoogleFonts.rubik(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.white,
  );
}
