import 'package:ecommerce/feasures/registration/screens/signin_screen.dart';
import 'package:ecommerce/feasures/registration/screens/splash.screen.dart';
import 'package:get/get.dart';


class AppRoutesManager {
  static const String first = "/";
  static const String signIn = "/login";
  static const String home = "/home";
  static const String signUp = "/signUp";
  static const String categories = "/categories";
  static const String products = "/products";
  // static const String logo = "$imagepath/logo.png";
  // static const String logo = "$imagepath/logo.png";
  // static const String logo = "$imagepath/logo.png";
}

List<GetPage<dynamic>>? approute = [
  GetPage(name: AppRoutesManager.first, page: () => const SplashScreen()),
  GetPage(name: AppRoutesManager.signIn, page: () => const SignInScreen()),
];

