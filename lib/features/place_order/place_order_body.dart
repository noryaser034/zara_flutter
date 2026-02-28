import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_fonts.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/widgets/main_button.dart';
import 'package:zara/features/orders/order_view.dart';

class PlaceOrderBody extends StatelessWidget {
  const PlaceOrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primary,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                width: double.infinity,
                child: Image.asset("assets/images/Order_Placed.png"),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
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
                            fontSize: 33,
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
              color: AppColors.background,
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 30),
              child: MainButton(
                text: "See Order Details",
                onpress: () {
                  pushTo(context, OrderView());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
