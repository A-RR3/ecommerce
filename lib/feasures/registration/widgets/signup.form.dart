import 'package:ecommerce/feasures/registration/controllers/signup.controller.dart';
import 'package:ecommerce/feasures/registration/widgets/label.dart';
import 'package:ecommerce/feasures/registration/widgets/botton.widget.dart';
import 'package:ecommerce/feasures/registration/widgets/my.text.form.field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key}) : _controller = Get.put(SignUpController());
  final SignUpController _controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [

        //  Form(
        // key: _key,
        // child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Label(text: 'Name'),
            MyTextFormField(hint: 'Please Enter Your name',controller: _controller.nameControlelr),
            const Gap(20),
            const Label(text: 'Email'),
            MyTextFormField(hint: 'Please Enter Your email',controller: _controller.emailController),
            const Gap(20),
            const Label(text: 'Password'),
            MyTextFormField(hint: 'Please Enter Your password',controller: _controller.passwordControlelr),
          ],
          // )
        ),
        const Gap(20),
        MyBotton(
          name: 'Sign up',
          onPress: () => _controller.onSignUp(),
        ),
        const Gap(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Already have an account?"),
            TextButton(
                onPressed: () {},
                child: TextButton(
                  onPressed: () => Get.back(),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        fontSize: 15,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ))
          ],
        )
      ]),
    );
  }
}
