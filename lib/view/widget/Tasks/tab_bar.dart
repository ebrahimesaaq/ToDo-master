import 'package:flutter/material.dart';
import 'package:todo_master/core/consts/app_color.dart';

PreferredSizeWidget myTabBar = TabBar(
  tabs: const [
    Tab(
      text: 'Daily',
    ),
    Tab(
      text: 'Monthly',
    ),
    Tab(
      text: 'Yearly',
    ),
  ],
  labelColor: AppColor.grey3,
  indicatorColor: AppColor.grey3,
  indicatorWeight: 5,
  unselectedLabelColor: AppColor.white,
);
