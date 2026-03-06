import 'package:zara/features/caaart/data/cart_model.dart';
import 'package:zara/features/home/data/product_model.dart';

void addToCart(ProductModel model) {
  for (var item in cartItems) {
    if (item.product.tagKey == model.tagKey) {
      item.quantity++;
      return;
    }
  }
  cartItems.add(CartModel(product: model));
}
