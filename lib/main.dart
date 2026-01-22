import 'package:flutter/material.dart';
import 'core/theme/theme_controller.dart';
import 'features/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ThemeController themeController = ThemeController();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: themeController,
      builder: (_, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeController.currentTheme,
          home: HomeScreen(themeController: themeController),
        );
      },
    );
  }
}
