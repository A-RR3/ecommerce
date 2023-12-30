import 'package:ecommerce/core/utils/navigation_services.dart';
import 'package:ecommerce/domain/entities/category.entity.dart';
import 'package:ecommerce/domain/entities/products.entity.dart';
import 'package:ecommerce/domain/interactors/impl/products.interactor.impl.dart';
import 'package:ecommerce/domain/interactors/interfaces/products.interface.dart';
import 'package:ecommerce/feasures/categories/screen/categories.screen.dart';
import 'package:ecommerce/feasures/home/screens/home.screen.dart';
import 'package:ecommerce/feasures/products/screens/search.product.screen.dart';
import 'package:ecommerce/feasures/products/screens/wish.list.screen.dart';
import 'package:ecommerce/feasures/profile/screens/profile.screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/interactors/impl/categories.interactor.impl.dart';

class HomeController extends GetxController {
  int currentIndex = 0;
  late List<Product> productsList;
  RxList<Product> foundProducts = <Product>[].obs;
  List<Category> categoriesList = [];
  bool loadingKey = false;
  RangeValues values = const RangeValues(200, 400);
  bool visibleRangeLabel = false;
  late RangeLabels labels;
  final ProductsInteractor service = ProductInteractorImpl();
  final CategoriesInteractorImp categoryService = CategoriesInteractorImp();

  // List<Category> categoriesList = [
  //   Category.create(name: 'Computers', image: "assets/images/computer.jpg"),
  //   Category.create(
  //       name: 'Phones & Accessories', image: 'assets/images/computer.jpg'),
  //   Category.create(
  //       name: 'Lights & Lighting', image: 'assets/images/computer.jpg'),
  //   Category.create(
  //       name: 'Office Equipments', image: 'assets/images/computer.jpg')
  // ];

  // List<Product> productsList = [
  //   Product.create(name: 'Bluetooth Printer', price: 200, images: []),
  //   Product.create(name: 'Macbook "22 Air', price: 2800, images: []),
  //   Product.create(name: 'iphone 14 ProMax', price: 1459, images: []),
  // ];

  @override
  void onInit() async {
    loadingKey = true;
    await fetchProducts();
    await fetchCategories();
    loadingKey = false;
    update();
    foundProducts.value = productsList;
    labels = RangeLabels(values.start.toString(), values.end.toString());
    super.onInit();
  }

  Future<void> fetchProducts() async {
    productsList = await service.getAllProducts();
  }

  Future<void> fetchCategories() async {
    categoriesList = await categoryService.getAllCategories();
  }

  void setSelectedIndex(int value) {
    currentIndex = value;
    update(['nav bar']);
  }

  void onFilterPressed() {
    visibleRangeLabel = !visibleRangeLabel;
    if (!visibleRangeLabel) {
      foundProducts.value = productsList;
    }
    update(['filter']);
  }

  void filterProductsByPriceRange(RangeValues newValues) {
    values = newValues;
    labels = RangeLabels(values.start.toString(), values.end.toString());
    update(['filter']);
    foundProducts.value = productsList
        .where((product) =>
            product.price >= values.start && product.price <= values.end)
        .toList();
  }

  void filterProducts(String title) {
    List<Product> results = [];
    if (title.isEmpty) {
      results = productsList;
    } else {
      results = productsList
          .where((element) => element.name
              .toString()
              .toLowerCase()
              .contains(title.toLowerCase()))
          .toList();
    }
    foundProducts.value = results;
  }

  void viewCurrentPage(int index) {
    switch (index) {
      case 0:
        NavigationServices.navigateTo(HomeScreen(), removeParent: true);
        break;
      case 1:
        NavigationServices.navigateTo(CategoriesScreen(), removeParent: true);
        break;
      case 2:
        NavigationServices.navigateTo(SearchProductScreen(),
            removeParent: true);
        break;
      case 3:
        NavigationServices.navigateTo(const WishListScreen(),
            removeParent: true);
        break;
      case 4:
        NavigationServices.navigateTo(ProfileScreen(), removeParent: true);
        break;
      default:
        NavigationServices.navigateTo(HomeScreen());
    }
  }
}
