import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/core/consts/routes.dart';
import 'package:todo_master/view/widget/home/my_floating_action_button.dart';

class FloatingActionButtonAddTask extends StatelessWidget {
  const FloatingActionButtonAddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MyFloatingActionButton(onAddSmallTask: () {
      Get.toNamed(AppRoutes.newTask);
    }, onAddLargeTask: () {
      Get.toNamed(AppRoutes.newLargeTask);
    });
  }
}
