import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  /// Variable
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// createAccount
  void createAccount() {
  
  }
}
