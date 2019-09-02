abstract class BaseProductOption {
  String name, value, meta;
  double price;

  BaseProductOption(this.name, this.value, this.meta, this.price);

  BaseProductOption.fromjson(Map<String, dynamic> jsonObject) {
    this.name = jsonObject['name'];
    this.value = jsonObject['value'];
    this.meta = jsonObject['meta'];
    this.price = jsonObject['price'];
  }
}