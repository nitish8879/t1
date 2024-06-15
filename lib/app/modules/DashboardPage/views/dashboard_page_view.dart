import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/SideBarView/views/side_bar_view_view.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_page_controller.dart';

class DashboardPageView extends GetView<DashboardPageController> {
  const DashboardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      appBar: AppBar(
        title: const Text('DashboardPageView'),
        centerTitle: true,
        leading: IconButton(
          onPressed: controller.toggleDrawer,
          icon: const Icon(Icons.menu),
        ),
      ),
      drawer: Drawer(
        width: 300,
        child: SideBarViewView(),
      ),
      body: Center(
        child: Obx(() {
          return Text(
            controller.selectedTab?.name ?? "No Tab Selected",
            style: const TextStyle(fontSize: 20),
          );
        }),
      ),
    );
  }
}
