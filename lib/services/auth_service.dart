import 'package:get/get.dart';

class AuthService extends GetxService {
  static AuthService get to => Get.find();
  Future<bool> get userLoggedIn async => false;
}
