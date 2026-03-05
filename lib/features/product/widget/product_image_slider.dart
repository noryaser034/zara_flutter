import 'package:flutter/material.dart';

class ProductImageSlider extends StatelessWidget {
  final String image;
  const ProductImageSlider({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: 3,
        separatorBuilder: (_, _) => const SizedBox(width: 12),
        itemBuilder: (context, index) => ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(image, width: MediaQuery.of(context).size.width * 0.8, fit: BoxFit.cover),
        ),
      ),
    );
  }
}