import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/chips/choice_chip.dart';
import 'package:wear_me_flutter/common/widgets/texts/section_heading.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'Kích cỡ', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              children: [
                TChoiceChip(text: 'S', selected: false, onSelected: (value) {}),
                TChoiceChip(text: 'M', selected: true, onSelected: (value) {}),
                TChoiceChip(text: 'L', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'XL', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'Màu sắc', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              children: [
                TChoiceChip(
                    text: 'Grey', selected: true, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Brown', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Indigo', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
      ],
    );
  }
}
