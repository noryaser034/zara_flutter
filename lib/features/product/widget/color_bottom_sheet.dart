import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';

class ColorBottomSheet extends StatelessWidget {
  const ColorBottomSheet({
    super.key,
    required this.colors,
    required this.selectedColorName,
    required this.onColorSelected,
  });

  final List<Map<String, dynamic>> colors;
  final String selectedColorName;
  final void Function(String name, Color color) onColorSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Select Color",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          ...colors.map(
            (c) => ListTile(
              leading: CircleAvatar(backgroundColor: c['color'], radius: 12),
              title: Text(c['name']),
              trailing: selectedColorName == c['name']
                  ? const Icon(Icons.check, color: AppColors.primary)
                  : null,
              onTap: () {
                onColorSelected(c['name'], c['color']);
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
