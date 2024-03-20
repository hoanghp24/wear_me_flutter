import 'package:flutter/material.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/formatters/formatter.dart';

class SaleRatingCounted extends StatelessWidget {
  const SaleRatingCounted({
    super.key,
    this.maxLines = 1,
    this.colorSale = Colors.black,
    required this.vote,
    this.style,
    this.detail = false,
    this.reviewCount = 199,
    this.showIcon = false,
  });

  final int maxLines, reviewCount;
  final double vote;
  final Color colorSale;
  final TextStyle? style;
  final bool detail, showIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              const Icon(Icons.star_rounded, color: TColors.third, size: 18),
              const SizedBox(width: TSizes.xs),
              Expanded(
                child: Text(
                    detail
                        ? '$vote (${Formatter.formatNumberSale(reviewCount)})'
                        : '$vote',
                    maxLines: maxLines,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: style),
              ),
            ],
          ),
        ),

        /// Share Button
        if (showIcon)
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.favorite_outline, size: TSizes.iconMd)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share_outlined, size: TSizes.iconMd)),
            ],
          )
      ],
    );
  }
}
