import 'package:ecommerce/feasures/home/home.controller.dart';
import 'package:ecommerce/widgets/bottom.nav.bar.dart';
import 'package:ecommerce/widgets/default.app.bar.widget.dart';
import 'package:ecommerce/widgets/product.item.widget.dart';
import 'package:ecommerce/widgets/search.product.header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DefaultAppBar(
            title : 'Wish List'
        ),
        bottomNavigationBar: BottomeNavBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SearchProductHeader(onChanged: (value){}),
              Expanded(
                child: GetBuilder<HomeController>(
                    builder: (controller) => ListView.separated(
                        separatorBuilder: (_, __) => const SizedBox(height: 10),
                        itemCount: 3,
                        itemBuilder: (context, index) => ProductCard(
                              title: controller.productsList[index].name,
                              subTitle: controller.productsList[index].price
                                  .toString(),
                              imagePath: "assets/images/computer.jpg",
                              trailing: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.shopping_cart_checkout,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  )),
                            ))),
              )
            ],
          ),
        ));
  }
}
