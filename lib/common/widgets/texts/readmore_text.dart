import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';

class TReadMoreText extends StatelessWidget {
  const TReadMoreText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      trimLines: 4,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'Xem thêm',
      trimExpandedText: 'Thu gọn',
      moreStyle: const TextStyle(
          fontSize: 14,
          color: TColors.primary,
          decoration: TextDecoration.underline,
          decorationColor: TColors.primary),
      lessStyle: const TextStyle(
          fontSize: 14,
          color: TColors.primary,
          decoration: TextDecoration.underline,
          decorationColor: TColors.primary),
    );
  }
}
