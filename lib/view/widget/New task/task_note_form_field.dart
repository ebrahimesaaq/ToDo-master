import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskNoteFormField extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  const TaskNoteFormField(
      {super.key, required this.controller, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      maxLines: 5,
      maxLength: 200,
      decoration: InputDecoration(
        hintText: 'taskNoteHint'.tr,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
