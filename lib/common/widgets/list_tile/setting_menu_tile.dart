import 'package:flutter/material.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class SettingMenuTile extends StatelessWidget {
  const SettingMenuTile(
      {super.key,
      required this.icon,
      required this.title,
      this.trailing,
      this.onTap});

  final IconData icon;
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, size: 25, color: TColors.primary),
          title: Text(title,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
          trailing: trailing,
          onTap: onTap,
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2)
      ],
    );
  }
}
