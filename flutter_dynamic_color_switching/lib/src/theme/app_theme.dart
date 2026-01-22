import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    );
  }

  static ThemeData dark() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
        brightness: Brightness.dark,
      ),
    );
  }

  static ThemeData custom({
    required Color primaryColor,
    required Color appBarColor,
  }) {
    final scheme = ColorScheme.fromSeed(seedColor: primaryColor);

    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      appBarTheme: AppBarTheme(
        backgroundColor: appBarColor,
        foregroundColor: scheme.onPrimary,
      ),
    );
  }
}
