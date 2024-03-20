import 'package:flutter/material.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/formatters/formatter.dart';

class ProductPriceText extends StatelessWidget {
  const ProductPriceText({
    super.key,
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThough = false,
    this.colorPrice = TColors.secondary,
    this.isMedium = false,
  });

  final int maxLines, price;
  final bool isLarge, isMedium, lineThough;
  final Color colorPrice;

  @override
  Widget build(BuildContext context) {
    return Text(Formatter.formatCurrency(price),
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: isLarge
            ? Theme.of(context).textTheme.headlineSmall!.apply(
                color: colorPrice,
                decoration: lineThough ? TextDecoration.lineThrough : null)
            : isMedium
                ? Theme.of(context).textTheme.titleMedium!.apply(
                    color: colorPrice,
                    decoration: lineThough ? TextDecoration.lineThrough : null)
                : Theme.of(context).textTheme.titleSmall!.apply(
                    color: colorPrice,
                    decoration:
                        lineThough ? TextDecoration.lineThrough : null));
  }
}
