import 'package:ecommerce/core/utils/controller.helpers.dart';
import 'package:ecommerce/domain/entities/category.entity.dart';
import 'package:ecommerce/domain/entities/products.entity.dart';
import 'package:ecommerce/domain/interactors/impl/products.interactor.impl.dart';
import 'package:ecommerce/feasures/home/home.controller.dart';
import 'package:get/get.dart';

import '../../../core/utils/navigation_services.dart';
import '../screen/products.of.category.screen.dart';

class CategoryController extends GetxController {
  ProductInteractorImpl service = ProductInteractorImpl();

  late List<Product> products;

  List<Category> categories =
      ControllerHelpers.find<HomeController>().categoriesList;

  late List<Category> foundCategories;

  bool loadingProductsKey = true;

  @override
  void onInit() {
    foundCategories = categories;
    update(['categories']);
    super.onInit();
  }

  getProductsOfCategory(int id) async {
    products = await service.getProductsByCategory(id);
    loadingProductsKey = false;
    update();
  }

  void onCategoryPressed(int id) {
    getProductsOfCategory(id);
    NavigationServices.to(ProductsOfCategory(categoryId: id));
  }

  void filterCategories(String title) {
    List<Category> results = [];
    if (title.isEmpty || title == '') {
      results = categories;
    } else {
      results = categories
          .where((element) => element.name
              .toString()
              .toLowerCase()
              .contains(title.toLowerCase()))
          .toList();
    }
    foundCategories = results;
    update(['categories']);
  }
}
