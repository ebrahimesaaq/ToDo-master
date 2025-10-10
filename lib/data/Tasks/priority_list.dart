import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<DropdownMenuItem<Object>> priorityList = [
  DropdownMenuItem(
    value: 'Low',
    child: Text('priorityLow'.tr),
  ),
  DropdownMenuItem(
    value: 'Medium',
    child: Text('priorityMedium'.tr),
  ),
  DropdownMenuItem(
    value: 'High',
    child: Text('priorityHigh'.tr),
  ),
];
