import 'package:ecommerce/core/utils/controller.helpers.dart';
import 'package:ecommerce/feasures/categories/controller/category.controller.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../../domain/entities/category.entity.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () => ControllerHelpers.find<CategoryController>()
              .onCategoryPressed(category.id!),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: category.image,
                imageErrorBuilder: (BuildContext context, Object error,
                    StackTrace? stackTrace) {
                  return Center(
                    child: Container(color: Colors.grey),
                  );
                },
                fit: BoxFit.fill,
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            category.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
