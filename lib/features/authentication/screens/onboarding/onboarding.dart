import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wear_me_flutter/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:wear_me_flutter/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:wear_me_flutter/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:wear_me_flutter/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/image_strings.dart';
import 'package:wear_me_flutter/utils/constants/text_strings.dart';

class OnBoardingScreeen extends StatelessWidget {
  const OnBoardingScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Gradient Background
          Container(
            decoration: const BoxDecoration(
              gradient: ColorsConst.linearGradient,
            ),
          ),

          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: ImagesConst.onboarding1,
                title: TextsConst.onBoardingTitle1,
                subtitle: TextsConst.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: ImagesConst.onboarding2,
                title: TextsConst.onBoardingTitle2,
                subtitle: TextsConst.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: ImagesConst.onboarding3,
                title: TextsConst.onBoardingTitle3,
                subtitle: TextsConst.onBoardingSubTitle3,
              ),
            ],
          ),

          //Dot Navigation
          const OnBoardingDotNavigation(),

          // Button Next
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
