import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/features/home/data/product_model.dart';
import 'package:zara/features/product/state/product_state.dart';
import 'package:zara/features/product/widget/color_bottom_sheet.dart';
import 'package:zara/features/product/widget/product_app_bar.dart';
import 'package:zara/features/product/widget/product_bottom_action.dart';
import 'package:zara/features/product/widget/product_description.dart';
import 'package:zara/features/product/widget/product_header.dart';
import 'package:zara/features/product/widget/product_image_slider.dart';
import 'package:zara/features/product/widget/review_section.dart';
import 'package:zara/features/product/widget/selection_widgets.dart';
import 'package:zara/features/product/widget/size_bottom_sheet.dart';

class Productdetails extends StatefulWidget {
  const Productdetails({super.key, required this.product});
  final ProductModel product;

  @override
  State<Productdetails> createState() => _ProductState();
}

class _ProductState extends State<Productdetails> {
  final state = ProductState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const ProductAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductImageSlider(image: widget.product.image),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductHeader(product: widget.product),
                    const SizedBox(height: 20),
                    SizeColorSelector(
                      selectedSize: state.selectedSize,
                      selectedColor: state.selectedColor,
                      selectedColorName: state.selectedColorName,
                      onSizeTap: _showSizeBottomSheet,
                      onColorTap: _showColorBottomSheet,
                    ),
                    const SizedBox(height: 12),
                    QuantitySelector(
                      quantity: state.quantity,
                      onAdd: () => setState(() => state.quantity++),
                      onRemove: () => setState(
                        () => state.quantity > 1 ? state.quantity-- : null,
                      ),
                    ),
                    const SizedBox(height: 25),
                    const ProductDescription(
                      description:
                          "Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.",
                    ),
                    const ReviewSection(),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ProductBottomAction(
        product: widget.product,
        quantity: state.quantity,
      ),
    );
  }

  void _showSizeBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (context) => SizeBottomSheet(
        sizes: state.sizes,
        selectedSize: state.selectedSize,
        onSizeSelected: (s) => setState(() => state.selectedSize = s),
      ),
    );
  }

  void _showColorBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (context) => ColorBottomSheet(
        colors: state.colors,
        selectedColorName: state.selectedColorName,
        onColorSelected: (name, color) => setState(() {
          state.selectedColorName = name;
          state.selectedColor = color;
        }),
      ),
    );
  }
}
