import 'package:flutter/material.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/features/caaart/data/cart_model.dart';
import 'package:zara/features/caaart/widgets/cart_header.dart';
import 'package:zara/features/caaart/widgets/cart_item_card.dart';
import 'package:zara/features/caaart/widgets/price_detailes.dart';
import 'package:zara/features/check_out/check_out_view.dart';
import 'package:zara/features/main/main_app_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final subtotal = cartItems.fold(
      0.0,
      (sum, item) => sum + (item.product.price * item.quantity),
    );
    final total = subtotal + 8.00;

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,

        leading: IconButton(
          onPressed: () {
            pushReplacement(context, MainAppScreen());
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        centerTitle: true,
        title: Text(
          'Cart',
          style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            CartHeader(
              onPressed: () {
                setState(() {
                  cartItems.clear();
                });
              },
            ),
            SizedBox(height: 16),
            Expanded(
              flex: 3,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return CartItemCard(
                    item: item,
                    index: index,
                    onIncrement: () {
                      setState(() {
                        item.quantity++;
                      });
                    },
                    onDecrement: () {
                      setState(() {
                        if (item.quantity > 1) {
                          item.quantity--;
                        } else {
                          cartItems.removeAt(index);
                        }
                      });
                    },
                  );
                },
                itemCount: cartItems.length,
              ),
            ),
            PriceDetailes(subtotal: subtotal, total: total),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            foregroundColor: AppColors.background,
            backgroundColor: AppColors.primary,
            minimumSize: Size(double.infinity, 70),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          onPressed: () {
            pushTo(context, CheckOutView());
          },
          child: Text('Checkout', style: TextStyles.subtitle),
        ),
      ),
    );
  }
}
