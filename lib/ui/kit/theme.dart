import 'package:fermer/ui/kit/colors.dart';
import 'package:flutter/material.dart';

class CustomUI {
  final theme = ThemeData().copyWith(
      primaryColor: CustomColors.deepGreen,
      canvasColor: CustomColors.white,
      scaffoldBackgroundColor: CustomColors.white,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 32,
          fontFamily: 'JetBrainsMono',
          fontWeight: FontWeight.w700,
          color: CustomColors.black,
        ),
        displayMedium: TextStyle(
          fontSize: 24,
          fontFamily: 'JetBrainsMono',
          fontWeight: FontWeight.w700,
          color: CustomColors.black,
        ),
        displaySmall: TextStyle(
          fontSize: 18,
          fontFamily: 'JetBrainsMono',
          color: CustomColors.black,
        ),
      ));
}
