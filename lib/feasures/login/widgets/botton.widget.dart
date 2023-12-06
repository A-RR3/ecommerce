import 'package:flutter/material.dart';

class MyBotton extends StatelessWidget {
  const MyBotton({super.key, required this.name, required this.onPress});
  final String name;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: MaterialButton(
          onLongPress: onPress,
          height: 40,
          color: Theme.of(context).colorScheme.primary,
          onPressed: onPress,
          child: Text(
            name,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ))
      ],
    );
  }
}
