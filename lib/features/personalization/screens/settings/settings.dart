import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wear_me_flutter/common/widgets/appbar/appbar.dart';
import 'package:wear_me_flutter/common/widgets/icons/counter_icon.dart';
import 'package:wear_me_flutter/common/widgets/list_tile/setting_menu_tile.dart';
import 'package:wear_me_flutter/common/widgets/list_tile/user_profile_tile.dart';
import 'package:wear_me_flutter/common/widgets/texts/section_heading.dart';
import 'package:wear_me_flutter/features/personalization/screens/address/address.dart';
import 'package:wear_me_flutter/features/personalization/screens/profile/profile.dart';
import 'package:wear_me_flutter/features/personalization/screens/settings/widgets/order_status.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const iconChevron =
        Icon(Icons.arrow_forward_ios, color: TColors.darkGrey, size: 18);
    return Scaffold(
      backgroundColor: TColors.primaryBackground,
      appBar: TAppBar(
        title: const Text('Tài khoản'),
        actions: [
          CounterIcon(
              icon: Icons.shopping_cart_outlined, onPressed: () {}, count: 2)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header
            Container(
                decoration: const BoxDecoration(color: Colors.white),
                padding: const EdgeInsets.all(TSizes.sm),
                child: const UserProfileTile()),
            const SizedBox(height: TSizes.spaceBtwItems),

            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
                padding: const EdgeInsets.all(TSizes.md),
                child: const Column(
                  children: [
                    SectionHeading(
                      title: 'Đơn hàng của tôi',
                      showBackIcon: true,
                    ),
                    SizedBox(height: TSizes.spaceBtwItems),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        StatusOrder(
                            icon: Icons.inventory_2, status: 'Đang xử lý'),
                        StatusOrder(
                            icon: Icons.local_shipping, status: 'Đang giao'),
                        StatusOrder(
                            icon: Icons.credit_score, status: 'Đã giao'),
                        StatusOrder(icon: Icons.rotate_left, status: 'Đổi trả'),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems),

            ///Body
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              padding: const EdgeInsets.all(TSizes.md),
              child: Column(
                children: [
                  const SectionHeading(
                      title: 'Tài khoản', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  SettingMenuTile(
                      icon: Icons.account_circle_outlined,
                      title: 'Thông tin cá nhân',
                      trailing: iconChevron,
                      onTap: () => Get.to(() => const ProfileScreen())),
                  SettingMenuTile(
                      icon: Icons.location_on_outlined,
                      title: 'Quản lý sổ địa chỉ',
                      trailing: iconChevron,
                      onTap: () => Get.to(() => const UserAddressScreen())),
                  SettingMenuTile(
                      icon: Icons.credit_card_outlined,
                      title: 'Quản lý thẻ thanh toán',
                      trailing: iconChevron,
                      onTap: () {}),
                  SettingMenuTile(
                      icon: Icons.receipt_long_outlined,
                      title: 'Đơn hàng của tôi',
                      trailing: iconChevron,
                      onTap: () {}),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            Container(
              decoration: const BoxDecoration(color: Colors.white),
              padding: const EdgeInsets.all(TSizes.md),
              child: Column(
                children: [
                  const SectionHeading(
                      title: 'Về chúng tôi', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  SettingMenuTile(
                      icon: Icons.description_outlined,
                      title: 'Hướng dẫn',
                      trailing: iconChevron,
                      onTap: () {}),
                  SettingMenuTile(
                      icon: Icons.help_outline_outlined,
                      title: 'Giới thiệu',
                      trailing: iconChevron,
                      onTap: () {}),
                  SettingMenuTile(
                      icon: Icons.headset_mic_outlined,
                      title: 'Liên hệ & Hỗ trợ',
                      trailing: iconChevron,
                      onTap: () {}),
                ],
              ),
            ),

            ///Logout Button
            const SizedBox(height: TSizes.spaceBtwSections),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
              child: SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {},
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.white),
                    child: const Text('Đăng xuất')),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
