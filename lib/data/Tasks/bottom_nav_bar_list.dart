import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<BottomNavigationBarItem> bottomNavBarList = [
  BottomNavigationBarItem(
      activeIcon: const Icon(
        Icons.check_circle,
      ),
      icon: const Icon(
        Icons.check_circle,
        size: 20,
      ),
      label: 'Tasks'.tr),
  BottomNavigationBarItem(
      activeIcon: const Icon(
        Icons.calendar_month_outlined,
      ),
      icon: const Icon(
        Icons.calendar_month_outlined,
        size: 20,
      ),
      label: 'Dashboard'.tr),
  BottomNavigationBarItem(
      activeIcon: const Icon(
        Icons.notifications,
      ),
      icon: const Icon(
        Icons.notifications_none,
        size: 20,
      ),
      label: 'Notifications'.tr),
  BottomNavigationBarItem(
      activeIcon: const Icon(
        Icons.person_2_outlined,
      ),
      icon: const Icon(
        Icons.person_2_outlined,
      ),
      label: 'Profile'.tr),
];
