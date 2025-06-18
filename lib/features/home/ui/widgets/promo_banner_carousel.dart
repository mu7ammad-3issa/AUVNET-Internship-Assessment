import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawel/core/helpers/assets.dart';
import 'package:nawel/core/helpers/spacing.dart';
import 'package:nawel/core/theming/colors_manager.dart';

class PromoBannerCarousel extends StatefulWidget {
  const PromoBannerCarousel({super.key});

  @override
  State<PromoBannerCarousel> createState() => _PromoBannerCarouselState();
}

class _PromoBannerCarouselState extends State<PromoBannerCarousel> {
  int _currentPage = 0;
  final _bannerImages = [
    Assets.imagesPromoBanner,
    Assets.imagesPromoBanner,
    Assets.imagesPromoBanner,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 180.h,
          child: PageView.builder(
            itemCount: _bannerImages.length,
            onPageChanged: (index) => setState(() => _currentPage = index),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.asset(_bannerImages[index], fit: BoxFit.cover),
                ),
              );
            },
          ),
        ),
        verticalSpace(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              _bannerImages.length, (index) => _buildIndicator(index)),
        ),
      ],
    );
  }

  Widget _buildIndicator(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 3),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: _currentPage == index
            ? ColorsManager.electricPurple
            : ColorsManager.silver,
        borderRadius: BorderRadius.circular(12.r),
      ),
    );
  }
}
