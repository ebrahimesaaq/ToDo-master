import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/view/widget/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('homeAppBar'.tr),
      ),
      drawer: const MyDrawer(),
    );
  }
}
