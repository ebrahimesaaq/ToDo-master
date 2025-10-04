import 'package:flutter/material.dart';
import 'package:todo_master/core/consts/app_color.dart';

class CustomIconButtonLogin extends StatelessWidget {
  final String hintText;
  final String imagePath;
  final void Function() onPressed;
  const CustomIconButtonLogin(
      {super.key,
      required this.hintText,
      required this.imagePath,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Container(
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: AppColor.grey1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 35, height: 35, child: Image.asset(imagePath)),
              const SizedBox(width: 6.0),
              Text(
                hintText,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        iconSize: 50,
        onPressed: onPressed);
  }
}
