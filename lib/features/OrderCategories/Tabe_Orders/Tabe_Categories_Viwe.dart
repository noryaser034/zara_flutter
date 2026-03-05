import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/features/OrderCategories/Screens/Orders.dart';
import 'package:zara/features/OrderCategories/Tabe_Orders/tabe_categories_bady.dart';
import 'package:zara/features/OrderCategories/widget/list_tab.dart';
import 'package:zara/features/order_status/orders_data.dart';

class TabeCategoriesViwe extends StatelessWidget {
  const TabeCategoriesViwe({super.key});

  // String selectedStatus = 'Processing';
  @override
  Widget build(BuildContext context) {
    return TabeCategoriesBady();
  }
}
