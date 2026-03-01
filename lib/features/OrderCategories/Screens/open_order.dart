import 'package:flutter/material.dart';


import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/features/OrderCategories/Screens/Explore_Categories.dart';
import 'package:zara/features/OrderCategories/date/orders_data.dart';
import 'package:zara/features/OrderCategories/widget/order_continer.dart';
import 'package:zara/features/OrderCategories/widget/order_items.dart';
import 'package:zara/features/OrderCategories/widget/states_order.dart';

class OpenOrder extends StatelessWidget {
  const OpenOrder({super.key, required this.model});
  final OrdersModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: GestureDetector(
          onTap: () {
            popTo(context, ExploreCategories());
          },
          child: Icon(Icons.arrow_back_ios_new),
        ),

        title: Text(model.NumberOrder, style: TextStyles.subtitle),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            StatesOrder(
              states: "Delivered",
              color: AppColors.textorder,
              width: 170,
            ),
            SizedBox(height: 50),
            StatesOrder(
              states: "Shipped",
              color: AppColors.primary,
              width: 170,
            ),
            SizedBox(height: 50),
            StatesOrder(
              states: "Order Confirmed ",
              color: AppColors.primary,
              width: 95,
            ),
            SizedBox(height: 50),
            StatesOrder(
              states: "Order Placed",
              color: AppColors.primary,
              width: 130,
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Order Items",
                  style: TextStyles.title.copyWith(fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 30),
            OrderItems(model: model),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Shipping details",
                  style: TextStyles.title.copyWith(fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsetsGeometry.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              width: 350,
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.grayOrder,
              ),
              child: Text(
                "2715 Ash Dr. San Jose, South Dakota 83475\n121-224-7890",
                style: TextStyles.caption1.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
