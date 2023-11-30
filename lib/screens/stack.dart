import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StackSceen extends StatelessWidget {
  const StackSceen({super.key});

  @override
  Widget build(BuildContext context) {
    //total heigh and width of our device
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Container(
            height: size.height * .40,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage("assets/images/undraw_pilates_gpdb.png")),
            ),
          ),
          Center(
            child: SizedBox(
              width: size.width * .8,
              height: size.height * .70,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Container(
                  decoration:
                      const BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 17),
                        blurRadius: 10, //17
                        spreadRadius: -5, //-23
                        color: blackColor)
                  ]),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Spacer(),
                        Text(
                          'You have succesfully changed your password',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(fontSize: 15),
                        ),
                        Image.asset("assets/images/shopping.png"),
                        const Spacer(),
                        MaterialButton(
                          height: 55,
                          color: Colors.purple[900],
                          onPressed: () {},
                          child: const Text(
                            'Back to Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
