import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wear_me_flutter/common/widgets/confirm_email.dart';
import 'package:wear_me_flutter/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/image_strings.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/constants/text_strings.dart';
import 'package:wear_me_flutter/utils/helpers/helper_functions.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});

  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: dark ? Colors.white : Colors.black),
        title: Text(TTexts.retrievePassword,
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Heading
            const Center(
                child: Image(height: 90, image: AssetImage(TImages.encrypted))),
            const SizedBox(height: TSizes.spaceBetweenItems),
            Text(TTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineSmall),
            Text(TTexts.forgetPasswordSubtitle,
                style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: TSizes.spaceBetweenItems),

            ///Text Form
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                  labelText: TTexts.email,
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            const SizedBox(height: TSizes.spaceBetweenSections),

            ///Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      var email = _emailController.text;
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            ConfirmEmailDialog(email: email),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: TColors.primary),
                    child: Text(TTexts.submit,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: Colors.white)))),
          ],
        ),
      ),
    );
  }
}