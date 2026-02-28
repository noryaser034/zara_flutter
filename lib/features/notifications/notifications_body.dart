import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_fonts.dart';
import 'package:zara/core/widgets/second_button.dart';

class NotificationsBody extends StatelessWidget {
  const NotificationsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Notifications",
          style: TextStyle(
            fontFamily: AppFonts.gabarito,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/bell.png"),
            SizedBox(height: 20),
            Text(
              "No Notifications Yet",
              style: TextStyle(
                fontFamily: AppFonts.circularStdMedium,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            SecondButton(text: "Explore Categories", onpress: () {}),
          ],
        ),
      ),
    );
  }
}
