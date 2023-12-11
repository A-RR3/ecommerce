import 'package:ecommerce/feasures/home/screens/home.screen.dart';
import 'package:ecommerce/widgets/default.app.bar.widget.dart';
import 'package:ecommerce/feasures/home/widgets/my_material_botton.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: 'Payment'),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(30)),
                child: const Icon(
                  Icons.check,
                  size: 30,
                ),
              ),
              const Gap(15),
              const Text('Payment Successful!', style: TextStyle(fontSize: 20)),
              const Gap(15),
              const Text(
                'Your order will be processed and sent to you as soon as possible',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const Gap(15),
              MyMaterialBotton(screen: HomeScreen(), title: 'Continue Shopping')
            ],
          ),
        ),
      ),
    );
  }
}
