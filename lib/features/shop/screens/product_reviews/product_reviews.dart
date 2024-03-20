import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/appbar/appbar.dart';
import 'package:wear_me_flutter/common/widgets/icons/counter_icon.dart';
import 'package:wear_me_flutter/features/shop/screens/product_reviews/widgets/overall_product_rating.dart';
import 'package:wear_me_flutter/features/shop/screens/product_reviews/widgets/rating_bar_indicator.dart';
import 'package:wear_me_flutter/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        centerTitle: true,
        title: const Text('Đánh giá sản phẩm'),
        showBackArrow: true,
        actions: [
          CounterIcon(
              onPressed: () {}, count: 10, icon: Icons.shopping_cart_outlined)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Overall
              const OverallProductRating(),
              const TRatingBarIndicator(rating: 4.2),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// User Review List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
