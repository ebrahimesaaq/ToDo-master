import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/core/consts/app_color.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        // Handle save action
      },
      color: AppColor.primaryColor,
      textColor: AppColor.white,
      shape: RoundedRectangleBorder(
          side: BorderSide(style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(10)),
      child: Text('save'.tr),
    );
  }
}
