import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';

class CustomRoundedButton extends StatelessWidget {
  const CustomRoundedButton({
    super.key,
    required this.icon,
    required this.ontap,
  });

  final IconData icon;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(30),
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
