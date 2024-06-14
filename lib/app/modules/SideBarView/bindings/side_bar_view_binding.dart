import 'package:get/get.dart';

import '../controllers/side_bar_view_controller.dart';

class SideBarViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SideBarViewController>(
      () => SideBarViewController(),
    );
  }
}
