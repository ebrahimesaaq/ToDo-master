import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/controller/onBoarding/on_boarding_controller.dart';
import 'package:todo_master/core/consts/app_color.dart';

class ButtonNext extends GetView<OnBoardingControllerImp> {
  const ButtonNext({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: controller.next,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 15),
      ),
      child: const Text(
        "Next",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
