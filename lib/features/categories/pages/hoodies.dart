import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_fonts.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/core/widgets/custom_circular_container.dart';
import 'package:zara/features/categories/pages/search_categories_screen.dart';
import 'package:zara/features/home/data/product_model.dart';
import 'package:zara/features/home/widgets/item_card.dart';

class Hoodies extends StatelessWidget {
  const Hoodies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: () {
                  pushTo(context, SearchCategoriesScreen());
                },
                icon: CustomCircularContainer(
                  image: AppImages.arrowBack,
                  width: 40,
                  height: 40,
                  bgColor: AppColors.graycolor,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Hoodies (${hoodies.length})',
                style: TextStyles.body.copyWith(
                  fontFamily: AppFonts.gabarito,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 23),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 0.6,
                  ),
                  itemBuilder: (context, index) {
                    final model = hoodies[index];
                    return ItemCard(model: model);
                  },
                  itemCount: hoodies.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
