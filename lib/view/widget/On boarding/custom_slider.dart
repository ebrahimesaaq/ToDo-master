import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/controller/onBoarding/on_boarding_controller.dart';
import 'package:todo_master/core/consts/app_color.dart';
import 'package:todo_master/data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PageView.builder(
        controller: controller.pageController,
        onPageChanged: (index) {
          controller.onPageChanged(index);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Center(
                  child: Text(
                onBoardingList[index].title,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
              const SizedBox(height: 10),
              Center(
                child: Image.asset(
                  onBoardingList[index].image,
                  height: 300,
                  width: 200,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                  child: Text(
                onBoardingList[index].body,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16, color: AppColor.grey1),
              )),
            ],
          );
        },
      ),
    );
  }
}
