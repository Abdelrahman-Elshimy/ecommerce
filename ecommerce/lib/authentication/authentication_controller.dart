import 'package:ecommerce/authentication/authenticable.dart';
import 'package:ecommerce/user/user.dart';

class FirebaseAuthenticationController implements Authenticable {

  @override
  Future<User> register(String email, String password) {
    return null;
  }

  @override
  Future<bool> login(String email, String password) {
    return null;
  }

  @override
  Future<bool> resetPassword(String email) {
    return null;
  }

  @override
  Future<User> updateprofile(User user) {
    return null;
  }
}
