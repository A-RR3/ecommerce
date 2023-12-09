import 'package:ecommerce/feasures/home/home.controller.dart';
import 'package:ecommerce/widgets/bottom.nav.bar.dart';
import 'package:ecommerce/widgets/search.header.dart';
import 'package:ecommerce/widgets/shadow.container.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchProductScreen extends StatelessWidget {
  const SearchProductScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Center(
            child: Text('Search'),
          ),
        ),
        bottomNavigationBar: BottomeNavBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SearchHeader(
                  widget: Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.center,
                height: 52,
                width: 52,
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
