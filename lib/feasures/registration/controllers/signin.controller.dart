import 'package:dio/dio.dart';
import 'package:ecommerce/core/utils/navigation_services.dart';
import 'package:ecommerce/data/db/offline/cache.keys.dart';
import 'package:ecommerce/data/db/offline/shared.preferences.dart';
import 'package:ecommerce/feasures/home/screens/home.screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  bool isChecked = false;
  bool passwordInVisible = false;
  RxBool isLoading = false.obs;

  TextEditingController emailController = TextEditingController();
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

  void changeLoadingStatus() {
    isLoading.value = !isLoading.value;
  }

  void onSignIn() async {
    try {
      // var formData = FormData.fromMap({
      //   "email": emailController.text,
      //   "password": passwordControlelr.text
      // });
      changeLoadingStatus();
      var response = await Dio()
          .post("https://api.escuelajs.co/api/v1/auth/login", data: {
        "email": emailController.text,
        "password": passwordControlelr.text
      });

      if (response.statusCode == 201 || response.statusCode == 200) {
        print("success");
        print(response.data);

        await SharedHelper.prefs.setString(
          CacheKeys.token.name,
          response.data["access_token"],
        );
        await SharedHelper.prefs.setBool(CacheKeys.isLogin.name, true);
        NavigationServices.navigateTo(HomeScreen());
      }
    } catch (e) {
      print(e.toString());
    }
    changeLoadingStatus();

    // FocusScope.of(Get.context!).unfocus();
    // SharedPref.prefs.setString('email', emailController.text);
    // SharedPref.prefs.setString('password', emailController.text);
    // SharedPref.prefs.setBool('loggedIn', true);
    // NavigationServices.navigateTo(HomeScreen());
  }
}
