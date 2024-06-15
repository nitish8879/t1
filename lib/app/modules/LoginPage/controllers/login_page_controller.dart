import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:flutter_application_1/services/auth_service.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  bool isLoginPage = true;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void signin() {
    AuthService.to.isLoggedIn = true;
    Get.offAllNamed(Routes.ROOT_PAGE);
  }

  @override
  void onClose() {}
}
