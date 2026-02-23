import 'dart:io';
import 'package:flutter/material.dart';
import 'package:zara/features/intro/splash.dart';

class ZaraApp extends StatelessWidget {
  const ZaraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return SafeArea(
          top: false,
          bottom: Platform.isAndroid,
          child: child ?? Container(),);
      },
      home: const SplashScreen(),
    );
  }
}
