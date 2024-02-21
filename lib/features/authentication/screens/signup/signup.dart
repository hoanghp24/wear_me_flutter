import 'package:flutter/material.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SizesConst.defaultSpace),
          child: Column(
            children: [
              //Title
              Text(
                TextsConst.signupTitle,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: ColorsConst.primary),
              ),
              const SizedBox(
                height: SizesConst.spaceBetweenSections,
              ),

              /// Form
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                              labelText: TextsConst.firstName,
                              labelStyle: TextStyle(color: Colors.grey)),
                        )),
                        const SizedBox(
                          width: SizesConst.spaceBetweenInputFields,
                        ),
                        Expanded(
                            child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                              labelText: TextsConst.lastName,
                              labelStyle: TextStyle(color: Colors.grey)),
                        )),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
