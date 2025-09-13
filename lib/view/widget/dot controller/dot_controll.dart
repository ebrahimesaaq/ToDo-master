import 'package:flutter/material.dart';

class DotControl extends StatelessWidget {
  final Color color;
  final double size;
  const DotControl({super.key, required this.color, required this.size});

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
