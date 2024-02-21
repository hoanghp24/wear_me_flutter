import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wear_me_flutter/features/authentication/screens/signup/signup.dart';
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
      bottom: DeviceUtils.getBottomNavigationBarHeight(),
      left: SizesConst.defaultSpace,
      right: SizesConst.defaultSpace,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Bạn chưa có tài khoản?",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.grey)),
          TextButton(
              onPressed: ()=> Get.to(() => const SignUpScreen()),
              child: Text(TextsConst.createAccount,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: dark ? Colors.white : Colors.black,
                      ))),
        ],
      ),
    );
  }
}
