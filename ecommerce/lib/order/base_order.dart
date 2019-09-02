import 'package:ecommerce/cart/base_cart.dart';
import 'package:ecommerce/payment/base_payment.dart';
import 'package:ecommerce/user/customer.dart';

abstract class BaseOrder {
  BaseCart cart;
  Customer customer;
  BasePayment payment;

  BaseOrder(this.cart, this.customer, this.payment);
  BaseOrder.formJson(Map<String, dynamic> jsonObject) {
    this.customer = Customer.fromJson(jsonObject['customer']);
    this.cart = BaseCart.fromJson(jsonObject['cart']);
    this.payment = BasePayment.formJson(jsonObject['payment']);
  }
  double total() {
    
  }
}