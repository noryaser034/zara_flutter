import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/widgets/custom_text_form.dart';
import 'package:zara/features/cart/widgets/pricing_tile.dart';

class PriceDetailes extends StatelessWidget {
  const PriceDetailes({super.key, required this.subtotal, required this.total});

  final double subtotal;
  final double total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PricingTile(
          leading: 'Subtotal',
          price: '\$${subtotal.toStringAsFixed(2)}',
        ),
        SizedBox(height: 12),
        PricingTile(leading: 'Shipping Cost', price: '8.00'),
        PricingTile(leading: 'Tax', price: '0.00'),
        PricingTile(leading: 'Total', price: '\$${total.toStringAsFixed(2)}'),
        SizedBox(height: 31),
        CustomTextFormField(
          prefixIcon: Image.asset(AppImages.discountShape),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Image.asset(AppImages.arrowContainer),
          ),
          hintText: 'Enter Coupon Code',
        ),
      ],
    );
  }
}
