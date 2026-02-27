import 'package:flutter/material.dart';
import 'package:zara/features/intro/splash.dart';

void main() {
  runApp(ZaraApp());
}

class ZaraApp extends StatelessWidget {
  const ZaraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
