import 'package:ecommerce/screens/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});
  Route _buildRoute() {
    return PageRouteBuilder(
      // pageBuilder: (context, animation, secondaryAnimation) {
      //   return const Screen2();
      // },

      // transitionsBuilder: (context, animation, secondaryAnimation, child) {
      //   const begin = Offset(1.0, 0.0);
      //   const end = Offset.zero;
      //   const curve = Curves.easeInOutCirc;

      //   var tween =
      //       Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      //   var offsetAnimation = animation.drive(tween);

      //   return SlideTransition(
      //     position: offsetAnimation,
      //     child: child,
      //   );
      // },
      // transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) => const Screen2(),
      transitionDuration: const Duration(seconds: 2),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        //Mix
        return SlideTransition(
          position: animation
              .drive(Tween(begin: const Offset(-1, 0), end: Offset.zero)),
          child: FadeTransition(
              opacity: animation.drive(
                Tween(begin: 0.0, end: 1.0),
              ),
              child: child),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
          onPressed: () => Navigator.push(context, _buildRoute()),
          child: const Text('go to screen2'),
        ),
      ),
    );
  }
}
