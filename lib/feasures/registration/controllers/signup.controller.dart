import 'package:dio/dio.dart';
import 'package:ecommerce/core/utils/navigation_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordControlelr = TextEditingController();
  TextEditingController nameControlelr = TextEditingController();

  void onSignUp() async {
    print('entered');
    try {
      var response =
          await Dio().post("https://api.escuelajs.co/api/v1/users", data: {
        "email": emailController.text,
        "password": passwordControlelr.text,
        "name": nameControlelr.text,
        "avatar": "https://i.imgur.com/LDOO4Qs.jpg",
      });

      if (response.statusCode == 201 || response.statusCode == 200) {
        print("success sign up");
        print(response.data);
        NavigationServices.back();
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
