import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

 

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
                width: Get.width,
                child: Column(children: [
                  const Spacer(),
                  SizedBox(
                    height: Get.height * .4,
                    width: Get.height * .4,
                    child: Image.asset("assets/images/shopping.png",
                        fit: BoxFit.fill),
                  ),
                  Text(
                    'Ecommerce UI Theme',
                    style:
                        GoogleFonts.lobster(color: Colors.white, fontSize: 35),
                  ),
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
