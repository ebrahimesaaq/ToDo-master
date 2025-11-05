import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DueDateFormField extends StatelessWidget {
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final void Function()? onTap;
  const DueDateFormField(
      {super.key, this.controller, this.validator, this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        hintText: 'dueDate'.tr,
        border: const OutlineInputBorder(),
        suffixIcon: const Icon(Icons.calendar_today),
      ),
      readOnly: true,
      onTap: onTap,
    );
  }
}
