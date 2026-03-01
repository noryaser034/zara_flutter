import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/core/widgets/main_button.dart';
import 'package:zara/features/OrderCategories/Screens/Explore_Categories.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Text(
                  "order",
                  style: TextStyles.subtitle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 200),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Image.asset(AppImages.checkOut),
                        SizedBox(height: 20),
                        Text(
                          "No Orders yet",
                          style: TextStyles.subtitle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        MainButton(
                          width: 50,
                          height: 50,
                          text: "Explore Categories",
                          onpress: () {
                            pushTo(context, ExploreCategories());
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
