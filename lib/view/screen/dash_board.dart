import 'package:flutter/material.dart';
import 'package:todo_master/view/widget/Tasks/tasks_bottom_nav_bar.dart';
import 'package:todo_master/view/widget/drawer.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      bottomNavigationBar: const TasksBottomNavBar(),
      appBar: AppBar(),
    );
  }
}
