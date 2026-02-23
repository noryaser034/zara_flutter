import 'package:flutter/material.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/features/auth/screens/signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // delay of 3 seconds before navigating to the next screen
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        pushReplacement(context, const Signup());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(backgroundColor: AppColors.primary, elevation: 0),
      body: const Center(
        child: Text(
          'ZARA',
          style: TextStyle(
            fontFamily: 'circular-std-medium-500',
            fontSize: 55,
            color: AppColors.background,
          ),
        ),
      ),
    );
  }
}
