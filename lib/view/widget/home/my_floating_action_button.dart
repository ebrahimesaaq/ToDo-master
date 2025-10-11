import 'package:flutter/material.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:get/get.dart';
import 'package:todo_master/core/consts/app_color.dart';

class MyFloatingActionButton extends StatefulWidget {
  final VoidCallback onAddSmallTask;
  final VoidCallback onAddLargeTask;

  const MyFloatingActionButton({
    super.key,
    required this.onAddSmallTask,
    required this.onAddLargeTask,
  });

  @override
  _MyFloatingActionButtonState createState() => _MyFloatingActionButtonState();
}

class _MyFloatingActionButtonState extends State<MyFloatingActionButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 260),
    );

    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FloatingActionBubble(
        animation: _animation,
        onPress: () {
          _animationController.isCompleted
              ? _animationController.reverse()
              : _animationController.forward();
        },
        iconColor: Colors.white,
        iconData: Icons.menu,
        backGroundColor: AppColor.primaryColor,
        items: [
          Bubble(
            title: "addSmallTask".tr,
            iconColor: Colors.white,
            bubbleColor: AppColor.orange,
            icon: Icons.add,
            titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
            onPress: widget.onAddSmallTask,
          ),
          Bubble(
            title: "addLargeTask".tr,
            iconColor: Colors.white,
            bubbleColor: AppColor.orange,
            icon: Icons.add,
            titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
            onPress: widget.onAddLargeTask,
          ),
        ],
      ),
    );
  }
}
