import 'package:ecommerce/feasures/login/controllers/signin.controller.dart';
import 'package:ecommerce/feasures/login/controllers/signup.controller.dart';
import 'package:ecommerce/feasures/login/widgets/checkbox_section.dart';
import 'package:ecommerce/feasures/login/widgets/circle.widget.dart';
import 'package:ecommerce/feasures/login/widgets/label.dart';
import 'package:ecommerce/feasures/login/widgets/botton.widget.dart';
import 'package:ecommerce/feasures/login/widgets/my.text.form.field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key}) : _controller = Get.put(SignUpController());
  final SignUpController _controller;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Form(
          // key: _key,
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Label(text: 'Name'),
          MyTextFormField(hint: 'Please Enter Your name'),
          Gap(20),
          Label(text: 'Email'),
          MyTextFormField(hint: 'Please Enter Your email'),
          Gap(20),
          Label(text: 'Password'),
          MyTextFormField(hint: 'Please Enter Your password'),
        ],
      )),
      const Gap(20),
      MyBotton(
        name: 'Sign up',
        onPress: () {},
      ),
      const Gap(20),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Already have an account?"),
          TextButton(
              onPressed: () {},
              child: Text(
                'Sign in',
                style: TextStyle(
                    fontSize: 15, color: Theme.of(context).colorScheme.primary),
              ))
        ],
      )
    ]);
  }
}
