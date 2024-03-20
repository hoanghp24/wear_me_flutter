import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/icons/circular_icon.dart';
import 'package:wear_me_flutter/common/widgets/products/flash_sale/sale_tag.dart';
import 'package:wear_me_flutter/common/widgets/texts/product_price_text.dart';
import 'package:wear_me_flutter/common/widgets/texts/section_heading.dart';
import 'package:wear_me_flutter/features/shop/screens/product_detail/widgets/product_attribute.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/image_strings.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

void showModalBottomProduct(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return SingleChildScrollView(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(
                bottom: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                right: TSizes.defaultSpace),
            child: Column(
              children: [
                ///Header
                const Row(
                  children: [
                    Image(
                        image: AssetImage(TImages.product1),
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover),
                    SizedBox(width: TSizes.spaceBtwItems),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProductPriceText(price: 90000, isLarge: true),
                        SizedBox(width: TSizes.spaceBtwItems),
                        Row(
                          children: [
                            ProductPriceText(
                                price: 120000,
                                lineThough: true,
                                colorPrice: TColors.darkGrey),
                            SizedBox(width: TSizes.spaceBtwItems),
                            SaleTag(saleNumber: 25)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems),

                /// Product Attributes
                const ProductAttributes(),
                const SizedBox(height: TSizes.spaceBtwItems),

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeading(
                          title: 'Số lượng', showActionButton: false),
                      Row(
                        children: [
                          const CircularIcon(
                            icon: Icons.remove,
                            backgroundColor: TColors.darkGrey,
                            color: TColors.white,
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          Text('2',
                              style: Theme.of(context).textTheme.titleSmall),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          const CircularIcon(
                            icon: Icons.add,
                            backgroundColor: TColors.primary,
                            color: TColors.white,
                          ),
                        ],
                      )
                    ]),

                const Divider(),

                /// Add Cart Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Thêm vào giỏ hàng')),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
