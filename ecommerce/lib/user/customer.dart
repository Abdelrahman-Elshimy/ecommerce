import 'package:ecommerce/order/base_order.dart';
import 'package:ecommerce/order/order_controller.dart';
import 'package:ecommerce/product/base_product.dart';
import 'package:ecommerce/product/product_controller.dart';
import 'package:ecommerce/user/address.dart';
import 'package:ecommerce/user/user.dart';

class Customer extends User {
  Address shippingAddress;
  Address billingAddress;
  List<BaseProduct> watchList;
  List<BaseOrder> orders;
  Customer(
      String id,
      String firstName,
      String lastName,
      String email,
      String phone,
      String gender,
      Address shippingAddress,
      Address billingAddress,
      List<BaseOrder> orders,
      List<BaseProduct> watchList)
      : super(id, firstName, lastName, email, phone, gender) {
    this.shippingAddress = shippingAddress;
    this.billingAddress = billingAddress;
    this.orders = orders;
    this.watchList = watchList;
  }

  Customer.fromJson(Map<String, dynamic> jsonObject)
      : super(
          jsonObject['id'],
          jsonObject['firstName'],
          jsonObject['lastName'],
          jsonObject['email'],
          jsonObject['phone'],
          jsonObject['gender'],
        ) {
    this.shippingAddress = Address.fromJson(jsonObject['shipping_address']);
    this.billingAddress = Address.fromJson(jsonObject['billing_address']);
    this.watchList = ProductController.toProducts(jsonObject['watch_list']);
    this.orders = OrderController.toOrders(jsonObject['orders']);
  }
}
