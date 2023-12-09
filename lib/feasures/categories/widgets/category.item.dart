import 'package:flutter/material.dart';

import '../../../domain/entities/category.entity.dart';

class CategoryItem extends StatelessWidget {
   const CategoryItem({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset("assets/images/computer.jpg", fit: BoxFit.fill),
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
