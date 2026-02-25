import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_fonts.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/widgets/main_button.dart';

class PlaceOrderBody extends StatelessWidget {
  const PlaceOrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: AppColors.primary,
                width: double.infinity,
                child: Image.asset("assets/images/Order_Placed.png"),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: AppColors.background,
                width: double.infinity,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 40,
                      left: 100,
                      child: SizedBox(
                        width: 332,
                        height: 85,
                        child: Text(
                          'Order Placed Successfully',
                          style: TextStyle(
                            fontSize: 32,
                            fontFamily: AppFonts.gabarito,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      top: 150,
                      left: 60,
                      child: Text(
                        "You will receive an email confirmation",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: AppFonts.gabarito,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFA5A1A1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: MainButton(text: "See Order Details", onpress: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
