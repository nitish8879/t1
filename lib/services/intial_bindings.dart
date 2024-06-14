import 'package:flutter_application_1/services/auth_service.dart';
import 'package:get/get.dart';

class IntialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthService());
  }
}
