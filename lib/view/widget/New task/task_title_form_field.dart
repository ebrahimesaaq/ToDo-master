import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskTitleFormField extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  const TaskTitleFormField(
      {super.key, required this.controller, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      maxLines: 1,
      maxLength: 40,
      decoration: InputDecoration(
        hintText: 'taskTitleHint'.tr,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
