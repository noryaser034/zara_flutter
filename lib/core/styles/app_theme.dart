import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    scaffoldBackgroundColor: AppColors.background,
  );
}
