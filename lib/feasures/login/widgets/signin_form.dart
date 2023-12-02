import 'package:ecommerce/feasures/login/controllers/signin.controller.dart';
import 'package:ecommerce/feasures/login/widgets/checkbox_section.dart';
import 'package:ecommerce/feasures/login/widgets/circle.widget.dart';
import 'package:ecommerce/feasures/login/widgets/label.dart';
import 'package:ecommerce/feasures/login/widgets/login.widget.dart';
import 'package:ecommerce/feasures/login/widgets/my.text.form.field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SignInForm extends StatelessWidget {
  SignInForm({super.key}) : _controller = Get.put(SignInController());
  final SignInController _controller;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Form(
          // key: _key,
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Label(text: 'Email Address'),
          MyTextFormField(hint: 'e.g name@example.com'),
          const Gap(20),
          const Label(text: 'Password'),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            obscuringCharacter: '*',
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                labelStyle: const TextStyle(shadows: [BoxShadow()]),
                hintText: 'e.g ***********',
                hintStyle: Theme.of(context).textTheme.displaySmall,
                errorStyle: TextStyle(
                    fontSize: 12, color: Theme.of(context).colorScheme.error),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide.none),
                filled: true,
                fillColor:
                    Theme.of(context).colorScheme.shadow.withOpacity(.05)),
          ),
          const Gap(20),
          const CheckBoxSection()
        ],
      )),
      const Gap(20),
      const LoginBotton(),
      const Gap(20),
      const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Circle(path: "assets/icons/google.svg"),
          Gap(10),
          Circle(
            path: "assets/icons/facebook.svg",
          )
        ],
      ),
      const Gap(20),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Dont have account?"),
          TextButton(
              onPressed: () {},
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 15, color: Colors.purple[900]),
              ))
        ],
      )
    ]);
  }
}
