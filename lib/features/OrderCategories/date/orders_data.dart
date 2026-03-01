import 'package:flutter/material.dart';

class OrdersModel {
  OrdersModel({
    
  required this.NumberOrder, required this.NumberItem, required this.tageKey});

  final String NumberOrder;
  final String NumberItem;
  final String tageKey;

}

List<OrdersModel> openorders = [
  OrdersModel(
    tageKey: UniqueKey().toString(),
    NumberOrder: "Order  #456765",
    NumberItem: "4 items",
   ),

  OrdersModel(
    tageKey: UniqueKey().toString(),
    NumberOrder: "Order  #454569",
    NumberItem: "2 items",
  ),

  OrdersModel(
    tageKey: UniqueKey().toString(),
    NumberOrder: "Order  #454809",
    NumberItem: "1 items",
  ),
];