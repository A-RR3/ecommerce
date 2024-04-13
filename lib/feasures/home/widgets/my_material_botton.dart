import 'package:ecommerce/core/utils/navigation_services.dart';
import 'package:flutter/material.dart';

class MyMaterialBotton extends StatelessWidget {
  const MyMaterialBotton(
      {super.key, required this.screen, required this.title});

  final Widget screen;
  final String title;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: Theme.of(context).colorScheme.primary,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        onPressed: () => NavigationServices.navigateTo(screen),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 17),
        ));
  }
}
