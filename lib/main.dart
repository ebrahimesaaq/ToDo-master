import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/core/consts/app_color.dart';
import 'package:todo_master/core/localization/change_local.dart';
import 'package:todo_master/core/localization/translation.dart';
import 'package:todo_master/core/services/services.dart';
import 'package:todo_master/routes.dart';
import 'package:todo_master/view/screen/auth/login.dart';
import 'package:todo_master/view/screen/on_boarding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    ChangeLocal controller = Get.put(ChangeLocal());
    MyServices myServices = Get.find<MyServices>();
    return GetMaterialApp(
      locale: controller.language,
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      home: myServices.sharedPreferences.getBool('onBoarding') == true
          ? const Login()
          : const OnBoarding(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: AppColor.white),
            backgroundColor: AppColor.primaryColor,
            titleTextStyle: TextStyle(color: AppColor.white, fontSize: 22)),
        textTheme: const TextTheme(),
      ),
      routes: myRoutes,
    );
  }
}
