import 'package:ecommerce/core/utils/get_assets.dart';
import 'package:ecommerce/widgets/card.widget.dart';
import 'package:ecommerce/widgets/default.app.bar.widget.dart';
import 'package:flutter/material.dart';

class MyCardsScreen extends StatelessWidget {
  const MyCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DefaultAppBar(title: 'My Cards'),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyCard(
              cardColor: const Color(0xFF303030),
              assetColor: Colors.white,
              assetPath: GetAssets.getAssetPath(
                GetAssets.VISA,
                GetAssets.icons,
              ),
            ),
            MyCard(
              assetPath: GetAssets.getAssetPath(
                GetAssets.MASTER_CARD,
                GetAssets.icons,
              ),
            )
          ],
        ));
  }
}
