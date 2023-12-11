import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationServices {
  static back({result}) {
    Get.back(result: result);
  }

  static navigateTo(Widget screen,
      {transition = Transition.fadeIn, bool removeParent = false}) {
    removeParent
        ? Get.offAll(screen, transition: transition)
        : Get.to(screen, transition: transition);
  }

  static void to(Widget screen, {transition = Transition.fadeIn}) {
    navigateTo(screen, transition: transition);
  }

  static void openBottomSheet(Widget bottomSheet,
      {bool isDismissible = true, action}) {
    Get.bottomSheet(bottomSheet,
            isDismissible: isDismissible, isScrollControlled: true)
        .whenComplete(() => action == null ? null : action());
  }

}
