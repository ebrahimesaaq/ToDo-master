import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_master/core/consts/routes.dart';
import 'package:todo_master/core/services/services.dart';

abstract class UserController extends GetxController {
  next(GlobalKey<FormState> myKey, TextEditingController myTextController);
}

class UserName extends UserController {
  final MyServices mySurvices = Get.find<MyServices>();
  late SharedPreferences userPref = mySurvices.sharedPreferences;

  @override
  next(GlobalKey<FormState> myKey, TextEditingController myTextController) {
    if (myKey.currentState!.validate()) {
      userPref.setString('username', myTextController.text);
      Get.offAllNamed(AppRoutes.home);
    }
  }
}
