import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wear_me_flutter/common/widgets/appbar/appbar.dart';
import 'package:wear_me_flutter/common/widgets/icons/circular_icon.dart';
import 'package:wear_me_flutter/common/widgets/icons/counter_icon.dart';
import 'package:wear_me_flutter/common/widgets/texts/section_heading.dart';
import 'package:wear_me_flutter/features/shop/screens/home/widgets/sale_rating_count.dart';
import 'package:wear_me_flutter/features/shop/screens/product_detail/widgets/bottom_add_to_cart.dart';
import 'package:wear_me_flutter/features/shop/screens/product_detail/widgets/product_attribute.dart';
import 'package:wear_me_flutter/common/widgets/texts/readmore_text.dart';
import 'package:wear_me_flutter/features/shop/screens/product_detail/widgets/product_image_slider.dart';
import 'package:wear_me_flutter/features/shop/screens/product_detail/widgets/product_meta_data.dart';
import 'package:wear_me_flutter/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/image_strings.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        actions: [
          CircularIcon(
              onPressed: () {},
              icon: Icons.search,
              backgroundColor: TColors.black.withOpacity(0.2),
              color: TColors.white),
          const SizedBox(width: TSizes.sm),
          CounterIcon(
              backgroundColor: TColors.black.withOpacity(0.2),
              onPressed: () {},
              iconColor: TColors.white,
              count: 2,
              icon: Icons.shopping_cart_outlined)
        ],
      ),
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(children: [
          /// Product SLider
          const ProductImageSlider(
            banners: [
              TImages.product1,
              TImages.product2,
              TImages.product3,
            ],
          ),

          ///Product Details
          Padding(
            padding: const EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace),
            child: Column(
              children: [
                /// Price , Title, Stock, Brand
                const ProductMetaData(),

                /// Rating & Share button
                const SaleRatingCounted(
                  showIcon: true,
                  detail: true,
                  reviewCount: 2300,
                  vote: 4.5,
                ),

                const SizedBox(height: TSizes.spaceBtwItems),
                const ProductAttributes(),

                const SizedBox(height: TSizes.spaceBtwSections),

                ///Description
                const SectionHeading(
                    title: 'Mô tả sản phẩm', showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwItems / 2),
                const TReadMoreText(
                    text:
                        'Áo thun nam luôn là sự lựa chọn của phái mạnh đi cùng với đó thì nhu cầu về áo thun nam ngày càng tăng dẫn tới sự đa dạng về mẫu mã, chất liệu và màu sắc. Tuy nhiên, tuỳ theo từng sở thích và phong cách cá nhân mà ( tên shop) đã sản xuất ra nhiều mẫu mã đa dạng để bạn có thể lựa chọn.'),

                ///Reviews
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems),
                SectionHeading(
                    title: 'Đánh giá (199)',
                    onPressed: () => Get.to(() => const ProductReviewScreen()),
                    showActionButton: true),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            ),
          )
        ]),

        ///Product Details
      ),
    );
  }
}
