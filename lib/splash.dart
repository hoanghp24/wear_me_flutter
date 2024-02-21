import 'package:flutter/material.dart';
import 'package:wear_me_flutter/features/authentication/screens/onboarding/onboarding.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/image_strings.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 2500), () {
      Navigator.pushReplacement(
        context,
        PageTransition(
          duration: const Duration(milliseconds: 300),
          type: PageTransitionType.fade,
          child: const OnBoardingScreeen(),
        ),
      );
    });
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: ColorsConst.linearGradient,
          image: DecorationImage(
            image: AssetImage(ImagesConst.splashAppLogo),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
