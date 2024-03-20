import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/formatters/formatter.dart';

class SalePrice extends StatelessWidget {
  const SalePrice(
      {super.key,
      required this.price,
      this.maxLines = 1,
      this.isLarge = false,
      this.lineThough = false,
      this.colorPrice = TColors.secondary,
      this.oldPrice = 1,
      this.showOldPrice = false,
      this.saleTag = 10});

  final int maxLines, price, oldPrice, saleTag;
  final bool isLarge, lineThough, showOldPrice;
  final Color colorPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(Formatter.formatCurrency(price),
            maxLines: maxLines,
            overflow: TextOverflow.ellipsis,
            style: isLarge
                ? Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(color: TColors.secondary)
                : Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .apply(color: TColors.secondary)),
        const SizedBox(width: TSizes.spaceBtwItems),

        if (showOldPrice)
          Text(Formatter.formatCurrency(oldPrice),
              maxLines: maxLines,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleSmall!.apply(
                    color: TColors.darkGrey,
                    decorationColor: TColors.darkGrey,
                    decoration: TextDecoration.lineThrough,
                  )),
        const SizedBox(width: TSizes.spaceBtwItems),

        ///Sale Tag
        RoundedContainer(
          radius: TSizes.xs,
          backgroundColor: TColors.secondary.withOpacity(0.1),
          padding: const EdgeInsets.symmetric(
              horizontal: TSizes.sm, vertical: TSizes.s),
          child: Text('-$saleTag%',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: TColors.secondary)),
        ),
      ],
    );
  }
}
