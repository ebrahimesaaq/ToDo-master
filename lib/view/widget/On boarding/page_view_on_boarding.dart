import 'package:flutter/material.dart';
import 'package:todo_master/core/consts/app_color.dart';
import 'package:todo_master/data/datasource/static/static.dart';

class PageViewOnBoarding extends StatelessWidget {
  const PageViewOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PageView.builder(
        itemCount: onBoardingModel.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Center(
                  child: Text(
                onBoardingModel[index].title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
              SizedBox(height: 10),
              Center(
                child: Image.asset(
                  onBoardingModel[index].image,
                  height: 300,
                  width: 200,
                ),
              ),
              SizedBox(height: 20),
              Center(
                  child: Text(
                onBoardingModel[index].body,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: AppColor.grey1),
              )),
            ],
          );
        },
      ),
    );
  }
}
