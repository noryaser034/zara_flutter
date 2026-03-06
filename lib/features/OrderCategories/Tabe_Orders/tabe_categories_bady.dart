// ignore_for_file: depend_on_referenced_packages

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/features/OrderCategories/widget/list_tab.dart';

class TabeCategoriesBady extends StatelessWidget {
  const TabeCategoriesBady({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),

          child: Column(
            children: [
              SizedBox(height: 40),
              Text(
                "order",
                style: TextStyles.subtitle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ButtonsTabBar(
                  buttonMargin: EdgeInsets.symmetric(horizontal: 5),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  backgroundColor: AppColors.primary,
                  unselectedBackgroundColor: AppColors.graycolor,

                  radius: 100,
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedLabelStyle: TextStyle(
                    color: AppColors.blackcolor,
                    fontWeight: FontWeight.bold,
                  ),
                  tabs: [
                    Tab(text: "Processing"),
                    Tab(text: "Shipped"),
                    Tab(text: "Delivered"),
                    Tab(text: "Returned"),
                    Tab(text: "Cancelled"),
                  ],
                ),
              ),

              Expanded(
                child: TabBarView(
                  children: [
                    ListTab(selectedStatus: "Processing"),
                    ListTab(selectedStatus: "Shipped"),
                    ListTab(selectedStatus: "Delivered"),
                    ListTab(selectedStatus: "Returned"),
                    ListTab(selectedStatus: "Cancelled"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
