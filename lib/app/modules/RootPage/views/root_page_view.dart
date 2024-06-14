import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/root_page_controller.dart';

class RootPageView extends GetView<RootPageController> {
  const RootPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet(
      initialRoute: Routes.DASHBOARD_PAGE,
      anchorRoute: Routes.ROOT_PAGE,
    );
  }
}
