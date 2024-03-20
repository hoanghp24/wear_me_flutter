import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/icons/circular_icon.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class StatusOrder extends StatelessWidget {
  const StatusOrder({
    super.key,
    required this.icon,
    required this.status,
  });

  final IconData icon;
  final String status;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularIcon(
          icon: icon,
          radius: TSizes.sm,
          color: TColors.primary,
          backgroundColor: TColors.primary.withOpacity(0.1),
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Text(status)
      ],
    );
  }
}
