import 'package:flutter/material.dart';
import 'package:todo_master/core/consts/app_color.dart';

class ButtonSkip extends StatelessWidget {
  const ButtonSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.grey2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
      ),
      child: Text(
        "Skip",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
