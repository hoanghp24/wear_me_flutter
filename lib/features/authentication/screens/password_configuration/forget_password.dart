import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/appbar/appbar.dart';
import 'package:wear_me_flutter/common/widgets/authentications/confirm_email.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});

  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(TTexts.retrievePassword,
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Heading
            Text(TTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineSmall),
            Text(TTexts.forgetPasswordSubtitle,
                style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: TSizes.spaceBtwItems),

            ///Text Form
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                  labelText: TTexts.email,
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

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
                    child: const Text(TTexts.submit))),
          ],
        ),
      ),
    );
  }
}
