import 'package:flutter/material.dart';
import 'package:wear_me_flutter/utils/theme/customs/appbar_theme.dart';
import 'package:wear_me_flutter/utils/theme/customs/bottom_sheet_theme.dart';
import 'package:wear_me_flutter/utils/theme/customs/checkbox_theme.dart';
import 'package:wear_me_flutter/utils/theme/customs/chip_theme.dart';
import 'package:wear_me_flutter/utils/theme/customs/elevated_button_theme.dart';
import 'package:wear_me_flutter/utils/theme/customs/outline_button_theme.dart';
import 'package:wear_me_flutter/utils/theme/customs/text_field_theme.dart';
import 'package:wear_me_flutter/utils/theme/customs/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextThemeCustom.lightTextTheme,
    chipTheme: ChipThemeCustom.lightChipTheme,
    appBarTheme: AppBarThemeCustom.lightAppBarTheme,
    checkboxTheme: CheckboxThemeCustom.lightCheckboxTheme,
    bottomSheetTheme: BottomSheetThemeCustom.lightBottomSheetTheme,
    outlinedButtonTheme: OutlineButtonThemeCustom.lightOutlineButtonTheme,
    elevatedButtonTheme: ElevatedButtonThemeCustom.lightElevatedButtonTheme,
    inputDecorationTheme: TextFormFieldThemeCustom.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextThemeCustom.darkTextTheme,
    chipTheme: ChipThemeCustom.darkChipTheme,
    appBarTheme: AppBarThemeCustom.darkAppBarTheme,
    checkboxTheme: CheckboxThemeCustom.darkCheckboxTheme,
    bottomSheetTheme: BottomSheetThemeCustom.darkBottomSheetTheme,
    outlinedButtonTheme: OutlineButtonThemeCustom.darkOutlineButtonTheme,
    elevatedButtonTheme: ElevatedButtonThemeCustom.darkElevatedButtonTheme,
    inputDecorationTheme: TextFormFieldThemeCustom.darkInputDecorationTheme,
  );
}
