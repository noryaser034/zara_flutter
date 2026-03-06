import 'package:flutter/material.dart';

class ProductState {
  String selectedSize;
  Color selectedColor;
  String selectedColorName;
  int quantity;

  ProductState({
    this.selectedSize = "S",
    this.selectedColor = const Color(0xff9DA273),
    this.selectedColorName = "Olive",
    this.quantity = 1,
  });

  final List<String> sizes = ["S", "M", "L", "XL", "2XL"];

  final List<Map<String, dynamic>> colors = [
    {"name": "Orange", "color": Colors.orange},
    {"name": "Black", "color": Colors.black},
    {"name": "Red", "color": Colors.red},
    {"name": "Yellow", "color": Colors.yellow},
    {"name": "Blue", "color": Colors.blue},
    {"name": "Olive", "color": const Color(0xff9DA273)},
  ];
}
