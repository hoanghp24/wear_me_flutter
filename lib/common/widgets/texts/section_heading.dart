import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    this.textColor = TColors.black,
    this.showActionButotn = true,
    required this.title,
    this.buttonTitle = 'Xem thêm',
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionButotn;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis),
        if (showActionButotn)
          TextButton(
              onPressed: onPressed,
              child: Row(
                children: [
                  Text(
                    buttonTitle,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const Icon(
                    Iconsax.arrow_right_34,
                    color: TColors.black,
                    size: 15,
                  )
                ],
              ))
      ],
    );
  }
}
