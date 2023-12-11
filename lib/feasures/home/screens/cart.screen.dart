import 'package:ecommerce/feasures/home/home.controller.dart';
import 'package:ecommerce/feasures/home/screens/check_out_screen.dart';
import 'package:ecommerce/widgets/default.app.bar.widget.dart';
import 'package:ecommerce/feasures/home/widgets/labeled.price.widget.dart';
import 'package:ecommerce/feasures/home/widgets/my_material_botton.dart';
import 'package:ecommerce/widgets/product.item.widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DefaultAppBar(title: 'Your Cart'),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    '5 Products',
                  ),
                ),
                const Gap(20),
                Expanded(
                  child: GetBuilder<HomeController>(
                      builder: (controller) => ListView.separated(
                          separatorBuilder: (_, __) =>
                              const SizedBox(height: 10),
                          itemCount: controller.productsList.length,
                          itemBuilder: (context, index) => ProductCard(
                                title: controller.productsList[index].name,
                                subTitle: controller.productsList[index].price
                                    .toString(),
                                imagePath: "assets/images/computer.jpg",
                                trailing: Column(
                                  children: <Widget>[
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.add)),
                                    const Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.remove)),
                                  ],
                                ),
                              ))),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            LabeledPrice(title: 'Sub Total', price: '\$154'),
                            Divider(),
                            LabeledPrice(title: 'Total', price: '\$254'),
                          ],
                        ),
                      ),
                      Flexible(
                          child: MyMaterialBotton(
                              screen: CheckoutScreen(), title: 'Check Out'))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
