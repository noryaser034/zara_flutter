import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';

class QuantityController extends StatelessWidget {
  const QuantityController({
    super.key,
    required this.icon,
    required this.iconColor,
  });
  final IconData icon;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 26,
      height: 26,
      decoration: const BoxDecoration(
        color: AppColors.primary,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Icon(icon, color: iconColor),
    );
  }
}
