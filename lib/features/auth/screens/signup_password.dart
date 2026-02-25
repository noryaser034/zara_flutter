import 'package:flutter/material.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/core/widgets/main_button.dart';
import 'package:zara/features/auth/screens/forgot_password.dart';
import 'package:zara/features/auth/widgets/password_text_form_filed.dart';

class Signuppassword extends StatefulWidget {
  const Signuppassword({super.key});

  @override
  State<Signuppassword> createState() => _SignuppasswordState();
}

class _SignuppasswordState extends State<Signuppassword> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 123),
                  Text("Sign in", style: TextStyles.title),
                  const SizedBox(height: 16),

                  PasswordTextFormFiled(
                    hintText: 'Password',
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      } else if (value.length < 8) {
                        return 'Password must be at least 8 characters';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 16),

                  MainButton(
                    text: "Continue",
                    onpress: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          // pushReplacement(context, );
                        });
                      }
                    },
                  ),

                  const SizedBox(height: 16),

                  /// Don't have account row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Forgot Password ? ",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.blackcolor,
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          setState(() {
                            pushReplacement(context, ForgotPassword());
                          });
                        },

                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          "Reset",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackcolor,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 71),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
