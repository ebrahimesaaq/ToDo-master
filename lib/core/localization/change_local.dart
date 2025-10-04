import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/core/services/services.dart';

class ChangeLocal extends GetxController {
  Locale? language;

  MyServices myServices = Get.put(MyServices());

  changeLang(String langCode) {
    myServices.sharedPreferences.setString('lang', langCode);
    Get.updateLocale(Locale(langCode));
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString('lang');
    if (sharedPrefLang == 'ar') {
      language = const Locale('ar');
    } else if (sharedPrefLang == 'en') {
      language = const Locale('en');
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
