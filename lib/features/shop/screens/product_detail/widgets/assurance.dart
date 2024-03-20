import 'package:flutter/material.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class AssuranceItem extends StatelessWidget {
  const AssuranceItem({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 15, color: TColors.secondary),
        const SizedBox(width: TSizes.s),
        Text(
          text,
          style: const TextStyle(fontSize: 11, color: TColors.darkGrey),
        )
      ],
    );
  }
}
