import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_fonts.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
    required this.category,
    required this.image,
    required this.onTap,
  });
  final String category;
  final String image;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
        width: double.infinity,
        height: 64,
        decoration: BoxDecoration(
          color: AppColors.graycolor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          spacing: 16,
          children: [
            Image.asset(image),
            Text(
              category,
              style: TextStyles.body.copyWith(
                fontFamily: AppFonts.circularStdMedium,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
