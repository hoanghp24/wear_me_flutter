import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/image_strings.dart';
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
        padding: const EdgeInsets.symmetric(
            vertical: SizesConst.spaceBetweenSections),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: const InputDecoration(
                labelText: TextsConst.email,
                labelStyle: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: SizesConst.spaceBetweenInputFields),

            //Password
            TextFormField(
              decoration: const InputDecoration(
                  labelText: TextsConst.password,
                  labelStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: SizesConst.spaceBetweenInputFields / 2),

            //Remember & Forget Password
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              // Remember
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TextsConst.rememberMe),
                ],
              ),
              //Forget Password
              TextButton(
                  onPressed: () {},
                  child: Text(
                    TextsConst.forgotPassword,
                    style: TextStyle(
                        fontSize: 14,
                        color: dark ? Colors.white : Colors.black),
                  )),
            ]),
            const SizedBox(height: SizesConst.spaceBetweenSections),

            //Sigin Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsConst.primary,
                      minimumSize: const Size.fromHeight(55),
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: Text(TextsConst.signIn,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Colors.white)))),
            const SizedBox(height: SizesConst.spaceBetweenItems),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(55),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImagesConst.googleLogo,
                      height: 24,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      TextsConst.signInGoogle,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
