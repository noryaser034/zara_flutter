import 'package:flutter/material.dart';
import 'package:zara/core/styles/text_style.dart';

class StatesOrder extends StatelessWidget {
  const StatesOrder({
    super.key,
    required this.states,
    required this.color,
    required this.width,
  });

  final String states;
  final Color color;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.check_circle, color: color, size: 30),
        SizedBox(width: 15),
        Text(states, style: TextStyles.subtitle.copyWith(fontSize: 20)),
        SizedBox(width: width),
        Text("28 May", style: TextStyles.subtitle.copyWith(fontSize: 15)),
      ],
    );
  }
}
