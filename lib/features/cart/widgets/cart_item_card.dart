import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/features/cart/data/cart_model.dart';
import 'package:zara/features/cart/widgets/quantity_controller.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
    required this.item,
    required this.index,
    required this.onIncrement,
    required this.onDecrement,
  });

  final CartModel item;
  final int index;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.grayOrder,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Image.asset(item.product.image, width: 64, height: 64),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        item.product.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '${(item.product.price * item.quantity).toStringAsFixed(2)}\$',
                      style: TextStyles.body.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Quantity : ${item.quantity}',
                      style: TextStyles.body.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: onIncrement,
                          child: QuantityController(
                            icon: Icons.add,
                            iconColor: AppColors.background,
                          ),
                        ),
                        SizedBox(width: 8),
                        GestureDetector(
                          onTap: onDecrement,
                          child: QuantityController(
                            icon: Icons.remove,
                            iconColor: AppColors.background,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
