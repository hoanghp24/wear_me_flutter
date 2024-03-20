import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wear_me_flutter/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:wear_me_flutter/common/widgets/images/rounded_image.dart';
import 'package:wear_me_flutter/features/shop/controllers/home_controller.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index),
            ),
            items: banners
                .map((url) => RoundedImage(
                      imageUrl: url,
                      fit: BoxFit.fill,
                    ))
                .toList()),
        const SizedBox(height: TSizes.spaceBtwItems),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                CircularContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10, bottom: 15),
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? TColors.primary
                      : TColors.grey,
                )
            ],
          ),
        )
      ],
    );
  }
}
