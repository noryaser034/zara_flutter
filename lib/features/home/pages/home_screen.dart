import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/widgets/custom_text_form.dart';
import 'package:zara/features/home/widgets/best_selling_builder.dart';
import 'package:zara/features/home/widgets/categories.dart';

import 'package:zara/features/home/widgets/header_row.dart';
import 'package:zara/features/home/widgets/new_in_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 10, 24, 0),
        child: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeaderRow(
                  selectedValue: selectedValue,
                  onChanged: (String? value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                ),
                SizedBox(height: 24),
                CustomTextFormField(
                  readOnly: true,
                  hintText: 'Search',
                  prefixIcon: Image.asset(AppImages.search),
                ),
                SizedBox(height: 24),
                Categories(),
                SizedBox(height: 24),
                BestSellingBuilder(),
                NewInBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
