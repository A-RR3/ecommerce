import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileOptions {
  final IconData icon;
  final String name;

  ProfileOptions({required this.icon, required this.name});
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
}
