import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nawel/core/theming/app_styles.dart';
import 'package:nawel/core/theming/colors_manager.dart';

import '../../core/helpers/assets.dart';
import '../home/ui/home_screen.dart';

class NavigationItem {
  final String iconPath;
  final String label;

  const NavigationItem({required this.iconPath, required this.label});
}

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int selectedPageIndex = 0;
  late final PageController pageController;

  final List<NavigationItem> navItems = [
    const NavigationItem(iconPath: Assets.iconsHome, label: 'Home'),
    const NavigationItem(iconPath: Assets.iconsCategories, label: 'categories'),
    const NavigationItem(iconPath: Assets.iconsDelivery, label: 'deliver'),
    const NavigationItem(iconPath: Assets.iconsCart, label: 'cart'),
    const NavigationItem(iconPath: Assets.iconsUser, label: 'Profile'),
  ];

  late final List<Widget> screens;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedPageIndex);

    screens = [
      const HomeScreen(),
      const Center(child: Text('Categories Screen')),
      const Center(child: Text('Deliver Screen')),
      const Center(child: Text('Cart Screen')),
      const Center(child: Text('Profile Screen')),
    ];
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onItemTapped(int index) {
    setState(() {
      selectedPageIndex = index;
    });
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    // --- NEW: Calculations for the indicator position ---
    final screenWidth = MediaQuery.of(context).size.width;
    const indicatorWidth = 30.0; // Width of the purple indicator
    final itemWidth = screenWidth / navItems.length;

    // Calculate the left position to center the indicator under the selected item
    final indicatorPosition = (itemWidth * selectedPageIndex) +
        (itemWidth / 2) -
        (indicatorWidth / 2);
    // --- End of new calculations ---

    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: screens,
      ),
      bottomNavigationBar:
          _buildCustomBottomNav(indicatorPosition, indicatorWidth),
    );
  }

  Widget _buildCustomBottomNav(
      double indicatorPosition, double indicatorWidth) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedPageIndex,
          onTap: onItemTapped,
          selectedItemColor: ColorsManager.electricPurple,
          unselectedItemColor: ColorsManager.outerSpace,
          unselectedLabelStyle: AppStyles.poppinsRegular12OuterSpace,
          selectedLabelStyle: AppStyles.poppinsRegular12OuterSpace.copyWith(
            color: ColorsManager.electricPurple,
          ),
          items: navItems.map((item) {
            return BottomNavigationBarItem(
              icon: SvgPicture.asset(
                item.iconPath,
                width: 24.w,
                height: 24.h,
                colorFilter: const ColorFilter.mode(
                  ColorsManager.outerSpace,
                  BlendMode.srcIn,
                ),
              ),
              activeIcon: SvgPicture.asset(
                item.iconPath,
                width: 24.w,
                height: 24.h,
                colorFilter: const ColorFilter.mode(
                  ColorsManager.electricPurple,
                  BlendMode.srcIn,
                ),
              ),
              label: item.label,
            );
          }).toList(),
        ),
        // This is the animated purple indicator
        AnimatedPositioned(
          duration: const Duration(milliseconds: 250),
          curve: Curves.fastOutSlowIn,
          left: indicatorPosition,
          bottom: 55,
          child: Container(
            width: indicatorWidth,
            height: 3, // Height of the purple indicator
            decoration: BoxDecoration(
              color: ColorsManager.electricPurple,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
