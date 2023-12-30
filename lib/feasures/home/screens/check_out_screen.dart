import 'package:ecommerce/feasures/home/screens/payment_screen.dart';
import 'package:ecommerce/widgets/default.app.bar.widget.dart';
import 'package:ecommerce/feasures/home/widgets/label_widget.dart';
import 'package:ecommerce/feasures/home/widgets/my_material_botton.dart';
import 'package:ecommerce/feasures/home/widgets/payment_method.dart';
import 'package:ecommerce/feasures/home/widgets/your_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const DefaultAppBar(title: 'Check Out'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const CheckoutLabel(
                    leadingLable: 'Your Address',
                    trailingText: 'change Address'),
                const Gap(10),
                const Card(
                    surfaceTintColor: Colors.white,
                    color: Colors.white,
                    elevation: 3,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Text(
                              softWrap: true,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              'Joen Doe, +961-12345678 \nAaron Larson, 123 Center Ln.\n Apartment 34\n Plymouth, MN 55441'),
                        ],
                      ),
                    )),
                const Gap(15),
                const CheckoutLabel(
                    leadingLable: 'Shipping Mode', trailingText: 'change Mode'),
                const Gap(10),

                Card(
                    surfaceTintColor: Colors.white,
                    color: Colors.white,
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Text('Flat Rate',
                              style: Theme.of(context).textTheme.bodySmall),
                          Text('\$20',
                              style: Theme.of(context).textTheme.bodySmall)
                        ],
                      ),
                    )),
                const Gap(20),
              ],
            ),
          ),
          const Expanded(
              child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  YourCart(),
                  Gap(20),
                  PaymentMethod(),
                ],
              ),
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const Divider(),
                      const Text('\$ 170.0')
                    ],
                  ),
                ),
                const Flexible(
                    flex: 2,
                    child: MyMaterialBotton(
                      screen: PaymentScreen(),
                      title: 'Pay Now',
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
