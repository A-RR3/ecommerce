import 'package:ecommerce/core/utils/extensions.dart';
import 'package:ecommerce/feasures/profile/controllers/profile.controller.dart';
import 'package:ecommerce/widgets/bottom.nav.bar.dart';
import 'package:ecommerce/widgets/shadow.container.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key}) : _controller = Get.put(ProfileController());
  final ProfileController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomeNavBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: context.deviceSize.height * .25,
              width: context.deviceSize.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox.square(
                    dimension: context.deviceSize.height * .15,
                    child: Image.asset(
                      "assets/images/profile.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Text(
                    'Arwa Arafa',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Expanded(
              child: GetBuilder<ProfileController>(
                  builder: (_) => ListView.separated(
                        itemCount: _controller.profileOptions.length,
                        itemBuilder: (context, index) => ShadowContainer(
                            //or card
                            onPress: () => _controller.navigateToScreen(index),
                            widget: ListTile(
                              dense: false,
                              leading:
                                  Icon(_controller.profileOptions[index].icon),
                              title:
                                  Text(_controller.profileOptions[index].name),
                              trailing: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 20,
                              ),
                            )),
                        separatorBuilder: (_, __) => const SizedBox(height: 10),
                      )),
            )
          ],
        ),
      )),
    );
  }
}
