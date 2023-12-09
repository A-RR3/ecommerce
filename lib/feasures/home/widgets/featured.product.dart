import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeaturedProduct extends StatelessWidget {
  const FeaturedProduct({super.key, required this.name, required this.price});
  // final Product product;
  final String name;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: Get.height * .3 / 2,
          width: Get.width * .3,
          child: Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) => SizedBox(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        "assets/images/computer.jpg",
                        fit: BoxFit.fill,
                      ),
                    )),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Icon(
                      Icons.favorite_border_outlined,
                      size: 20,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
          width: Get.width * .3,
          child: Text(
            name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text('$price')
      ],
    );
  }
}
