import 'package:ecommerce/feasures/products/widgets/bottom.sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

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
                    onPressed: () => Get.back(),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Colors.grey,
                    )),
              ),
            ),
            const DetailsBottomSheet()
          ],
        ),
      ),
    );
  }
}
