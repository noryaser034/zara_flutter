import 'package:flutter/material.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/widgets/custom_card.dart';
import 'package:zara/core/widgets/main_button.dart';
import 'package:zara/features/cart/cart_view.dart';
import 'package:zara/features/check_out/check_out_view.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key, this.couponeController});

  final TextEditingController? couponeController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,

        leading: IconButton(
          onPressed: () {
            popTo(context, CartView());
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        centerTitle: true,
        title: Text(
          'Cart',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: double.infinity,
              height: 300,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,

                      alignment: Alignment.topRight,
                      child: Text(
                        "Remove All",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    CustomCard(
                      image: Image.asset('assets/images/oilJacket.png'),
                      title: "Men's Harrington Jacket",
                      price: 90.0,
                      size: "Size: M",
                      color: "Color: Lemon",
                    ),
                    SizedBox(height: 8),
                    CustomCard(
                      image: Image.asset('assets/images/blackHoodies.png'),
                      title: "Black Hoodies",
                      price: 85.0,
                      size: "Size: M",
                      color: "Color: Black",
                    ),
                    SizedBox(height: 8),
                    CustomCard(
                      image: Image.asset('assets/images/skateJacket.png'),
                      title: "Skate Jacket",
                      price: 32.0,
                      size: "Size: S",
                      color: "Color: Lemon",
                    ),
                    SizedBox(height: 8),
                    CustomCard(
                      image: Image.asset('assets/images/PumbJacket.png'),
                      title: "Pumb Jacket",
                      price: 148.0,
                      size: "Size: M",
                      color: "Color: Black",
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 300,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Subtotal", style: TextStyle(fontSize: 18)),
                            Text("\$355", style: TextStyle(fontSize: 22)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Shipping cost",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text("\$8.0", style: TextStyle(fontSize: 22)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Tax", style: TextStyle(fontSize: 18)),
                            Text("\$0.0", style: TextStyle(fontSize: 22)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total", style: TextStyle(fontSize: 18)),
                            Text("\$363", style: TextStyle(fontSize: 22)),
                          ],
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: TextField(
                            controller: couponeController,
                            decoration: InputDecoration(
                              fillColor: AppColors.graycolor,
                              border: InputBorder.none,
                              filled: true,
                              prefixIcon: Image.asset(
                                'assets/icons/discountshape.png',
                              ),
                              hintText: "Enter coupone code",
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(25),
                                  ),

                                  child: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        MainButton(
                          text: "Checkout",
                          onpress: () {
                            pushTo(context, CheckOutView());
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
