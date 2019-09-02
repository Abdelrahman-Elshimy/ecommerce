import 'package:ecommerce/discount/base_discount.dart';

class DiscountController {

  BaseDiscount discount;

  DiscountController(this.discount);

  static List<BaseDiscount> toDiscounts(List<Map<String, dynamic>> jsonObject) {

  }
}