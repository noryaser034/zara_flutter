import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';

class SecondButton extends StatelessWidget {
  const SecondButton({super.key, required this.text, required this.onpress});
  final String text;
  final Function() onpress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        minimumSize: Size(185, 60),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      onPressed: onpress,
      child: Text(
        text,
        style: TextStyles.body.copyWith(
          color: AppColors.background,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
