import 'package:ecommerce/category/base_category.dart';
import 'package:ecommerce/category/category_controller.dart';
import 'package:ecommerce/discount/base_discount.dart';
import 'package:ecommerce/discount/discount_controller.dart';
import 'package:ecommerce/image/base_image.dart';
import 'package:ecommerce/image/image_controller.dart';
import 'package:ecommerce/product_option/base_option.dart';
import 'package:ecommerce/product_option/option_controller.dart';
import 'package:ecommerce/tag/base_tag.dart';
import 'package:ecommerce/tag/tag_controller.dart';

class BaseProduct {
  String id, title, description;
  double price, quantity;
  List<BaseImage> images;
  List<BaseProductOption> options;
  List<BaseCategory> categories;
  List<BaseTag> tags;
  List<BaseDiscount> discounts;

  BaseProduct(this.id, this.title, this.description, this.price, this.quantity,
      this.images, this.options, this.categories, this.tags, this.discounts);

  BaseProduct.fromJson(Map<String, dynamic> jsonObject) {
    this.id = jsonObject['id'];
    this.title = jsonObject['title'];
    this.description = jsonObject['description'];
    this.price = jsonObject['price'];
    this.quantity = jsonObject['quantity'];
    this.images = ImageController.toimages(jsonObject['images']);
    this.categories = CategoryController.toCategories(jsonObject['categories']);
    this.options = OptionController.toproductoptions(jsonObject['options']);
    this.tags = TagController.totags(jsonObject['tags']);
    this.discounts = DiscountController.toDiscounts(jsonObject['discounts']);
  }
}
