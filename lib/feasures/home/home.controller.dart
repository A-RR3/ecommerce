import 'package:ecommerce/domain/entities/category.entity.dart';
import 'package:ecommerce/domain/entities/products.entity.dart';
import 'package:ecommerce/feasures/categories/screen/categories.screen.dart';
import 'package:ecommerce/feasures/home/screens/home.screen.dart';
import 'package:ecommerce/feasures/products/screens/search.product.screen.dart';
import 'package:ecommerce/feasures/products/screens/wish.list.screen.dart';
import 'package:ecommerce/feasures/profile/profile.screen.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  int currentIndex = 0;

  List<Category> categoriesList = [
    Category.create(name: 'Computers', image: "assets/images/computer.jpg"),
    Category.create(
        name: 'Phones & Accessories', image: 'assets/images/computer.jpg'),
    Category.create(
        name: 'Lights & Lighting', image: 'assets/images/computer.jpg'),
    Category.create(
        name: 'Office Equipments', image: 'assets/images/computer.jpg')
  ];

  List<Product> productsList = [
    Product.create(name: 'Bluetooth Printer', price: 200.75),
    Product.create(name: 'Macbook "22 Air', price: 2800.0),
    Product.create(name: 'iphone 14 ProMax', price: 1459.0),
  ];

  void setSelectedIndex(int value) {
    currentIndex = value;
    update(['nav bar']);
  }

  void viewCurrentPage(int index) {
    switch (index) {
      case 0:
        Get.off(HomeScreen());
        break;
      case 1:
        Get.off(() => CategoriesScreen());
        break;
      case 2:
        Get.off(() => const SearchProductScreen());
        break;
      case 3:
        Get.off(() => const WishListScreen());
        break;
      case 4:
        Get.off(() => ProfileScreen());
        break;
      default:
        Get.to(HomeScreen());
    }
  }

}
