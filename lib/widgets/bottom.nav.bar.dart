import 'package:ecommerce/feasures/home/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomeNavBar extends StatelessWidget {
  BottomeNavBar({super.key}) : _homeController = Get.put(HomeController());
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
          debugPrint('$value');
          _homeController.setSelectedIndex(value);
          _homeController.viewCurrentPage(value);
        },
        items: [
          BottomNavigationBarItem(
            label: _homeController.currentIndex == 0 ? 'Home' : '',
            icon: const Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: _homeController.currentIndex == 1 ? 'Categories' : '',
            icon: const Icon(Icons.table_rows),
          ),
          BottomNavigationBarItem(
            label: _homeController.currentIndex == 2 ? 'Search' : '',
            icon: const Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: _homeController.currentIndex == 3 ? 'Liked' : '',
            icon: const Icon(Icons.favorite_border),
          ),
          BottomNavigationBarItem(
            label: _homeController.currentIndex == 4 ? 'Profile' : '',
            icon: const Icon(Icons.person_outline_sharp),
          ),
        ],
      ),
    );
  }
}
