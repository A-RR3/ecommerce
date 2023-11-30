import 'package:ecommerce/constants.dart';
import 'package:ecommerce/widgets/signin_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
          child: SizedBox(
            height: Get.height * .4,
            width: Get.width,
            child: Column(children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome back!',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                  color: blackColor,
                                  fontWeight: FontWeight.bold)),
                      Text('Login to your existing account',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: blackColor,
                                  fontWeight: FontWeight.w500))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 150,
                width: 150,
                child:
                    Image.asset("assets/images/shopping.png", fit: BoxFit.fill),
              ),
              const Expanded(child: SignInForm())
            ]),
          ),
        ),
      ),
    );
  }
}
