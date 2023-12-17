import 'package:ecommerce/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({super.key, required this.title, this.width});
  final String title;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontWeight: FontWeight.bold))
        ],
      ),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(Get.height * .1);
}
