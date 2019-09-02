
import 'package:ecommerce/cart/base_cart_iem_controller.dart';
import 'package:ecommerce/cart/base_cart_item.dart';

class BaseCart {
  List<BaseCartItem> cartItems;

  BaseCart(this.cartItems);

  BaseCart.fromJson(Map<String, dynamic> jsonObject) {
    this.cartItems = BaseCartItemController.toBaseCartItems(jsonObject['items']);
  }

}