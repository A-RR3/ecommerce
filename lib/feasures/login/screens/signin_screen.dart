import 'package:ecommerce/feasures/login/widgets/signin_form.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                    Text('Welcome back!',
                        style: Theme.of(context).textTheme.headlineMedium),
                    Text('Login to your existing account',
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
            Expanded(child: SignInForm())
          ]),
        ),
      ),
    );
  }
}
