import 'package:flutter/material.dart';
import 'package:todo_master/core/consts/app_color.dart';
import 'package:todo_master/view/widget/On%20boarding/button_next.dart';
import 'package:todo_master/view/widget/On%20boarding/button_skip.dart';
import 'package:todo_master/view/widget/On%20boarding/page_view_on_boarding.dart';
import 'package:todo_master/view/widget/dot%20controller/dot_controll.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 100),
          Expanded(flex: 8, child: PageViewOnBoarding()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DotControl(
                color: AppColor.primaryColor,
                size: 25,
              ),
              SizedBox(width: 5),
              DotControl(
                size: 10,
                color: AppColor.grey1,
              ),
              SizedBox(width: 5),
              DotControl(
                size: 10,
                color: AppColor.grey1,
              ),
              SizedBox(width: 5),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [ButtonSkip(), ButtonNext()],
          ),
          Spacer(flex: 1),
        ],
      )),
    );
  }
}
