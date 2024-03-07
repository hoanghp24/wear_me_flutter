import 'package:flutter/material.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  // Light Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: TColors.white,
          backgroundColor: TColors.primary,
          disabledForegroundColor: Colors.grey,
          disabledBackgroundColor: Colors.grey,
          padding: const EdgeInsets.symmetric(vertical: 23),
          textStyle: const TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(TSizes.md))));

  // Light Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: TColors.white,
          backgroundColor: TColors.primary,
          disabledForegroundColor: Colors.grey,
          disabledBackgroundColor: Colors.grey,
          padding: const EdgeInsets.symmetric(vertical: 23),
          textStyle: const TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(TSizes.md))));
}
