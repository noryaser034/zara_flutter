import 'package:flutter/material.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/widgets/main_button.dart';
import 'package:zara/features/cart/cart_view.dart';
import 'package:zara/features/place_order/place_order_view.dart';

class CheckOutBody extends StatelessWidget {
  const CheckOutBody({
    super.key,
    this.shipAddressController,
    this.payMethodController,
  });

  final TextEditingController? shipAddressController;
  final TextEditingController? payMethodController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            popTo(context, CartView());
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        centerTitle: true,
        title: Text(
          'Checkout',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: double.infinity,
                height: 300,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextField(
                        controller: shipAddressController,
                        decoration: InputDecoration(
                          fillColor: AppColors.graycolor,
                          filled: true,

                          border: InputBorder.none,
                          hintText: "Add Shipping Address",
                          labelText: "Shipping Address",
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        controller: payMethodController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: AppColors.graycolor,
                          filled: true,
                          hintText: "Add Payment Method",
                          labelText: "Payment Method",
                        ),
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              MainButton(
                text: "Place Order",
                onpress: () {
                  pushTo(context, PlaceOrderView());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
