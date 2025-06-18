import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors_manager.dart';

class BackgroundShapes extends StatelessWidget {
  const BackgroundShapes({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // top left purple circle
        Positioned(
          top: -60,
          left: -70,
          child: Container(
            width: 342,
            height: 342,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  ColorsManager.electricPurple,
                  ColorsManager.mustard,
                ],
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
        // bottom right mint blurred circle
        Positioned(
          bottom: -33,
          right: -53,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
            child: Container(
              width: 216.r,
              height: 216.r,
              decoration: BoxDecoration(
                color: ColorsManager.deepMint.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
