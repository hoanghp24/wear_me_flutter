import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/brands/brand_card.dart';
import 'package:wear_me_flutter/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/image_strings.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/helpers/helper_functions.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(children: [
        ///Brand with Product count
        const BrandCard(),
        const SizedBox(height: TSizes.spaceBtwItems),

        ///Brand top3 product image
        Row(
            children: images
                .map((image) => brandTopProductImage(image, context))
                .toList())
      ]),
    );
  }
}

Widget brandTopProductImage(String image, context) {
  final dark = HelperFunctions.isDarkMode(context);
  return Expanded(
    child: RoundedContainer(
      height: 100,
      backgroundColor: dark ? TColors.darkerGrey : TColors.light,
      margin: const EdgeInsets.only(right: TSizes.sm),
      padding: const EdgeInsets.all(TSizes.md),
      child: Image(image: AssetImage(image), fit: BoxFit.contain),
    ),
  );
}
