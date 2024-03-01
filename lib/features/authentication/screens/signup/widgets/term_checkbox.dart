import 'package:flutter/material.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/constants/text_strings.dart';

class TermCheckbox extends StatelessWidget {
  const TermCheckbox({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 2,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Expanded(
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: '${TTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: '${TTexts.policyAndTerms} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? Colors.white : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? Colors.white : TColors.primary)),
          ])),
        )
      ],
    );
  }
}
