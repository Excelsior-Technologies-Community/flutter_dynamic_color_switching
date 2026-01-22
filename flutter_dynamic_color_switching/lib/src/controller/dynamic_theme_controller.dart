import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../theme/theme_type.dart';

class DynamicThemeController extends ChangeNotifier {
  ThemeType _currentType = ThemeType.light;

  Color _customPrimaryColor = Colors.teal;
  Color _customAppBarColor = Colors.teal;

  ThemeData get theme {
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

  void setLightTheme() {
    _currentType = ThemeType.light;
    notifyListeners();
  }

  void setDarkTheme() {
    _currentType = ThemeType.dark;
    notifyListeners();
  }

  void setCustomTheme({
    required Color primaryColor,
    required Color appBarColor,
  }) {
    _customPrimaryColor = primaryColor;
    _customAppBarColor = appBarColor;
    _currentType = ThemeType.custom;
    notifyListeners();
  }
}
