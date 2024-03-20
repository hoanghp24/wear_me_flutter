import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/appbar/appbar.dart';
import 'package:wear_me_flutter/common/widgets/layouts/grid_layout.dart';
import 'package:wear_me_flutter/common/widgets/icons/counter_icon.dart';
import 'package:wear_me_flutter/common/widgets/products/product_card/product_cart_vertical.dart';
import 'package:wear_me_flutter/features/shop/models/product.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/image_strings.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
          title: 'Áo thun',
          image: TImages.tshirt,
          price: 50000,
          salePrice: 20,
          vote: 4.5),
      Product(
          title: 'Áo khoác',
          image: TImages.jacket,
          price: 75000,
          salePrice: 30,
          vote: 4.5),
      Product(
          title: 'Áo polo 1',
          image: TImages.product1,
          price: 45000,
          salePrice: 20,
          vote: 4),
      Product(
          title: 'Áo polo 2',
          image: TImages.product2,
          price: 90000,
          salePrice: 30,
          vote: 4.8),
      Product(
          title: 'Áo polo 3',
          image: TImages.product3,
          price: 85000,
          salePrice: 45,
          vote: 4.2),
    ];
    return Scaffold(
      appBar: TAppBar(
        title: Text('Yêu thích',
            style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CounterIcon(
            onPressed: () {},
            iconColor: TColors.black,
            count: 2,
            icon: Icons.shopping_cart_outlined,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(children: [
              GridLayout(
                  itemCount: products.length,
                  itemBuilder: (_, index) {
                    Product product = products[index];
                    return ProductCardVertical(
                      title: product.title,
                      vote: product.vote,
                      saleNumber: product.salePrice,
                      price: product.price,
                      image: product.image,
                    );
                  })
            ])),
      ),
    );
  }
}
