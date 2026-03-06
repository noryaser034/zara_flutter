import 'package:flutter/material.dart';
import 'package:zara/core/styles/text_style.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: onPressed,
          child: Text(
            'Remove All',
            style: TextStyles.body.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
