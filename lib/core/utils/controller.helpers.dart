import 'package:get/get.dart';

class ControllerHelpers {
  static R find<R>() {
    return Get.find<R>();
  }

  static R inject<R>(R controller, {bool permanent = false}) {
    return Get.put(controller, permanent: permanent);
  }

}