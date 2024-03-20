import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/products/flash_sale/sale_tag.dart';
import 'package:wear_me_flutter/common/widgets/texts/product_price_text.dart';
import 'package:wear_me_flutter/common/widgets/texts/product_text_title.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/helpers/helper_functions.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///Price & Sale Price
        ProductTextTitle(title: 'Áo polo nam ngắn tay có cổ Vicenzo'),
        SizedBox(height: TSizes.spaceBtwItems / 1.5),
        Row(
          children: [
            ProductPriceText(price: 90000, isLarge: true),
            SizedBox(width: TSizes.spaceBtwItems),
            ProductPriceText(
                price: 120000, lineThough: true, colorPrice: TColors.darkGrey),
            SizedBox(width: TSizes.spaceBtwItems),
            SaleTag(saleNumber: 25)
          ],
        ),

        ///Title

        ///Stock Status
        ///Brand
      ],
    );
  }
}
