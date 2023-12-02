import 'package:get/get.dart';

class SignInController extends GetxController {
  bool isChecked = false;

  void checkBoxValue(bool value) {
    isChecked = value;
    update(['checkbox']);
  }
}
