import 'package:flutter/material.dart';
import 'package:nawel/core/helpers/assets.dart';
import 'package:nawel/core/helpers/extensions.dart';
import 'package:nawel/core/helpers/spacing.dart';
import 'package:nawel/core/routing/routes.dart';
import 'package:nawel/features/onboarding/ui/widgets/actions_buttons.dart';
import 'package:nawel/features/onboarding/ui/widgets/background_shapes.dart';
import 'package:nawel/features/onboarding/ui/widgets/onboarding_content.dart';
import 'package:nawel/features/onboarding/ui/widgets/onboarding_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onGetStartedPressed() {
    context.pushNamedAndRemoveUntil(
      Routes.loginScreen,
      predicate: (_) => false,
    );
  }

  void _onNextPressed() {
    if (_currentPage < onboardingData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      // Optionally, navigate to login if "next" is pressed on the last page
      _onGetStartedPressed();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundShapes(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(85),
              // logo
              Image.asset(
                Assets.imagesNawelLogo,
              ),
              verticalSpace(84),
              // onboarding content
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: onboardingData.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    final item = onboardingData[index];
                    return OnboardingContent(
                      title: item.title,
                      subtitle: item.description,
                    );
                  },
                ),
              ),
              verticalSpace(52),
              // action buttons
              ActionButtons(
                onGetStartedPressed: _onGetStartedPressed,
                onNextPressed: _onNextPressed,
              ),
              verticalSpace(30),
            ],
          ),
        ],
      ),
    );
  }
}
