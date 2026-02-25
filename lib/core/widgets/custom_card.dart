import 'package:flutter/material.dart';
import 'package:zara/core/widgets/custom_rounded_button.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: Color(0xFFD3D1D1),
        elevation: 4,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/Rectangle 8-1.png'),
              ), //Icon(Icons.album),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Men's Harrington Jacket"), Text("\$148")],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Size: M"),
                  Text("Color: Lemon"),
                  Row(
                    children: [
                      CustomRoundedButton(icon: Icons.add, ontap: (){},),
                      SizedBox(width: 5),
                      CustomRoundedButton(icon: Icons.remove, ontap: (){},),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
