import 'package:flutter/material.dart';

class BadgedContainer extends StatelessWidget {
  const BadgedContainer({super.key, required this.icon, this.onTap});
  final Icon icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Badge(
      label: const Text('5'),
      child: Material(
        child: InkWell(
          onTap: onTap,
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
            child: icon,
          ),
        ),
      ),
    );
  }
}
