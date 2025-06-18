import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nawel/core/helpers/assets.dart';
import 'package:nawel/core/helpers/spacing.dart';
import 'package:nawel/core/theming/app_styles.dart';

class PromoCodeCard extends StatelessWidget {
  const PromoCodeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 7,

            offset: const Offset(-2, -2), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            Assets.imagesPromoCode,
          ),
          horizontalSpace(4),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Got a code!',
                  style:
                      AppStyles.dmSansBold14Blue.copyWith(color: Colors.black),
                ),
                Text(
                  'Add your code and save on your order',
                  style: AppStyles.dmSansMedium10Grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
