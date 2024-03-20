import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wear_me_flutter/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:wear_me_flutter/features/shop/controllers/home_controller.dart';
import 'package:wear_me_flutter/utils/helpers/helper_functions.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
    required this.banners,
  });
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    final controller = Get.put(HomeController());

    return CurvedEdgeWidget(
      child: Stack(
        ///Main large image
        children: [
          CarouselSlider(
              options: CarouselOptions(
                height: 400,
                autoPlay: true,
                viewportFraction: 1,
                aspectRatio: 2,
                onPageChanged: (index, _) =>
                    controller.updatePageIndicator(index),
              ),
              items: banners
                  .map(
                    (url) => Image(
                      image: AssetImage(url),
                      fit: BoxFit.cover,
                    ),
                  )
                  .toList()),
        ],
      ),
    );
  }
}
