import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/core/consts/app_color.dart';
import 'package:todo_master/core/consts/imageasset.dart';
import 'package:todo_master/core/shared/custom_button.dart';
import 'package:todo_master/core/shared/custom_text_form_field.dart';
import 'package:todo_master/view/widget/login/custom_icon_button_login.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 150.0),
                Center(
                  child: Column(
                    children: [
                      Text('ToDo Master',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: AppColor.black,
                          )),
                      SizedBox(height: 8.0),
                      Text(
                        'loginText'.tr,
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColor.grey1,
                        ),
                      ),
                      SizedBox(height: 30.0)
                    ],
                  ),
                ),
                CustomTextFormField(
                  textInputType: TextInputType.emailAddress,
                  labelText: 'emailHint'.tr,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormField(
                  textInputType: TextInputType.visiblePassword,
                  labelText: 'passwordHint'.tr,
                  obscureText: true,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Handle forget password action
                    },
                    child: Text('forgetPassword'.tr,
                        style: TextStyle(color: AppColor.primaryColor)),
                  ),
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                      onPressed: () {
                        // Handle login action
                      },
                      text: 'LoginTitle'.tr,
                    )),
                const SizedBox(height: 20.0),
                Center(child: Text('continueWith'.tr)),
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButtonLogin(
                      hintText: 'Google',
                      imagePath: ImageAsset.google,
                      onPressed: () {
                        // Handle Google login action
                      },
                    ),
                    const SizedBox(width: 20.0),
                    CustomIconButtonLogin(
                        hintText: 'Facebook',
                        imagePath: ImageAsset.facebook,
                        onPressed: () {
                          // Handle Facebook login action
                        }),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('noAccount'.tr),
                    TextButton(
                      onPressed: () {
                        // Handle sign up action
                      },
                      child: Text('signUp'.tr,
                          style: TextStyle(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
