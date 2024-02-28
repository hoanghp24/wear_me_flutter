import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wear_me_flutter/common/widgets/confirm_email.dart';
import 'package:wear_me_flutter/features/authentication/screens/signup/widgets/term_checkbox.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/constants/text_strings.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    labelStyle: TextStyle(color: Colors.grey)),
              )),
              const SizedBox(width: TSizes.spaceBetweenInputFields),
              Expanded(
                  child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    labelStyle: TextStyle(color: Colors.grey)),
              )),
            ],
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields),

          //username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.username,
                labelStyle: TextStyle(color: Colors.grey)),
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields),

          //email
          TextFormField(
            expands: false,
            controller: _emailController,
            decoration: const InputDecoration(
                labelText: TTexts.email,
                labelStyle: TextStyle(color: Colors.grey)),
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields),

          //phone number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.phoneNo,
                labelStyle: TextStyle(color: Colors.grey)),
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields),

          //password
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.password,
                labelStyle: TextStyle(color: Colors.grey),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),

          const SizedBox(height: TSizes.spaceBetweenSections),

          ///Term & Conditions
          TermCheckbox(dark: dark),
          const SizedBox(height: TSizes.spaceBetweenSections),

          //Sigin Button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    var email = _emailController.text;
                    showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            ConfirmEmailDialog(email: email));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: TColors.primary),
                  child: Text(TTexts.createAccount,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.white)))),
        ],
      ),
    );
  }
}
