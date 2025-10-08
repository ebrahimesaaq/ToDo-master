import 'package:flutter/material.dart';
import 'package:todo_master/data/Tasks/bottom_nav_bar_list.dart';

class TasksBottomNavBar extends StatelessWidget {
  const TasksBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 2, onTap: (index) {}, items: bottomNavBarList);
  }
}
