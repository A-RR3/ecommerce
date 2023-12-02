import 'package:ecommerce/feasures/login/screens/signin_screen.dart';
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
      theme: ThemeData(
          primaryTextTheme:
              const TextTheme(displaySmall: TextStyle(color: Colors.black)),
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.purple.shade700,
              background: Colors.white,
              secondary: Colors.white38,
              surface: Colors.white60,
              error: Colors.red,
              shadow: Colors.grey[700]),
          textTheme: TextTheme(
              headlineMedium:
                  TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              headlineSmall:
                  TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              displaySmall: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).hintColor))),
      home: const SignInScreen(),
    );
  }
}
