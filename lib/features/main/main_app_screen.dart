import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/features/cart/cart_view.dart';
import 'package:zara/features/home/pages/home_screen.dart';
import 'package:zara/features/notifications/notifications_view.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int currentIndex = 0;
  static const List<Widget> screens = [
    HomeScreen(),
    NotificationsView(),
    CartView(),
    Center(child: Text('profile')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
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
