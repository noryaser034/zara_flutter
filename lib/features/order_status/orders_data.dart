class OrdersModel {
  OrdersModel({
    required this.orderNo,
    required this.noItems,
    required this.status,
  });

  final String? orderNo;
  final int? noItems;
  final String? status;
}

List<OrdersModel> orderStatus = [
  OrdersModel(orderNo: "#123456", noItems: 4, status: "Processing"),
  OrdersModel(orderNo: "#789101", noItems: 3, status: "Processing"),
  OrdersModel(orderNo: "#112131", noItems: 5, status: "Processing"),
  OrdersModel(orderNo: "#415161", noItems: 6, status: "Shipped"),
  OrdersModel(orderNo: "#718192", noItems: 8, status: "Shipped"),
  OrdersModel(orderNo: "#202122", noItems: 2, status: "Delivered"),
  OrdersModel(orderNo: "#232425", noItems: 1, status: "Delivered"),
  OrdersModel(orderNo: "#262728", noItems: 5, status: "Returned"),
  OrdersModel(orderNo: "#293031", noItems: 3, status: "Cancelled"),
];
