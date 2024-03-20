import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wear_me_flutter/common/widgets/appbar/appbar.dart';
import 'package:wear_me_flutter/features/personalization/screens/address/add_new_address.dart';
import 'package:wear_me_flutter/features/personalization/screens/address/widgets/single_address.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: ElevatedButton(
            onPressed: () => Get.to(() => const AddNewAddressScreen()),
            child: const Text('Thêm địa chỉ mới'),
          )),
      appBar: const TAppBar(
          title: Text('Địa chỉ'), centerTitle: true, showBackArrow: true),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(selectedAddress: true),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
