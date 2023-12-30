import 'package:ecommerce/core/managers/font_manager.dart';
import 'package:ecommerce/core/managers/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class  DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const  DefaultAppBar({super.key, required this.title}) : withActions =false;
  final String title;
  final bool withActions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
              style: getSimiBoldStyle(fontsize: FontSize.s18))
        ],
      ),

      actions: [ withActions ?IconButton(onPressed: () {}, icon: const Icon(Icons.add)):const Text('')],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(Get.height * .1);
}
