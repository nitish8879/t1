import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:flutter_application_1/services/intial_bindings.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      getPages: AppPages.routes,
      initialBinding: IntialBindings(),
    ),
  );
}
