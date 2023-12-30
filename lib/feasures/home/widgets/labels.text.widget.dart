import 'package:flutter/cupertino.dart';

import '../../../core/managers/styles_manager.dart';

class Label extends StatelessWidget {
  const Label({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: getRegularStyle(fontsize: 18),
    );
  }
}
