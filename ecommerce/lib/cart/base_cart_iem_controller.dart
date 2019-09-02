import 'package:ecommerce/cart/base_cart_item.dart';

class BaseCartItemController {
  BaseCartItem cartItem;

  BaseCartItemController(this.cartItem);
  
  static List<BaseCartItem> toBaseCartItems(List<Map<String, dynamic>> jsonObject) {

  }
}