import 'package:ecommerce/feasures/home/widgets/label_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CheckoutLabel(
          leadingLable: 'Payment Method',
        ),
        const Gap(10),
        SizedBox(
          height: 60,
          width: Get.width,
          child: Row(children: [
            Expanded(
                child: SizedBox(
              width: double.infinity,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    color: Colors.grey[200],
                    padding: const EdgeInsets.all(10),
                    width: 90,
                    child: Image.asset(
                      "assets/images/paypal-logo.png",
                    ),
                  ),
                ),
                separatorBuilder: (_, __) => const SizedBox(
                  width: 10,
                ),
              ),
            ))
          ]),
        )
      ],
    );
  }
}
