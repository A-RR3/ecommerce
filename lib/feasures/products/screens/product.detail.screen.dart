import 'package:ecommerce/core/utils/navigation_services.dart';
import 'package:ecommerce/domain/entities/products.entity.dart';
import 'package:ecommerce/feasures/products/controllers/ProductController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatelessWidget {
  ProductDetailsScreen({super.key, required this.product});
  final Product product;
  final controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: Get.height * .45,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(),
                color: Color(0xFFF5CEB8),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    alignment: Alignment.centerLeft,
                    image: AssetImage('assets/images/mac.jpg')),
              ),
            ),
            Positioned(
              left: 20,
              top: 20,
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton.filled(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white)),
                    onPressed: () => NavigationServices.back(),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Colors.grey,
                    )),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: controller.openDetailsBottomSheet)
          ],
        ),
      ),
    );
  }
}
