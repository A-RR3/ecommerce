import 'package:ecommerce/feasures/home/home.controller.dart';
import 'package:ecommerce/widgets/bottom.nav.bar.dart';
import 'package:ecommerce/widgets/search.header.dart';
import 'package:ecommerce/widgets/shadow.container.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Center(
            child: Text('Wish List'),
          ),
        ),
        bottomNavigationBar: BottomeNavBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SearchHeader(),
              Expanded(
                child: GetBuilder<HomeController>(
                    builder: (controller) => ListView.separated(
                        separatorBuilder: (_, __) => const SizedBox(height: 10),
                        itemCount: controller.productsList.length,
                        itemBuilder: (context, index) => ShadowContainer(
                              widget: ListTile(
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                      "assets/images/computer.jpg",
                                      fit: BoxFit.fill),
                                ),
                                title:
                                    Text(controller.productsList[index].name),
                                subtitle: Text(
                                    '${controller.productsList[index].price}'),
                                trailing: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.shopping_cart_checkout,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    )),
                              ),
                            ))),
              )
            ],
          ),
        ));
  }
}
