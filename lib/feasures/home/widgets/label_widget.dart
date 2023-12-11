import 'package:flutter/material.dart';

class CheckoutLabel extends StatelessWidget {
  const CheckoutLabel(
      {super.key, required this.leadingLable, this.trailingText});
  final String leadingLable;
  final String? trailingText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leadingLable,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          trailingText ?? '',
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: Colors.grey[300]),
        )
      ],
    );
  }
}
