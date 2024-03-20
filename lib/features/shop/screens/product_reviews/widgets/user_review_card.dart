import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:wear_me_flutter/common/widgets/texts/readmore_text.dart';
import 'package:wear_me_flutter/features/shop/screens/product_reviews/widgets/rating_bar_indicator.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/image_strings.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(TImages.profile)),
                const SizedBox(width: TSizes.spaceBtwItems),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Văn Tèo',
                        style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: TSizes.spaceBtwItems / 2),
                    Row(
                      children: [
                        const TRatingBarIndicator(rating: 5),
                        const SizedBox(width: TSizes.spaceBtwItems),
                        Text('24-12-2023',
                            style: Theme.of(context).textTheme.bodyMedium)
                      ],
                    ),
                  ],
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),

        ///Reviews
        const SizedBox(height: TSizes.spaceBtwItems),
        const TReadMoreText(
            text:
                'shop giao hành siêu nhanh luôn. m ở hnoi 3 hôm đã nhận được hàng rồi. thích cái chất vải bên shop lắm . ck m mặc cứ khen lắm. chất mặc mát thấm hút tốt. fom chuẩn mặc tôn dáng lắm'),
        const SizedBox(height: TSizes.spaceBtwItems),

        ///Company Reviews
        RoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('WearMe Shop',
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('25-12-2023',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                const TReadMoreText(
                    text:
                        'WearMe xin chân thành cảm ơn anh/chị đã dành tặng cho shop đánh giá 5 sao. Sự hài lòng của anh/chị là niềm động lực lớn lao để shop tiếp tục cố gắng và hoàn thiện hơn nữa. WearMe sẽ luôn nỗ lực để mang đến cho khách hàng những trải nghiệm mua sắm tuyệt vời nhất và shop hy vọng sẽ được tiếp tục phục vụ mình trong những đơn hàng tiếp theo. Một lần nữa, WearMe xin chân thành cảm ơn anh/chị!')
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Divider(color: Colors.grey[300]),
        const SizedBox(height: TSizes.spaceBtwItems),
      ],
    );
  }
}
