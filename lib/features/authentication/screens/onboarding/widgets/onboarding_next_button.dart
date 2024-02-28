import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:wear_me_flutter/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/constants/text_strings.dart';
import 'package:wear_me_flutter/utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: DeviceUtils.getBottomNavigationBarHeight(),
        left: TSizes.defaultSpace,
        right: TSizes.defaultSpace,
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
          ),
          child: Obx(
            () {
              int currentPage =
                  OnBoardingController.instance.currentPageIndex.value;
              String buttonText = '';
              if (currentPage == 0) {
                buttonText = TTexts.onBoardingButton1;
              } else if (currentPage == 1) {
                buttonText = TTexts.onBoardingButton2;
              } else if (currentPage == 2) {
                buttonText = TTexts.onBoardingButton3;
              }
              return Text(
                buttonText,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.black),
              );
            },
          ),
        ));
  }
}
