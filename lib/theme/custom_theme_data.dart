import 'package:flutter/material.dart';

class CustomThemeData {
  static ThemeData blueTheme = ThemeData(
    cardTheme: const CardThemeData(
      color: Colors.transparent,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: TextStyle(
        fontSize: 40,
        color: Color(0xffF3C981),
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        color: Color(0xffF3C981),
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        color: Color(0xffF3C981),
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
