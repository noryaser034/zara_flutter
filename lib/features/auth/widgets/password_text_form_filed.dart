import 'package:flutter/material.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';

class PasswordTextFormFiled extends StatefulWidget {
  const PasswordTextFormFiled({
    super.key,
    this.hintText,
    this.keyboardType,
    required validator,
  });
  final String? hintText;
  final TextInputType? keyboardType;

  @override
  State<PasswordTextFormFiled> createState() => _PasswordTextFormFiledState();
}

class _PasswordTextFormFiledState extends State<PasswordTextFormFiled> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyles.caption1,
        fillColor: AppColors.graycolor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),

      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        } else if (value.length < 6) {
          return 'Password must be at least 6 characters';
        }
        return null;
      },
    );
  }
}
