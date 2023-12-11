import 'package:ecommerce/feasures/profile/my_cards_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShadowContainer extends StatelessWidget {
  const ShadowContainer({super.key, required this.widget});
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(const MyCardsScreen()),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 3),
                    blurRadius: 5,
                    spreadRadius: -5,
                    color: Theme.of(context).colorScheme.shadow),
              ]),
          child: widget),
    );
  }
}
