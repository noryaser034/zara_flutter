import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';

class CustomCircularContainer extends StatelessWidget {
  const CustomCircularContainer({
    super.key,
    required this.image,
    required this.width,
    required this.height,
    this.bgColor,
  });
  final String image;
  final double width;
  final double height;
  final Color? bgColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: bgColor ?? AppColors.primary, // border color
        shape: BoxShape.circle,
      ),
      child: Image.asset(image),
    );
  }
}
