import 'package:flutter/material.dart';

import 'package:zara/features/OrderCategories/widget/order_continer.dart';
import 'package:zara/features/order_status/orders_data.dart';

class ListTab extends StatefulWidget {
  const ListTab({super.key, required this.selectedStatus});
  final String selectedStatus;
  @override
  State<ListTab> createState() => _ListTabState();
}

class _ListTabState extends State<ListTab> {
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
            child: OrderContiner(modal: modal, index: index),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 12),
        itemCount: filterList.length,
      ),
    );
  }
}
