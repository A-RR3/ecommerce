import 'package:ecommerce/constants.dart';
import 'package:ecommerce/feasures/categories/controller/category.controller.dart';
import 'package:ecommerce/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key}) : _controller = Get.put(CategoryController());
  final CategoryController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Center(child: Text('Categories')),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, color: blackColor, fontSize: 20),
      ),
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
                  return Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/images/computer.jpg",
                            fit: BoxFit.fill),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          _controller.categoriesList[index].name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
