import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nawel/core/helpers/assets.dart';
import 'package:nawel/core/helpers/spacing.dart';
import 'package:nawel/core/theming/app_styles.dart';
import 'package:nawel/core/theming/colors_manager.dart';
import 'package:nawel/core/theming/font_weight_helper.dart';

class ShortcutsRow extends StatelessWidget {
  const ShortcutsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildShortcutItem(Assets.imagesPastOrders, 'Past orders'),
          _buildShortcutItem(Assets.imagesSuperSaver, 'Super Saver'),
          _buildShortcutItem(Assets.imagesMustTries, 'Must-tries'),
          _buildShortcutItem(Assets.imagesGiveBack, 'Give Back'),
          _buildShortcutItem(Assets.imagesBestSeller, 'Best Sellers'),
        ],
      ),
    );
  }

  Widget _buildShortcutItem(String iconPath, String label) {
    return Column(
      children: [
        Container(
          height: 65.h,
          width: 65.w,
          decoration: BoxDecoration(
            color: ColorsManager.seashell,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: SvgPicture.asset(iconPath),
          ),
        ),
        verticalSpace(8),
        Text(
          label,
          style: AppStyles.dmSansBold12Black.copyWith(
            fontWeight: FontWeightHelper.medium,
          ),
        ),
      ],
    );
  }
}
