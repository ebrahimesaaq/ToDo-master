// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/controller/onBoarding/on_boarding_controller.dart';
import 'package:todo_master/view/widget/On%20boarding/button_next.dart';
import 'package:todo_master/view/widget/On%20boarding/button_skip.dart';
import 'package:todo_master/view/widget/On%20boarding/custom_slider.dart';
import 'package:todo_master/view/widget/dot/dot_controller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: const SafeArea(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 100),
          Expanded(flex: 8, child: CustomSliderOnBoarding()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DotController(),
              SizedBox(width: 5),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //* buttons
              ButtonSkip(),
              ButtonNext()
            ],
          ),
          Spacer(flex: 1),
        ],
      )),
    );
  }
}
