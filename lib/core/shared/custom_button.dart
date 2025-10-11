import 'package:flutter/material.dart';
import 'package:todo_master/core/consts/app_color.dart';

class CustomButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  const CustomButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        backgroundColor: AppColor.primaryColor,
        padding: const EdgeInsets.symmetric(vertical: 16.0),
      ),
      child: Text(
        text,
        style: const TextStyle(color: AppColor.white),
      ),
    );
  }
}
