import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/models/tab_model.dart';
import 'package:flutter_application_1/app/modules/DashboardPage/controllers/dashboard_page_controller.dart';
import 'package:flutter_application_1/app/utils/app_colors.dart';
import 'package:flutter_application_1/app/utils/app_extension.dart';

import 'package:get/get.dart';

import '../controllers/side_bar_view_controller.dart';

class SideBarViewView extends GetView<SideBarViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: AppColors.kGrey50),
            child: Column(
              children: [
                Row(
                  children: [
                    const Spacer(),
                    const CircleAvatar(
                      minRadius: 30,
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: controller.closeDrawer,
                        icon: const Icon(Icons.close),
                      ),
                    ),
                  ],
                ),
                24.height,
                ElevatedButton(
                  onPressed: controller.addData,
                  child: const Text('Add Data'),
                ),
              ],
            ),
          ),
          Expanded(
            child: FirebaseAnimatedList(
              query: controller.ref.child("tabs"),
              controller: controller.scrollController,
              itemBuilder: (context, snapshot, animation, index) {
                var item = TabModel.fromJson(snapshot.value);
                item.uid = snapshot.key;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: InkWell(
                    onTap: () => controller.onItemTap(item),
                    borderRadius: BorderRadius.circular(6),
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Get.find<DashboardPageController>().selectedTab?.uid == item.uid ? AppColors.kGreen50 : Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item.name ?? '-',
                            ),
                            IconButton(onPressed: () => controller.removeItem(snapshot.key), icon: const Icon(Icons.remove))
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
