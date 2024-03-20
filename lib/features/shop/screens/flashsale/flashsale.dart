import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/appbar/appbar.dart';
import 'package:wear_me_flutter/common/widgets/products/flash_sale/flash_sale_text.dart';

class FlashSaleScreen extends StatelessWidget {
  const FlashSaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(title: FlashSaleText(), showBackArrow: true),
    );
  }
}
