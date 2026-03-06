import 'package:zara/features/home/data/product_model.dart';

class CartModel {
  final ProductModel product;
  int quantity;
  CartModel({required this.product, this.quantity = 1});
}

List<CartModel> cartItems = [];
