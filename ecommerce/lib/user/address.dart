class Address {
  String streetName, streetNumber, city, state, country, postCode;

  Address.fromJson(Map<String, dynamic> jsonObject) {
    this.streetName = jsonObject['streetName'];
    this.streetNumber = jsonObject['streetNumber'];
    this.city = jsonObject['city'];
    this.state = jsonObject['state'];
    this.country = jsonObject['country'];
    this.postCode = jsonObject['postCode'];
  }
}
