import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';

class SizeColorSelector extends StatelessWidget {
  final String selectedSize;
  final Color selectedColor;
  final String selectedColorName;
  final VoidCallback onSizeTap;
  final VoidCallback onColorTap;

  const SizeColorSelector({super.key, required this.selectedSize, required this.selectedColor, required this.selectedColorName, required this.onSizeTap, required this.onColorTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildRow("Size", selectedSize, null, onSizeTap),
        const SizedBox(height: 12),
        _buildRow("Color", selectedColorName, selectedColor, onColorTap),
      ],
    );
  }

  Widget _buildRow(String label, String value, Color? dotColor, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(color: const Color(0xffF4F4F4), borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            Text(label, style: const TextStyle(fontSize: 16)),
            const Spacer(),
            if (dotColor != null) Container(width: 16, height: 16, decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle)),
            const SizedBox(width: 8),
            Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
            const Icon(Icons.keyboard_arrow_down),
          ],
        ),
      ),
    );
  }
}

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  const QuantitySelector({super.key, required this.quantity, required this.onAdd, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(color: const Color(0xffF4F4F4), borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          const Text("Quantity", style: TextStyle(fontSize: 16)),
          const Spacer(),
          _circleBtn(Icons.remove, onRemove),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 15), child: Text("$quantity", style: const TextStyle(fontWeight: FontWeight.bold))),
          _circleBtn(Icons.add, onAdd),
        ],
      ),
    );
  }

  Widget _circleBtn(IconData icon, VoidCallback action) => GestureDetector(
    onTap: action,
    child: CircleAvatar(radius: 12, backgroundColor: AppColors.primary, child: Icon(icon, size: 16, color: Colors.white)),
  );
}