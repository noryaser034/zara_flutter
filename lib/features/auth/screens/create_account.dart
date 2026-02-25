import 'package:flutter/material.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/functions/validation.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/core/widgets/custom_text_form.dart';
import 'package:zara/core/widgets/main_button.dart';
import 'package:zara/features/auth/screens/forgot_password.dart';
import 'package:zara/features/auth/screens/sign_in_email.dart';
import 'package:zara/features/auth/screens/sign_in_password.dart';
import 'package:zara/features/auth/widgets/password_text_form_filed.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                pushReplacement(context, const Signin());
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  'assets/icons/arrow_back.png',
                  width: 20,
                  height: 20,
                ),
              ),
            ),
          ),
        ),
      ),
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
                  const SizedBox(height: 20),
                  Text("Create Account", style: TextStyles.title),
                  const SizedBox(height: 16),

                  CustomTextFormField(
                    hintText: "First name",
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),

                  CustomTextFormField(
                    hintText: "Last name",
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  CustomTextFormField(
                    hintText: "Email Address",
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      } else if (!isEmailValid(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  PasswordTextFormFiled(
                    hintText: 'password',
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
                  const SizedBox(height: 40),

                  MainButton(
                    text: "Continue",
                    onpress: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          pushReplacement(context, Signinpassword());
                        });
                      }
                    },
                  ),

                  const SizedBox(height: 40),

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
