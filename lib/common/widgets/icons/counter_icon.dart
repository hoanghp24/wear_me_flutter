import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/icons/circular_icon.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';

class CounterIcon extends StatelessWidget {
  const CounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor = TColors.black,
    required this.count,
    required this.icon,
    this.backgroundColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor, backgroundColor;
  final int count;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircularIcon(
          backgroundColor: backgroundColor,
          onPressed: onPressed,
          icon: icon,
          color: iconColor,
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            width: count > 99 ? 28 : 18,
            height: 18,
            decoration: BoxDecoration(
                color: TColors.secondary,
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text(count > 99 ? '99+' : '$count',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.white, fontSizeFactor: 0.8)),
            ),
          ),
        )
      ],
    );
  }
}
