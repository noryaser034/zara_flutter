import 'package:flutter/material.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/features/cart/cart_view.dart';
import 'package:zara/features/home/data/product_model.dart';
import 'package:zara/features/main/main_app_screen.dart';
import 'package:zara/features/product/widget/product_image_slider.dart';
import 'package:zara/features/product/widget/review_section.dart';
import 'package:zara/features/product/widget/selection_widgets.dart';

class Productdetails extends StatefulWidget {
  const Productdetails({super.key, required this.product});
  final ProductModel product;

  @override
  State<Productdetails> createState() => _ProductState();
}

class _ProductState extends State<Productdetails> {
  String selectedSize = "S";
  Color selectedColor = const Color(0xff9DA273);
  String selectedColorName = "Olive";
  int quantity = 1;

  final List<String> sizes = ["S", "M", "L", "XL", "2XL"];

  final List<Map<String, dynamic>> colors = [
    {"name": "Orange", "color": Colors.orange},
    {"name": "Black", "color": Colors.black},
    {"name": "Red", "color": Colors.red},
    {"name": "Yellow", "color": Colors.yellow},
    {"name": "Blue", "color": Colors.blue},
    {"name": "Olive", "color": const Color(0xff9DA273)},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: _buildAppBar(context),
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
                    _buildProductHeader(),
                    const SizedBox(height: 20),
                    SizeColorSelector(
                      selectedSize: selectedSize,
                      selectedColor: selectedColor,
                      selectedColorName: selectedColorName,
                      onSizeTap: _showSizeBottomSheet,
                      onColorTap: _showColorBottomSheet,
                    ),
                    const SizedBox(height: 12),
                    QuantitySelector(
                      quantity: quantity,
                      onAdd: () => setState(() => quantity++),
                      onRemove: () =>
                          setState(() => quantity > 1 ? quantity-- : null),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      "Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.",
                      style: TextStyle(color: Colors.grey, height: 1.5),
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
      bottomNavigationBar: _buildBottomAction(context),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: AppColors.background,
      elevation: 0,
      leading: IconButton(
        icon: const CircleAvatar(
          backgroundColor: Color(0xffF4F4F4),
          child: Icon(Icons.arrow_back_ios_new, size: 18, color: Colors.black),
        ),
        onPressed: () => pushReplacement(context, MainAppScreen()),
      ),
      actions: [
        IconButton(
          icon: const CircleAvatar(
            backgroundColor: Color(0xffF4F4F4),
            child: Icon(Icons.favorite_border, color: Colors.black),
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildProductHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.product.name,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          '\$${widget.product.price}',
          style: const TextStyle(
            fontSize: 18,
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildBottomAction(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.black12)),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: () {
          pushReplacement(context, CartView());
        },
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '\$${widget.product.price * quantity}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: VerticalDivider(
                  color: Colors.white24,
                  indent: 15,
                  endIndent: 15,
                ),
              ),
              const Text(
                "Add to Bag",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showSizeBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Select Size",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            ...sizes.map(
              (s) => ListTile(
                title: Text(s, textAlign: TextAlign.center),
                selected: selectedSize == s,
                selectedColor: AppColors.primary,
                trailing: selectedSize == s ? const Icon(Icons.check) : null,
                onTap: () {
                  setState(() => selectedSize = s);
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showColorBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Select Color",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            ...colors.map(
              (c) => ListTile(
                leading: CircleAvatar(backgroundColor: c['color'], radius: 12),
                title: Text(c['name']),
                trailing: selectedColorName == c['name']
                    ? const Icon(Icons.check, color: AppColors.primary)
                    : null,
                onTap: () {
                  setState(() {
                    selectedColorName = c['name'];
                    selectedColor = c['color'];
                  });
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: const Center(child: Text('Cart Page')),
    );
  }
}
