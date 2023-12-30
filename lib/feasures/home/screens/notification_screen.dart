import 'package:ecommerce/feasures/home/screens/your_activity_screen.dart';
import 'package:ecommerce/feasures/home/widgets/promotions_widget.dart';
import 'package:ecommerce/widgets/default.app.bar.widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: DefaultAppBar(title: 'Notifications'),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [Promotions(), Gap(10), YourActivity()],
          ),
        ),
      ),
    );
  }
}
