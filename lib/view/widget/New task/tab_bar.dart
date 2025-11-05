import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/core/consts/app_color.dart';

PreferredSizeWidget myTabBar() {
  return TabBar(
    tabs: [
      Tab(
        text: 'categoryDaily'.tr,
      ),
      Tab(
        text: 'categoryWeekly'.tr,
      ),
      Tab(
        text: 'categoryMonthly'.tr,
      ),
      Tab(
        text: 'categoryYearly'.tr,
      ),
    ],
    labelColor: AppColor.grey3,
    indicatorColor: AppColor.grey3,
    // indicatorWeight: 5,
    unselectedLabelColor: AppColor.white,
  );
}
