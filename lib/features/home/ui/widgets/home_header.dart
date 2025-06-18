import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawel/core/helpers/spacing.dart';
import 'package:nawel/core/theming/app_styles.dart';
import 'package:nawel/core/theming/colors_manager.dart';

class HomeHeader extends StatelessWidget {
  final String userName;
  final String deliveryAddress;
  final String avatarUrl;

  const HomeHeader({
    super.key,
    required this.userName,
    required this.deliveryAddress,
    required this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 32.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.r),
          bottomRight: Radius.circular(30.r),
        ),
        gradient: const LinearGradient(
          colors: [
            ColorsManager.electricPurple,
            ColorsManager.mustard,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Delivering to\n',
                      style: AppStyles.dmSansBold12Black,
                    ),
                    TextSpan(
                      text: deliveryAddress,
                      style: AppStyles.dmSansBold12Black.copyWith(
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpace(7),
              Text(
                'Hi $userName!',
                style: AppStyles.rubikBold30Snow,
              ),
            ],
          ),
          CircleAvatar(
            radius: 35.r,
            backgroundImage: AssetImage(avatarUrl), // Using AssetImage
          ),
        ],
      ),
    );
  }
}
