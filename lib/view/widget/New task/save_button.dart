import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/core/consts/app_color.dart';

class SaveButton extends StatelessWidget {
  final void Function() onPressed;
  const SaveButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: AppColor.primaryColor,
      textColor: AppColor.white,
      shape: RoundedRectangleBorder(
          side: const BorderSide(style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(10)),
      child: Text('save'.tr),
    );
  }
}
