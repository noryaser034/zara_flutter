import 'dart:io';
import 'package:flutter/material.dart';
import 'package:zara/core/styles/app_theme.dart';
import 'package:zara/features/main/main_app_screen.dart';

class AppCore extends StatelessWidget {
  const AppCore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return SafeArea(
          top: false,
          bottom: Platform.isAndroid,
          child: child ?? Container(),
        );
      },
      home: const MainAppScreen(),
      theme: AppTheme.lightTheme,
    );
  }
}
