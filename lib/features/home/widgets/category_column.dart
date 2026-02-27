import 'package:flutter/material.dart';
import 'package:zara/core/widgets/custom_circular_container.dart';

class CategoryColumn extends StatelessWidget {
  const CategoryColumn({
    super.key,
    required this.text,
    required this.image,
    this.onTap,
  });
  final String text;
  final String image;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          CustomCircularContainer(image: image, width: 56, height: 56),
          Text(text),
        ],
      ),
    );
  }
}
