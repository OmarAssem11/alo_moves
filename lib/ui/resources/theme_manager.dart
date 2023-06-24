import 'package:alo_moves/ui/resources/text_styles_manager.dart';
import 'package:alo_moves/ui/resources/values_manager.dart';
import 'package:flutter/material.dart';

class ColorPalette {
  static const Color primary = Colors.black;
  static const Color screenBackground = Color(0xFFFFFFFF);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color red = Color(0xFFE42A43);
  static const Color gold = Color(0xFFF9C449);
  static const Color grey = Color(0xFFAFAFAF);
  static const Color darkGrey = Color(0xFF616161);
}

ThemeData getTheme() => ThemeData(
      primaryColor: ColorPalette.primary,
      scaffoldBackgroundColor: ColorPalette.screenBackground,
      appBarTheme: AppBarTheme(
        color: ColorPalette.white,
        foregroundColor: ColorPalette.black,
        elevation: Sizes.s4,
        centerTitle: true,
        titleTextStyle: getBoldTextStyle(
          fontSize: FontSize.s20,
        ),
        actionsIconTheme: const IconThemeData(
          color: ColorPalette.grey,
          size: Sizes.s28,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: getBoldTextStyle(
            color: ColorPalette.white,
            fontSize: FontSize.s18,
          ),
          backgroundColor: ColorPalette.primary,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(Sizes.s8)),
          ),
        ),
      ),
      textTheme: TextTheme(
        displaySmall: getRegularTextStyle(fontSize: FontSize.s36),
        headlineLarge: getRegularTextStyle(fontSize: FontSize.s32),
        headlineSmall: getRegularTextStyle(fontSize: FontSize.s24),
        titleLarge: getMediumTextStyle(fontSize: FontSize.s22),
        titleMedium: getMediumTextStyle(fontSize: FontSize.s16),
        bodyMedium: getRegularTextStyle(fontSize: FontSize.s14),
      ),
    );
