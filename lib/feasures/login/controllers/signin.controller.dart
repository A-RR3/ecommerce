import 'package:ecommerce/data/shared.preferences.dart';
import 'package:ecommerce/feasures/home/home.screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  bool isChecked = false;
  TextEditingController? emailController;
  TextEditingController? passwordControlelr;

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordControlelr = TextEditingController();
    super.onInit();
  }

  void checkBoxValue(bool value) {
    isChecked = value;
    update(['checkbox']);
  }

  void onSignIn() {
    debugPrint('11111');

    SharedPref.prefs.setString('email', emailController!.text);
    SharedPref.prefs.setString('password', emailController!.text);
    SharedPref.prefs.setBool('loggedIn', true);
    debugPrint('22222');
    Get.to(HomeScreen());
  }
}
