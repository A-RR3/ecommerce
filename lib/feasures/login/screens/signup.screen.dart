import 'package:ecommerce/feasures/login/widgets/signin_form.dart';
import 'package:ecommerce/feasures/login/widgets/signup.form.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUPScreen extends StatelessWidget {
  const SignUPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
          child: Column(children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sign up',
                        style: Theme.of(context).textTheme.headlineMedium),
                    const Gap(10),
                    Text('Please enter your information below to sign up',
                        style: Theme.of(context).textTheme.headlineSmall)
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
            Expanded(child: SignUpForm())
          ]),
        ),
      ),
    );
  }
}
