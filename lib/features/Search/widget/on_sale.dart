import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';

class OnSale extends StatelessWidget {
  const OnSale({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector
    (onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
        width: 60,
        height: 19,
        decoration: BoxDecoration(
          color: AppColors.grayOrder,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Text(
              "On Sale",
              style: TextStyles.caption2.copyWith(color: AppColors.blackcolor),
            ),
          ],
        ),
      ),
    );
  }
}
