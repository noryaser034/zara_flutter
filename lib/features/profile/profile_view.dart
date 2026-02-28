import 'package:flutter/material.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/features/auth/screens/sign_in_email.dart';
import 'package:zara/features/wish_list/wish_list.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(left: 20, top: 70, right: 20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: AppColors.background,
              backgroundImage: AssetImage('assets/images/circleImage.png'),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(left: 10),
              width: double.infinity,
              height: 170,
              decoration: BoxDecoration(
                color: AppColors.graycolor,
                border: Border.all(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text('Gilbert Jones', style: TextStyles.title),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ' gelbertjone001@gmail.com',
                          style: TextStyles.body,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Edit",
                            style: TextStyles.subtitle.copyWith(
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text('      121-224-7890', style: TextStyles.body),
                ],
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: AppColors.graycolor,
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Wishlist', style: TextStyles.body),
                    IconButton(
                      onPressed: () {
                        pushTo(context, WishList());
                      },
                      icon: Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: AppColors.graycolor,
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Help', style: TextStyles.body),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: AppColors.graycolor,
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Support', style: TextStyles.body),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: TextButton(
                onPressed: () {
                  pushReplacement(context, Signin());
                },
                child: Text(
                  'Sign Out',
                  style: TextStyles.body.copyWith(
                    color: AppColors.errorcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
