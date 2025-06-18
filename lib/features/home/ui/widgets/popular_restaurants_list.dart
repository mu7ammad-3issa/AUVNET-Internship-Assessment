import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nawel/core/helpers/assets.dart';
import 'package:nawel/core/helpers/spacing.dart';
import 'package:nawel/core/theming/app_styles.dart';
import 'package:nawel/core/theming/colors_manager.dart';
import 'package:nawel/core/theming/font_weight_helper.dart';
import 'package:nawel/features/home/data/models/restaurant.dart';

class PopularRestaurantsList extends StatelessWidget {
  final List<RestaurantModel> restaurants;
  const PopularRestaurantsList({super.key, required this.restaurants});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: SizedBox(
        height: 180.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: restaurants.length,
          itemBuilder: (context, index) {
            final restaurant = restaurants[index];
            return Container(
              margin: EdgeInsets.only(right: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    restaurant.imageUrl,
                    fit: BoxFit.cover,
                  ),
                  verticalSpace(8),
                  Text(
                    restaurant.name,
                    style: AppStyles.dmSansBold12Black.copyWith(
                      fontWeight: FontWeightHelper.medium,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        Assets.iconsClock,
                      ),
                      horizontalSpace(4),
                      Text(
                        '${restaurant.deliveryTimeInMins} mins',
                        style: AppStyles.dmSansMedium10Grey.copyWith(
                          color: ColorsManager.jetBlack.withOpacity(0.58),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
