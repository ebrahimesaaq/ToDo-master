import 'package:flutter/material.dart';
import 'package:todo_master/core/consts/routes.dart';
import 'package:todo_master/view/screen/auth/login.dart';
import 'package:todo_master/view/screen/auth/signup.dart';
import 'package:todo_master/view/screen/home_page.dart';
import 'package:todo_master/view/screen/new_large_task.dart';
import 'package:todo_master/view/screen/new_task.dart';
import 'package:todo_master/view/screen/on_boarding.dart';
import 'package:todo_master/view/screen/user_data.dart';
import 'package:todo_master/view/widget/New%20Large%20Task/Task%20steps/elements.dart';

Map<String, Widget Function(BuildContext)> myRoutes = {
  AppRoutes.login: (context) => const Login(),
  AppRoutes.home: (context) => const HomePage(),
  AppRoutes.onBoarding: (context) => const OnBoarding(),
  AppRoutes.signUp: (context) => const SignUp(),
  AppRoutes.newTask: (context) => const NewTask(),
  AppRoutes.newLargeTask: (context) => const NewLargeTask(),
  AppRoutes.elementsPage: (context) => const Elements(),
  AppRoutes.userData: (context) => const UserData(),
};
