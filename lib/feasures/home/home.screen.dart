import 'package:ecommerce/feasures/categories/widgets/category.item.dart';
import 'package:ecommerce/feasures/home/home.controller.dart';
import 'package:ecommerce/feasures/home/widgets/featured.product.dart';
import 'package:ecommerce/feasures/home/widgets/products.circle.widget.dart';
import 'package:ecommerce/widgets/search.header.dart';
import 'package:ecommerce/feasures/products/screens/product.detail.screen.dart';
import 'package:ecommerce/widgets/bottom.nav.bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key}) : _homeController = Get.put(HomeController());
  final HomeController _homeController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomeNavBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SearchHeader(widget: ProductsCircle()),
            Expanded(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Special for you"),
                  const Gap(10),
                  SizedBox(
                    height: Get.height * .2,
                    width: Get.width,
                    child: Row(children: [
                      Expanded(
                          child: SizedBox(
                        width: double.infinity,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: _homeController.categoriesList.length,
                          itemBuilder: (context, index) => CategoryItem(
                              category: _homeController.categoriesList[index]),
                          separatorBuilder: (_, __) => const SizedBox(
                            width: 15,
                          ),
                        ),
                      ))
                    ]),
                  ),
                  const Gap(20),
                  const Text("Featured Products"),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        _homeController.productsList.length,
                        (index) => InkWell(
                              onTap: () => Get.to(ProductDetailsScreen(
                                product: _homeController.productsList[index],
                              )),
                              child: FeaturedProduct(
                                name: _homeController.productsList[index].name,
                                price:
                                    _homeController.productsList[index].price,
                              ),
                            )),
                  ),
                  const Gap(20),
                  const Text("Best Selling Products"),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        _homeController.productsList.length,
                        (index) => InkWell(
                              onTap: () => Get.to(ProductDetailsScreen(
                                product: _homeController.productsList[index],
                              )),
                              child: FeaturedProduct(
                                name: _homeController.productsList[index].name,
                                price:
                                    _homeController.productsList[index].price,
                              ),
                            )),
                  )
                ],
              ),
            ))
          ],
        ),
      )),
    );
  }
}
