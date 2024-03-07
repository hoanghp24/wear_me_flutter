import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/appbar/appbar.dart';
import 'package:wear_me_flutter/common/widgets/appbar/tabbar.dart';
import 'package:wear_me_flutter/common/widgets/brands/brand_card.dart';
import 'package:wear_me_flutter/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:wear_me_flutter/common/widgets/layouts/grid_layout.dart';
import 'package:wear_me_flutter/common/widgets/products/cart/cart_icon.dart';
import 'package:wear_me_flutter/common/widgets/texts/section_heading.dart';
import 'package:wear_me_flutter/features/shop/screens/store/widgets/category_tab.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: const Text('Cửa hàng'),
          actions: [CartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  pinned: true,
                  floating: true,
                  automaticallyImplyLeading: false,
                  backgroundColor: HelperFunctions.isDarkMode(context)
                      ? TColors.dark
                      : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        ///Searchbar
                        const SearchContainer(
                            text: 'Tìm kiếm trên cửa hàng', showBorder: true),
                        const SizedBox(height: TSizes.spaceBtwSections),

                        ///Features Brands
                        SectionHeading(
                            title: 'Thương hiệu',
                            showActionButotn: true,
                            onPressed: () {}),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        GridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const BrandCard(showBorder: true);
                            }),
                      ],
                    ),
                  ),

                  ///Tabs
                  bottom: const TTabBar(
                    tabs: [
                      Tab(child: Text('Quần áo nam')),
                      Tab(child: Text('Quần áo nữ')),
                      Tab(child: Text('Dành cho bé')),
                      Tab(child: Text('Đồ thể thao')),
                      Tab(child: Text('Phụ kiện'))
                    ],
                  ),
                )
              ];
            },
            body: const TabBarView(
              children: [
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                CategoryTab()
              ],
            )),
      ),
    );
  }
}
