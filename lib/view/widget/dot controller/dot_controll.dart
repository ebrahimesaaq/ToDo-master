import 'package:flutter/material.dart';

class DotControll extends StatelessWidget {
  final Color color;
  final double size;
  const DotControll({super.key, required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
