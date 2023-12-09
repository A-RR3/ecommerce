import 'package:ecommerce/data/shared.preferences.dart';
import 'package:ecommerce/feasures/home/home.screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPref.init();
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
                brightness: Brightness.light,
                seedColor: Colors.white,
                primary: const Color.fromARGB(255, 255, 94, 244),
                background: Colors.white,
                secondary: Colors.black,
                surface: Colors.white60,
                error: Colors.red,
                shadow: Colors.grey[700]),
            textTheme: TextTheme(
                headlineMedium:
                    const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                headlineSmall:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                displaySmall: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).hintColor))),
        home: HomeScreen()
        // home: SharedPref.prefs.getBool('loggedIn')!
        //     ? HomeScreen()
        //     : const SplashScreen()
        );
  }
}
