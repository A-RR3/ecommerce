import 'package:ecommerce/feasures/login/controllers/signin.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckBoxSection extends StatelessWidget {
  const CheckBoxSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                GetBuilder<SignInController>(
                  id: 'checkbox',
                  builder: (_) => Checkbox(
                      semanticLabel: 'Remember me',
                      value: Get.find<SignInController>().isChecked,
                      onChanged: (value) {
                        Get.find<SignInController>().checkBoxValue(value!);
                      }),
                ),
                Text(
                  'Remember me',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(fontSize: 14),
                ),
              ],
            )),
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            'Forgot Password?',
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(fontSize: 14),
          ),
        )
      ],
    );
  }
}
