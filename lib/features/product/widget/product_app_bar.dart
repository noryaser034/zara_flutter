import 'package:flutter/material.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/features/main/main_app_screen.dart';

class ProductAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProductAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: AppColors.background,
      elevation: 0,
      leading: IconButton(
        icon: const CircleAvatar(
          backgroundColor: Color(0xffF4F4F4),
          child: Icon(Icons.arrow_back_ios_new, size: 18, color: Colors.black),
        ),
        onPressed: () => pushReplacement(context, const MainAppScreen()),
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

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}