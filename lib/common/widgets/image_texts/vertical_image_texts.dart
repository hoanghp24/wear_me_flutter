import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/images/rounded_image.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.backgroundColor = TColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(

            ///Circular icon
            children: [
              RoundedImage(
                height: 50,
                imageUrl: image,
                fit: BoxFit.fill,
              ),

              ///Text
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              SizedBox(
                width: 55,
                child: Text(title,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .apply(color: textColor),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
              )
            ]),
      ),
    );
  }
}
