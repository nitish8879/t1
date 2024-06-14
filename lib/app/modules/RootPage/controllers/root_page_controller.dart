import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:flutter_application_1/services/auth_service.dart';
import 'package:get/get.dart';

class RootPageController extends GetxController {
  var isLoading = true.obs;
  late String intialPage;
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
    await Future.delayed(const Duration(seconds: 2));
    if (await AuthService.to.userLoggedIn) {
      intialPage = Routes.DASHBOARD_PAGE;
    } else {
      intialPage = Routes.LOGIN_PAGE;
    }
    isLoading.value = false;
  }

  @override
  void onClose() {}
}
