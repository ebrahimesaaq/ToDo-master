import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/core/consts/routes.dart';
import 'package:todo_master/data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  skip();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;

  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      Get.offAllNamed(AppRoutes.home);
    }
    pageController.animateToPage(currentPage,
        duration: const Duration(microseconds: 900), curve: Curves.easeInOut);
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
