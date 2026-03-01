import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/features/OrderCategories/date/orders_data.dart';
import 'package:zara/features/OrderCategories/widget/order_continer.dart';

class listTab extends StatelessWidget {
  const listTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 342,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          var modal = openorders[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: OrderContiner(model: modal),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 12),
        itemCount: openorders.length,
      ),
    );
  }
}
