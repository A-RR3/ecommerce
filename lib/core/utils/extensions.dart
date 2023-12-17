import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension BuildContextExtentions on BuildContext {
  ThemeData get _theme => Theme.of(this);
  TextTheme get textTheme => _theme.textTheme;
  ColorScheme get colorScheme => _theme.colorScheme;
  Size get deviceSize => Get.size;
}
