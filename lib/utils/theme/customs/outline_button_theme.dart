import 'package:flutter/material.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class TOutlineButtonTheme {
  TOutlineButtonTheme._();

  // Light Theme
  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.black,
          side: const BorderSide(color: Colors.blue),
          textStyle: const TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
          padding: const EdgeInsets.symmetric(vertical: 23),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(TSizes.md))));

  // Dark Theme
  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          side: const BorderSide(color: Colors.blueAccent),
          textStyle: const TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
          padding: const EdgeInsets.symmetric(vertical: 23),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(TSizes.md))));
}
