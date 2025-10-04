import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/controller/language/my_language.dart';

class PopupMenuLanguageButton extends StatelessWidget {
  const PopupMenuLanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    MyLanguageImp myLanguageImp = MyLanguageImp();
    return Row(
      children: [
        IconButton(
            onPressed: () {
              myLanguageImp.selectALang(context);
            },
            icon: Text('language'.tr)),
      ],
    );
  }
}
