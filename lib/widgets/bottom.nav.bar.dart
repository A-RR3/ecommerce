import 'package:ecommerce/feasures/home/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomeNavBar extends StatelessWidget {
  BottomeNavBar({super.key})
      : _homeController = Get.find();
  final HomeController _homeController;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'nav bar',
      builder: (_) => BottomNavigationBar(
        currentIndex: _homeController.currentIndex,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor:
            Theme.of(context).colorScheme.shadow.withOpacity(.3),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          _homeController.setSelectedIndex(value);
          _homeController.viewCurrentPage(value);
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Categories',
            icon: Icon(Icons.table_rows),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Liked',
            icon: Icon(Icons.favorite_border),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person_outline_sharp),
          ),
        ],
      ),
    );
  }
}
