import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskTitleFormField extends StatelessWidget {
  const TaskTitleFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      maxLength: 40,
      decoration: InputDecoration(
        hintText: 'taskTitleHint'.tr,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
