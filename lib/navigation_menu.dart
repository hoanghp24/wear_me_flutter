import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: dark
                ? Colors.white.withOpacity(0.6)
                : Colors.black.withOpacity(0.8),
            selectedItemColor: TColors.primary,
            backgroundColor: dark ? Colors.black : Colors.white,
            currentIndex: controller.selectedIndex.value,
            onTap: (index) => controller.selectedIndex.value = index,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.home),
                  activeIcon: Icon(Iconsax.home_15),
                  label: 'Trang chủ'),
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.shop),
                  activeIcon: Icon(Iconsax.shop5),
                  label: 'Cửa hàng'),
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.heart),
                  activeIcon: Icon(Iconsax.heart5),
                  label: 'Yêu thích'),
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.profile_2user),
                  activeIcon: Icon(Iconsax.profile_2user5),
                  label: 'Hồ sơ')
            ],
          )),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const Text('Trang chủ'),
    const Text('Cửa hàng'),
    const Text('Yêu thích'),
    const Text('Hồ sơ'),
  ];
}
