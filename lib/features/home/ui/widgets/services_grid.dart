import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawel/core/helpers/spacing.dart';
import 'package:nawel/core/theming/app_styles.dart';
import 'package:nawel/core/theming/colors_manager.dart';
import 'package:nawel/features/home/data/models/service.dart';

class ServicesGrid extends StatelessWidget {
  final List<ServiceModel> services;
  const ServicesGrid({super.key, required this.services});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SizedBox(
        height: 135.h,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: services.length,
          separatorBuilder: (context, index) => horizontalSpace(22),
          itemBuilder: (context, index) => _buildServiceCard(services[index]),
        ),
      ),
    );
  }

  Widget _buildServiceCard(ServiceModel service) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 105.w,
          height: 70.h,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: ColorsManager.whiteSmoke,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: Image.asset(service.imageUrl),
          ),
        ),
        verticalSpace(8),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
          decoration: BoxDecoration(
            color: ColorsManager.electricPurple,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Text(
            service.tag ?? service.time ?? '',
            style: AppStyles.dmSansMedium14White.copyWith(fontSize: 12.sp),
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          service.title,
          style: AppStyles.dmSansMedium14Black,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
