import 'package:ecommerce/core/utils/extensions.dart';
import 'package:ecommerce/core/utils/get_assets.dart';
import 'package:ecommerce/feasures/profile/controllers/profile.controller.dart';
import 'package:ecommerce/widgets/default.app.bar.widget.dart';
import 'package:ecommerce/widgets/shadow.container.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: 'Language'),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const Center(
              child: Text(
                'Select a Language',
              ),
            ),
            const Gap(10),
            Expanded(
              child: GetBuilder<ProfileController>(
                  builder: (controller) => ListView.separated(
                        itemCount: controller.languages.length,
                        itemBuilder: (context, index) => Card(
                          elevation: 2,
                          shadowColor: context.colorScheme.shadow,
                          surfaceTintColor: Colors.white,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: SvgPicture.asset(
                                    GetAssets.getAssetPath(
                                        controller.languages[index].icon,
                                        GetAssets.icons),
                                  ),
                                ),
                                const Gap(20),
                                Text(controller.languages[index].name)
                              ],
                            ),
                          ),
                        ),
                        separatorBuilder: (_, __) => const SizedBox(height: 10),
                      )),
            )
          ],
        ),
      )),
    );
  }
}
