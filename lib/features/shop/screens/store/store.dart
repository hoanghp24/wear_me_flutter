import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/appbar/appbar.dart';
import 'package:wear_me_flutter/common/widgets/appbar/tabbar.dart';
import 'package:wear_me_flutter/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:wear_me_flutter/common/widgets/icons/counter_icon.dart';
import 'package:wear_me_flutter/features/shop/screens/store/widgets/category_tab.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      "Tất cả",
      "Váy",
      "Áo thun",
      "Áo khoác",
      "Quần",
      "Phụ kiện",
      "Đồ trẻ em"
    ];
    return DefaultTabController(
      length: 7,
      child: Scaffold(
          appBar: TAppBar(
            title: const SearchContainer(
                text: 'Tìm kiếm trên cửa hàng', showBorder: true),
            actions: [
              CounterIcon(
                  onPressed: () {},
                  count: 2,
                  icon: Icons.shopping_cart_outlined),
              const SizedBox(width: TSizes.sm),
            ],
          ),
          body: NestedScrollView(
              headerSliverBuilder: (_, innerBoxScrolled) {
                return [
                  SliverAppBar(
                    pinned: true,
                    floating: true,
                    expandedHeight: 5,
                    automaticallyImplyLeading: false,
                    backgroundColor: HelperFunctions.isDarkMode(context)
                        ? Colors.black
                        : Colors.white,
                    bottom: TTabBar(
                        tabs: items.map((item) => Tab(text: item)).toList()),
                  )
                ];
              },
              body: TabBarView(
                children: items.map((_) => const CategoryTab()).toList(),
              ))),
    );
  }
}
