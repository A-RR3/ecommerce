import 'package:ecommerce/feasures/registration/controllers/signin.controller.dart';
import 'package:ecommerce/feasures/registration/screens/signup.screen.dart';
import 'package:ecommerce/feasures/registration/widgets/checkbox_section.dart';
import 'package:ecommerce/feasures/registration/widgets/circle.widget.dart';
import 'package:ecommerce/feasures/registration/widgets/label.dart';
import 'package:ecommerce/feasures/registration/widgets/botton.widget.dart';
import 'package:ecommerce/feasures/registration/widgets/my.text.form.field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SignInForm extends StatelessWidget {
  SignInForm({super.key}) : _controller = Get.put(SignInController());
  final SignInController _controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        // Form(
        // key: _key,
        // child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Label(text: 'Email Address'),
             MyTextFormField(hint: 'e.g name@example.com',controller: _controller.emailController,),
            const Gap(20),
            const Label(text: 'Password'),
            TextField(
              controller: _controller.passwordControlelr,
              keyboardType: TextInputType.visiblePassword,
              obscureText: _controller.passwordInVisible,
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
          // )
        ),
        const Gap(20),
        Obx(
          () => _controller.isLoading.value
              ? const CircularProgressIndicator()
              : MyBotton(name: 'Login', onPress: _controller.onSignIn),
        ),
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
                child: TextButton(
                  onPressed: () => Get.to(const SignUPScreen()),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 15, color: Colors.purple[900]),
                  ),
                ))
          ],
        )
      ]),
    );
  }
}
