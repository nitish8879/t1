import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:flutter_application_1/services/auth_service.dart';
import 'package:get/get.dart';

class RootPageController extends GetxController {
  var isLoading = true.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    checkUser();
  }

  Future<void> checkUser() async {
    if (!isLoading.value) {
      isLoading.value = true;
    }
    if (!(await AuthService.to.userLoggedIn)) {
      Get.offAllNamed(Routes.LOGIN_PAGE);
    } else {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {}
}
