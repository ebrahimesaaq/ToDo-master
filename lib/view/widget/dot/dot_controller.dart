import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:todo_master/controller/onBoarding/on_boarding_controller.dart';
import 'package:todo_master/core/consts/app_color.dart';
import 'package:todo_master/data/datasource/static/static.dart';

class DotController extends GetView<OnBoardingControllerImp> {
  const DotController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Replace 'onboardingList' with your actual list variable containing OnboardingModel instances
          ...List.generate(
              onBoardingList.length,
              (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 900),
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: controller.currentPage == index ? 25 : 8,
                    height: 5,
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(30)),
                  ))
        ],
      );
    });
  }
}
