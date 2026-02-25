import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/styles/color.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    Center(child: Text('home')),
    Center(child: Text('notifications')),
    Center(child: Text('orders')),
    Center(child: Text('profile')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 18, bottom: 22),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(AppImages.home),
              activeIcon: Image.asset(AppImages.home, color: AppColors.primary),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(AppImages.notification),
              activeIcon: Image.asset(
                AppImages.notification,
                color: AppColors.primary,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(AppImages.order),
              activeIcon: Image.asset(
                AppImages.order,
                color: AppColors.primary,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(AppImages.profile),
              activeIcon: Image.asset(
                AppImages.profile,
                color: AppColors.primary,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
