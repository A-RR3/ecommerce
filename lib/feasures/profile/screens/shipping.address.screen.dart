import 'package:ecommerce/core/utils/extensions.dart';
import 'package:ecommerce/widgets/default.app.bar.widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const DefaultAppBar(title: 'Shipping Address'),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Center(
              child: Text(
                'Your Shipping Addresses',
                style: context.textTheme.bodySmall,
              ),
            ),
            const Gap(10),
            Expanded(
              child: ListView.separated(
                itemCount: 3,
                itemBuilder: (context, index) => Card(
                  elevation: 2,
                  shadowColor: context.colorScheme.shadow,
                  surfaceTintColor: Colors.white,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: const SizedBox(
                        width: 20,
                        child: Icon(
                          Icons.location_on_outlined,
                          size: 30,
                        ),
                      ),
                      title: Text('Joen Doe, +961-12345678',
                          style: context.textTheme.headlineSmall),
                      subtitle: Text(
                        softWrap: true,
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                        style: context.textTheme.bodySmall,
                      ),
                      isThreeLine: true,
                    ),
                  ),
                ),
                separatorBuilder: (_, __) => const SizedBox(height: 10),
              ),
            )
          ],
        ),
      )),
    );
  }
}
