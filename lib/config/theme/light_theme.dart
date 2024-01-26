import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';

final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: kPrimaryColor,
  fontFamily: AppFonts.OUTFit_DISPLAY,
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: kPrimaryColor,
  ),
  splashColor: kPrimaryColor.withOpacity(0.10),
  highlightColor: kPrimaryColor.withOpacity(0.10),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: KSecondaryColor.withOpacity(0.1),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: KTertiaryColor,
  ),
);
