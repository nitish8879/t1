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
  }

  Future<void> checkUser() async {
    if (!isLoading.value) {
      isLoading.value = true;
    }

    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  void onClose() {}
}
