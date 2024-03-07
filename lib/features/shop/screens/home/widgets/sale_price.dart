import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/formatters/formatter.dart';

class SalePrice extends StatelessWidget {
  const SalePrice(
      {super.key,
      required this.price,
      this.maxLines = 1,
      this.isLarge = false,
      this.lineThough = false,
      this.colorPrice = Colors.red});

  final int maxLines, price;
  final bool isLarge;
  final bool lineThough;
  final Color colorPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(Formatter.formatCurrency(price),
            maxLines: maxLines,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .apply(color: colorPrice)),
        const SizedBox(width: TSizes.spaceBtwItems),

        ///Sale Tag
        RoundedContainer(
          radius: TSizes.xs,
          backgroundColor: Colors.red.shade50,
          padding: const EdgeInsets.symmetric(
              horizontal: TSizes.sm, vertical: TSizes.s),
          child: Text('-25%',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: Colors.red)),
        ),
      ],
    );
  }
}
