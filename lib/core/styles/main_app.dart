import 'package:flutter/material.dart';
import 'package:zara/core/styles/app_theme.dart';
import 'package:zara/features/intro/splash.dart';

class ZaraApp extends StatelessWidget {
  const ZaraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: SplashScreen(),
    );
  }
}