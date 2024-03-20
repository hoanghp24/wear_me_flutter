import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/images/rounded_image.dart';
import 'package:wear_me_flutter/common/widgets/products/flash_sale/sale_tag.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/formatters/formatter.dart';

class TopProductImage extends StatelessWidget {
  const TopProductImage({
    super.key,
    required this.image,
    required this.price,
    this.onTap,
    this.textColor = TColors.black,
    this.backgroundColor,
    required this.saleNumber,
  });

  final String image;
  final int price, saleNumber;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(

            ///Circular icon
            children: [
              Stack(
                children: [
                  RoundedImage(
                    height: 100,
                    width: 100,
                    borderRadius: TSizes.sm,
                    border: Border.all(color: Colors.grey.shade300, width: 1),
                    imageUrl: image,
                    fit: BoxFit.contain,
                  ),
                  Positioned(
                    top: 10,
                    left: 5,
                    child: SaleTag(opacity: 1, saleNumber: saleNumber),
                  )
                ],
              ),

              ///Text
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              SizedBox(
                width: 100,
                child: Text(
                  Formatter.formatCurrency(price),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: textColor),
                ),
              )
            ]),
      ),
    );
  }
}
