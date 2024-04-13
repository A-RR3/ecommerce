import 'package:ecommerce/core/utils/extensions.dart';
import 'package:ecommerce/core/utils/loading_state_handler.dart';
import 'package:ecommerce/core/utils/navigation_services.dart';
import 'package:ecommerce/data/db/online/dio_helper.dart';
import 'package:ecommerce/feasures/categories/widgets/category.item.dart';
import 'package:ecommerce/feasures/home/home.controller.dart';
import 'package:ecommerce/feasures/home/screens/cart.screen.dart';
import 'package:ecommerce/feasures/home/screens/notification_screen.dart';
import 'package:ecommerce/feasures/home/widgets/featured.product.dart';
import 'package:ecommerce/feasures/home/widgets/products.circle.widget.dart';
import 'package:ecommerce/feasures/products/screens/product.detail.screen.dart';
import 'package:ecommerce/feasures/registration/widgets/label.dart';
import 'package:ecommerce/widgets/bottom.nav.bar.dart';
import 'package:ecommerce/widgets/search.product.header.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../domain/entities/category.entity.dart';

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
            SearchProductHeader(
              onChanged: (value) {},
              cart: BadgedContainer(
                  onTap: () =>
                      NavigationServices.navigateTo(const CartScreen()),
                  icon: const Icon(Icons.shopping_cart_checkout_rounded)),
              notifications: BadgedContainer(
                  onTap: () =>
                      NavigationServices.navigateTo(const NotificationScreen()),
                  icon: const Icon(Icons.notifications)),
            ),
            Expanded(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Label(text: "Special for you"),
                  const Gap(10),
                  SizedBox(
                    height: context.deviceSize.height * .2,
                    width: context.deviceSize.width,
                    child: Row(children: [
                      Expanded(
                          child: SizedBox(
                              width: double.infinity,
                              child: FutureBuilder(
                                  future: DioHelper.dio.get('categories'),
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState ==
                                        ConnectionState.waiting) {
                                      return const Center(
                                          child: CircularProgressIndicator());
                                    } else if (snapshot.data!.statusCode ==
                                        200) {
                                      List<Category> categoriesList = [];
                                      for (var element in snapshot.data!.data) {
                                        categoriesList
                                            .add(Category.fromMap(element));
                                      }
                                      return ListView.separated(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: categoriesList.length,
                                          itemBuilder: (context, index) =>
                                              CategoryItem(
                                                  category:
                                                      categoriesList[index]),
                                          separatorBuilder: (_, __) =>
                                              const SizedBox(
                                                width: 15,
                                              ));
                                    }
                                    throw Exception('error somewhere');
                                  })))
                    ]),
                  ),
                  const Gap(20),
                  const Label(text: "Featured Products"),
                  const Gap(10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: GetBuilder<HomeController>(
                                builder: (_) => SizedBox(
                                      height: context.deviceSize.height * .25,
                                      width: context.deviceSize.width,
                                      child: loadingState(
                                          _homeController.loadingKey,
                                          ListView.separated(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 5,
                                            itemBuilder: (context, index) =>
                                                InkWell(
                                              onTap: () =>
                                                  NavigationServices.navigateTo(
                                                      ProductDetailsScreen(
                                                product: _homeController
                                                    .productsList[index],
                                              )),
                                              child: FeaturedProduct(
                                                  name: _homeController
                                                      .productsList[index].name,
                                                  price: _homeController
                                                      .productsList[index]
                                                      .price,
                                                  image: _homeController
                                                      .productsList[index]
                                                      .images[0]),
                                            ),
                                            separatorBuilder: (_, __) =>
                                                const SizedBox(
                                              width: 15,
                                            ),
                                          )),
                                    )))
                      ]),

                  // const Gap(10),
                  const Label(text: "Best Selling Products"),
                  const Gap(10),
                  // FutureBuilder(
                  //   future: ProductInteractorImpl().getAllProducts(),
                  //   builder: (context, snapshot) {
                  //     if (snapshot.connectionState == ConnectionState.waiting) {
                  //       return const Center(child: CircularProgressIndicator());
                  //     } else if (snapshot.hasData) {
                  //       return Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: List.generate(
                  //           3,
                  //           (index) =>
                  //               InkWell(
                  //                 onTap: () => NavigationServices.navigateTo(
                  //                     ProductDetailsScreen(
                  //                   product:
                  //                       _homeController.productsList[index],
                  //                 )),
                  //                 child: FeaturedProduct(
                  //                     name: _homeController
                  //                         .productsList[index].name,
                  //                     price: _homeController
                  //                         .productsList[index].price,
                  //                     image: _homeController
                  //                         .productsList[index].images[0]),
                  //               ),
                  //         ),
                  //       );
                  //     }
                  //     throw Exception('Empty products list have returned');
                  //   },
                  // )

                  GetBuilder<HomeController>(
                    builder: (_) => _homeController.loadingKey
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                                3,
                                (index) => InkWell(
                                      onTap: () =>
                                          NavigationServices.navigateTo(
                                              ProductDetailsScreen(
                                        product:
                                            _homeController.productsList[index],
                                      )),
                                      child: FeaturedProduct(
                                          name: _homeController
                                              .productsList[index].name,
                                          price: _homeController
                                              .productsList[index].price,
                                          image: _homeController
                                              .productsList[index].images[0]),
                                    )),
                          ),
                  ),
                ],
              ),
            ))
          ],
        ),
      )),
    );
  }
}
