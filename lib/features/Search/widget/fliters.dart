import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/core/widgets/custom_text_form.dart';

class Fliters extends StatelessWidget {
  const Fliters({
    super.key,
    required this.title,
    required this.image,
    this.color = AppColors.primary,
    this.width = 75,
    this.heitgth = 30,
    this.textcolor = Colors.white,
    this.imagecolor = Colors.white, this.onTap,
  });
  final String title;
  final String image;
  final Color color;
  final double width;
  final double heitgth;
  final Color textcolor;
  final Color imagecolor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        width: width,
        height: heitgth,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Text(title, style: TextStyles.caption2.copyWith(color: textcolor)),
            SizedBox(width: 10),
            Image.asset(image, color: imagecolor),
          ],
        ),
      ),
    );
  }
}
