import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_fonts.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/features/home/data/product_model.dart';
import 'package:zara/features/product/screen/product_details_screen.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.model});

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Productdetails(product: model),
          ),
        );
      },
      child: Container(
        width: 159,
        padding: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: AppColors.graycolor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        model.image,
                        width: double.infinity,
                        height: 220,
                        fit: BoxFit.cover,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(AppImages.heart),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                model.name,
                style: TextStyles.caption2.copyWith(
                  fontFamily: AppFonts.circularStdMedium,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
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
                    const SizedBox(width: 6),
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
      ),
    );
  }
}
