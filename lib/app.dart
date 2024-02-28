import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wear_me_flutter/features/authentication/screens/login/login.dart';
import 'package:wear_me_flutter/features/authentication/screens/signup/signup.dart';
import 'package:wear_me_flutter/navigation_menu.dart';
import 'package:wear_me_flutter/splash.dart';
import 'package:wear_me_flutter/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: NavigationMenu(),
    );
  }
}
