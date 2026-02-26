import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_fonts.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/core/widgets/custom_circular_container.dart';
import 'package:zara/features/categories/pages/hoodies.dart';
import 'package:zara/features/categories/widgets/category_tile.dart';
import 'package:zara/features/main/main_app_screen.dart';

class SearchCategoriesScreen extends StatelessWidget {
  const SearchCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: () {
                  pushTo(context, MainAppScreen());
                },
                icon: CustomCircularContainer(
                  image: AppImages.arrowBack,
                  width: 40,
                  height: 40,
                  bgColor: AppColors.graycolor,
                ),
              ),
              Text(
                'Shop by Categories',
                style: TextStyles.subtitle.copyWith(
                  fontFamily: AppFonts.gabarito,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 14),
              CategoryTile(
                category: 'Hoodies',
                image: AppImages.hoodies,
                onTap: () {
                  pushTo(context, Hoodies());
                },
              ),
              SizedBox(height: 8),
              CategoryTile(
                category: 'Accessories',
                image: AppImages.accessories,
                onTap: () {},
              ),
              SizedBox(height: 8),
              CategoryTile(
                category: 'Shorts',
                image: AppImages.shorts,
                onTap: () {},
              ),
              SizedBox(height: 8),
              CategoryTile(
                category: 'Shoes',
                image: AppImages.shoes,
                onTap: () {},
              ),
              SizedBox(height: 8),
              CategoryTile(
                category: 'Bags',
                image: AppImages.bag,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
