import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/core/consts/app_color.dart';

List<BottomNavigationBarItem> bottomNavBarList = [
  BottomNavigationBarItem(
      activeIcon: Icon(
        Icons.check_circle,
      ),
      icon: Icon(
        Icons.check_circle,
        color: AppColor.black,
        size: 20,
      ),
      label: 'Tasks'.tr),
  BottomNavigationBarItem(
      activeIcon: Icon(
        Icons.calendar_month_outlined,
      ),
      icon: Icon(
        Icons.calendar_month_outlined,
        color: AppColor.black,
        size: 20,
      ),
      label: 'Dashboard'.tr),
  BottomNavigationBarItem(
      activeIcon: Icon(
        Icons.notifications,
      ),
      icon: Icon(
        Icons.notifications_none,
        color: AppColor.black,
        size: 20,
      ),
      label: 'Notifications'.tr),
  BottomNavigationBarItem(
      activeIcon: Icon(
        Icons.person_2_outlined,
      ),
      icon: Icon(
        Icons.person_2_outlined,
      ),
      label: 'Profile'.tr),
];
