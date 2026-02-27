import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';

class ThirdButton extends StatelessWidget {
  const ThirdButton({super.key, required this.text, required this.onpress});
  final String text;
  final Function() onpress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        minimumSize: Size(30, 30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      onPressed: onpress,
      child: Text(
        text,
        style: TextStyles.caption1.copyWith(color: AppColors.background),
      ),
    );
  }
}
