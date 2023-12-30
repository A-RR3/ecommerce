import 'package:ecommerce/core/managers/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/managers/color_manager.dart';
import 'package:ecommerce/core/managers/styles_manager.dart';
import 'package:ecommerce/core/managers/values_manager.dart';

ThemeData getApplicatinTheme() => ThemeData(
      scaffoldBackgroundColor: ColorManager.screensLightBackgroundColor,

// card view theme

      cardTheme: const CardTheme(
          color: ColorManager.white,
          shadowColor: ColorManager.secondary,
          elevation: AppSize.s4),

// appBar theme
      // appBarTheme: AppBarTheme(
      //     color: ColorManager.primary,
      //     foregroundColor: ColorManager.black,
      //     elevation: AppSize.s4,
      //     shadowColor: ColorManager.secondary,
      //     titleTextStyle: getBoldStyle()),

// button theme
      buttonTheme: const ButtonThemeData(
          shape: StadiumBorder(),
          disabledColor: ColorManager.disable,
          buttonColor: ColorManager.primary,
          splashColor: ColorManager.secondary),

// elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularStyle(),
              backgroundColor: ColorManager.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s18)))),

// input decorations

      inputDecorationTheme: InputDecorationTheme(
        // content padding
        contentPadding:
            const EdgeInsets.symmetric(horizontal: AppPadding.p12 / 2),
        // hint style
        hintStyle: getRegularStyle(color: ColorManager.hint),
        // lable style
        labelStyle: getRegularStyle(color: ColorManager.secondary),
        // error style
        errorStyle: getRegularStyle(color: ColorManager.error),
        // if enabled
        border: InputBorder.none,
        errorMaxLines: 2,
      ),

      // primaryTextTheme:
      //     const TextTheme(displaySmall: TextStyle(color: Colors.black)),

      //color scheme
      colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: Colors.white,
          primary: const Color.fromARGB(151, 130, 56, 233),
          background: Colors.white,
          secondary: Colors.black,
          surface: Colors.white60,
          error: Colors.red,
          shadow: Colors.grey[400]),

      //text theme
      textTheme: const TextTheme(
          headlineMedium:
              TextStyle(fontSize: FontSize.s22, fontWeight: FontWeight.bold),
          headlineSmall:
              TextStyle(fontSize: FontSize.s14, fontWeight: FontWeight.w400),
          bodySmall:
              TextStyle(fontSize: FontSize.s12, color: ColorManager.secondary),
          displaySmall:
              TextStyle(fontSize: FontSize.s12, color: ColorManager.hint),
          displayMedium: TextStyle(fontSize: FontSize.s18)),
    );
