import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:wear_me_flutter/common/widgets/products/flash_sale/flash_sale_text.dart';
import 'package:wear_me_flutter/common/widgets/products/flash_sale/top_product.dart';
import 'package:wear_me_flutter/features/shop/models/product.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/image_strings.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class FlashSaleShowcase extends StatelessWidget {
  const FlashSaleShowcase({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
          title: 'Áo thun',
          image: TImages.tshirt,
          price: 50000,
          salePrice: 20,
          vote: 4.5),
      Product(
          title: 'Áo khoác',
          image: TImages.jacket,
          price: 75000,
          salePrice: 30,
          vote: 4.5),
      Product(
          title: 'Áo polo 1',
          image: TImages.product1,
          price: 45000,
          salePrice: 20,
          vote: 4),
      Product(
          title: 'Áo polo 2',
          image: TImages.product2,
          price: 90000,
          salePrice: 30,
          vote: 4.8),
      Product(
          title: 'Áo polo 3',
          image: TImages.product3,
          price: 85000,
          salePrice: 45,
          vote: 4.2),
    ];
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const FlashSaleText(),
              const SizedBox(width: TSizes.md),
              SlideCountdownSeparated(
                  padding: const EdgeInsets.all(2),
                  duration: const Duration(hours: 12),
                  decoration: BoxDecoration(
                      color: TColors.secondary,
                      borderRadius: BorderRadius.circular(TSizes.sm))),
            ],
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Xem thêm',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(color: TColors.primary),
              ))
        ],
      ),

      const SizedBox(height: TSizes.spaceBtwItems),

      ///Brand top3 product image
      SizedBox(
        height: 130,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              Product product = products[index];
              return TopProductImage(
                  textColor: TColors.secondary,
                  image: product.image,
                  price: product.price,
                  saleNumber: product.salePrice);
            }),
      ),
    ]);
  }
}
