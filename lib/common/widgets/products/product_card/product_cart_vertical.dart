import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wear_me_flutter/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:wear_me_flutter/common/widgets/images/rounded_image.dart';
import 'package:wear_me_flutter/common/widgets/products/flash_sale/sale_tag.dart';
import 'package:wear_me_flutter/common/widgets/texts/product_price_text.dart';
import 'package:wear_me_flutter/common/widgets/texts/product_text_title.dart';
import 'package:wear_me_flutter/features/shop/screens/home/widgets/sale_rating_count.dart';
import 'package:wear_me_flutter/features/shop/screens/product_detail/product_detail.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/helpers/helper_functions.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical(
      {super.key,
      required this.title,
      required this.vote,
      required this.saleNumber,
      required this.price,
      required this.image});

  final String title, image;
  final double vote;
  final int saleNumber, price;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(TSizes.sm),
            color: dark ? TColors.darkerGrey : TColors.white,
            border: Border.all(color: Colors.grey.shade300, width: 1)),
        child: Column(
          children: [
            ///Thumbnail, Wishlist, Discount
            RoundedContainer(
              height: 180,
              child: Stack(children: [
                ///Thumbnail
                RoundedImage(
                  backgroundColor: TColors.white,
                  imageUrl: image,
                  fit: BoxFit.contain,
                  borderRadius: TSizes.sm,
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline,
                        color: TColors.darkGrey,
                      )),
                )
              ]),
            ),
            const SizedBox(height: TSizes.xs / 2),

            /// Details
            Padding(
              padding: const EdgeInsets.only(left: TSizes.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTextTitle(title: title, smallSize: true),
                  const SizedBox(height: TSizes.xs / 2),
                  SaleRatingCounted(
                      vote: vote,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .apply(color: TColors.black)),
                  const SizedBox(height: TSizes.xs / 2),
                  Row(
                    children: [
                      ProductPriceText(
                        price: price,
                        isMedium: true,
                      ),
                      const SizedBox(width: TSizes.spaceBtwItems),
                      SaleTag(saleNumber: saleNumber),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
