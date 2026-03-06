import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';

class SizeBottomSheet extends StatelessWidget {
  const SizeBottomSheet({
    super.key,
    required this.sizes,
    required this.selectedSize,
    required this.onSizeSelected,
  });

  final List<String> sizes;
  final String selectedSize;
  final ValueChanged<String> onSizeSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Select Size",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          ...sizes.map(
            (s) => ListTile(
              title: Text(s, textAlign: TextAlign.center),
              selected: selectedSize == s,
              selectedColor: AppColors.primary,
              trailing: selectedSize == s ? const Icon(Icons.check) : null,
              onTap: () {
                onSizeSelected(s);
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}