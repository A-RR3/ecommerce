import 'dart:async';

import 'package:ecommerce/core/utils/extensions.dart';
import 'package:ecommerce/feasures/login/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:svg_flutter/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLogged = false;

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 8),
      () async {
        await Navigator.of(context).push(PageTransition(
            child: const SignInScreen(),
            type: PageTransitionType.fade,
            duration: const Duration(seconds: 3)));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned.fill(
                child:
                    SvgPicture.asset("assets/images/bg.svg", fit: BoxFit.fill)),
            SafeArea(
              child: SizedBox(
                width: context.deviceSize.width,
                child: Column(children: [
                  const Spacer(),
                  SizedBox(
                    height: context.deviceSize.height * .4,
                    width: context.deviceSize.height * .4,
                    child: Image.asset("assets/images/shopping.png",
                        fit: BoxFit.fill),
                  ).animate().fade(
                      begin: .1, end: .8, duration: const Duration(seconds: 2)),
                  Text(
                    'Ecommerce UI Theme',
                    style:
                        GoogleFonts.lobster(color: Colors.white, fontSize: 35),
                  ).animate().slideY(
                      begin: -1, end: 0, duration: const Duration(seconds: 3)),
                  const Spacer(
                    flex: 2,
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
