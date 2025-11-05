import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/controller/user_controller.dart';
import 'package:todo_master/core/consts/app_color.dart';

class UserData extends StatelessWidget {
  const UserData({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> userKey = GlobalKey();
    TextEditingController userNameController = TextEditingController();
    UserName userName = Get.put(UserName());
    return Scaffold(
      body: Form(
        key: userKey,
        child: Column(
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Card(
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'entre_your_name'.tr;
                      }
                      return null;
                    },
                    controller: userNameController,
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
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  color: AppColor.primaryColor,
                  onPressed: () {
                    userName.next(userKey, userNameController);
                  },
                  child: Text(
                    'next'.tr,
                    style: const TextStyle(color: AppColor.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
