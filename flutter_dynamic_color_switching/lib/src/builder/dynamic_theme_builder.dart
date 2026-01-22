import 'package:flutter/material.dart';
import '../controller/dynamic_theme_controller.dart';

class DynamicThemeBuilder extends StatelessWidget {
  final DynamicThemeController controller;
  final Widget Function(BuildContext context, ThemeData theme) builder;

  const DynamicThemeBuilder({
    super.key,
    required this.controller,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (_, __) {
        return builder(context, controller.theme);
      },
    );
  }
}
