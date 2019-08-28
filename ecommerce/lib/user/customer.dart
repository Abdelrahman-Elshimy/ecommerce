import 'package:ecommerce/user/user.dart';

class Customer extends User {
  Customer(String id, String firstName, String lastName, String email,
      String phone, String gender)
      : super(id, firstName, lastName, email, phone, gender);
}
