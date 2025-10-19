import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/core/consts/app_color.dart';

class Elements extends StatelessWidget {
  const Elements({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.primaryColor,
        onPressed: () {
          Get.offNamed('/home');
        },
        child: const Icon(
          Icons.save,
          color: AppColor.white,
        ),
      ),
      appBar: AppBar(
        title: Text('elements'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              child: TextFormField(
                decoration: InputDecoration(hintText: 'elementsName'.tr),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Card(
              child: TextFormField(
                decoration: InputDecoration(hintText: 'elementsName'.tr),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Card(
              child: TextFormField(
                decoration: InputDecoration(hintText: 'elementsName'.tr),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Card(
              child: TextFormField(
                decoration: InputDecoration(hintText: 'elementsName'.tr),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Card(
              child: TextFormField(
                decoration: InputDecoration(hintText: 'elementsName'.tr),
              ),
            ),
            const SizedBox(
              height: 68,
            )
          ],
        ),
      ),
    );
  }
}
