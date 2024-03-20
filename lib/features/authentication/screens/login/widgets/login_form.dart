import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wear_me_flutter/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:wear_me_flutter/main_page.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: const InputDecoration(labelText: TTexts.email),
            ),
            const SizedBox(height: TSizes.spaceBetweenInputFields),

            //Password
            TextFormField(
              decoration: const InputDecoration(
                  labelText: TTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: TSizes.spaceBetweenInputFields / 2),

            //Remember & Forget Password
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              // Remember
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTexts.rememberMe),
                ],
              ),
              //Forget Password
              TextButton(
                  onPressed: () => Get.to(
                        () => ForgetPassword(),
                        transition: Transition.rightToLeft,
                        duration: const Duration(milliseconds: 300),
                      ),
                  child: Text(
                    TTexts.forgotPassword,
                    style: TextStyle(
                        fontSize: 14,
                        color: dark ? Colors.white : Colors.black),
                  )),
            ]),
            const SizedBox(height: TSizes.spaceBtwSections),

            //Sigin Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const MainPage()),
                child: const Text(TTexts.signIn),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
