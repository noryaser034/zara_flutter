import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';

class PricingTile extends StatelessWidget {
  const PricingTile({super.key, required this.leading, required this.price});
  final String leading;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leading,
          style: TextStyles.body.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.blackcolor.withValues(alpha: 0.5),
          ),
        ),
        Text(price, style: TextStyles.body),
      ],
    );
  }
}
