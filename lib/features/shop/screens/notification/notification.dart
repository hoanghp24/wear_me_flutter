import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/appbar/appbar.dart';
import 'package:wear_me_flutter/common/widgets/icons/counter_icon.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: const Text('Thông báo', style: TextStyle()),
        actions: [
          CounterIcon(
              onPressed: () {}, count: 109, icon: Icons.shopping_cart_outlined)
        ],
      ),
    );
  }
}
