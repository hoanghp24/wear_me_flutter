import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/image_texts/vertical_image_texts.dart';
import 'package:wear_me_flutter/utils/constants/image_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return VerticalImageText(
              image: TImages.shirtIcons,
              title: 'Áo thun nam',
              onTap: () {},
            );
          }),
    );
  }
}
