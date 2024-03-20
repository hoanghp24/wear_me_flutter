import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/appbar/appbar.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
          showBackArrow: true,
          title: Text('Thêm địa chỉ mới'),
          centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                    decoration: const InputDecoration(labelText: 'Họ và tên')),
                const SizedBox(height: TSizes.spaceBetweenInputFields),
                TextFormField(
                    decoration:
                        const InputDecoration(labelText: 'Số điện thoại')),
                const SizedBox(height: TSizes.spaceBetweenInputFields),
                TextFormField(
                    decoration:
                        const InputDecoration(labelText: 'Tỉnh/ Thành phố')),
                const SizedBox(height: TSizes.spaceBetweenInputFields),
                TextFormField(
                    decoration:
                        const InputDecoration(labelText: 'Quận/ Huyện')),
                const SizedBox(height: TSizes.spaceBetweenInputFields),
                TextFormField(
                    decoration: const InputDecoration(labelText: 'Phường/ Xã')),
                const SizedBox(height: TSizes.spaceBetweenInputFields),
                TextFormField(
                    decoration:
                        const InputDecoration(labelText: 'Địa chỉ nhận hàng')),
                const SizedBox(height: TSizes.defaultSpace),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Xác nhận')))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
