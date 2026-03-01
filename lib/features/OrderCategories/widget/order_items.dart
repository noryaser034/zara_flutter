import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/features/OrderCategories/Screens/open_order.dart';
import 'package:zara/features/OrderCategories/date/orders_data.dart';

class OrderItems extends StatelessWidget {
  const OrderItems({super.key, required this.model});

  final OrdersModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: AppColors.grayOrder,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              AppImages.processingSvg,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
            //SizedBox(width: 20),
            SizedBox(height: 5),
            Text(
              model.NumberItem,
              style: TextStyles.caption1.copyWith(
                color: AppColors.blackcolor,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 70),
            TextButton(onPressed: () {}, child: Text("View All")),
          ],
        ),
      ),
    );
  }
}
