import 'package:flutter/material.dart';
import 'package:zara/core/styles/text_style.dart';

class HeaderModelBottom extends StatelessWidget {
  const HeaderModelBottom({super.key, required this.titel});
  final String titel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Clear", style: TextStyles.subtitle),
        Text(titel, style: TextStyles.title),
        IconButton(onPressed: () {}, icon: Icon(Icons.close)),
      ],
    );
  }
}
