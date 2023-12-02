import 'package:ecommerce/domain/entities/category.entity.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  List<Category> categoriesList = [
    Category.create(name: 'Computers', image: "assets/images/computer.jpg"),
    Category.create(
        name: 'Phones & Accessories', image: 'assets/images/computer.jpg'),
    Category.create(
        name: 'Lights & Lighting', image: 'assets/images/computer.jpg'),
    Category.create(
        name: 'Office Equipments', image: 'assets/images/computer.jpg')
  ];
}
