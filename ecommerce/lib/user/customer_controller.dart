import 'package:ecommerce/user/customer.dart';
import 'package:ecommerce/product/base_product.dart';
import 'package:ecommerce/order/base_order.dart';

class CustomerController {
  Customer customer;
  

  CustomerController(this.customer);

   void addToOrders(BaseOrder order) {
    this.customer.orders.add(order);
  }

  void addToWatchList(BaseProduct product) {
    customer.watchList.add(product);
  }

  bool orderInOrders(BaseOrder order) {
    return customer.orders.contains(order);
  }

  bool productInWatchList(BaseProduct product) {
    return customer.watchList.contains(product);
  }

  bool removeProductFromWatchList(BaseProduct product) {
    return customer.watchList.remove(product);
  }
}