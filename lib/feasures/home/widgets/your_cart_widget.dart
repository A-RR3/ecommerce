import 'package:ecommerce/core/utils/extensions.dart';
import 'package:ecommerce/feasures/home/widgets/label_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class YourCart extends StatelessWidget {
  const YourCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 10),
          child: CheckoutLabel(
              leadingLable: 'Your Cart', trailingText: 'View All'),
        ),
        const Gap(10),
        SizedBox(
          height: context.deviceSize.height * .15,
          width: context.deviceSize.width,
          child: Row(children: [
            Expanded(
                child: SizedBox(
              width: double.infinity,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: SizedBox.square(
                    dimension: context.deviceSize.width * 0.3,
                    child: Image.asset("assets/images/computer.jpg",
                        fit: BoxFit.fill),
                  ),
                ),
                separatorBuilder: (_, __) => const SizedBox(
                  width: 10,
                ),
              ),
            ))
          ]),
        ),
      ],
    );
  }
}
