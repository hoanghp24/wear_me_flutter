import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/images/rounded_image.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/image_strings.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
          const RoundedImage(imageUrl: TImages.profile, applyImageRadius: true),
      title: Text('Phạm Huy Hoàng',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: TColors.black)),
      subtitle: Text('hoang@gmail.com',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: TColors.black)),
    );
  }
}
