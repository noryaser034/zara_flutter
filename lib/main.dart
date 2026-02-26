import 'package:flutter/material.dart';
import 'package:zara/core/app_core/app_core.dart';

void main() {
  runApp(ZaraApp());
}

class ZaraApp extends StatelessWidget {
  const ZaraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCore();
  }
}
