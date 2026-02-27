import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_fonts.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/widgets/second_button.dart';
import 'package:zara/core/widgets/third_button.dart';
import 'package:zara/features/main/main_app_screen.dart';
import 'package:zara/features/order_status/orders_data.dart';

class OrderStatusBody extends StatefulWidget {
  const OrderStatusBody({super.key});

  @override
  State<OrderStatusBody> createState() => _OrderStatusBodyState();
}

class _OrderStatusBodyState extends State<OrderStatusBody> {
  String selectedStatus = 'Processing';

  List<OrdersModel> get filterList {
    return orderStatus.where((order) {
      return order.status == selectedStatus;
    }).toList();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Orders",
          style: TextStyle(
            fontFamily: AppFonts.gabarito,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ThirdButton(
                    text: "Processing",
                    onpress: () {
                      setState(() {
                        selectedStatus = 'Processing';
                      });
                    },
                  ),
                  ThirdButton(
                    text: "Shipped",
                    onpress: () {
                      setState(() {
                        selectedStatus = 'Shipped';
                      });
                    },
                  ),
                  ThirdButton(
                    text: "Delivered",
                    onpress: () {
                      setState(() {
                        selectedStatus = 'Delivered';
                      });
                    },
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Found ${filterList.length} orders',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: filterList.length,
                itemBuilder: (context, i) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/icons/order.png'),
                  ),
                  title: Text('Order No. ${filterList[i].orderNo}'),
                  subtitle: Text('No. of Items ${filterList[i].noItems}'),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            Center(
              child: SecondButton(
                text: "Explore Categories",
                onpress: () {
                  pushReplacement(context, MainAppScreen());
                },
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
