import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  const Label({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Text(text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.grey[600], fontWeight: FontWeight.w500)),
    );
  }
}
