import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/widgets/main_button.dart';

class GenderToggle extends StatelessWidget {
  const GenderToggle({
    super.key,
    required this.onMenTap,
    required this.onWomenTap,
    required this.isMenSelected,
  });
  final bool isMenSelected;
  final VoidCallback onMenTap;
  final VoidCallback onWomenTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        MainButton(
          text: 'Men',
          onpress: onMenTap,
          width: 161,
          height: 51,
          backgroundColor: isMenSelected
              ? AppColors.primary
              : AppColors.graycolor,
          textColor: isMenSelected
              ? AppColors.background
              : AppColors.blackcolor,
        ),
        //SizedBox(width: 20),
        MainButton(
          text: 'Women',
          onpress: onWomenTap,
          width: 161,
          height: 51,
          backgroundColor: !isMenSelected
              ? AppColors.primary
              : AppColors.graycolor,
          textColor: !isMenSelected
              ? AppColors.background
              : AppColors.blackcolor,
        ),
      ],
    );
  }
}
