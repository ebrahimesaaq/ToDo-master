import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/core/localization/translation.dart';
import 'package:todo_master/core/services/services.dart';
import 'package:todo_master/routes.dart';
import 'package:todo_master/view/screen/on_boarding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initServices();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      home: const OnBoarding(),
      theme: ThemeData(
        textTheme: const TextTheme(),
      ),
      routes: myRoutes,
    );
  }
}
