import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/core/consts/app_color.dart';

PreferredSizeWidget myTabBarLargeTask = TabBar(
  labelColor: AppColor.white,
  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
  tabs: [
    Tab(
      text: 'theTaskInfo'.tr,
    ),
    Tab(
      text: 'theTaskSteps'.tr,
    )
  ],
);
