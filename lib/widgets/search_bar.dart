import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
    required this.hint,
  });
  final String hint;

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
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(fontSize: 16),
            icon: SvgPicture.asset("assets/icons/search.svg"),
            border: InputBorder.none),
      ),
    );
  }
}
