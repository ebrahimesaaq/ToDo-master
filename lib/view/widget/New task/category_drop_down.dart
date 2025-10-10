import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  final List<DropdownMenuItem<Object>> items;
  final void Function(Object?) onChanged;
  final String hintText;
  const CustomDropDown(
      {super.key,
      required this.items,
      required this.onChanged,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
      items: items,
      onChanged: onChanged,
    );
  }
}
