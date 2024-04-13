import 'package:ecommerce/core/utils/controller.helpers.dart';
import 'package:ecommerce/feasures/categories/controller/category.controller.dart';
import 'package:ecommerce/feasures/categories/widgets/category.item.dart';
import 'package:ecommerce/widgets/bottom.nav.bar.dart';
import 'package:ecommerce/widgets/default.app.bar.widget.dart';
import 'package:ecommerce/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key})
      : _controller = ControllerHelpers.inject(CategoryController());
  final CategoryController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: 'Categories',
      ),
      bottomNavigationBar: BottomeNavBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            MySearchBar(
              hint: "Search Category",
              onChanged: (value) => _controller.filterCategories(value),
            ),
            Expanded(
                child: GetBuilder<CategoryController>(
              id: 'categories',
              builder: (_) => GridView.builder(
                itemCount: _controller.foundCategories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 3,
                    childAspectRatio: 1),
                itemBuilder: (context, index) {
                  return CategoryItem(
                      category: _controller.foundCategories[index]);
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
