import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/appbar/appbar.dart';
import 'package:wear_me_flutter/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/constants/text_strings.dart';
import 'package:wear_me_flutter/utils/helpers/helper_functions.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: TSizes.sm),
              Text(TTexts.signupSubTitle,
                  style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Form
              SignUpForm(dark: dark)
            ],
          ),
        ),
      ),
    );
  }
}
