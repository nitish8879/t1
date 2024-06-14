import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_page_controller.dart';

class DashboardPageView extends GetView<DashboardPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashboardPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DashboardPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
