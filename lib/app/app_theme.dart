import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light() {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    );
  }

  static ThemeData dark() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
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
      scaffoldBackgroundColor: primaryColor,
      /// 🔥 AppBar custom control
      appBarTheme: AppBarTheme(
        backgroundColor: appBarColor,
        foregroundColor: appBarColor,
      ),
    );
  }
}
