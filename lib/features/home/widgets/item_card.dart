import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_fonts.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/features/home/data/product_model.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 159,
      padding: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: AppColors.graycolor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset(model.image, width: 159, height: 220),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(AppImages.heart),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Text(
              model.name,
              style: TextStyles.caption2.copyWith(
                fontFamily: AppFonts.circularStdMedium,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  '\$${model.price}',
                  style: TextStyles.caption2.copyWith(
                    fontFamily: AppFonts.gabarito,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                if (model.oldPrice != null) ...[
                  SizedBox(width: 6),
                  Text(
                    '\$${model.oldPrice}',
                    style: TextStyles.caption2.copyWith(
                      fontFamily: AppFonts.gabarito,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.grey,
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
