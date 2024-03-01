import 'package:flutter/material.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    this.textColor = TColors.white,
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
      children: [
        Text('Danh mục sản phẩm',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis),
        if (showActionButotn)
          TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}
