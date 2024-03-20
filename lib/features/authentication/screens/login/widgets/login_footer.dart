import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wear_me_flutter/features/authentication/screens/signup/signup.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/constants/text_strings.dart';
import 'package:wear_me_flutter/utils/device/device_utility.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      left: TSizes.defaultSpace,
      right: TSizes.defaultSpace,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Bạn chưa có tài khoản?",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .apply(color: Colors.grey)),
          TextButton(
              onPressed: () => Get.to(
                    () => const SignUpScreen(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 300),
                  ),
              child: Text(TTexts.createAccount,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? Colors.white : TColors.primary,
                      decorationColor: dark ? Colors.white : TColors.primary))),
        ],
      ),
    );
  }
}
