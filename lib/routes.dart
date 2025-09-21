import 'package:flutter/material.dart';
import 'package:todo_master/core/consts/routes.dart';
import 'package:todo_master/view/screen/auth/login.dart';
import 'package:todo_master/view/screen/home_page.dart';

Map<String, Widget Function(BuildContext)> myRoutes = {
  AppRoutes.login: (context) => const Login(),
  AppRoutes.home: (context) => const HomePage(),
};
