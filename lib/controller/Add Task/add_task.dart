import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

abstract class AddTaskController extends GetxController {
  onLargeTaskPress(BuildContext context, TextEditingController controller);
  onMiniTaskPress(BuildContext context, TextEditingController controller);
}

class AddTask2 extends AddTaskController {
  @override
  onLargeTaskPress(
      BuildContext context, TextEditingController controller) async {
    DateTimeRange? pickedDate = await showDateRangePicker(
        context: context, firstDate: DateTime(2000), lastDate: DateTime(2101));
    if (pickedDate != null) {
      controller.text =
          '${pickedDate.start.toString().split(' ')[0]} to ${pickedDate.end.toString().split(' ')[0]}';
      update();
    }
    update();
  }

  @override
  onMiniTaskPress(
      BuildContext context, TextEditingController controller) async {
    DateTime? pickedDate = await showDatePicker(
        context: context, firstDate: DateTime(2000), lastDate: DateTime(2101));
    if (pickedDate != null) {
      DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2101),
      );
      if (pickedDate != null) {
        controller.text =
            '${pickedDate.year.toString()}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.day.toString().padLeft(2, '0')}';
        update();
      }
      update();
      update();
    }
    update();
  }
}
