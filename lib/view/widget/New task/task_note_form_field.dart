import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskNoteFormField extends StatelessWidget {
  const TaskNoteFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 5,
      maxLength: 200,
      decoration: InputDecoration(
        hintText: 'taskNoteHint'.tr,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
