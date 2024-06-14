import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:flutter_application_1/app/utils/app_images.dart';

import 'package:get/get.dart';

import '../controllers/root_page_controller.dart';

class RootPageView extends GetView<RootPageController> {
  const RootPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          return controller.isLoading.value
              ? Center(
                  child: Image.asset(
                    AppImages.mainLogoWithName,
                    width: 120,
                  ),
                )
              : GetRouterOutlet(
                  initialRoute: controller.intialPage,
                  anchorRoute: Routes.ROOT_PAGE,
                );
        },
      ),
    );
  }
}
