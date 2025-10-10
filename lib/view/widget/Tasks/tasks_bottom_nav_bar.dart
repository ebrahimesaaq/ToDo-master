import 'package:flutter/material.dart';
import 'package:todo_master/core/consts/app_color.dart';
import 'package:todo_master/data/Tasks/bottom_nav_bar_list.dart';

class TasksBottomNavBar extends StatelessWidget {
  const TasksBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: AppColor.black,
        currentIndex: 1,
        onTap: (index) {},
        items: bottomNavBarList);
  }
}
