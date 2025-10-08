import 'package:flutter/material.dart';
import 'package:todo_master/core/consts/app_color.dart';
import 'package:todo_master/view/widget/home/my_floating_action_button.dart';

class FloatingActionButtonAddTask extends StatelessWidget {
  const FloatingActionButtonAddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MyFloatingActionButton(
        onPressed: () {},
        icon: Icons.add,
        backgroundColor: AppColor.primaryColor);
  }
}
