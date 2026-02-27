import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/core/widgets/main_button.dart';
import 'package:zara/features/auth/screens/sign_in_email.dart';

class ResendPassword extends StatelessWidget {
  const ResendPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            spacing: 24,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.sentEmail),
              Text(
                textAlign: TextAlign.center,
                'We Sent you an Email to reset your password.',
                style: TextStyles.subtitle.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              MainButton(
                width: 159,
                height: 52,
                text: 'Return To Login',
                onpress: () {
                  pushReplacement(context, Signin());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
