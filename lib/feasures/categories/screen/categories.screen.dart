import 'package:ecommerce/constants.dart';
import 'package:ecommerce/feasures/categories/widgets/category.item.dart';
import 'package:ecommerce/feasures/home/home.controller.dart';
import 'package:ecommerce/widgets/bottom.nav.bar.dart';
import 'package:ecommerce/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key}) : _controller = Get.find<HomeController>();
  final HomeController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Center(child: Text('Categories')),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, color: blackColor, fontSize: 20),
      ),
      bottomNavigationBar: BottomeNavBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const MySearchBar(hint: "Search Category"),
            Expanded(
              child: GridView.builder(
                itemCount: _controller.categoriesList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    childAspectRatio: 1 / .65),
                itemBuilder: (context, index) {
                  return CategoryItem(
                      category: _controller.categoriesList[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
