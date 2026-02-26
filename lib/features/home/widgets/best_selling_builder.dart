import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/features/home/data/product_model.dart';
import 'package:zara/features/home/widgets/item_card.dart';

class BestSellingBuilder extends StatelessWidget {
  const BestSellingBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Best Selling',
              style: TextStyles.body.copyWith(fontWeight: FontWeight.w700),
            ),

            TextButton(
              onPressed: () {},
              child: Text(
                'See All',
                style: TextStyles.body.copyWith(color: AppColors.blackcolor),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        SizedBox(
          height: 281,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var model = bestSelling[index];
              return ItemCard(model: model);
            },
            separatorBuilder: (context, index) => SizedBox(width: 12),
            itemCount: bestSelling.length,
          ),
        ),
      ],
    );
  }
}
