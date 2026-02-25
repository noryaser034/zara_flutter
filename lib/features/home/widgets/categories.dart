import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/features/categories/pages/hoodies.dart';
import 'package:zara/features/categories/pages/search_categories_screen.dart';
import 'package:zara/features/home/widgets/category_column.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Categories',
              style: TextStyles.body.copyWith(fontWeight: FontWeight.w700),
            ),

            TextButton(
              onPressed: () {
                pushTo(context, SearchCategoriesScreen());
              },
              child: Text(
                'See All',
                style: TextStyles.body.copyWith(color: AppColors.blackcolor),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryColumn(
              text: 'Hoodies',
              image: AppImages.hoodies,
              onTap: () {
                pushTo(context, Hoodies());
              },
            ),
            CategoryColumn(text: 'Shorts', image: AppImages.shorts),
            CategoryColumn(text: 'Shoes', image: AppImages.shoes),
            CategoryColumn(text: 'Bag', image: AppImages.bag),
            CategoryColumn(text: 'Accessories', image: AppImages.accessories),
          ],
        ),
      ],
    );
  }
}
