import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  final List<DropdownMenuItem<Object>> items;
  final void Function(Object?) onChanged;
  final String hintText;
  final FormFieldValidator<Object>? validator;
  const CustomDropDown(
      {super.key,
      required this.items,
      required this.onChanged,
      required this.hintText,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<Object>(
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
      items: items,
      onChanged: onChanged,
    );
  }
}
