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
  static TextStyle mulishLight14Grey = GoogleFonts.mulish(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.light,
    color: Colors.black.withOpacity(0.5),
  );

  static TextStyle dmSansMedium14White = GoogleFonts.dmSans(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.white,
  );
  static TextStyle dmSansBold14Blue = GoogleFonts.dmSans(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.facebookBlue,
  );

  static TextStyle poppinsRegular12OuterSpace = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.outerSpace,
  );

  static TextStyle dmSansBold12Black = GoogleFonts.dmSans(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle rubikBold30Snow = GoogleFonts.rubik(
    fontSize: 30.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.snow,
  );
  static TextStyle dmSansMedium14Black = GoogleFonts.dmSans(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.black,
  );
  static TextStyle dmSansMedium10Grey = GoogleFonts.dmSans(
    fontSize: 10.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.black.withOpacity(0.5),
  );
}
