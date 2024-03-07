import 'package:flutter/material.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/constants/text_strings.dart';
import 'package:wear_me_flutter/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});

  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: dark ? Colors.white : Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///Heading
            Text(
              TTexts.forgetPasswordTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .apply(color: TColors.primary),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text(
              TTexts.forgetPasswordSubtitle,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            ///Text Form
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                  labelText: TTexts.email,
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            ///Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text(TTexts.submit))),
          ],
        ),
      ),
    );
  }
}
