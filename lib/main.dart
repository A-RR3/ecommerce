import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/home_screen.dart';
import 'package:ecommerce/screens/screen1.dart';
import 'package:ecommerce/screens/splash_screen.dart';
import 'package:ecommerce/screens/signin_screen.dart';
import 'package:ecommerce/screens/stack.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: bgColor),
      home:  StackSceen(),
    );
  }
}
