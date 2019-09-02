class BasePayment {
  String paymentID;
  double amount;
  DateTime paymentDate;
  String paymentMethod;

  BasePayment(this.amount, this.paymentDate, this.paymentID, this.paymentMethod);

  BasePayment.formJson(Map<String, dynamic> jsonObject) {
    this.paymentID = jsonObject['paymentID'];
    this.amount = jsonObject['amount'];
    this.paymentDate = DateTime.parse(jsonObject['paymentDate']);
    this.paymentMethod = jsonObject['paymentMethod'];
  }

}