import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppColors {
  static const secondary = Color(0xFF3B76F6);
  static const accent = Color(0xFFd6755b);
  static const textDark = Color(0xFF53585a);
  static const textLight = Color(0xFFf5f5f5);
  static const textFaded = Color(0xFF9899a5);
  static const iconLight = Color(0xFFb1b4c0);
  static const iconDark = Color(0xFFB1B3C1);
  static const textHighLight = secondary;
  static const cardLight = Color(0xFFf9fafe);
  static const cardDark = Color(0xFF303334);
}

abstract class _LightColors {
  static const background = Colors.white;
  static const card = AppColors.cardLight;
}

abstract class _DarkColors {
  static const background = Color(0xff1b1e1f);
  static const card = AppColors.cardDark;
}

// Reference to the application theme.
abstract class AppTheme {
  static const accentColor = AppColors.accent;
  static final visualDensity = VisualDensity.adaptivePlatformDensity;

  // Light theme and its settings.
  static ThemeData light(ThemeData theme) => ThemeData(
        brightness: Brightness.light,
        hintColor: accentColor,
        visualDensity: visualDensity,
        textTheme: GoogleFonts.mulishTextTheme(theme.textTheme)
            .apply(bodyColor: AppColors.textDark),
        backgroundColor: _LightColors.card,
        scaffoldBackgroundColor: _LightColors.background,
        cardColor: _LightColors.card,
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(color: AppColors.textDark),
        ),
        iconTheme: const IconThemeData(color: AppColors.iconDark),
      );

  // Dark theme and its settings.
  static ThemeData dark(ThemeData theme) => ThemeData(
        brightness: Brightness.dark,
        hintColor: accentColor,
        visualDensity: visualDensity,
        textTheme: GoogleFonts.interTextTheme(theme.textTheme)
            .apply(bodyColor: AppColors.textLight),
        backgroundColor: _DarkColors.background,
        scaffoldBackgroundColor: _DarkColors.background,
        cardColor: _DarkColors.card,
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(color: AppColors.textLight),
        ),
        iconTheme: const IconThemeData(color: AppColors.iconLight),
      );
}
