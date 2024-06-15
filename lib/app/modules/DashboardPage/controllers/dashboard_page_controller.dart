import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/models/tab_model.dart';
import 'package:flutter_application_1/app/modules/SideBarView/bindings/side_bar_view_binding.dart';
import 'package:get/get.dart';

class DashboardPageController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  Rxn _selectedTab = Rxn<TabModel?>(null);

  TabModel? get selectedTab => _selectedTab.value;
  set selectedTab(TabModel? tab) => _selectedTab.value = tab;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  toggleDrawer() async {
    if (scaffoldKey.currentState?.isDrawerOpen ?? true) {
      scaffoldKey.currentState?.openEndDrawer();
    } else {
      SideBarViewBinding().dependencies();
      scaffoldKey.currentState?.openDrawer();
    }
  }
}
