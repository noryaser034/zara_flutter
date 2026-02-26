import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/styles/color.dart';

class DropDownContainer extends StatelessWidget {
  const DropDownContainer({
    super.key,
    required this.selectedValue,
    required this.onChanged,
    this.width,
    required this.items,
    required this.hint,
  });

  final String? selectedValue;
  final Function(String?) onChanged;
  final double? width;
  final List<String> items;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.graycolor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedValue,
          icon: Image.asset(AppImages.arrowDown),
          hint: Text(hint),
          isExpanded: true,
          items: items
              .map((e) => DropdownMenuItem(value: e, child: Text(e)))
              .toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
