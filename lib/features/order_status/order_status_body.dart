import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_fonts.dart';
import 'package:zara/core/widgets/second_button.dart';
import 'package:zara/features/order_status/orders_data.dart';

class OrderStatusBody extends StatefulWidget {
  const OrderStatusBody({super.key});

  @override
  State<OrderStatusBody> createState() => _OrderStatusBodyState();
}

class _OrderStatusBodyState extends State<OrderStatusBody> {
    
  int itemNo = 0;
  

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SecondButton(text: "Processing", onpress: (){
                  setState(() {
                    itemNo = 1;
                    
                  });
                }),
                SecondButton(text: "Shipped", onpress: (){
                  setState(() {
                    itemNo = 2;
                  });
                }),
                SecondButton(text: "Delivered", onpress: (){
                  setState(() {
                    itemNo = 3;
                  });
                }),
                SecondButton(text: "Returned", onpress: (){
                  setState(() {
                    itemNo = 4;
                  });
                }),
                SecondButton(text: "Cancelled", onpress: (){
                  setState(() {
                    itemNo = 5;
                  });
                }),

            ],),
            ListView.builder(
              itemCount: orderStatus.length,
              itemBuilder: (context, i) => ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/icons/order.png'),
                ),
                title: Text('${orderStatus[i].orderNo}'),
                subtitle: Text('${orderStatus[i].noItems}'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
            ),

            SizedBox(height: 20),
            SecondButton(text: "Explore Categories", onpress: () {}),
          ],
        ),
      ),
    );
  }
}
