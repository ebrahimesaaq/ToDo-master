import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:todo_master/core/consts/app_color.dart';

class MyFloatingActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Color backgroundColor;
  const MyFloatingActionButton(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SpeedDial(
        icon: Icons.menu,
        activeIcon: Icons.close,
        backgroundColor: backgroundColor,
        iconTheme: const IconThemeData(color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        children: [
          SpeedDialChild(
            child: const Icon(
              Icons.add,
              color: AppColor.white,
            ),
            label: 'addSmallTask'.tr,
            onTap: onPressed,
            backgroundColor: AppColor.orange,
          ),
          SpeedDialChild(
            child: const Icon(
              Icons.add,
              color: AppColor.white,
            ),
            label: 'addLargeTask'.tr,
            onTap: () {
              // Define action for removing a task
            },
            backgroundColor: AppColor.orange,
          ),
        ],
      ),
    );
  }
}
