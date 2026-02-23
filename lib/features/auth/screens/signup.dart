import 'package:flutter/material.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/functions/validation.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/core/widgets/custom_text_form.dart';
import 'package:zara/core/widgets/main_button.dart';
import 'package:zara/core/widgets/social_button.dart';
import 'package:zara/features/auth/screens/create_account.dart';
import 'package:zara/features/auth/screens/signup_password.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                  Text("Sign Up", style: TextStyles.title),
                  const SizedBox(height: 16),

                  CustomTextFormField(
                    hintText: "Email Address",
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      } else if (!isEmailValid(value)) {
                        return 'Please enter a valid email';
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
                          pushReplacement(context, Signuppassword());
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
                        "Dont have an Account ? ",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.blackcolor,
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          setState(() {
                            pushReplacement(context, CreateAccount());
                          });
                        },

                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          "Create One",
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

                  /// Apple Button
                  SocialButton(
                    imagePath: "assets/icons/apple.png",
                    text: "Sign Up with Apple",
                    onpress: () {
                      setState(() {
                        // pushReplacement(context, );
                      });
                    },
                  ),
                  const SizedBox(height: 16),

                  /// Google Button
                  SocialButton(
                    imagePath: "assets/icons/google.png",
                    text: "Sign Up with Facebook",
                    onpress: () {
                      setState(() {
                        // pushReplacement(context, );
                      });
                    },
                  ),

                  const SizedBox(height: 16),

                  /// Facebook Button
                  SocialButton(
                    imagePath: "assets/icons/facebook.png",
                    text: "Sign Up with Facebook",
                    onpress: () {
                      setState(() {
                        // pushReplacement(context, );
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
