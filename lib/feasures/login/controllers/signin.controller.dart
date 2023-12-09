import 'package:ecommerce/data/shared.preferences.dart';
import 'package:ecommerce/feasures/home/home.screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  bool isChecked = false;
  TextEditingController emailController =TextEditingController();
  TextEditingController passwordControlelr = TextEditingController();

  @override
  void onClose() {
    emailController.clear();
    passwordControlelr.clear();
    super.onClose();
  }

  void checkBoxValue(bool value) {
    isChecked = value;
    update(['checkbox']);
  }

  void onSignIn() {
    FocusScope.of(Get.context!).unfocus();
    SharedPref.prefs.setString('email', emailController.text);
    SharedPref.prefs.setString('password', emailController.text);
    SharedPref.prefs.setBool('loggedIn', true);
    Get.to(HomeScreen());
  }
}
