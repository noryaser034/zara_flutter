import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/styles/color.dart';

class DropDownContainer extends StatelessWidget {
  const DropDownContainer({
    super.key,
    required this.selectedValue,
    required this.onChanged,
  });

  final String? selectedValue;
  final Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.graycolor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedValue,
          icon: Image.asset(AppImages.arrowDown),
          hint: Text('Age Range'),
          isExpanded: true,
          items: [
            '18-25',
            '26-35',
            '36-45',
            '46-60',
          ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
