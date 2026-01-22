import 'package:flutter/material.dart';
import '../../app/app_theme.dart';
import 'theme_type.dart';

class ThemeController extends ChangeNotifier {
  ThemeType _currentType = ThemeType.light;

  Color _customPrimaryColor = Colors.teal;
  Color _customAppBarColor = Colors.teal;

  ThemeData get currentTheme {
    switch (_currentType) {
      case ThemeType.dark:
        return AppTheme.dark();
      case ThemeType.custom:
        return AppTheme.custom(
          primaryColor: _customPrimaryColor,
          appBarColor: _customAppBarColor,
        );
      case ThemeType.light:
      default:
        return AppTheme.light();
    }
  }

  void changeTheme(ThemeType type) {
    _currentType = type;
    notifyListeners();
  }

  void setCustomColor({
    required Color primaryColor,
    required Color appBarColor,
  }) {
    _customPrimaryColor = primaryColor;
    _customAppBarColor = appBarColor;
    _currentType = ThemeType.custom;
    notifyListeners();
  }
}
