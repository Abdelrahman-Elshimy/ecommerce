class BaseDiscount {
  double minQuantity;
  double maxQuantity;
  double amount;
  DateTime endDate;

  BaseDiscount(this.minQuantity, this.maxQuantity, this.amount, this.endDate);

  BaseDiscount.fromJson(Map<String, dynamic> jsonObject) {
    this.maxQuantity = jsonObject['maxQuantity'];
    this.minQuantity = jsonObject['minQuantity'];
    // this.amount = jsonObject['amount'];
    this.endDate = DateTime.parse(jsonObject['endDate']);
  }
}
