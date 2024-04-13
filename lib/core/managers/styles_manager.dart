import 'package:ecommerce/core/managers/color_manager.dart';
import 'package:ecommerce/core/managers/font_manager.dart';
import 'package:flutter/material.dart';


TextStyle _gettextstyle(double fontSize, Color color, FontWeight fontWeight, String family ) =>
    TextStyle(
        fontFamily: family,
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight);

// regular style
TextStyle getRegularStyle(
        {double fontsize = FontSize.s14, Color color = ColorManager.black}) =>
    _gettextstyle(fontsize, color, FontWeightManager.regular, FontFamilyManager.manropeRegular);

//bold style
TextStyle getBoldStyle(
        {double fontsize = FontSize.s18, Color color = ColorManager.black}) =>
    _gettextstyle(fontsize, color, FontWeightManager.bold, FontFamilyManager.manropeBold);

// semibold style
TextStyle getSimiBoldStyle(
        {double fontsize = FontSize.s16, Color color = ColorManager.black}) =>
    _gettextstyle(fontsize, color, FontWeightManager.semibold,FontFamilyManager.manropeSemiBold);
