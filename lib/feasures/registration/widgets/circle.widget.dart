import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Circle extends StatelessWidget {
  const Circle({super.key, required this.path, this.color});
  final String path;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).colorScheme.shadow,
                offset: const Offset(0, 1),
                blurRadius: 2,
                spreadRadius: 0,
                blurStyle: BlurStyle.inner)
          ]),
      child: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(path),
      ),
    );
  }
}
