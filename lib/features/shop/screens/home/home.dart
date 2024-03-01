import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wear_me_flutter/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:wear_me_flutter/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:wear_me_flutter/common/widgets/image_texts/vertical_image_texts.dart';
import 'package:wear_me_flutter/common/widgets/texts/section_heading.dart';
import 'package:wear_me_flutter/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:wear_me_flutter/features/shop/screens/home/widgets/home_categories.dart';
import 'package:wear_me_flutter/utils/constants/image_strings.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(children: [
                ///AppBar
                HomeAppBar(),
                SizedBox(height: TSizes.spaceBtwItems),

                ///SearchBar
                SearchContainer(
                    text: 'Tìm kiếm trên cửa hàng',
                    icon: Iconsax.search_normal_1),
                SizedBox(height: TSizes.spaceBtwSections),

                /// Categories
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      ///Headings
                      SectionHeading(
                          title: 'Danh mục sản phẩm', showActionButotn: false),
                      SizedBox(height: TSizes.spaceBtwItems),

                      ///Categories
                      HomeCategories()
                    ],
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
