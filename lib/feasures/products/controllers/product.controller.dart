import 'package:ecommerce/feasures/home/home.controller.dart';
import 'package:ecommerce/feasures/products/widgets/bottom.sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../domain/entities/products.entity.dart';

class ProductController extends GetxController {
  List<Product> filteredProducts = [];

  @override
  void onInit() {
    filteredProducts = Get.find<HomeController>().productsList;
    super.onInit();
  }

  Widget? get openDetailsBottomSheet => const DetailsBottomSheet();
}
