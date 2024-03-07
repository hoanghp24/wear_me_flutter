import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/brands/brand_showcase.dart';
import 'package:wear_me_flutter/common/widgets/layouts/grid_layout.dart';
import 'package:wear_me_flutter/common/widgets/products/product_card/product_cart_vertical.dart';
import 'package:wear_me_flutter/common/widgets/texts/section_heading.dart';
import 'package:wear_me_flutter/utils/constants/image_strings.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Brands
              const BrandShowcase(images: [
                TImages.product1,
                TImages.product2,
                TImages.product3
              ]),
              const BrandShowcase(images: [
                TImages.product1,
                TImages.product2,
                TImages.product3
              ]),
              const SizedBox(height: TSizes.spaceBtwItems),

              ///Products
              SectionHeading(
                  title: 'Có thể bạn cũng thích',
                  showActionButotn: true,
                  onPressed: () {}),
              const SizedBox(height: TSizes.spaceBtwItems),

              GridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const ProductCardVertical()),
            ],
          ),
        ),
      ],
    );
  }
}
