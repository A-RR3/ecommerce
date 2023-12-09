import 'package:flutter/material.dart';

class ProductsCircle extends StatelessWidget {
  const ProductsCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          height: 52,
          width: 52,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 2),
                    blurRadius: 20,
                    spreadRadius: -15,
                    blurStyle: BlurStyle.outer,
                    color: Theme.of(context).colorScheme.secondary)
              ]),
          child: const Icon(Icons.notifications),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(4.0),
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: const Text(
              '5',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
