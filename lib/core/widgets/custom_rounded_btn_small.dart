import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';

class CustomRBtnSmall extends StatelessWidget {
  const CustomRBtnSmall({super.key, required this.icon, required this.ontap});

  final IconData icon;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(40),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(icon),
          color: AppColors.background,
        ),
      ),
    );
  }
}
