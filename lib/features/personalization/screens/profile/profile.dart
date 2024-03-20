import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/appbar/appbar.dart';
import 'package:wear_me_flutter/common/widgets/images/rounded_image.dart';
import 'package:wear_me_flutter/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/image_strings.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
          centerTitle: true,
          title: Text('Thông tin cá nhân'),
          showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const RoundedImage(
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                        imageUrl: TImages.profile,
                        applyImageRadius: true),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Thay đổi ảnh đại diện',
                          style: TextStyle(
                              color: TColors.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                    ),
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: TSizes.spaceBtwSections),

              ProfileMenu(
                  name: 'Họ và tên', value: 'Phạm Huy Hoàng', onPressed: () {}),
              ProfileMenu(
                  name: 'Email', value: 'hoang@gmail.com', onPressed: () {}),
              ProfileMenu(
                  name: 'Số điện thoại',
                  value: '+84988778778',
                  onPressed: () {}),
              ProfileMenu(name: 'Giới tính', value: 'Nam', onPressed: () {}),
              ProfileMenu(
                  name: 'Ngày sinh', value: '24/06/2002', onPressed: () {}),

              const SizedBox(height: TSizes.spaceBtwSections),

              Center(
                  child: TextButton(
                onPressed: () {},
                child: const Text('Xoá tài khoản',
                    style: TextStyle(color: Colors.red)),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
