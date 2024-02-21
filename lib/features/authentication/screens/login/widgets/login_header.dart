

import 'package:flutter/material.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: SizesConst.lg),
        Text(
          TextsConst.loginTitle,
          style: Theme.of(context)
              .textTheme
              .headlineLarge
              ?.copyWith(color: ColorsConst.primary),
        ),
        const SizedBox(height: SizesConst.sm),
        Text(TextsConst.loginSubTitle,
            style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
