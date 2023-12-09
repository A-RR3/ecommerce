import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LabeledPrice extends StatelessWidget {
  const LabeledPrice({super.key, required this.title, required this.price});
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(title), const Gap(10), Text(price)],
    );
  }
}
