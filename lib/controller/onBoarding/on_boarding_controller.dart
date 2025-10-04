import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_master/core/consts/routes.dart';
import 'package:todo_master/core/services/services.dart';
import 'package:todo_master/data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  skip();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  final MyServices mySurvices = Get.find<MyServices>();
  late SharedPreferences onBoardingPref = mySurvices.sharedPreferences;
  late PageController pageController;
  int currentPage = 0;

  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      Get.offAllNamed(AppRoutes.login);
    }
    pageController.animateToPage(currentPage,
        duration: const Duration(microseconds: 900), curve: Curves.easeInOut);
    onBoardingPref.setBool('onBoarding', true);
    update();
  }

  @override
  skip() {
    currentPage = 2;
    pageController.animateToPage(currentPage,
        duration: const Duration(microseconds: 900), curve: Curves.easeInOut);
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
