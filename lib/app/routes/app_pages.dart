import 'package:get/get.dart';

import 'package:flutter_application_1/app/modules/DashboardPage/bindings/dashboard_page_binding.dart';
import 'package:flutter_application_1/app/modules/DashboardPage/views/dashboard_page_view.dart';
import 'package:flutter_application_1/app/modules/LoginPage/bindings/login_page_binding.dart';
import 'package:flutter_application_1/app/modules/LoginPage/views/login_page_view.dart';
import 'package:flutter_application_1/app/modules/RootPage/bindings/root_page_binding.dart';
import 'package:flutter_application_1/app/modules/RootPage/views/root_page_view.dart';
import 'package:flutter_application_1/app/modules/SideBarView/bindings/side_bar_view_binding.dart';
import 'package:flutter_application_1/app/modules/SideBarView/views/side_bar_view_view.dart';
import 'package:flutter_application_1/app/modules/UnknownPage/bindings/unknown_page_binding.dart';
import 'package:flutter_application_1/app/modules/UnknownPage/views/unknown_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ROOT_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.UNKNOWN_PAGE,
      page: () => UnknownPageView(),
      binding: UnknownPageBinding(),
    ),
    GetPage(
      name: _Paths.ROOT_PAGE,
      page: () => RootPageView(),
      binding: RootPageBinding(),
      children: [
        GetPage(
          name: _Paths.SIDE_BAR_VIEW,
          page: () => SideBarViewView(),
          binding: SideBarViewBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.DASHBOARD_PAGE,
      page: () => DashboardPageView(),
      binding: DashboardPageBinding(),
    ),
  ];
}
