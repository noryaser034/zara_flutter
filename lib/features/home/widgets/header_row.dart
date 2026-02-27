import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/widgets/custom_circular_container.dart';
import 'package:zara/core/widgets/drop_down_container.dart';

class HeaderRow extends StatelessWidget {
  const HeaderRow({
    super.key,
    required this.selectedValue,
    required this.onChanged,
  });

  final String? selectedValue;
  final Function(String?) onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(AppImages.circleImage),
        ),
        DropDownContainer(
          width: 105,
          selectedValue: selectedValue,
          onChanged: onChanged,
          items: ['men', 'women'],
          hint: 'men',
        ),
        InkWell(
          onTap: () {},
          child: CustomCircularContainer(
            image: AppImages.bagIcon,
            width: 40,
            height: 40,
          ),
        ),
      ],
    );
  }
}
