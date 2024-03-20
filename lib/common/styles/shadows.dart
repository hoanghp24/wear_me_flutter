import 'package:flutter/material.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';

class ShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: TColors.black.withOpacity(0.1),
    blurRadius: 1,
    spreadRadius: 1,
  );

  static final horizontalProductShadow = BoxShadow(
    color: TColors.black.withOpacity(0.1),
    blurRadius: 1,
    spreadRadius: 1,
  );
}
