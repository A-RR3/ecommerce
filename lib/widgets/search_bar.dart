import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
    required this.hint, required this.onChanged,
  });
  final String hint;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(30.0)),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 2),
                blurRadius: 5,
                spreadRadius: -4,
                color: Theme.of(context).colorScheme.shadow)
          ]),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: hint,
            icon: SvgPicture.asset("assets/icons/search.svg"),
            ),
      ),
    );
  }
}
