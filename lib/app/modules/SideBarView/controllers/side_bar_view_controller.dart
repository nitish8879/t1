import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/models/tab_model.dart';
import 'package:flutter_application_1/app/modules/DashboardPage/controllers/dashboard_page_controller.dart';
import 'package:get/get.dart';

class SideBarViewController extends GetxController {
  DatabaseReference ref = FirebaseDatabase.instance.ref();
  final scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void closeDrawer() {
    Get.find<DashboardPageController>().toggleDrawer();
  }

  int i = 1;

  Future<void> addData() async {
    var newTab = TabModel(name: "Home$i", path: "/home$i");
    i++;
    ref.child("tabs").push().set(newTab.toJson());
  }

  Future<void> removeItem(String? key) async {
    if (Get.find<DashboardPageController>().selectedTab?.uid == key) {
      Get.find<DashboardPageController>().selectedTab = null;
    }
    ref.child("tabs/$key").remove();
  }

  @override
  void onClose() {}

  void onItemTap(TabModel item) {
    Get.find<DashboardPageController>().selectedTab = item;
    closeDrawer();
  }
}
