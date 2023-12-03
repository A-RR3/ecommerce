import 'package:ecommerce/feasures/categories/screen/categories.screen.dart';
import 'package:ecommerce/feasures/home/home.screen.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  int currentIndex = 0;

  void setSelectedIndex(int value) {
    currentIndex = value;
    update(['nav bar']);
  }

  void viewCurrentPage(int index) {
    switch (index) {
      case 0:
        Get.to(const HomeScreen());
        break;
      case 1:
        Get.to(CategoriesScreen());
        break;
    }
  }
}
