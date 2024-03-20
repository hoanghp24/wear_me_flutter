import 'package:flutter/material.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    this.textColor = TColors.black,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = 'Xem thêm',
    this.onPressed,
    this.showBackIcon = false,
  });

  final Color? textColor;
  final bool showActionButton, showBackIcon;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis),
        if (showActionButton)
          showBackIcon
              ? const Icon(Icons.arrow_forward_ios,
                  color: TColors.darkGrey, size: 18)
              : TextButton(
                  onPressed: onPressed,
                  child: Text(
                    buttonTitle,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: TColors.primary),
                  ))
      ],
    );
  }
}
