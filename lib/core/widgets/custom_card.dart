import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/widgets/custom_rounded_button.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,

    this.image,
    this.title,
    this.price,
    this.size,
    this.color,
    this.label,
    this.hint,
  });

  final Image? image;
  final String? title;
  final double? price;
  final String? size;
  final String? color;
  final String? label;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: AppColors.graycolor,
        elevation: 4,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: image,
              ), //Icon(Icons.album),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('$title'), Text("$price")],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("$size"),
                  Text("$color"),
                  Row(
                    children: [
                      CustomRoundedButton(icon: Icons.add, ontap: () {}),
                      SizedBox(width: 5),
                      CustomRoundedButton(icon: Icons.remove, ontap: () {}),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
