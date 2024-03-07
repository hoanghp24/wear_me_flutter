import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/formatters/formatter.dart';

class SaleCounted extends StatelessWidget {
  const SaleCounted({
    super.key,
    this.maxLines = 1,
    required this.saleCount,
    this.colorSale = Colors.black,
    required this.vote,
  });

  final int maxLines, saleCount;
  final double vote;
  final Color colorSale;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Iconsax.star5, color: TColors.sercondary, size: 18),
        const SizedBox(width: TSizes.xs),
        Expanded(
          child: Text('$vote | Đã bán ${Formatter.formatNumberSale(saleCount)}',
              maxLines: maxLines,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: colorSale)),
        ),
      ],
    );
  }
}
