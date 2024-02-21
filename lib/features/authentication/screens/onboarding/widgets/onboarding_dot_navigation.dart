import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wear_me_flutter/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/device/device_utility.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
        bottom: DeviceUtils.getBottomNavigationBarHeight() + 100,
        left: 0,
        right: 0,
        child: Center(
          child: SmoothPageIndicator(
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationCLick,
            count: 3,
            effect: const ExpandingDotsEffect(
                activeDotColor: ColorsConst.light, dotHeight: 6),
          ),
        ));
  }
}
