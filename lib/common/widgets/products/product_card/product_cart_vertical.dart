import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wear_me_flutter/common/styles/shadows.dart';
import 'package:wear_me_flutter/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:wear_me_flutter/common/widgets/icons/circular_icon.dart';
import 'package:wear_me_flutter/common/widgets/images/rounded_image.dart';
import 'package:wear_me_flutter/common/widgets/texts/product_text_title.dart';
import 'package:wear_me_flutter/features/shop/screens/home/widgets/sale_count.dart';
import 'package:wear_me_flutter/features/shop/screens/home/widgets/sale_price.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/image_strings.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/helpers/helper_functions.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        decoration: BoxDecoration(
            boxShadow: [ShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productimageRadius),
            color: dark ? TColors.darkerGrey : TColors.white),
        child: const Column(
          children: [
            ///Thumbnail, Wishlist, Discount
            RoundedContainer(
              height: 180,
              child: Stack(children: [
                ///Thumbnail
                RoundedImage(
                    imageUrl: TImages.product1, applyImageRadius: true),

                /// Favorite Icon
                Positioned(
                    right: 5,
                    top: 5,
                    child:
                        CircularIcon(icon: Iconsax.heart5, color: Colors.red))
              ]),
            ),
            SizedBox(height: TSizes.xs / 2),

            /// Details
            Padding(
              padding: EdgeInsets.only(left: TSizes.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTextTitle(
                      title: 'Áo polo nam ngắn tay có cổ Vicenzo',
                      smallSize: true),
                  SizedBox(height: TSizes.xs / 2),
                  SalePrice(price: 75000),
                  SizedBox(height: TSizes.xs / 2),
                  SaleCounted(saleCount: 2300, vote: 4.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
