import 'package:ecommerce/core/utils/controller.helpers.dart';
import 'package:ecommerce/feasures/categories/controller/category.controller.dart';
import 'package:ecommerce/feasures/home/home.controller.dart';
import 'package:ecommerce/widgets/product.item.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/search.product.header.dart';

class ProductsOfCategory extends StatelessWidget {
  ProductsOfCategory({super.key, required this.categoryId})
      : _catrgoryController = ControllerHelpers.find<CategoryController>();
  final int categoryId;
  final CategoryController _catrgoryController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(right: 40),
            child: Center(
              child: Text('Search'),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SearchProductHeader(
                  onChanged: (value) => ControllerHelpers.find<HomeController>()
                      .filterProducts(value),
                  filter: Container(
                    padding: const EdgeInsets.all(5),
                    alignment: Alignment.center,
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 2),
                              blurRadius: 20,
                              spreadRadius: -15,
                              blurStyle: BlurStyle.solid,
                              color: Theme.of(context).colorScheme.secondary)
                        ]),
                    child: Icon(
                      Icons.filter_list_rounded,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  )),
              Expanded(
                  child: GetBuilder<CategoryController>(
                builder: (_) => _catrgoryController.loadingProductsKey
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.separated(
                        separatorBuilder: (context, __) =>
                            const SizedBox(height: 10),
                        itemCount: _catrgoryController.products.length,
                        itemBuilder: (context, index) => ProductCard(
                              title: _catrgoryController.products[index].name,
                              subTitle: _catrgoryController
                                  .products[index].price
                                  .toString(),
                              imagePath:
                                  _catrgoryController.products[index].images[0],
                              trailing: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.shopping_cart_checkout,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  )),
                            )),
              ))
            ],
          ),
        ));
  }
}
