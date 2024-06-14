import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/side_bar_view_controller.dart';

class SideBarViewView extends GetView<SideBarViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SideBarViewView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SideBarViewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
