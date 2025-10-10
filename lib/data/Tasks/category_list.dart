import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<DropdownMenuItem<Object>> categoryList = [
  DropdownMenuItem(
    value: 'Daily',
    child: Text('categoryDaily'.tr),
  ),
  DropdownMenuItem(
    value: 'Weekly',
    child: Text('categoryWeekly'.tr),
  ),
  DropdownMenuItem(
    value: 'Monthly',
    child: Text('categoryMonthly'.tr),
  ),
  DropdownMenuItem(
    value: 'Yearly',
    child: Text('categoryYearly'.tr),
  ),
];
