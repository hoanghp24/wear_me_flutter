import 'package:flutter/material.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';

class FlashSaleText extends StatelessWidget {
  const FlashSaleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'F',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const Icon(Icons.flash_on_outlined, size: 20, color: TColors.secondary),
        Text(
          'ASH SALE',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
