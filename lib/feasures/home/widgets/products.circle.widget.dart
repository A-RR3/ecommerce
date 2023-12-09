import 'package:flutter/material.dart';

class BadgedContainer extends StatelessWidget {
  const BadgedContainer({super.key, required this.icon});
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Badge(
      label: const Text('5'),
      child: Container(
        alignment: Alignment.center,
        height: 45,
        width: 45,
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
        child:  icon,
      ),
    );
  }
}
