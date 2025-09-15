import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:todo_master/controller/onBoarding/on_boarding_controller.dart';
import 'package:todo_master/core/consts/app_color.dart';

class ButtonSkip extends GetView<OnBoardingControllerImp> {
  const ButtonSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: controller.skip,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.grey2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 15),
      ),
      child: const Text(
        "Skip",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
