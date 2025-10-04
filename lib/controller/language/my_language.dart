import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/core/consts/language_list.dart';

abstract class MyLanguage extends GetxController {
  selectALang(BuildContext context);
}

class MyLanguageImp extends MyLanguage {
  String? langCode;
  @override
  selectALang(context) {
    showMenu(
            context: context,
            position: Directionality.of(context) == TextDirection.ltr
                ? const RelativeRect.fromLTRB(15, 30, double.infinity, 0)
                : const RelativeRect.fromLTRB(double.infinity, 30, 15, 0),
            items: languageMenuItems)
        .then((value) {
      if (value != null) {
        Get.updateLocale(Locale(value));
        if (value == "ar") {
          langCode = "ar";
        } else {
          langCode = "en";
        }
      }
    });
    update();
  }
}
