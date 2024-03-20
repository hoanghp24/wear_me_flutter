import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/image_texts/vertical_image_texts.dart';
import 'package:wear_me_flutter/features/shop/models/category.dart';
import 'package:wear_me_flutter/utils/constants/image_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Category> categories = [
      Category(title: 'Áo thun', image: TImages.tshirt),
      Category(title: 'Váy', image: TImages.dress),
      Category(title: 'Áo khoác', image: TImages.jacket),
      Category(title: 'Quần', image: TImages.trouser),
      Category(title: 'Phụ kiện', image: TImages.jewelry),
    ];
    return SizedBox(
      height: 90,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            Category category = categories[index];
            return VerticalImageText(
              image: category.image,
              title: category.title,
              onTap: () {},
            );
          }),
    );
  }
}
