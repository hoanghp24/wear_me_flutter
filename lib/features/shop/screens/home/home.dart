import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wear_me_flutter/common/widgets/appbar/appbar.dart';
import 'package:wear_me_flutter/common/widgets/custom_shapes/containers/search_container.dart';

import 'package:wear_me_flutter/common/widgets/layouts/grid_layout.dart';
import 'package:wear_me_flutter/common/widgets/icons/counter_icon.dart';
import 'package:wear_me_flutter/common/widgets/products/flash_sale/flash_sale_showcase.dart';
import 'package:wear_me_flutter/common/widgets/products/product_card/product_cart_vertical.dart';
import 'package:wear_me_flutter/common/widgets/texts/app_title.dart';
import 'package:wear_me_flutter/common/widgets/texts/section_heading.dart';
import 'package:wear_me_flutter/features/shop/models/product.dart';
import 'package:wear_me_flutter/features/shop/screens/flashsale/flashsale.dart';
import 'package:wear_me_flutter/features/shop/screens/home/widgets/home_categories.dart';
import 'package:wear_me_flutter/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:wear_me_flutter/features/shop/screens/store/store.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/image_strings.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
    return Scaffold(
      backgroundColor: TColors.primaryBackground,
      appBar: TAppBar(
        title: const AppTitle(),
        actions: [
          CounterIcon(onPressed: () {}, count: 2, icon: Icons.notifications),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: TSizes.defaultSpace, right: TSizes.defaultSpace),
              decoration: const BoxDecoration(color: TColors.white),
              child: const Column(
                children: [
                  ///Search bar
                  SizedBox(height: TSizes.sm),
                  SearchContainer(text: 'Tìm kiếm...'),
                  SizedBox(height: TSizes.spaceBtwItems),

                  /// Promotion Slider
                  PromoSlider(banners: [
                    TImages.banner1,
                    TImages.banner2,
                    TImages.banner3,
                    TImages.banner4
                  ]),
                ],
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems / 2),

            ///Body
            Container(
              decoration: const BoxDecoration(color: TColors.white),
              padding: const EdgeInsets.only(
                  top: TSizes.md, bottom: TSizes.md, left: TSizes.defaultSpace),
              child: Column(
                children: [
                  SectionHeading(
                    title: 'Danh mục',
                    showActionButton: true,
                    onPressed: () => Get.to(() => const StoreScreen()),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const HomeCategories(),
                ],
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems / 2),

            GestureDetector(
              onTap: () => Get.to(() => const FlashSaleScreen()),
              child: Container(
                decoration: const BoxDecoration(color: TColors.white),
                padding: const EdgeInsets.only(
                    top: TSizes.md,
                    bottom: TSizes.md,
                    left: TSizes.defaultSpace),
                child: const FlashSaleShowcase(),
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems / 2),

            Container(
              decoration: const BoxDecoration(color: TColors.white),
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  ///Headings
                  SectionHeading(
                    title: 'Sản phẩm nổi bật',
                    showActionButton: true,
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// Product Card
                  GridLayout(
                      itemCount: products.length,
                      itemBuilder: (_, index) {
                        Product product = products[index];
                        return ProductCardVertical(
                          title: product.title,
                          vote: product.vote,
                          saleNumber: product.salePrice,
                          price: product.price,
                          image: product.image,
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
