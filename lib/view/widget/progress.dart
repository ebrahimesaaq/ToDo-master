import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double progress; // نسبة من 0 إلى 1

  const ProgressBar({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          // الخلفية الرمادية
          Container(
            height: 14,
            color: Colors.grey.shade300,
          ),
          // البار المتدرج
          LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                height: 14,
                width: constraints.maxWidth * progress.clamp(0.0, 1.0),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.red,
                      Colors.orange,
                      Colors.yellow,
                      Colors.lightGreen,
                      Colors.green,
                      Colors.teal,
                    ],
                    stops: [0.0, 0.25, 0.5, 0.7, 0.85, 1.0],
                  ),
                ),
              );
            },
          ),
          // النسبة في النص
          Text(
            '${(progress * 100).toInt()}%',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
