import 'package:flutter/material.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/constants/text_strings.dart';

class ConfirmEmailDialog extends StatelessWidget {
  const ConfirmEmailDialog({super.key, required this.email});

  final String email;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.mail,
            size: TSizes.sizeIcon,
            color: TColors.primary, // Adjust the color as needed
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(
            TTexts.confirmEmailTitle,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            email,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const Text(
            TTexts.confirmEmailSubtitle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
