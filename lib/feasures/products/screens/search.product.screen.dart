import 'package:ecommerce/feasures/home/home.controller.dart';
import 'package:ecommerce/widgets/bottom.nav.bar.dart';
import 'package:ecommerce/widgets/default.app.bar.widget.dart';
import 'package:ecommerce/widgets/product.item.widget.dart';
import 'package:ecommerce/widgets/search.product.header.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SearchProductScreen extends StatelessWidget {
  final HomeController _controller = Get.find<HomeController>();
  SearchProductScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DefaultAppBar(
          title: "Search",
        ),
        bottomNavigationBar: BottomeNavBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SearchProductHeader(
                  onChanged: (value) => _controller.filterProducts(value),
                  filter: InkWell(
                    onTap: _controller.onFilterPressed,
                    child: Container(
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
                    ),
                  )),
              GetBuilder<HomeController>(
                  id: 'filter',
                  builder: (_) => _controller.visibleRangeLabel
                      ? Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: RangeSlider(
                              min: 50,
                              max: 10000,
                              values: _controller.values,
                              labels: _controller.labels,
                              divisions: 30,
                              onChanged: (values) {
                                _controller.filterProductsByPriceRange(values);
                              }),
                        )
                      : const Gap(1)),
              Expanded(
                  child: Obx(
                () => ListView.separated(
                    separatorBuilder: (context, __) =>
                        const SizedBox(height: 10),
                    itemCount: _controller.foundProducts.length,
                    itemBuilder: (context, index) => ProductCard(
                          title: _controller.foundProducts[index].name,
                          subTitle:
                              _controller.foundProducts[index].price.toString(),
                          imagePath: _controller.foundProducts[index].images[0],
                          trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.shopping_cart_checkout,
                                color: Theme.of(context).colorScheme.primary,
                              )),
                        )),
              ))
            ],
          ),
        ));
  }
}
