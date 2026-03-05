import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';

class ChoosBotton extends StatelessWidget {
  const ChoosBotton({super.key, required this.isPressed, this.onTap, required this.choose});
  final Function()? onTap;
  final bool isPressed;
  final String choose;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: (isPressed) ? AppColors.primary : AppColors.grayOrder,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  choose,
                  style: TextStyles.body.copyWith(
                    color: (isPressed) ? Colors.white : AppColors.blackcolor,
                  ),
                ),
                Row(
                  children: [
                    (isPressed)
                        ? Icon(Icons.check_outlined, color: Colors.white)
                        : SizedBox(width: 1),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
