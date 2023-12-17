import 'package:ecommerce/core/utils/get_assets.dart';
import 'package:ecommerce/core/utils/navigation_services.dart';
import 'package:ecommerce/feasures/profile/screens/language.screen.dart';
import 'package:ecommerce/feasures/profile/screens/my_cards_screen.dart';
import 'package:ecommerce/feasures/profile/screens/shipping.address.screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileOptions {
  final IconData icon;
  final String name;

  ProfileOptions({required this.icon, required this.name});
}

class LanguagesOptions {
  final String icon;
  final String name;

  LanguagesOptions({required this.icon, required this.name});
}

class ProfileController extends GetxController {
  List<ProfileOptions> profileOptions = [
    ProfileOptions(icon: Icons.person, name: 'My Account'),
    ProfileOptions(icon: Icons.shopping_bag, name: 'My Orders'),
    ProfileOptions(icon: Icons.language_sharp, name: 'Language Settings'),
    ProfileOptions(icon: Icons.location_on_outlined, name: 'Shipping Address'),
    ProfileOptions(icon: Icons.collections_bookmark, name: 'My Cards'),
    ProfileOptions(icon: Icons.settings, name: 'Settings'),
    ProfileOptions(icon: Icons.library_books, name: 'Privacy Policy'),
    ProfileOptions(icon: Icons.image_aspect_ratio_outlined, name: 'FAQ'),
  ];

  void navigateToScreen(int index) {
    switch (index) {
      case 0:
      case 1:
      case 2:
        NavigationServices.navigateTo(const LanguageScreen());
        break;

      case 3:
        NavigationServices.navigateTo(const ShippingAddress());
        break;
      case 4:
        NavigationServices.navigateTo(const MyCardsScreen());
        break;
      case 5:
      case 6:
      default:
        NavigationServices.navigateTo(const LanguageScreen());
    }
  }

  List<LanguagesOptions> languages = [
    LanguagesOptions(icon: GetAssets.USA_FLAG, name: 'English'),
    LanguagesOptions(icon: GetAssets.FRANCE_FLAG, name: 'Frensh'),
    LanguagesOptions(icon: GetAssets.GERMAN_FLAG, name: 'German'),
    LanguagesOptions(icon: GetAssets.CHINA_FLAG, name: 'Chinese'),
    LanguagesOptions(icon: GetAssets.JAPAN_FLAG, name: 'Japanese'),
    LanguagesOptions(icon: GetAssets.TURKEY_FLAG, name: 'Turkish'),
  ];
}
