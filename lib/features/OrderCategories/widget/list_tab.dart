import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/features/OrderCategories/date/orders_data.dart';
import 'package:zara/features/OrderCategories/widget/order_continer.dart';
import 'package:zara/features/order_status/orders_data.dart';

class listTab extends StatefulWidget {
  const listTab({super.key, required this.selectedStatus});
  final String selectedStatus;
  @override
  State<listTab> createState() => _listTabState();
}

class _listTabState extends State<listTab> {
  //  final String selectedStatus = 'Processing';

  List<OrdersModel> get filterList {
    return orderStatus.where((order) {
      return order.status == widget.selectedStatus;
    }).toList();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 342,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          var modal = filterList[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: OrderContiner(modal: modal,  index: index),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 12),
        itemCount: filterList.length,
      ),
    );
  }
}
