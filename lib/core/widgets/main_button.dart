import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.text,
    required this.onpress,
    this.width,
    this.height,
    this.backgroundColor,
    this.textColor,
  });
  final String text;
  final Function() onpress;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: backgroundColor ?? AppColors.primary,
        minimumSize: Size(width ?? double.infinity, height ?? 70),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      onPressed: onpress,
      child: Text(
        text,
        style: TextStyles.body.copyWith(
          color: textColor ?? AppColors.background,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}