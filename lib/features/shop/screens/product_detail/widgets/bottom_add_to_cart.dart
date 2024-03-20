import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/icons/circular_icon.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/constants/text_strings.dart';
import 'package:wear_me_flutter/utils/helpers/helper_functions.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      decoration: BoxDecoration(
          color: dark ? TColors.darkerGrey : TColors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(TSizes.cardRadiusLg),
              topRight: Radius.circular(TSizes.cardRadiusLg))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            const CircularIcon(
              icon: Icons.remove,
              backgroundColor: TColors.darkGrey,
              color: TColors.white,
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('2', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(width: TSizes.spaceBtwItems),
            const CircularIcon(
              icon: Icons.add,
              backgroundColor: TColors.primary,
              color: TColors.white,
            ),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems / 2),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(TSizes.defaultSpace)),
          child: const Text(TTexts.addCart),
        ),
      ]),
    );
  }
}
