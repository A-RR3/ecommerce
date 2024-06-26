import 'package:ecommerce/core/utils/extensions.dart';
import 'package:ecommerce/feasures/registration/widgets/botton.widget.dart';
import 'package:flutter/material.dart';

class DetailsBottomSheet extends StatelessWidget {
  const DetailsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
        enableDrag: false,
        backgroundColor: Colors.white,
        onClosing: () {},
        builder: (context) => Container(
              height: context.deviceSize.height * .55,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                children: [
                  const Expanded(
                    child: SizedBox(
                        child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                          Text('details'),
                        ],
                      ),
                    )),
                  ),
                  MyBotton(name: 'Add to chart', onPress: () {})
                ],
              ),
            ));
  }
}
