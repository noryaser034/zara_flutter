import 'package:flutter/material.dart';
import 'package:zara/features/home/data/product_model.dart';
import 'package:zara/features/home/widgets/item_card.dart';

class FliterProductByName extends StatelessWidget {
  const FliterProductByName({super.key, required this.products});

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 0,
        mainAxisExtent: 250,
      ),
      itemBuilder: (context, index) {
        return ItemCard(model: products[index]);
      },
      itemCount: products.length,
    );
  }
}
