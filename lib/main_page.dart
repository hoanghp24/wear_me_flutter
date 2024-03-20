import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wear_me_flutter/features/personalization/screens/settings/settings.dart';
import 'package:wear_me_flutter/features/shop/screens/cart/cart.dart';
import 'package:wear_me_flutter/features/shop/screens/home/home.dart';
import 'package:wear_me_flutter/features/shop/screens/store/store.dart';
import 'package:wear_me_flutter/features/shop/screens/wishlist/wishlist.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/helpers/helper_functions.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: dark
                ? Colors.white.withOpacity(0.6)
                : Colors.black.withOpacity(0.6),
            selectedItemColor: TColors.primary,
            backgroundColor: dark ? Colors.black : Colors.white,
            currentIndex: controller.selectedIndex.value,
            onTap: (index) => controller.selectedIndex.value = index,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home_rounded),
                  label: 'Trang chủ'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.explore_outlined),
                  activeIcon: Icon(Icons.explore_rounded),
                  label: 'Khám phá'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined),
                  activeIcon: Icon(Icons.shopping_cart_rounded),
                  label: 'Giỏ hàng'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline),
                  activeIcon: Icon(Icons.favorite_rounded),
                  label: 'Yêu thích'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined),
                  activeIcon: Icon(Icons.account_circle_rounded),
                  label: 'Tài khoản'),
            ],
          )),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const CartScreen(),
    const WishListScreen(),
    const SettingsScreen()
  ];
}
