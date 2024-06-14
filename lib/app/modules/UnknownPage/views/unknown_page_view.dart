import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/unknown_page_controller.dart';

class UnknownPageView extends GetView<UnknownPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UnknownPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'UnknownPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
