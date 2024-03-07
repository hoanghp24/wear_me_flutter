import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/appbar/appbar.dart';
import 'package:wear_me_flutter/common/widgets/custom_shapes/containers/search_container.dart';

import 'package:wear_me_flutter/common/widgets/layouts/grid_layout.dart';
import 'package:wear_me_flutter/common/widgets/products/cart/cart_icon.dart';
import 'package:wear_me_flutter/common/widgets/products/product_card/product_cart_vertical.dart';
import 'package:wear_me_flutter/common/widgets/texts/section_heading.dart';
import 'package:wear_me_flutter/features/shop/screens/home/widgets/home_categories.dart';
import 'package:wear_me_flutter/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/image_strings.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: const SearchContainer(text: 'Tìm kiếm trên cửa hàng'),
        actions: [
          CartCounterIcon(
            onPressed: () {},
            iconColor: TColors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: TSizes.defaultSpace),
        child: Column(
          children: [
            /// Categories
            const Padding(
              padding: EdgeInsets.only(
                  left: TSizes.defaultSpace, right: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Promotion Slider
                  PromoSlider(banners: [
                    TImages.banner1,
                    TImages.banner2,
                    TImages.banner3
                  ]),
                ],
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems),

            ///Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  ///Categories
                  const HomeCategories(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///Headings
                  SectionHeading(
                    title: 'Sản phẩm hot cho bạn',
                    showActionButotn: true,
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// Product Card
                  GridLayout(
                      itemCount: 8,
                      itemBuilder: (_, index) => const ProductCardVertical()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
