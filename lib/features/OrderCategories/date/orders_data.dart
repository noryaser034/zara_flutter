import 'package:flutter/material.dart';

class aOrdersModel {
  aOrdersModel({
    
  required this.NumberOrder, required this.NumberItem, required this.tageKey});

  final String NumberOrder;
  final String NumberItem;
  final String tageKey;

}

List<aOrdersModel> openorders = [
  aOrdersModel(
    tageKey: UniqueKey().toString(),
    NumberOrder: "Order  #456765",
    NumberItem: "4 items",

   ),

  aOrdersModel(
    tageKey: UniqueKey().toString(),
    NumberOrder: "Order  #454569",
    NumberItem: "2 items",
  ),

  aOrdersModel(
    tageKey: UniqueKey().toString(),
    NumberOrder: "Order  #454809",
    NumberItem: "1 items",
  ),
];