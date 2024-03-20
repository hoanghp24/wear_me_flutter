import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class SaleTag extends StatelessWidget {
  const SaleTag({super.key, required this.saleNumber, this.opacity = 0.1});

  final int saleNumber;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      radius: TSizes.xs,
      backgroundColor: Colors.red.shade50,
      padding:
          const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.s),
      child: Text('-$saleNumber%',
          style: Theme.of(context)
              .textTheme
              .labelLarge!
              .apply(color: TColors.secondary)),
    );
  }
}
