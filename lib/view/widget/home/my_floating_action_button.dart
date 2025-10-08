import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Color backgroundColor;
  const MyFloatingActionButton(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      child: Icon(icon, size: 30, color: Colors.white),
    );
  }
}
