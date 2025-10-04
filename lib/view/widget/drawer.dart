import 'package:flutter/material.dart';
import 'package:todo_master/view/widget/popup_menu_language.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [PopupMenuLanguageButton()],
        ),
      ),
    );
  }
}
