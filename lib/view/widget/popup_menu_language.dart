import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/controller/language/my_language.dart';

class PopupMenuLanguageButton extends StatelessWidget {
  const PopupMenuLanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    MyLanguageImp myLanguageImp = MyLanguageImp();
    return InkWell(
      onTap: () {
        myLanguageImp.selectALang(context);
      },
      child: Row(
        children: [
          const Icon(Icons.language),
          const SizedBox(
            width: 5,
          ),
          SizedBox(height: 40, child: Center(child: Text('language'.tr))),
        ],
      ),
    );
  }
}
