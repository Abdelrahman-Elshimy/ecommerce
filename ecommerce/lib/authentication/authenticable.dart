import 'package:ecommerce/user/user.dart';

class Authenticable {
  Future<User> register(String email, String password){}
  Future<bool> login(String email, String password) {}
  Future<bool> resetPassword(String email) {}

}