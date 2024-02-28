import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/styles/spacing_styles.dart';
import 'package:wear_me_flutter/features/authentication/screens/login/widgets/login_footer.dart';
import 'package:wear_me_flutter/features/authentication/screens/login/widgets/login_form.dart';
import 'package:wear_me_flutter/features/authentication/screens/login/widgets/login_header.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: SpacingStyleCommon.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo and title
              const LoginHeader(),

              const SizedBox(height: TSizes.sm),

              /// Form
              LoginForm(dark: dark),
            ],
          ),
        ),
        LoginFooter(dark: dark),
      ],
    ));
  }
}
