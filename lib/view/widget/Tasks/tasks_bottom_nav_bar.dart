import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/controller/home/btm_nav.dart';
import 'package:todo_master/core/consts/app_color.dart';
import 'package:todo_master/data/Tasks/bottom_nav_bar_list.dart';

class TasksBottomNavBar extends StatelessWidget {
  const TasksBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final BtmNav btmNav = Get.put(BtmNav());
    return Obx(() => BottomNavigationBar(
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: AppColor.black,
        currentIndex: btmNav.index1.value,
        onTap: btmNav.onTab1,
        items: bottomNavBarList()));
  }
}
