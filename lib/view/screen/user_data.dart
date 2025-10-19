import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/core/consts/app_color.dart';
import 'package:todo_master/core/consts/routes.dart';

class UserData extends StatelessWidget {
  const UserData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Card(
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'fullNameHint'.tr,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),
            ),
          ),
          const Spacer(),
          Center(
            child: Container(
              padding: const EdgeInsets.all(8),
              height: 60,
              width: double.infinity,
              child: MaterialButton(
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                color: AppColor.primaryColor,
                child: const Text(
                  'Next',
                  style: TextStyle(color: AppColor.white),
                ),
                onPressed: () {
                  Get.offNamed(AppRoutes.home);
                },
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
