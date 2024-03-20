import 'package:flutter/material.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/device/device_utility.dart';
import 'package:wear_me_flutter/utils/helpers/helper_functions.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Icons.search,
    this.showBackground = true,
    this.showBorder = true,
    this.showBorderSide = false,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder, showBorderSide;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(TSizes.sm),
        decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? TColors.dark
                    : TColors.grey.withOpacity(0.6)
                : Colors.transparent,
            borderRadius: showBorder ? BorderRadius.circular(TSizes.sm) : null,
            border: showBorderSide ? Border.all(color: TColors.grey) : null),
        child: Row(
          children: [
            const SizedBox(width: TSizes.sm),
            Icon(icon, color: TColors.darkGrey),
            const SizedBox(width: TSizes.sm),
            Expanded(
                child: Text(text, style: Theme.of(context).textTheme.bodySmall))
          ],
        ),
      ),
    );
  }
}
