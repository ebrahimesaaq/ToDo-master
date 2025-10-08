import 'package:flutter/material.dart';
import 'package:todo_master/core/consts/app_color.dart';

List<BottomNavigationBarItem> bottomNavBarList = const [
  BottomNavigationBarItem(
      activeIcon:
          Icon(Icons.check_circle, color: AppColor.primaryColor, size: 30),
      icon: Icon(
        Icons.check_circle,
        color: AppColor.black,
        size: 20,
      ),
      label: 'Tasks'),
  BottomNavigationBarItem(
      activeIcon: Icon(Icons.calendar_month_outlined,
          color: AppColor.primaryColor, size: 30),
      icon: Icon(
        Icons.calendar_month_outlined,
        color: AppColor.black,
        size: 20,
      ),
      label: 'Tasks'),
  BottomNavigationBarItem(
      activeIcon:
          Icon(Icons.notifications, color: AppColor.primaryColor, size: 30),
      icon: Icon(
        Icons.notifications_none,
        color: AppColor.black,
        size: 20,
      ),
      label: 'Tasks'),
  BottomNavigationBarItem(
      activeIcon:
          Icon(Icons.person_2_outlined, color: AppColor.primaryColor, size: 30),
      icon: Icon(
        Icons.person_2_outlined,
        color: AppColor.black,
        size: 20,
      ),
      label: 'Tasks'),
];
