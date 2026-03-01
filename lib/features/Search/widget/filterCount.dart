import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';

class FliterCount extends StatelessWidget {
  const FliterCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      width: 45,
      height: 30,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(AppImages.filter, color: Colors.white),
          SizedBox(width: 10),
          Text("2", style: TextStyles.caption2.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
