import 'package:ecommerce/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 14,
                spreadRadius: -20,
                color: shadowColor)
          ]),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search Product",
            icon: SvgPicture.asset("assets/icons/search.svg"),
            border: InputBorder.none),
      ),
    );
  }
}
