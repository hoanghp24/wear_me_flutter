import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wear_me_flutter/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:wear_me_flutter/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:wear_me_flutter/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:wear_me_flutter/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:wear_me_flutter/features/authentication/screens/onboarding/widgets/onboarding_skip_button.dart';
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
          Container(
            decoration: const BoxDecoration(gradient: TColors.linearGradient),
          ),

          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onboarding1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onboarding2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onboarding3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          ///Skip Button
          const OnboardingSkipButton(),

          //Dot Navigation
          const OnBoardingDotNavigation(),

          // Button Next
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
